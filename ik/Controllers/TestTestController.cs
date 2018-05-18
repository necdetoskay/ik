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
    public class TestTestController : Controller
    {
        private ikEntities db = new ikEntities();

        // GET: TestTest
        public async Task<ActionResult> Index()
        {
            var personelDetays = db.PersonelDetays.Include(p => p.Gorev1).Include(p => p.Lokasyon1).Include(p => p.Personel).Include(p => p.Tahsil).Include(p => p.SgkDosya1);
            return View(await personelDetays.ToListAsync());
        }

        // GET: TestTest/Details/5
        public async Task<ActionResult> Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            PersonelDetay personelDetay = await db.PersonelDetays.FindAsync(id);
            if (personelDetay == null)
            {
                return HttpNotFound();
            }
            return View(personelDetay);
        }

        // GET: TestTest/Create
        public ActionResult Create()
        {
            ViewBag.gorev = new SelectList(db.Gorevs, "id", "ad");
            ViewBag.lokasyon = new SelectList(db.Lokasyons, "id", "ad");
            ViewBag.personelid = new SelectList(db.Personels, "id", "adsoyad");
            ViewBag.tahsili = new SelectList(db.Tahsils, "id", "ad");
            ViewBag.sgkdosya = new SelectList(db.SgkDosyas, "id", "SgkNo");
            return View();
        }

        // POST: TestTest/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Create([Bind(Include = "personelid,lokasyon,gorev,cinsiyeti,tahsili,thumb,okudugubolum,sirketarac,mailadres,sgkdosya")] PersonelDetay personelDetay)
        {
            if (ModelState.IsValid)
            {
                db.PersonelDetays.Add(personelDetay);
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }

            ViewBag.gorev = new SelectList(db.Gorevs, "id", "ad", personelDetay.gorev);
            ViewBag.lokasyon = new SelectList(db.Lokasyons, "id", "ad", personelDetay.lokasyon);
            ViewBag.personelid = new SelectList(db.Personels, "id", "adsoyad", personelDetay.personelid);
            ViewBag.tahsili = new SelectList(db.Tahsils, "id", "ad", personelDetay.tahsili);
            ViewBag.sgkdosya = new SelectList(db.SgkDosyas, "id", "SgkNo", personelDetay.sgkdosya);
            return View(personelDetay);
        }

        // GET: TestTest/Edit/5
        public async Task<ActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            PersonelDetay personelDetay = await db.PersonelDetays.FindAsync(id);
            if (personelDetay == null)
            {
                return HttpNotFound();
            }
            ViewBag.gorev = new SelectList(db.Gorevs, "id", "ad", personelDetay.gorev);
            ViewBag.lokasyon = new SelectList(db.Lokasyons, "id", "ad", personelDetay.lokasyon);
            ViewBag.personelid = new SelectList(db.Personels, "id", "adsoyad", personelDetay.personelid);
            ViewBag.tahsili = new SelectList(db.Tahsils, "id", "ad", personelDetay.tahsili);
            ViewBag.sgkdosya = new SelectList(db.SgkDosyas, "id", "SgkNo", personelDetay.sgkdosya);
            return View(personelDetay);
        }

        // POST: TestTest/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Edit([Bind(Include = "personelid,lokasyon,gorev,cinsiyeti,tahsili,thumb,okudugubolum,sirketarac,mailadres,sgkdosya")] PersonelDetay personelDetay)
        {
            if (ModelState.IsValid)
            {
                db.Entry(personelDetay).State = EntityState.Modified;
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }
            ViewBag.gorev = new SelectList(db.Gorevs, "id", "ad", personelDetay.gorev);
            ViewBag.lokasyon = new SelectList(db.Lokasyons, "id", "ad", personelDetay.lokasyon);
            ViewBag.personelid = new SelectList(db.Personels, "id", "adsoyad", personelDetay.personelid);
            ViewBag.tahsili = new SelectList(db.Tahsils, "id", "ad", personelDetay.tahsili);
            ViewBag.sgkdosya = new SelectList(db.SgkDosyas, "id", "SgkNo", personelDetay.sgkdosya);
            return View(personelDetay);
        }

        // GET: TestTest/Delete/5
        public async Task<ActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            PersonelDetay personelDetay = await db.PersonelDetays.FindAsync(id);
            if (personelDetay == null)
            {
                return HttpNotFound();
            }
            return View(personelDetay);
        }

        // POST: TestTest/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> DeleteConfirmed(int id)
        {
            PersonelDetay personelDetay = await db.PersonelDetays.FindAsync(id);
            db.PersonelDetays.Remove(personelDetay);
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
