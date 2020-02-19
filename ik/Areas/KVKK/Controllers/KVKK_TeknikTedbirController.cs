using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Threading.Tasks;
using System.Net;
using System.Web;
using System.Web.Mvc;
using ik.Areas.KVKK.Models;

namespace ik.Areas.KVKK.Controllers
{
    public class KVKK_TeknikTedbirController : Controller
    {
        private KvkkEntities db = new KvkkEntities();

        // GET: KVKK/KVKK_TeknikTedbir
        public async Task<ActionResult> Index()
        {
            return View(await db.KVKK_TeknikTedbir.ToListAsync());
        }

        // GET: KVKK/KVKK_TeknikTedbir/Details/5
        public async Task<ActionResult> Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            KVKK_TeknikTedbir kVKK_TeknikTedbir = await db.KVKK_TeknikTedbir.FindAsync(id);
            if (kVKK_TeknikTedbir == null)
            {
                return HttpNotFound();
            }
            return View(kVKK_TeknikTedbir);
        }

        // GET: KVKK/KVKK_TeknikTedbir/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: KVKK/KVKK_TeknikTedbir/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Create([Bind(Include = "id,tedbir")] KVKK_TeknikTedbir kVKK_TeknikTedbir)
        {
            if (ModelState.IsValid)
            {
                db.KVKK_TeknikTedbir.Add(kVKK_TeknikTedbir);
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }

            return View(kVKK_TeknikTedbir);
        }

        // GET: KVKK/KVKK_TeknikTedbir/Edit/5
        public async Task<ActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            KVKK_TeknikTedbir kVKK_TeknikTedbir = await db.KVKK_TeknikTedbir.FindAsync(id);
            if (kVKK_TeknikTedbir == null)
            {
                return HttpNotFound();
            }
            return View(kVKK_TeknikTedbir);
        }

        // POST: KVKK/KVKK_TeknikTedbir/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Edit([Bind(Include = "id,tedbir")] KVKK_TeknikTedbir kVKK_TeknikTedbir)
        {
            if (ModelState.IsValid)
            {
                db.Entry(kVKK_TeknikTedbir).State = EntityState.Modified;
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }
            return View(kVKK_TeknikTedbir);
        }

        // GET: KVKK/KVKK_TeknikTedbir/Delete/5
        public async Task<ActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            KVKK_TeknikTedbir kVKK_TeknikTedbir = await db.KVKK_TeknikTedbir.FindAsync(id);
            if (kVKK_TeknikTedbir == null)
            {
                return HttpNotFound();
            }
            return View(kVKK_TeknikTedbir);
        }

        // POST: KVKK/KVKK_TeknikTedbir/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> DeleteConfirmed(int id)
        {
            KVKK_TeknikTedbir kVKK_TeknikTedbir = await db.KVKK_TeknikTedbir.FindAsync(id);
            db.KVKK_TeknikTedbir.Remove(kVKK_TeknikTedbir);
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
    }
}
