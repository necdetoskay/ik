using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ik.Models;

namespace ik.Controllers
{
    [FilterConfig.CustomActionFilter]
    [Authorize(Users = @"KENTKONUT\noskay")]
    public class HFRYTController : Controller
    {
        KENTEntities db=new KENTEntities();
        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }

        // GET: HFRYT
        public ActionResult Index()
        {
            ViewBag.musteriListe = new SelectList(db.CARI_HESAPLAR.OrderBy(c=>c.cari_unvan1).Where(c=>c.cari_muh_kod=="120.10"),"cari_kod","cari_unvan1");
            return View();
        }

        public JsonResult CariHareketler(string musteriID)
        {
            var liste = db.CARI_HESAP_HAREKETLERI.Where(c => c.cha_kod == musteriID);
            return Json(new { Data=liste.OrderByDescending(c=>c.cha_tarihi).Select(c=>new {c.cha_meblag,c.cha_aratoplam,c.cha_vade,c.cha_aciklama,c.cha_belge_tarih,c.cha_cinsi,c.cha_tarihi}),Success=true},JsonRequestBehavior.AllowGet);
        }
    }
}