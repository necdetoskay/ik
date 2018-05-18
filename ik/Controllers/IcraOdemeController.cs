using System;
using System.Linq;
using System.Web.Mvc;
using ik.Models;

namespace ik.Controllers
{
    [FilterConfig.CustomActionFilter]
    [Authorize(Users = @"KENTKONUT\noskay")]
    public class IcraOdemeController : Controller
    {
        private readonly ikEntities db = new ikEntities();

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }

        public ActionResult Index(int icraid=-1)
        {
            if (icraid < 0) return RedirectToAction("Index", "Home");
            ViewBag.icraid = icraid;
            return View();
        }

        [HttpPost]
        public JsonResult _IcraOdemeEkle(int icraid,string tarih,decimal tutar)
        {
            db.IcraOdemes.Add(new IcraOdeme
            {
                icraid = icraid,
                tarih = DateTime.Parse(tarih),
                tutar = tutar
            });
            db.SaveChanges();
            return _IcraListe(icraid);
        }

        public JsonResult _IcraListe(int icraid)
        {
            var icra = db.Icralars.SingleOrDefault(c => c.id == icraid);

            var icralar = icra.IcraOdemes.OrderByDescending(c=>c.id).Select(c => new { c.aciklama, c.tarih, c.tutar, c.id, c.icraid });
            return Json(new { Success = true, Message =new {icra.IBAN,icra.Personel.adsoyad,icra.alacaklı,icra.dosyano,icra.icradaire,icra.tutar},  Data = icralar }, JsonRequestBehavior.AllowGet);
        }

        public JsonResult _IcraOdemeSil(int odemeid)
        {

            var icraodeme = db.IcraOdemes.SingleOrDefault(c => c.id == odemeid);
            var icra = db.Icralars.SingleOrDefault(c => c.id == icraodeme.icraid);
            db.IcraOdemes.Remove(icraodeme);
            db.SaveChanges();
            var icralar = icra.IcraOdemes.OrderByDescending(c => c.id).Select(c => new { c.aciklama, c.tarih, c.tutar, c.id, c.icraid });
            return Json(new { Success = true, Message = new { icra.IBAN, icra.Personel.adsoyad, icra.alacaklı, icra.dosyano, icra.icradaire, icra.tutar }, Data = icralar }, JsonRequestBehavior.AllowGet);
        }
    }
}