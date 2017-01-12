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
    public class TakipsController : Controller
    {
        private ikEntities db = new ikEntities();

        // GET: Takips
        public async Task<ActionResult> Index()
        {
            return View(await db.Takips.ToListAsync());
        }

        // GET: Takips/Details/5
        public async Task<ActionResult> Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Takip takip = await db.Takips.FindAsync(id);
            if (takip == null)
            {
                return HttpNotFound();
            }
            return View(takip);
        }

        // GET: Takips/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Takips/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Create([Bind(Include = "id,aciklama,sontarih")] Takip takip)
        {
            if (ModelState.IsValid)
            {
                takip.ekleme=DateTime.Now;
                db.Takips.Add(takip);
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }

            return View(takip);
        }

        // GET: Takips/Edit/5
        public async Task<ActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Takip takip = await db.Takips.FindAsync(id);
            if (takip == null)
            {
                return HttpNotFound();
            }
            return View(takip);
        }

        // POST: Takips/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Edit([Bind(Include = "id,aciklama,ekleme,tamamlanma,sontarih")] Takip takip)
        {
            if (ModelState.IsValid)
            {
                db.Entry(takip).State = EntityState.Modified;
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }
            return View(takip);
        }

        // GET: Takips/Delete/5
        public async Task<ActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Takip takip = await db.Takips.FindAsync(id);
            if (takip == null)
            {
                return HttpNotFound();
            }
            return View(takip);
        }

        // POST: Takips/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> DeleteConfirmed(int id)
        {
            Takip takip = await db.Takips.FindAsync(id);
            db.Takips.Remove(takip);
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

        public JsonResult _RutinOzet(int limit=5)
        {
            //limit kadar kaydı çek döndür
            var liste = db.Takips.Where(c => c.tamamlanma == null).OrderBy(c=>c.sontarih).Take(limit).Select(c=> new {aciklama=c.aciklama,sontarih=c.sontarih});

            return Json(liste, JsonRequestBehavior.AllowGet);
        }
    }
}
