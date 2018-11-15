using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ik.Models;
using Microsoft.Ajax.Utilities;

namespace ik.Controllers
{
    [FilterConfig.CustomActionFilter]
    [Authorize(Users = @"KENTKONUT\noskay,KENTKONUT\derya.aslan")]
    public class MikroController : Controller
    {
        // GET: Mikro
        private ik.Models.KENTEntities ke = new KENTEntities();
        private ikEntities db =new ikEntities();
        protected override void Dispose(bool disposing)
        {
            ke.Dispose();
            base.Dispose(disposing);
        }
        public ActionResult KanGrubu()
        {

            ViewBag.kanListe = new SelectList(new[]
            {
                new {Value=0,Text="A(RH)+"},
                new {Value=1,Text="A(RH)-"},
                new {Value=2,Text="B(RH)+"},
                new {Value=3,Text="B(RH)-"},
                new {Value=4,Text="AB(RH)+"},
                new {Value=5,Text="AB(RH)-"},
                new {Value=6,Text="0(RH)+"},
                new {Value=7,Text="0(RH)-"}
            }, "Value", "Text");
            return View();
        }

        public JsonResult KanGrupAdSoyad(int kangrubu)
        {
            var liste =
                ke.PERSONELLERs.Where(c => c.per_nuf_kangrup == kangrubu & c.per_cikis_tar==new DateTime(1899,12,31))
                    .Select(c => new { adsoyad = c.per_adi + " " + c.per_soyadi });
            return Json(new { Success = true, Data = liste }, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public JsonResult MikroBilgi(string sicilno)
        {
            var sicil = "";
            if (sicilno.Length > 4)
                sicil = sicilno.Substring(sicilno.Length - 4, 4);
            
            var a = ke.PERSONELLERs.SingleOrDefault(c => c.per_kod == sicil);

            return Json(new {DOB=a.per_nuf_dogum_tarih.Value.ToShortDateString(),MikroID=a.per_Guid}, JsonRequestBehavior.AllowGet);
        }

        public JsonResult _SonIzinler()
        {
            var liste = new ArrayList();
            using (ikEntities db = new ikEntities())
            {
                var query=(from pi in ke.PERSONEL_IZINLERI join i in ke.PERSONELLERs on pi.pz_pers_kod equals i.per_kod where pi.pz_izin_tipi==0 orderby pi.pz_create_date descending select new {i.per_adi,i.per_soyadi,i.per_Guid,pi.pz_izin_tipi,pi.pz_pers_kod,pi.pz_baslangictarih,pi.pz_gerceklesen_donus_tarihi,pi.pz_gun_sayisi,pi.pz_izin_aciklama}).
                Take(100);

                foreach (var izin in query.ToList())
                {
                    var list=db.Izins.Where(c => c.Personel.mikroid == izin.per_Guid & c.baslangictarih==izin.pz_baslangictarih );
                    if (!list.Any())
                        liste.Add(izin);
                }


            }



            return Json(liste, JsonRequestBehavior.AllowGet);
        }

        public ActionResult _SonGirilenIzinler()
        {
            try
            {
                var liste = new ArrayList();
                using (ikEntities db = new ikEntities())
                {
                    var query = (from pi in ke.PERSONEL_IZINLERI
                                 join i in ke.PERSONELLERs on pi.pz_pers_kod equals i.per_kod
                                 where pi.pz_izin_tipi == 0
                                 orderby pi.pz_create_date descending
                                 select new { Ad = i.per_adi, Soyad = i.per_soyadi,
                                     //i.per_RECno,
                                     pi.pz_izin_tipi, pi.pz_pers_kod, Baslangic = pi.pz_baslangictarih, Bitis = pi.pz_gerceklesen_donus_tarihi, Gun = pi.pz_gun_sayisi, Aciklama = pi.pz_izin_aciklama }).
                    Take(25);

                    return Json(query.ToList(), JsonRequestBehavior.AllowGet);
                }
            }
            catch (Exception xx)
            {
                return Json(false, JsonRequestBehavior.AllowGet);
            }
        }


        public decimal NetMaas(int maliyil=2018,
            decimal brütmaaş = 4307.32m, 
            decimal brütyemek = 350.0m, 
            decimal kümülatifgvm = 0.0m, 
            decimal agi = 152.21m, decimal yemekistisna = 4.05m)
        {

            var dilim = db.vergi_dilim.FirstOrDefault(c => c.yil == maliyil).vergi_dilim_detay.ToList();

            var yemekistisnatutar = yemekistisna*22;
            var sgkmatrah = brütmaaş + brütyemek - yemekistisnatutar;
            var sgkprim=Math.Round(sgkmatrah*0.14m,2);
            var işsizlikprim=Math.Round(sgkmatrah*0.01m,2);
            var damga =Math.Round( (brütmaaş + brütyemek)*0.00759m,2);
            var gelirvergimatrah = brütmaaş + brütyemek - sgkprim - işsizlikprim;
            var kümülatif = kümülatifgvm + gelirvergimatrah;
            var gelirvergisi = 0m;
           
            for (int i = 0; i < dilim.Count; i++)
            {
                if (kümülatifgvm > dilim[i].ust)
                {
                   
                }else
                {
                    if (kümülatif > dilim[i].ust)
                    {
                        var üst = ((kümülatif - dilim[i].ust) *dilim[i+1].oran)/100;
                        var alt = ((dilim[i].ust - kümülatifgvm) *dilim[i].oran)/100;
                        gelirvergisi = alt + üst;
                        gelirvergisi = Math.Round(gelirvergisi, 2);
                        break;
                        //iki dilim
                    }
                    else
                    {
                        //tek dilim
                        gelirvergisi += (gelirvergimatrah * dilim[i].oran) / 100;
                      
                       gelirvergisi= Math.Round(gelirvergisi, 2);
                        break;
                    }
                }
            }
            //gelirvergisi hesapla
            gelirvergisi -= agi;

            var net = brütmaaş + brütyemek - sgkprim - gelirvergisi - damga - işsizlikprim;


            return net;
        }
    }

   
}