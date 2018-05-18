using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Threading.Tasks;
using System.Net;
using System.Web;
using System.Web.Mvc;
using ik.Models;

namespace ik.Controllers
{
    [Authorize(Users = @"KENTKONUT\noskay,KENTKONUT\derya.aslan")]
    public class StajController : Controller
    {
        private ikEntities db = new ikEntities();

        // GET: Staj
        public async Task<ActionResult> Index()
        {
            var staj_Ogrenci = db.Staj_Ogrenci.Include(s => s.Staj_Bolum).Include(s => s.Staj_Ogrenci_Evrak).OrderByDescending(c => c.id).Where(c=>c.donem==DateTime.Now.Year);
            return View(await staj_Ogrenci.ToListAsync());
        }

        // GET: Staj/Details/5
        public async Task<ActionResult> Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Staj_Ogrenci staj_Ogrenci = await db.Staj_Ogrenci.FindAsync(id);
            if (staj_Ogrenci == null)
            {
                return HttpNotFound();
            }
            return PartialView(staj_Ogrenci);
        }

        // GET: Staj/Create
        public ActionResult Create()
        {
            ViewBag.bolumid = new SelectList(new List<Staj_Bolum>(), "id", "ad");
            ViewBag.okulid = new SelectList(db.Staj_Okul, "id", "ad");
            return View();
        }

        // POST: Staj/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(Staj_Ogrenci staj_Ogrenci)
        {
            if (ModelState.IsValid)
            {
                db.Staj_Ogrenci.Add(staj_Ogrenci);
                db.SaveChanges();
                //burada evrak listesini de ekle

                _StajerEvrakYukle(staj_Ogrenci.id);


                return RedirectToAction("Index");
            }

            ViewBag.bolumid = new SelectList(db.Staj_Bolum, "id", "ad", staj_Ogrenci.bolumid);
            //ViewBag.okulid = new SelectList(db.Staj_Universite, "id", "ad", staj_Ogrenci.okulid);
            return View(staj_Ogrenci);
        }

        // GET: Staj/Edit/5
        public async Task<ActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Staj_Ogrenci staj_Ogrenci = await db.Staj_Ogrenci.FindAsync(id);
            if (staj_Ogrenci == null)
            {
                return HttpNotFound();
            }
            if (!staj_Ogrenci.bolumid.HasValue)
            {
                ViewBag.bolumid = new SelectList(new List<Staj_Bolum>(), "id", "ad");
                ViewBag.okulid = new SelectList(db.Staj_Okul, "id", "ad");
            }
            else
            {
                ViewBag.bolumid = new SelectList(db.Staj_Bolum, "id", "ad", staj_Ogrenci.bolumid);
                ViewBag.okulid = new SelectList(db.Staj_Okul, "id", "ad", staj_Ogrenci.Staj_Bolum.okulid);
            }
            return View(staj_Ogrenci);
        }

        // POST: Staj/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Edit([Bind(Include = "id,adsoyad,telefon,okulid,bolumid,baslangic,bitis,referans,donem,onayli,onaytarih")] Staj_Ogrenci staj_Ogrenci)
        {
            if (ModelState.IsValid)
            {
                db.Entry(staj_Ogrenci).State = EntityState.Modified;
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }
            ViewBag.bolumid = new SelectList(db.Staj_Bolum, "id", "ad", staj_Ogrenci.bolumid);
            ViewBag.okulid = new SelectList(db.Staj_Okul, "id", "ad", staj_Ogrenci.Staj_Bolum.okulid);
            return View(staj_Ogrenci);
        }

        // GET: Staj/Delete/5
        public async Task<ActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Staj_Ogrenci staj_Ogrenci = await db.Staj_Ogrenci.FindAsync(id);
            if (staj_Ogrenci == null)
            {
                return HttpNotFound();
            }
            return View(staj_Ogrenci);
        }

        // POST: Staj/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> DeleteConfirmed(int id)
        {
            Staj_Ogrenci staj_Ogrenci = await db.Staj_Ogrenci.FindAsync(id);
            db.Staj_Ogrenci.Remove(staj_Ogrenci);
            await db.SaveChangesAsync();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        public ActionResult Ozet()
        {
            return View();
        }

        public JsonResult StajTarihleri()
        {
            var liste = db.Staj_Ogrenci.Where(d=>d.donem==DateTime.Now.Year).GroupBy(c => c.baslangic).Select(c => new { Tarih = c.Key, Adet = c.Count() }).OrderBy(c => c.Tarih).ToList();
            return Json(new { Success = true, Data = liste }, JsonRequestBehavior.AllowGet);
        }

        public ActionResult EvrakAta()
        {
            return View();
        }

        public JsonResult _StajerYukle(int stajer)
        {
            var liste = db.Staj_Ogrenci.Select(c => new SelectListItem()
            {
                Text = c.adsoyad,
                Value = c.id.ToString()
            });
            return Json(liste, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public JsonResult _StajerEvrakYukle(int id)
        {
            var ogrenci = db.Staj_Ogrenci.SingleOrDefault(c => c.id == id);
            if (ogrenci == null)
            {
                return Json(new { Success = false, Message = "Hata oluştu" }, JsonRequestBehavior.AllowGet);
            }
            var success = 0;
            foreach (var evrak in db.Staj_Evrak.Where(c => c.aktif))
            {
                try
                {
                    ogrenci.Staj_Ogrenci_Evrak.Add(new Staj_Ogrenci_Evrak()
                    {
                        evrakid = evrak.id,
                        alindi = false
                    });

                    success++;
                }
                catch (Exception x)
                {

                }
            }


            db.SaveChanges();

            return Json(new { Success = true, AdSoyad = ogrenci.adsoyad, Message = $"{success} adet evrak  eklendi" }, JsonRequestBehavior.AllowGet);
        }

        public ActionResult EvrakListe(int id)
        {
            var ogrenci = db.Staj_Ogrenci.SingleOrDefault(c => c.id == id);
            var evraklar = ogrenci.Staj_Ogrenci_Evrak.ToList();
            return View(evraklar);
        }

        [HttpPost]
        public JsonResult _EvrakGuncelle(int evrakid)
        {
            var evrak = db.Staj_Ogrenci_Evrak.SingleOrDefault(c => c.id == evrakid);
            if (evrak == null)
            {
                return Json(new { Success = false }, JsonRequestBehavior.AllowGet);
            }
            evrak.alindi = true;
            db.SaveChanges();
            return Json(new { Success = true, AdSoyad = evrak.Staj_Ogrenci.adsoyad, EvrakAd = evrak.Staj_Evrak.ad }, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]public JsonResult _OkulBolumleri(int okulid)
        {
            try
            {
                var bolumler = db.Staj_Bolum.Where(c => c.okulid == okulid).Select(
                       c => new
                       {
                           Text = c.ad,
                           Value = c.id
                       }).ToList();

                return Json(new { Success = true, Data = bolumler }, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {

                return Json(new { Success = false, Hata = ex.Message }, JsonRequestBehavior.AllowGet);
            }



        }

        [HttpPost]
        public JsonResult _OkulBolumEkle(int okul, string ad)
        {
            var univ = db.Staj_Okul.SingleOrDefault(c => c.id == okul);
            if (univ == null || db.Staj_Bolum.Any(c => c.ad == ad))
                return Json(new { Success = false }, JsonRequestBehavior.AllowGet);
            univ.Staj_Bolum.Add(
                new Staj_Bolum
                {
                    ad = ad
                });
            db.SaveChanges();

            var liste = univ.Staj_Bolum.Select(c => new
            {
                Value = c.id,
                Text = c.ad
            }).ToList();


            return Json(new { Success = true, Data = liste }, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public JsonResult _OkulEkle(string ad)
        {

            if (db.Staj_Okul.Any(c => c.ad == ad) || ad.Trim().Length < 5)
                return Json(new { Success = false }, JsonRequestBehavior.AllowGet);
            db.Staj_Okul.Add(
                new Staj_Okul()
                {
                    ad = ad
                });
            db.SaveChanges();

            var liste = db.Staj_Okul.Select(c => new
            {
                Value = c.id,
                Text = c.ad
            }).ToList();


            return Json(new { Success = true, Data = liste }, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public JsonResult _StajTamamla(int id)
        {
            var stajer = db.Staj_Ogrenci.SingleOrDefault(c => c.id == id);
            if (stajer != null)
            {
                stajer.tamamlanmatarih = DateTime.Now;
                db.SaveChanges();
                return Json(new { Success = true }, JsonRequestBehavior.AllowGet);
            }

            return Json(new { Success = false }, JsonRequestBehavior.AllowGet);
        }
    }
}
