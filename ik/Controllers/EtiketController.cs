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
    [FilterConfig.CustomActionFilter]
    [Authorize(Users = @"KENTKONUT\noskay,KENTKONUT\derya.aslan")]
    public class EtiketController : Controller
    {
        private ikEntities db = new ikEntities();

        public ActionResult Bulut()
        {
            return View();
        }

        // GET: Etiket
        public async Task<ActionResult> Index()
        {
            return View(await db.EtiketTanims.ToListAsync());
        }

        // GET: Etiket/Details/5
        public async Task<ActionResult> Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            EtiketTanim etiketTanim = await db.EtiketTanims.FindAsync(id);
            if (etiketTanim == null)
            {
                return HttpNotFound();
            }
            return View(etiketTanim);
        }

        // GET: Etiket/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Etiket/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Create([Bind(Include = "id,ad")] EtiketTanim etiketTanim)
        {
            if (ModelState.IsValid)
            {
                db.EtiketTanims.Add(etiketTanim);
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }

            return View(etiketTanim);
        }

        // GET: Etiket/Edit/5
        public async Task<ActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            EtiketTanim etiketTanim = await db.EtiketTanims.FindAsync(id);
            if (etiketTanim == null)
            {
                return HttpNotFound();
            }
            return View(etiketTanim);
        }

        // POST: Etiket/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Edit([Bind(Include = "id,ad")] EtiketTanim etiketTanim)
        {
            if (ModelState.IsValid)
            {
                db.Entry(etiketTanim).State = EntityState.Modified;
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }
            return View(etiketTanim);
        }

        // GET: Etiket/Delete/5
        public async Task<ActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            EtiketTanim etiketTanim = await db.EtiketTanims.FindAsync(id);
            if (etiketTanim == null)
            {
                return HttpNotFound();
            }
            return View(etiketTanim);
        }

        // POST: Etiket/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> DeleteConfirmed(int id)
        {
            EtiketTanim etiketTanim = await db.EtiketTanims.FindAsync(id);
            db.EtiketTanims.Remove(etiketTanim);
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

        public JsonResult _Etiketler()
        {
            var liste = db.EtiketTanims.Select(c => new
            {label = c.ad+" ["+c.PersonelEtikets.Where(d=>d.Personel.cikistarihi == null).ToList().Count+"]",
                url = "",
                target = "_top"
            });
            return Json(new {Data = liste}, JsonRequestBehavior.AllowGet);
        }
    }
}
//.Where(c=>c.PersonelEtikets.Any(d=>d.Personel.cikistarihi==new DateTime(1899,12,31)))