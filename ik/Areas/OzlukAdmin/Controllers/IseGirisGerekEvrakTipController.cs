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

namespace ik.Areas.OzlukAdmin.Controllers
{
    [FilterConfig.CustomActionFilter]
    [Authorize(Users = @"KENTKONUT\noskay,KENTKONUT\derya.aslan")]
    public class IseGirisGerekEvrakTipController : Controller
    {
        private ikEntities db = new ikEntities();

        // GET: OzlukAdmin/IseGirisGerekEvrakTip
        public async Task<ActionResult> Index()
        {
            return View(await db.Ozluk_IseGirisGerekEvrakTip.ToListAsync());
        }

        // GET: OzlukAdmin/IseGirisGerekEvrakTip/Details/5
        public async Task<ActionResult> Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Ozluk_IseGirisGerekEvrakTip ozluk_IseGirisGerekEvrakTip = await db.Ozluk_IseGirisGerekEvrakTip.FindAsync(id);
            if (ozluk_IseGirisGerekEvrakTip == null)
            {
                return HttpNotFound();
            }
            return View(ozluk_IseGirisGerekEvrakTip);
        }

        // GET: OzlukAdmin/IseGirisGerekEvrakTip/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: OzlukAdmin/IseGirisGerekEvrakTip/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Create([Bind(Include = "id,ad,adet")] Ozluk_IseGirisGerekEvrakTip ozluk_IseGirisGerekEvrakTip)
        {
            if (ModelState.IsValid)
            {
                db.Ozluk_IseGirisGerekEvrakTip.Add(ozluk_IseGirisGerekEvrakTip);
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }

            return View(ozluk_IseGirisGerekEvrakTip);
        }

        // GET: OzlukAdmin/IseGirisGerekEvrakTip/Edit/5
        public async Task<ActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Ozluk_IseGirisGerekEvrakTip ozluk_IseGirisGerekEvrakTip = await db.Ozluk_IseGirisGerekEvrakTip.FindAsync(id);
            if (ozluk_IseGirisGerekEvrakTip == null)
            {
                return HttpNotFound();
            }
            return View(ozluk_IseGirisGerekEvrakTip);
        }

        // POST: OzlukAdmin/IseGirisGerekEvrakTip/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Edit([Bind(Include = "id,ad,adet")] Ozluk_IseGirisGerekEvrakTip ozluk_IseGirisGerekEvrakTip)
        {
            if (ModelState.IsValid)
            {
                db.Entry(ozluk_IseGirisGerekEvrakTip).State = EntityState.Modified;
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }
            return View(ozluk_IseGirisGerekEvrakTip);
        }

        // GET: OzlukAdmin/IseGirisGerekEvrakTip/Delete/5
        public async Task<ActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Ozluk_IseGirisGerekEvrakTip ozluk_IseGirisGerekEvrakTip = await db.Ozluk_IseGirisGerekEvrakTip.FindAsync(id);
            if (ozluk_IseGirisGerekEvrakTip == null)
            {
                return HttpNotFound();
            }
            return View(ozluk_IseGirisGerekEvrakTip);
        }

        // POST: OzlukAdmin/IseGirisGerekEvrakTip/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> DeleteConfirmed(int id)
        {
            Ozluk_IseGirisGerekEvrakTip ozluk_IseGirisGerekEvrakTip = await db.Ozluk_IseGirisGerekEvrakTip.FindAsync(id);
            db.Ozluk_IseGirisGerekEvrakTip.Remove(ozluk_IseGirisGerekEvrakTip);
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
