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
    public class EnumController : Controller
    {
        private ikEntities db = new ikEntities();

        // GET: OzlukAdmin/Enum
        public async Task<ActionResult> Index()
        {
            return View(await db.Ozluk_Enum.ToListAsync());
        }

        // GET: OzlukAdmin/Enum/Details/5
        public async Task<ActionResult> Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Ozluk_Enum ozluk_Enum = await db.Ozluk_Enum.FindAsync(id);
            if (ozluk_Enum == null)
            {
                return HttpNotFound();
            }
            return View(ozluk_Enum);
        }

        // GET: OzlukAdmin/Enum/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: OzlukAdmin/Enum/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Create([Bind(Include = "id,EnumAd")] Ozluk_Enum ozluk_Enum)
        {
            if (ModelState.IsValid)
            {
                db.Ozluk_Enum.Add(ozluk_Enum);
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }

            return View(ozluk_Enum);
        }

        // GET: OzlukAdmin/Enum/Edit/5
        public async Task<ActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Ozluk_Enum ozluk_Enum = await db.Ozluk_Enum.FindAsync(id);
            if (ozluk_Enum == null)
            {
                return HttpNotFound();
            }
            return View(ozluk_Enum);
        }

        // POST: OzlukAdmin/Enum/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Edit([Bind(Include = "id,EnumAd")] Ozluk_Enum ozluk_Enum)
        {
            if (ModelState.IsValid)
            {
                db.Entry(ozluk_Enum).State = EntityState.Modified;
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }
            return View(ozluk_Enum);
        }

        // GET: OzlukAdmin/Enum/Delete/5
        public async Task<ActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Ozluk_Enum ozluk_Enum = await db.Ozluk_Enum.FindAsync(id);
            if (ozluk_Enum == null)
            {
                return HttpNotFound();
            }
            return View(ozluk_Enum);
        }

        // POST: OzlukAdmin/Enum/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> DeleteConfirmed(int id)
        {
            Ozluk_Enum ozluk_Enum = await db.Ozluk_Enum.FindAsync(id);
            db.Ozluk_Enum.Remove(ozluk_Enum);
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
