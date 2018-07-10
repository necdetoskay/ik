using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Script.Serialization;
using ik.Models;

namespace ik.Controllers
{
    [FilterConfig.CustomActionFilter]
    [Authorize(Users = @"KENTKONUT\noskay,KENTKONUT\derya.aslan")]
    public class oldMaasCalismaController : Controller
    {
        private readonly ikEntities db = new ikEntities();

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
        // GET: MaasCalisma
        public ActionResult Index()
        {
            return View();
        }

        public JsonResult _AyIslerDurum(int yil, int ay)
        {
            var liste = db.Maas_Is.Count(c => c.tahakkuk_yil == yil && c.tahakkuk_ay == ay);

            return Json(liste, JsonRequestBehavior.AllowGet);

        }

        public ActionResult AylikListeEkle(int yil, int ay)
        {
            var liste = db.Maas_Is_Liste.ToList();
            return View(liste);
        }


        public ActionResult AylikListe(int yil, int ay)
        {
            var liste = db.Maas_Is.Where(c => c.tahakkuk_yil == yil && c.tahakkuk_ay == ay);
            return PartialView(liste);

        }

        public ActionResult MaasIsEkle(int yil, int ay)
        {


            return View();

        }

        public JsonResult _MaasIsEkle(int yil, int ay)
        {
            var mevcut = db.Maas_Is.Where(c => c.tahakkuk_yil == yil && c.tahakkuk_ay == ay).Select(b => b.isId).ToList();
            var isler = db.Maas_Is_Liste.Where(c => !mevcut.Contains(c.id));

            var liste = db.Maas_Is_Liste.Select(c => new
            {
                item = new
                {
                    c.id,
                    label = c.ad,
                    @checked = false
                },
                children = c.Maas_Is_Liste_Detay.Select(d => new
                {
                    item = new
                    {
                        d.id,
                        label = d.ad,
                        @checked = false
                    }
                }).ToArray()
            });
            return Json(liste.ToArray(), JsonRequestBehavior.AllowGet);
        }


        public ActionResult AyListeOlustur(int yil, int ay)
        {
            ViewBag.yil = yil;
            ViewBag.ay = ay;
            var mevcut = db.Maas_Is.Where(c => c.tahakkuk_yil == yil & c.tahakkuk_ay == ay).Select(c => c.isId);

            var liste = db.Maas_Is_Liste.Where(c => c.durum && !mevcut.Contains(c.id)).ToList();
            return View(liste);

        }

        [HttpPost]
        public ActionResult AyListeOlusturPost(int yil, int ay, string[][] data)
        {
            foreach (var maasis in data)
            {
                var iş = int.Parse(maasis[0]);
                db.Maas_Is.Add(new Maas_Is
                {
                    tahakkuk_ay = ay,
                    tahakkuk_yil = yil,
                    isId = iş
                });
                var detay = int.Parse(maasis[1]);
                if (detay > 0)
                {
                    db.Maas_Is_Detay.Add(new Maas_Is_Detay()
                    {
                        maasisId = iş,
                        maasislistedetayId = detay,
                        durum = false
                    });
                }
               

            }
            db.SaveChanges();

            return Json(new { Success = true }, JsonRequestBehavior.AllowGet);
        }



    }
}