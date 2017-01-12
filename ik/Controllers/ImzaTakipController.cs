using ik.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ik.Controllers
{
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
                db.ImzaTakips.Where(c => c.imzaID == ID).Select(c => new {personel = c.Personel.adsoyad, tarih = c.Tarih}).ToList();

            return Json(liste, JsonRequestBehavior.AllowGet);
        }
    }
}