using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;
using ik.Models;

namespace ik.Areas.Admin.Controllers
{
    [FilterConfig.CustomActionFilter]
    [Authorize(Users = @"KENTKONUT\noskay,KENTKONUT\derya.aslan")]
    public class YillikIzinYetkiController : Controller
    {
        private ikEntities db = new ikEntities();
        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
        // GET: Admin/YillikIzniYetki
        public async Task<ActionResult> Index()
        {
            var liste = db.IzinBakmaYetkis;
            return View(await liste.ToListAsync());
        }

        public ActionResult YeniEkle()
        {
            return PartialView();
        }

        public ActionResult _PersonelIzinYetkileri(int id)
        {
            var personel = db.Personels.SingleOrDefault(c => c.pdksid == id);
            var yetki = personel.IzinBakmaYetkiUst.Select(c => c.alt.ToString()).ToArray();
            return Json(new { Data = yetki }, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public ActionResult YeniEkle(int yetkili, string[] personel)
        {
            var yetki = db.Personels.FirstOrDefault(c => c.pdksid == yetkili);
            var yetkiler = db.IzinBakmaYetkis.Where(c => c.ust == yetki.id);
            db.IzinBakmaYetkis.RemoveRange(yetkiler);
            db.SaveChanges();
            foreach (var s in personel)
            {
                var izin = new IzinBakmaYetki()
                {
                    alt = int.Parse(s),
                    ust = yetki.id
                };
                db.IzinBakmaYetkis.Add(izin);
            }

            db.SaveChanges();
            return Json(new { Success = true, Url = RedirectToAction("Index") }, JsonRequestBehavior.AllowGet);
        }

        public ActionResult PersonelYetkiSil(int id)
        {
            try
            {
                var yetkiler = db.IzinBakmaYetkis.Where(c => c.ust == id);
                db.IzinBakmaYetkis.RemoveRange(yetkiler);
                db.SaveChanges();
                return Json(new { Success = true }, JsonRequestBehavior.AllowGet);
            }
            catch (Exception)
            {
                return Json(new { Success = false }, JsonRequestBehavior.AllowGet);
               
            }
        }
    }
}