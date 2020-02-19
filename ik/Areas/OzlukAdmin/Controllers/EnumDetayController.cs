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
    public class EnumDetayController : Controller
    {
        private ikEntities db = new ikEntities();

        // GET: OzlukAdmin/EnumDetay
        public async Task<ActionResult> Index()
        {
            var ozluk_Enum_Detay = db.Ozluk_Enum_Detay.Include(o => o.Ozluk_Enum);
            return View(await ozluk_Enum_Detay.ToListAsync());
        }

        // GET: OzlukAdmin/EnumDetay/Details/5
        public async Task<ActionResult> Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Ozluk_Enum_Detay ozluk_Enum_Detay = await db.Ozluk_Enum_Detay.FindAsync(id);
            if (ozluk_Enum_Detay == null)
            {
                return HttpNotFound();
            }
            return View(ozluk_Enum_Detay);
        }

        // GET: OzlukAdmin/EnumDetay/Create
        public ActionResult Create()
        {
            ViewBag.enumid = new SelectList(db.Ozluk_Enum, "id", "EnumAd");
            return View();
        }

        // POST: OzlukAdmin/EnumDetay/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Create([Bind(Include = "id,enumid,degerad")] Ozluk_Enum_Detay ozluk_Enum_Detay)
        {
            if (ModelState.IsValid)
            {
                db.Ozluk_Enum_Detay.Add(ozluk_Enum_Detay);
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }

            ViewBag.enumid = new SelectList(db.Ozluk_Enum, "id", "EnumAd", ozluk_Enum_Detay.enumid);
            return View(ozluk_Enum_Detay);
        }

        // GET: OzlukAdmin/EnumDetay/Edit/5
        public async Task<ActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Ozluk_Enum_Detay ozluk_Enum_Detay = await db.Ozluk_Enum_Detay.FindAsync(id);
            if (ozluk_Enum_Detay == null)
            {
                return HttpNotFound();
            }
            ViewBag.enumid = new SelectList(db.Ozluk_Enum, "id", "EnumAd", ozluk_Enum_Detay.enumid);
            return View(ozluk_Enum_Detay);
        }

        // POST: OzlukAdmin/EnumDetay/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Edit([Bind(Include = "id,enumid,degerad")] Ozluk_Enum_Detay ozluk_Enum_Detay)
        {
            if (ModelState.IsValid)
            {
                db.Entry(ozluk_Enum_Detay).State = EntityState.Modified;
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }
            ViewBag.enumid = new SelectList(db.Ozluk_Enum, "id", "EnumAd", ozluk_Enum_Detay.enumid);
            return View(ozluk_Enum_Detay);
        }

        // GET: OzlukAdmin/EnumDetay/Delete/5
        public async Task<ActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Ozluk_Enum_Detay ozluk_Enum_Detay = await db.Ozluk_Enum_Detay.FindAsync(id);
            if (ozluk_Enum_Detay == null)
            {
                return HttpNotFound();
            }
            return View(ozluk_Enum_Detay);
        }

        // POST: OzlukAdmin/EnumDetay/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> DeleteConfirmed(int id)
        {
            Ozluk_Enum_Detay ozluk_Enum_Detay = await db.Ozluk_Enum_Detay.FindAsync(id);
            db.Ozluk_Enum_Detay.Remove(ozluk_Enum_Detay);
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
