using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.UI.WebControls.WebParts;
using ik.Models;
using WebGrease.Css.Extensions;

namespace ik.Controllers
{
    [FilterConfig.CustomActionFilter]
    [Authorize(Users = @"KENTKONUT\noskay,KENTKONUT\derya.aslan")]
    public class IcraController : Controller
    {
        private readonly ikEntities db = new ikEntities();

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
        // GET: Icra
        public ActionResult Index()
        {

            var liste = db.Icralars.Select(c => new IcralarVM
            {   
                id = c.id,
                adsoyad=c.Personel.adsoyad,
                alacaklı = c.alacaklı,
                dosyano = c.dosyano,
                icradaire = c.icradaire,
                tebligtarih = c.tebligtarih,
                tutar = c.tutar,
                Durum = c.tamamlanma.Value,
                Odenen = c.IcraOdemes.Any()? c.IcraOdemes.Sum(d=>d.tutar):0
            }).OrderByDescending(c=>c.tebligtarih);
            return View(liste);
        }

        public ActionResult Create()
        {
            ViewBag.personelListe = new SelectList(db.Personels.OrderByDescending(c=>c.adsoyad).ToList(), "id", "adsoyad");
            return View();
        }
        [HttpPost]
        public ActionResult Create(Icralar icra)
        {
            if (ModelState.IsValid)
            {
                icra.tamamlanma = false;
                db.Icralars.Add(icra);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.personelListe = new SelectList(db.Personels.ToList(), "id", "adsoyad");
            return View(icra);
        }

        public ActionResult DegistirEkle(int id=0)
        {
            ViewBag.personelListe = new SelectList(db.Personels.Where(c => c.cikistarihi == null), "id", "adsoyad");
            if (id < 1)
            {
                return PartialView(new Icralar()
                {
                    tebligtarih = DateTime.Now,
                    tamamlanma = false
                });
            }
            else
            {
                var icra = db.Icralars.FirstOrDefault(c => c.id == id);
                return PartialView(icra);
            }
        }

         [HttpPost]
         [ValidateAntiForgeryToken]
        public ActionResult DegistirEkle(Icralar model, int id = 0)
        {
            if (ModelState.IsValid)
            {
                if (id < 1)
                {
                    db.Icralars.Add(model);
                }
                else
                {
                    db.Entry(model).State = EntityState.Modified;
                }

                db.SaveChanges();
                return Json(new { Success = true }, JsonRequestBehavior.AllowGet);
            }
            else
            {
                ViewBag.personelListe = new SelectList(db.Personels.Where(c => c.cikistarihi == null), "id", "adsoyad");
                return PartialView(model);
            }
        }
    }
}