﻿using System;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Threading.Tasks;
using System.Web.Mvc;
using ik.Models;

namespace ik.Controllers
{
    [FilterConfig.CustomActionFilter]
    [Authorize(Users = @"KENTKONUT\noskay,KENTKONUT\derya.aslan")]
    public class GrupsController : Controller
    {
        private readonly ikEntities db = new ikEntities();

        public ActionResult YeniGrup()
        {
            return View();
        }

        public ActionResult PersonelGrup(int? grupid)
        {
            if (grupid == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            var liste = db.PersonelGrups.Where(c => c.grupid == grupid).ToList();
            ViewBag.grupid = grupid;
            ViewBag.grupad = db.Grups.SingleOrDefault(c => c.id == grupid).ad;
            return View(liste.OrderBy(c=>c.Personel.adsoyad));
        }

        [HttpPost]
        public JsonResult PersonelGrup(object personels, int grupid)
        {
            //personels string[]

            var q =
                ((string[]) personels).Where(
                    c =>
                        !db.PersonelGrups.Where(g => g.grupid == grupid)
                            .Select(b => b.personelid)
                            .Contains(int.Parse(c)));
            foreach (var p in q)
            {
                try
                {
                    db.PersonelGrups.Add(new PersonelGrup {grupid = grupid, personelid = int.Parse(p)});
                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex.Message);
                }
            }
            db.SaveChanges();

            return Json(new {message = "Başarılı"}, JsonRequestBehavior.AllowGet);
        }

        // GET: Grups
        public async Task<ActionResult> Index()
        {
            return View(await db.Grups.ToListAsync());
        }

        // GET: Grups/Details/5
        public async Task<ActionResult> Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            var grup = await db.Grups.FindAsync(id);
            if (grup == null)
            {
                return HttpNotFound();
            }
            return View(grup);
        }

        // GET: Grups/Create
        public ActionResult Create()
        {
            //if (User.Identity.Name != @"KENTKONUT\noskay")
            //    return RedirectToAction("Index");
            return View();
        }

        // POST: Grups/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Create([Bind(Include = "id,ad")] Grup grup)
        {
            if (ModelState.IsValid)
            {
                db.Grups.Add(grup);
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }

            return View(grup);
        }

        // GET: Grups/Edit/5
        public async Task<ActionResult> Edit(int? id)
        {
            //if (User.Identity.Name != @"KENTKONUT\noskay")
            //    return RedirectToAction("Index");
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            var grup = await db.Grups.FindAsync(id);
            if (grup == null)
            {
                return HttpNotFound();
            }
            return View(grup);
        }

        // POST: Grups/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Edit([Bind(Include = "id,ad")] Grup grup)
        {
            if (ModelState.IsValid)
            {
                db.Entry(grup).State = EntityState.Modified;
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }
            return View(grup);
        }

        // GET: Grups/Delete/5
        public async Task<ActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            var grup = await db.Grups.FindAsync(id);
            if (grup == null)
            {
                return HttpNotFound();
            }
            return View(grup);
        }

        // POST: Grups/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> DeleteConfirmed(int id)
        {
            var grup = await db.Grups.FindAsync(id);
            db.Grups.Remove(grup);
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

        public JsonResult PersonelListe(int grupid)
        {
            var liste =
                db.Personels.Where(
                    c => !db.PersonelGrups.Where(g => g.grupid == grupid).Select(b => b.personelid).Contains(c.id)).Where(d=>d.cikistarihi==null)
                    .Select(c => new {c.id, c.adsoyad})
                    .ToList();
            return Json(liste.OrderBy(c=>c.adsoyad), JsonRequestBehavior.AllowGet);
        }
    }
}