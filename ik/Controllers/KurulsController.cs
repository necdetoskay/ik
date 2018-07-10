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
    public class KurulsController : Controller
    {
        private ikEntities db = new ikEntities();

        // GET: Kuruls
        public async Task<ActionResult> Index()
        {
            var kuruls = db.Kuruls.Include(k => k.KurulGorevTip).OrderBy(c=>c.KurulGorevTip.kurultipid);
            return View(await kuruls.ToListAsync());
        }

        // GET: Kuruls/Details/5
        public async Task<ActionResult> Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Kurul kurul = await db.Kuruls.FindAsync(id);
            if (kurul == null)
            {
                return HttpNotFound();
            }
            return View(kurul);
        }

        // GET: Kuruls/Create
        public ActionResult Create()
        {
            ViewBag.gorevtip = new SelectList(new List<KurulGorevTip>(), "id", "ad");
            return View();
        }

        // POST: Kuruls/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Create([Bind(Include = "id,adsoyad,tc,gorevtip,giristarih")] Kurul kurul)
        {
            if (ModelState.IsValid)
            {
                db.Kuruls.Add(kurul);
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }

            ViewBag.gorevtip = new SelectList(db.KurulGorevTips, "id", "ad", kurul.gorevtip);
            return View(kurul);
        }

        // GET: Kuruls/Edit/5
        public async Task<ActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Kurul kurul = await db.Kuruls.FindAsync(id);
            if (kurul == null)
            {
                return HttpNotFound();
            }
            ViewBag.gorevtip = new SelectList(db.KurulGorevTips, "id", "ad", kurul.gorevtip);
            ViewBag.kurultip = kurul.KurulGorevTip.kurultipid;
            return View(kurul);
        }

        // POST: Kuruls/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Edit([Bind(Include = "id,adsoyad,tc,kurultip,gorevtip,giristarih")] Kurul kurul)
        {
            if (ModelState.IsValid)
            {
                db.Entry(kurul).State = EntityState.Modified;
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }
            ViewBag.gorevtip = new SelectList(db.KurulGorevTips, "id", "ad", kurul.gorevtip);
            return View(kurul);
        }

        // GET: Kuruls/Delete/5
        public async Task<ActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Kurul kurul = await db.Kuruls.FindAsync(id);
            if (kurul == null)
            {
                return HttpNotFound();
            }
            return View(kurul);
        }

        // POST: Kuruls/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> DeleteConfirmed(int id)
        {
            Kurul kurul = await db.Kuruls.FindAsync(id);
            db.Kuruls.Remove(kurul);
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

        public JsonResult _KurulTipListe()
        {
            try
            {
                var liste = db.KurulTips.Select(c => new
                {
                    Text = c.ad,
                    Value = c.id
                }).ToList();

                return Json(new { Success = true, Data = liste.ToList() }, JsonRequestBehavior.AllowGet);
            }
            catch (Exception xx)
            {
                return Json(new { Success = false, Data = xx.Message }, JsonRequestBehavior.AllowGet);
            }

        }

        public JsonResult _KurulTipEkle(string ad)
        {
            try
            {
                var kurultip = new KurulTip
                {
                    ad = ad
                };
                db.KurulTips.Add(kurultip);
                db.SaveChanges();

                var liste = db.KurulTips.Select(c => new
                {
                    Text = c.ad,
                    Value = c.id
                }).ToList();

                return Json(new { Success = true, Data = liste.ToList(), Selected = kurultip.id }, JsonRequestBehavior.AllowGet);
            }
            catch (Exception xx)
            {
                return Json(new { Success = false, Data = xx.Message }, JsonRequestBehavior.AllowGet);
            }
        }

        public JsonResult _GorevTipYukle(int id)
        {
            try
            {
                var liste = db.KurulGorevTips.Where(c => c.kurultipid == id).Select(c => new
                {
                    Text = c.ad,
                    Value = c.id
                }).ToList();

                return Json(new { Success = true, Data = liste.ToList() }, JsonRequestBehavior.AllowGet);
            }
            catch (Exception xx)
            {
                return Json(new { Success = false, Data = xx.Message }, JsonRequestBehavior.AllowGet);
            }
        }

        public JsonResult _GorevTipEkle(int id, string ad)
        {
            try
            {
                var gorevtip = new KurulGorevTip
                {
                    kurultipid = id,
                    ad = ad
                };
                db.KurulGorevTips.Add(gorevtip);
                db.SaveChanges();
                var liste = db.KurulGorevTips.Where(c => c.kurultipid == id).Select(c => new
                {
                    Text = c.ad,
                    Value = c.id
                }).ToList();
                return Json(new { Success = true, Data = liste.ToList(), Selected = gorevtip.id }, JsonRequestBehavior.AllowGet);
            }
            catch (Exception xx)
            {
                return Json(new { Success = false, Data = xx.Message }, JsonRequestBehavior.AllowGet);
            }
        }
    }
}
