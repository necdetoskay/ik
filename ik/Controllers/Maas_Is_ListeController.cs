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
    public class MaasIsListeController : Controller
    {
        private ikEntities db = new ikEntities();

        #region template kod
        
       
        // GET: Maas_Is_Liste
        public async Task<ActionResult> Index()
        {
            var maas_Is_Liste = db.Maas_Is_Liste.Include(m => m.Maas_Is_Liste2);
            return View(await maas_Is_Liste.ToListAsync());
        }
        // GET: Maas_Is_Liste/Details/5
        public async Task<ActionResult> Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Maas_Is_Liste maas_Is_Liste = await db.Maas_Is_Liste.FindAsync(id);
            if (maas_Is_Liste == null)
            {
                return HttpNotFound();
            }
            return View(maas_Is_Liste);
        }

        // GET: Maas_Is_Liste/Create
        public ActionResult Create()
        {
            ViewBag.parentid = new SelectList(db.Maas_Is_Liste.Where(c=>c.parentid==null), "id", "ad");
            return View();
        }

        // POST: Maas_Is_Liste/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Create([Bind(Include = "id,parentid,ad,sira")] Maas_Is_Liste maas_Is_Liste)
        {
            if (ModelState.IsValid)
            {
                db.Maas_Is_Liste.Add(maas_Is_Liste);
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }

            ViewBag.parentid = new SelectList(db.Maas_Is_Liste, "id", "ad", maas_Is_Liste.parentid);
            return View(maas_Is_Liste);
        }

        // GET: Maas_Is_Liste/Edit/5
        public async Task<ActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Maas_Is_Liste maas_Is_Liste = await db.Maas_Is_Liste.FindAsync(id);
            if (maas_Is_Liste == null)
            {
                return HttpNotFound();
            }
            ViewBag.parentid = new SelectList(db.Maas_Is_Liste, "id", "ad", maas_Is_Liste.parentid);
            return View(maas_Is_Liste);
        }

        // POST: Maas_Is_Liste/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Edit([Bind(Include = "id,parentid,ad,sira")] Maas_Is_Liste maas_Is_Liste)
        {
            if (ModelState.IsValid)
            {
                db.Entry(maas_Is_Liste).State = EntityState.Modified;
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }
            ViewBag.parentid = new SelectList(db.Maas_Is_Liste, "id", "ad", maas_Is_Liste.parentid);
            return View(maas_Is_Liste);
        }

        // GET: Maas_Is_Liste/Delete/5
        public async Task<ActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Maas_Is_Liste maas_Is_Liste = await db.Maas_Is_Liste.FindAsync(id);
            if (maas_Is_Liste == null)
            {
                return HttpNotFound();
            }
            return View(maas_Is_Liste);
        }

        // POST: Maas_Is_Liste/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> DeleteConfirmed(int id)
        {
            Maas_Is_Liste maas_Is_Liste = await db.Maas_Is_Liste.FindAsync(id);
            db.Maas_Is_Liste.Remove(maas_Is_Liste);
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
        #endregion



        public ActionResult MaasCalısma()
        {
            return View();
        }

        public JsonResult _IsYukle(int yil,int ay)
        {
            var liste = db.Maas_Is.Where(c => c.yil == yil && c.ay == ay);
            return Json(new {Success = true, Data = liste});
        }

        public ActionResult IsEkle(int yil,int ay)
        {
            var liste = db.Maas_Is_Liste.Where(c => c.aktif);
            //tüm listeyi getir
            return PartialView(liste);
        }

        [ActionName("IsEkle")]
        [HttpPost]
        public ActionResult IsEklePost(int yil, int ay)
        {
            return Json(new {success=true});
        }
    }
}
