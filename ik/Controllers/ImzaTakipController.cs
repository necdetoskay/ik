using ik.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ik.Controllers
{
    [Authorize(Users = @"KENTKONUT\noskay")]
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
            ViewBag.imzaListe = new SelectList(db.Imzas.ToList(), "id", "aciklama");

            return View();
        }

        public JsonResult ImzaTakipListe(int ID)
        {
            var liste =
                db.ImzaTakips.Where(c => c.imzaID == ID).Select(c => new { personel = c.Personel.adsoyad, takipid = c.imzaID, personelid = c.personelID, tarih = c.Tarih }).ToList();

            return Json(liste, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public ActionResult ImzaListe(string[] personelliste, int imzaid)
        {
            //var imzaid = int.Parse(firstOrDefault[1]);
            // var mevcut = personelliste.ToList();
            var q =
                db.Personels.Where(
                    c => !db.ImzaTakips.Where(g => g.imzaID == imzaid).Select(b => b.personelID).Contains(c.id))
                    .Select(c => new { Value = c.id, Text = c.adsoyad })
                    .ToList();
            ;
            return Json(q, JsonRequestBehavior.AllowGet);
        }

        public JsonResult ImzaListeKaydet(string[] personelliste, int imzaid)
        {
            var q =
                ((string[])personelliste).Where(
                    c => !db.ImzaTakips.Where(i => i.imzaID == imzaid).Select(j => j.personelID).Contains(int.Parse(c)));
            foreach (var p in q)
            {
                db.ImzaTakips.Add(new ImzaTakip() {Tarih = DateTime.Now, imzaID = imzaid, personelID = int.Parse(p)});
            }
            db.SaveChanges();
            return Json("");
        }
    }
}