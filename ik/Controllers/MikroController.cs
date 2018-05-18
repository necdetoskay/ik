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

            return Json(new {DOB=a.per_nuf_dogum_tarih.Value.ToShortDateString(),MikroID=a.per_RECno}, JsonRequestBehavior.AllowGet);
        }

        public JsonResult _SonIzinler()
        {
            var liste = new ArrayList();
            using (ikEntities db = new ikEntities())
            {
                var query=(from pi in ke.PERSONEL_IZINLERI join i in ke.PERSONELLERs on pi.pz_pers_kod equals i.per_kod where pi.pz_izin_tipi==0 orderby pi.pz_RECno descending select new {i.per_adi,i.per_soyadi,i.per_RECno,pi.pz_izin_tipi,pi.pz_pers_kod,pi.pz_baslangictarih,pi.pz_gerceklesen_donus_tarihi,pi.pz_gun_sayisi,pi.pz_izin_aciklama}).
                Take(100);

                foreach (var izin in query.ToList())
                {
                    var list=db.Izins.Where(c => c.Personel.mikroid == izin.per_RECno & c.baslangictarih==izin.pz_baslangictarih );
                    if (!list.Any())
                        liste.Add(izin);
                }


            }



            return Json(liste, JsonRequestBehavior.AllowGet);
        }
    }
}