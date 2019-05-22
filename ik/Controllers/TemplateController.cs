using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ik.Models;
using Microsoft.Ajax.Utilities;

namespace ik.Controllers
{
    [FilterConfig.CustomActionFilter]
    [Authorize(Users = @"KENTKONUT\noskay,KENTKONUT\derya.aslan")]
    public class TemplateController : Controller
    {
        private readonly ikEntities db = new ikEntities();
        private readonly KENTEntities kent=new KENTEntities();
        // GET: Template
        public ActionResult Index()
        {
            return View();
        }
        #region maaş deneme

        public ActionResult MaasDeneme()
        {
            return View();
        }

        public JsonResult _PersonelBilgi(int personelid)
        {
            //personel brüt ücret
            //kümülatif gelir vergisi
            return Json(new
            {

            }, JsonRequestBehavior.AllowGet);
        }
        #endregion


        #region MaaşİşKontrol

        public ActionResult MaasIsKontrol()
        {
            var isler = new[]
            {
               new MaasIsKontrolVM { IsAdi = "Rapor Kontrolleri"},
               new MaasIsKontrolVM { IsAdi = "Sgk Günleri"},
               new MaasIsKontrolVM { IsAdi = "Yemek Paraları"},
               new MaasIsKontrolVM { IsAdi = "Avanslar",Url = @Url.Action("_MikroIkAvans")},
               new MaasIsKontrolVM { IsAdi = "Mesailer",Url=@Url.Action("_IkMikroMesai")},
               new MaasIsKontrolVM { IsAdi = "Huzur Hakları ve Doktor Maaşı",Url=@Url.Action("_HuzurHakları")}

            };

            return View(isler);
        }
        public ActionResult _MikroIkAvans(int ay)
        {
            var yıl = DateTime.Now.Year;
            var bas = new DateTime(yıl, ay, 1);
            var son =  new DateTime(yıl, ay + 1, 1).Subtract(new TimeSpan(1, 0, 0));
            var ikavans = db.Avanslars.Where(c => c.tarih >=bas && c.tarih <= son).ToList();//.Sum(c=>c.tutar);

            var mikroavans = (from pt in kent.PERSONEL_TAHAKKUKLARI
                join p in kent.PERSONELLERs on pt.pt_pkod equals p.per_kod
                where pt.pt_maliyil == yıl & pt.pt_tah_ay == ay
                select new
                {
                    Guid = p.per_Guid,
                    Tutar = pt.pt_ozksnt5
                }).ToList();




               // kent.PERSONEL_TAHAKKUKLARI.Where(c => c.pt_tah_ay.Value == ay && c.pt_maliyil.Value == yıl).ToList();//.Sum(c=>c.pt_ozksnt5);
            var liste =
                ikavans.Select(
                    c =>
                        new IkMikroAvansDurumVM
                        {
                            Adsoyad = c.Personel.adsoyad,
                            İkTutar = c.tutar,
                            MkroTutar = mikroavans.SingleOrDefault(d => d.Guid == c.Personel.mikroid)==null? 0 :(decimal) mikroavans.SingleOrDefault(d => d.Guid == c.Personel.mikroid).Tutar
                        });
         
            //ik avanslarını al 
            //mikro ile karşılaştır
            return PartialView("_MikroIkAvansGoster", liste);

            //return Json(new {Success=ikavans.Sum(c=>c.tutar)==mikroavans.Sum(c=>c.Tutar),Data=data },JsonRequestBehavior.AllowGet);

        }
        #endregion

        public ActionResult _HuzurHakları(int ay)
        {
            try
            {
                var yıl = DateTime.Now.Year;
                var bas = new DateTime(yıl, ay, 1);
                var son = new DateTime(yıl, ay + 1, 1).Subtract(new TimeSpan(1, 0, 0));

                var huzurlar = kent.PERSONELLERs.Where(p => (p.per_kod.StartsWith("HZ") || p.per_kod.StartsWith("Dr"))&& p.per_cikis_tar==new DateTime(1899,12,31)&& p.per_giris_tar<= son)
                    .Select(c =>
                        new HuzurHakDurumVM
                        {
                            AdSoyad = c.per_adi + " " + c.per_soyadi,
                            Tutar = 0,
                            Kod = c.per_kod
                        }).ToList();

              
               huzurlar.ForEach(c=>c.Tutar=kent.PERSONEL_TAHAKKUKLARI.FirstOrDefault(d=> d.pt_maliyil == yıl & d.pt_tah_ay == ay & d.pt_pkod==c.Kod)==null?0: kent.PERSONEL_TAHAKKUKLARI.FirstOrDefault(d => d.pt_maliyil == yıl & d.pt_tah_ay == ay & d.pt_pkod == c.Kod).pt_sosyrdm26.Value);
                    
                
                    
                    
                    //(from pt in kent.PERSONEL_TAHAKKUKLARI
                    //            join p in kent.PERSONELLERs on pt.pt_pkod equals p.per_kod
                    //            where pt.pt_maliyil == yıl & pt.pt_tah_ay == ay & (p.per_kod.StartsWith("HZ") || p.per_kod.StartsWith("Dr"))
                    //            select new HuzurHakDurumVM
                    //            {
                    //                AdSoyad = p.per_adi+" "+p.per_soyadi,
                    //                Tutar = pt.pt_sosyrdm26.Value
                    //            }).ToList();

                return PartialView(huzurlar);
            }
            catch (Exception ex)
            {

                return PartialView(new List<HuzurHakDurumVM>());
            }

        }

        public ActionResult _IkMikroMesai(int ay)
        {
            //ik mesaileri oku
            //mikro karşılığı varmı
            //mikro ik sayıları eşitmi
            return View();
        }
    }

    public class HuzurHakDurumVM
    {
        public string AdSoyad { get; set; }
        public double Tutar { get; set; }
        public string Kod { get; set; }
    }
    public class MaasIsKontrolVM
    {
        public string IsAdi { get; set; }
        public string Url { get; set; }
        public string Bilgi { get; set; }
    }

    public class IkMikroAvansDurumVM
    {
        public string Adsoyad { get; set; }
        public decimal İkTutar { get; set; }
        public decimal MkroTutar { get; set; }
    }

}