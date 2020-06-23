using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ik.Models;
using Microsoft.Ajax.Utilities;

namespace ik.Controllers
{
    [FilterConfig.CustomActionFilter]
    [Authorize(Users = @"KENTKONUT\noskay,KENTKONUT\derya.aslan")]
    public class PersonelOzlukDosyaController : Controller
    {
        ikEntities db = new ikEntities();
        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }

        // GET: PersonelOzlukDosya
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult GrupEvrakEkle()
        {
            ViewBag.grupListe = new SelectList(db.Grups, "id", "ad");
            ViewBag.evrakListe = new SelectList(db.EvrakListes, "id", "ad");
            return View();
        }

        [HttpPost]
        public JsonResult GrupEvrakEkle(int grupID, int evrakID)
        {
            var grup = db.Grups.SingleOrDefault(c => c.id == grupID);
            var ilk = db.PersonelOzlukEvraks.Count();
            grup.PersonelGrups.ForEach(c => db.PersonelOzlukEvraks.Add(new PersonelOzlukEvrak
            {
                aciklama = "",
                durum = false,
                evrakID = evrakID,
                personelID = c.personelid
            }));
            try
            {
                db.SaveChanges();
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            var fark = db.PersonelOzlukEvraks.Count() - ilk;
            return Json(new { Message = fark }, JsonRequestBehavior.AllowGet);
        }

        public JsonResult PersonelEvrakListe(int personelid)
        {
            var liste = db.PersonelOzlukEvraks.Where(c => c.personelID == personelid).Select(c => new
            {
                ID = c.id,
                Evrak = c.EvrakListe.ad,
                Durum = c.durum,
                Aciklama = c.aciklama
            });
            return Json(new { Data = liste }, JsonRequestBehavior.AllowGet);
        }

        public JsonResult EksikEvrakTamamla(int personelID, int evrakID)
        {
            var evrak = db.PersonelOzlukEvraks.SingleOrDefault(c => c.id == evrakID);
            evrak.durum = true;
            db.SaveChanges();
            //işlem yap
            return PersonelEvrakListe(personelID);
        }

        public JsonResult AciklamaKaydet(int ID, string aciklama)
        {
            var evrak = db.PersonelOzlukEvraks.SingleOrDefault(c => c.id == ID);
            evrak.durum = false;
            evrak.aciklama = aciklama;
            db.SaveChanges();
            return Json(aciklama, JsonRequestBehavior.AllowGet);
        }

        public ActionResult Egitim()
        {
            var egitim = db.OzlukEgitims.ToList();
            return View(egitim);
        }

        public ActionResult EgitimEkle()
        {
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult EgitimEkle(OzlukEgitim egitim)
        {
            if (ModelState.IsValid)
            {
                db.OzlukEgitims.Add(egitim);
                db.SaveChanges();
                return RedirectToAction("Egitim");
            }
            return View(egitim);
        }

        public ActionResult EgitimPersonel(int id)
        {
            ViewBag.ID = id;
            var liste = db.OzlukEgitimDetays.Where(c => c.egitimID == id);
            return View(liste);
        }

        public ActionResult EgitimPersonelEkle(int id)
        {
         
            var egit = db.OzlukEgitims.FirstOrDefault(c => c.id == id).OzlukEgitimDetays;
            var lst = egit.Select(d => d.Personel).Select(c => c.id).ToList();
           // var per = db.Personels.Where(c => c.cikistarihi == null).Except(egit.Select(d => d.Personel)).ToList();


            var liste = db.Personels.Where(c => c.cikistarihi == null & !lst.Contains(c.id)).Select(d => new
            {
                Text = d.adsoyad,
                Value = d.id
            }).OrderBy(c=>c.Text).ToList();
            ViewBag.PersonelListe = new SelectList(liste, "Value", "Text");

            return PartialView();
        }

       
        [HttpPost]
        public JsonResult EğitimPersonelEkle(int[] personel)
        {

            return Json(true,JsonRequestBehavior.AllowGet);
        }
    }


}