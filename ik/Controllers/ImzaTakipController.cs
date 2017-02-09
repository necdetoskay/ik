using ik.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ik.Controllers
{
    [Authorize(Users = @"KENTKONUT\noskay,KENTKONUT\agokalp")]
    public class ImzaTakipController : Controller
    {
        private ikEntities db = new ikEntities();

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
        // GET: ImzaTakip
        public ActionResult Index()
        {
            return View();
        }

        public JsonResult TakipEdilenler()
        {
            var liste = db.ImzaTakips.GroupBy(c => c.Aciklama).Where(c=> c.Count()>1).Select(c=>new {Aciklama=c.Key,Toplam=c.Count(),Imzalanan=c.Count(d=>d.ImzaTarih!=null)});

            return Json(liste,JsonRequestBehavior.AllowGet);
        }

        public ActionResult PersonelImza()
        {
            ViewBag.personelListe = new SelectList(db.Personels.OrderBy(c => c.adsoyad), "id", "adsoyad");
            return View();
        }
        public JsonResult PersonelImzaListe(int personelid)
        {
            var liste = db.ImzaTakips.Where(c => c.personelID == personelid & c.ImzaTarih == null).Select(c => new { aciklama = c.Aciklama, personelid = c.personelID, imzaID = c.id });
            return Json(liste, JsonRequestBehavior.AllowGet);
        }

        public ActionResult Create()
        {
            if (User.Identity.Name != @"KENTKONUT\noskay")
                return RedirectToAction("Index");
            ViewBag.personelListe = new SelectList(db.Personels.OrderBy(c => c.adsoyad), "id", "adsoyad");
            ViewBag.imzagrupListe = new SelectList(db.Grups, "id", "ad");
            return View();
        }

        [HttpPost]
        public ActionResult Create(ImzaTakipVM takip)
        {
            if (takip.ImzaGrupID == 0 && takip.PersonelID == 0)
            {
                ModelState.AddModelError("Aciklama", "Grup veya Personel Seçilmesi Zorunludur.");
                ViewBag.personelListe = new SelectList(db.Personels.OrderBy(c => c.adsoyad), "id", "adsoyad");
                ViewBag.imzagrupListe = new SelectList(db.Grups, "id", "ad");
                return View(takip);
            }
            if (takip.Aciklama == null)
            {
                ModelState.AddModelError("Aciklama", "Açıklama Seçilmesi Zorunludur.");
                ViewBag.personelListe = new SelectList(db.Personels.OrderBy(c => c.adsoyad), "id", "adsoyad");
                ViewBag.imzagrupListe = new SelectList(db.Grups, "id", "ad");
                return View(takip);
            }

            if (takip.ImzaGrupID == 0)
            {
                if (takip.PersonelID > 0)
                {
                    db.ImzaTakips.Add(new ImzaTakip { personelID = takip.PersonelID, Aciklama = takip.Aciklama,Tarih = DateTime.Now});
                    db.SaveChanges();
                }
            }
            if (takip.PersonelID == 0)
            {
                if (takip.ImzaGrupID > 0)
                {
                    foreach (var personel in db.PersonelGrups.Where(c=>c.grupid==takip.ImzaGrupID))
                    {
                        db.ImzaTakips.Add(new ImzaTakip { personelID = personel.personelid, Aciklama = takip.Aciklama,Tarih = DateTime.Now});
                    }
                    db.SaveChanges();
                }
            }

            return RedirectToAction("Index");
        }


        //public JsonResult ImzaTakipListe(int ID)
        //{
        //    var liste =
        //        db.ImzaTakips.Where(c => c.imzaID == ID).Select(c => new { personel = c.Personel.adsoyad, takipid = c.imzaID, personelid = c.personelID, tarih = c.Tarih }).ToList();

        //    return Json(liste, JsonRequestBehavior.AllowGet);
        //}

        //[HttpPost]
        //public ActionResult ImzaListe(string[] personelliste, int imzaid)
        //{
        //    //var imzaid = int.Parse(firstOrDefault[1]);
        //    // var mevcut = personelliste.ToList();
        //    var q =
        //        db.Personels.Where(
        //            c => !db.ImzaTakips.Where(g => g.imzaID == imzaid).Select(b => b.personelID).Contains(c.id))
        //            .Select(c => new { Value = c.id, Text = c.adsoyad })
        //            .ToList();
        //    ;
        //    return Json(q, JsonRequestBehavior.AllowGet);
        //}

        //public JsonResult ImzaListeKaydet(string[] personelliste, int imzaid)
        //{
        //    var q =
        //        ((string[])personelliste).Where(
        //            c => !db.ImzaTakips.Where(i => i.imzaID == imzaid).Select(j => j.personelID).Contains(int.Parse(c)));
        //    foreach (var p in q)
        //    {
        //        db.ImzaTakips.Add(new ImzaTakip() {Tarih = DateTime.Now, imzaID = imzaid, personelID = int.Parse(p)});
        //    }
        //    db.SaveChanges();
        //    return Json("");
        //}
        public JsonResult ImzaTamamla(int imzaid,int personelid)
        {
            var imza=db.ImzaTakips.SingleOrDefault(c => c.id == imzaid);
            imza.ImzaTarih=DateTime.Now;
            db.SaveChanges();
            var liste = db.ImzaTakips.Where(c => c.personelID == personelid & c.ImzaTarih==null).Select(c => new { aciklama = c.Aciklama, personelid = c.personelID, imzaID = c.id });
            return Json(liste, JsonRequestBehavior.AllowGet);
          
        }
    }
}