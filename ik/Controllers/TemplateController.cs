using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ik.Models;
using ik.Models.DataClasslari;
using Microsoft.Ajax.Utilities;
using PtakipDAL;
using MaasHesap = ik.Models.DataClasslari.MaasHesap;

namespace ik.Controllers
{
    [FilterConfig.CustomActionFilter]
    [Authorize(Users = @"KENTKONUT\noskay,KENTKONUT\derya.aslan")]
    public class TemplateController : Controller
    {
        private readonly ikEntities db = new ikEntities();
        private readonly KENTEntities kent = new KENTEntities();
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


        [HttpPost]
        public ActionResult _MaasHesapla(string brutucret, string devkumgvm, string agi, string istisna,string istisnatutar)
        {
            var brut = decimal.Parse(brutucret.Replace(".",","));
            var devredenkumulatifgvm = decimal.Parse(devkumgvm.Replace(".", ","));
            var agitutar = decimal.Parse(agi.Replace(".", ","));
            var istisnamı = istisna=="on"?true:false;
            var istisnatutarı = decimal.Parse(istisnatutar.Replace(".", ","));

           
            var maashesap = new MaasHesap()
            {              
                //Ucret = 5478.29m,
                YemekUcret = 571.85m,
                AGI = 264.87m,
                IstisnaVarmi = true,
                YemekIstisnaTutar = 129m,
                VergiDilim = db.vergi_dilim.SingleOrDefault(c => c.yil == 2020),
                DevredenGelirVergiMatrah = 20527.7m// 20527.70m
            };
            var hesap=maashesap.Hesapla();
           


            
            return PartialView(hesap);
        }

        #region MaaşİşKontrol

        public ActionResult MaasIsKontrol()
        {
            var isler = new[]
            {
              // new MaasIsKontrolVM { IsAdi = "Rapor Kontrolleri",Url = @Url.Action("_RaporKontrol")},
               //new MaasIsKontrolVM { IsAdi = "Sgk Günleri"},
               new MaasIsKontrolVM { IsAdi = "Yemek Paraları",Url = @Url.Action("_SGKGunYemek")},
               new MaasIsKontrolVM { IsAdi = "Avanslar",Url = @Url.Action("_MikroIkAvans")},
               new MaasIsKontrolVM { IsAdi = "Mesailer",Url=@Url.Action("_IkMikroMesai")},
               new MaasIsKontrolVM { IsAdi = "Huzur Hakları ve Doktor Maaşı",Url=@Url.Action("_HuzurHakları")},
               new MaasIsKontrolVM { IsAdi = "icra Kontrol",Url=@Url.Action("_IcraKontrol")}

            };

            return View(isler);
        }
        public ActionResult _MikroIkAvans(int ay)
        {
            var yıl = DateTime.Now.Year;
            var bas = new DateTime(yıl, ay, 1);
            var son =bas.AddMonths(1).AddDays(-1);
           // var son = new DateTime(yıl, ay + 1, 1).Subtract(new TimeSpan(1, 0, 0));
            var ikavans = db.Avanslars.Where(c => c.tarih >= bas && c.tarih <= son).ToList();//.Sum(c=>c.tutar);

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
                            MkroTutar = mikroavans.SingleOrDefault(d => d.Guid == c.Personel.mikroid) == null ? 0 : (decimal)mikroavans.SingleOrDefault(d => d.Guid == c.Personel.mikroid).Tutar
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

                var huzurlar = kent.PERSONELLERs.Where(p => (p.per_kod.StartsWith("HZ") || p.per_kod.StartsWith("Dr")) && p.per_cikis_tar == new DateTime(1899, 12, 31) && p.per_giris_tar <= son)
                    .Select(c =>
                        new HuzurHakDurumVM
                        {
                            AdSoyad = c.per_adi + " " + c.per_soyadi,
                            Tutar = 0,
                            Kod = c.per_kod
                        }).ToList();


                huzurlar.ForEach(c => c.Tutar = kent.PERSONEL_TAHAKKUKLARI.FirstOrDefault(d => d.pt_maliyil == yıl & d.pt_tah_ay == ay & d.pt_pkod == c.Kod) == null ? 0 : kent.PERSONEL_TAHAKKUKLARI.FirstOrDefault(d => d.pt_maliyil == yıl & d.pt_tah_ay == ay & d.pt_pkod == c.Kod).pt_sosyrdm30.Value+ kent.PERSONEL_TAHAKKUKLARI.FirstOrDefault(d => d.pt_maliyil == yıl & d.pt_tah_ay == ay & d.pt_pkod == c.Kod).pt_sosyrdm26.Value);




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
        {   //ik mesaileri oku
            var yıl = DateTime.Now.Year;
            var ikmesai = db.PersonelMesais.Where(c => c.ay == ay & c.yil == yıl).Select(c => new
            {
                AdSoyad = c.Personel.adsoyad,
                IkMesai1 = c.mesai1,
                IkMesai2 = c.mesai2,
                MikroID = c.Personel.mikroid
            }).ToList();


            //mikro karşılığı varmı
            var mikromesai = (from pt in kent.PERSONEL_TAHAKKUKLARI
                              join p in kent.PERSONELLERs on pt.pt_pkod equals p.per_kod
                              where pt.pt_maliyil == yıl & pt.pt_tah_ay == ay & (pt.pt_ekkazanc2_tksaat.Value > 0 || pt.pt_ekkazanc1_tksaat.Value > 0)
                              select new
                              {
                                  Guid = p.per_Guid,
                                  Mesai1 = pt.pt_ekkazanc2_tksaat,
                                  Mesai2 = pt.pt_ekkazanc1_tksaat,
                                  AdSoyad = p.per_adi + " " + p.per_soyadi
                              }).ToList();

            List<MesaiKontrolVM> list = new List<MesaiKontrolVM>();
            foreach (var ikm in ikmesai)
            {
                list.Add(new MesaiKontrolVM
                {
                    AdSoyad = ikm.AdSoyad,
                    IkMesai1 = ikm.IkMesai1,
                    IkMesai2 = ikm.IkMesai2,
                    Guid = ikm.MikroID.ToString(),
                    MikroMesai1 = mikromesai.FirstOrDefault(c => c.Guid == ikm.MikroID) == null ? 0 : (int)mikromesai.FirstOrDefault(c => c.Guid == ikm.MikroID).Mesai1.Value,
                    MikroMesai2 = mikromesai.FirstOrDefault(c => c.Guid == ikm.MikroID) == null ? 0 : (int)mikromesai.FirstOrDefault(c => c.Guid == ikm.MikroID).Mesai2.Value
                });
            }

            foreach (var mk in mikromesai)
            {
                if (list.Any(c => c.Guid == mk.Guid.ToString()))
                {

                }
                else
                {
                    list.Add(new MesaiKontrolVM
                    {
                        AdSoyad = mk.AdSoyad,
                        IkMesai1 = 0,
                        IkMesai2 = 0,
                        MikroMesai1 = (int)mk.Mesai1.Value,
                        MikroMesai2 = (int)mk.Mesai2.Value
                    });
                }
            }

            //mikro ik sayıları eşitmi
            return PartialView(list);
        }

        public ActionResult _RaporKontrol(int ay)
        {
            var now = DateTime.Now;
            //rapor tarih aralığını seç
            var start = new DateTime(now.Year, ay, 1).AddDays(-1);
            var fin = new DateTime(now.Year, ay, 1).AddMonths(1).AddDays(-1);
            //var fin = new DateTime(now.Year, ay + 1, 1).AddDays(-1);



            var perk = new PerkotekContext();
            var lste = perk.SGKGunRaporKontrol(start, fin);



            var liste = lste.Select(c => new RaporKontrolVM
            {
                AdSoyad = db.Personels.FirstOrDefault(d => d.pdksid == c.PersonelID).adsoyad,
                Devirmi = c.DevamRapor,
                İkiGunOde = c.İkigünöde,
                Raporgun = c.Raporgün,
                SGKgün = c.SGKgün
            }).ToList();

            liste.ForEach(c =>
            {
                if (c.Raporgun >= 2)
                {
                    c.SGKgün = c.SGKgün - c.Raporgun + (c.İkiGunOde ? 2 : 0);
                }

            });

            return PartialView(liste.OrderByDescending(c => c.Raporgun).ToList());

            //return PartialView(new List<RaporKontrolVM>());


        }

        public ActionResult _SGKGunYemek(int ay)
        {
            var netyemek = (double)(400.0 / 22);

            var yıl = DateTime.Now.Year;
            var list = (from pt in kent.PERSONEL_TAHAKKUKLARI
                        join p in kent.PERSONELLERs on pt.pt_pkod equals p.per_kod
                        where pt.pt_maliyil == yıl & pt.pt_tah_ay == ay & pt.pt_sskgunu < 22
                        select new YemekParaKontrolVM
                        {
                            AdSoyad = p.per_adi + " " + p.per_soyadi,
                            SGKgun = (int)pt.pt_sskgunu,
                            YemekPara = pt.pt_sosyrdm8.Value,
                            Hesaplanan = netyemek * pt.pt_sskgunu.Value


                        }).ToList();
            return PartialView(list);
        }

        public ActionResult _IcraKontrol(int ay)
        {
           var liste= db.Icralars.Where(c => c.tamamlanma == false && c.IcraOdemes.Sum(d=>d.tutar)<c.tutar).ToList().Select(c=>new IcraKontrolVM
            {
                AdSoyad = c.Personel.adsoyad,
                MikroId = c.Personel.mikroid
                
            }).ToList();
            liste.ForEach(c =>
            {

                using (var mikro=new KENTEntities())
                {
                    var kod = mikro.PERSONELLERs.FirstOrDefault(e => e.per_Guid == c.MikroId).per_kod;


                   var pt= mikro.PERSONEL_TAHAKKUKLARI.FirstOrDefault(
                        d => d.pt_pkod == kod && d.pt_tah_ay == ay && d.pt_maliyil == DateTime.Now.Year);

                    if (pt != null)
                    {
                        c.MikroIcra = (decimal) pt.pt_ozksnt3.Value;
                        var hesap = Math.Round(((pt.pt_net - pt.pt_asgarigecimindirimi + pt.pt_ozksnt5 + pt.pt_otobes_tutari + pt.pt_ozksnt12 +
                                                 pt.pt_ozksnt3.Value)/4).Value,2);
                        c.IcraHesaplanan = (decimal)hesap;
                    }
                }
            });

            return PartialView(liste);
        }

        public ActionResult GunlukRapor()
        {
            return View();
            throw new NotImplementedException();
        }


        public ActionResult IdariIzinEkle()
        {
            return View();
        }
    }

    public class IcraKontrolVM
    {
        public string AdSoyad { get; set; }
        public decimal IcraHesaplanan { get; set; }
        public decimal MikroIcra { get; set; }
        public Guid? MikroId { get; set; }

    }
    public class YemekParaKontrolVM
    {
        public string AdSoyad { get; set; }
        public int SGKgun { get; set; }
        public double YemekPara { get; set; }
        public double Hesaplanan { get; set; }
    }

    public class RaporKontrolVM
    {
        public string AdSoyad { get; set; }
        public int Raporgun { get; set; }
        public bool Devirmi { get; set; }
        public bool İkiGunOde { get; set; }
        public int SGKgün { get; set; }


    }
    public class MesaiKontrolVM
    {
        public string AdSoyad { get; set; }
        public int IkMesai1 { get; set; }
        public int IkMesai2 { get; set; }
        public int MikroMesai1 { get; set; }
        public int MikroMesai2 { get; set; }
        public string Guid { get; set; }
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