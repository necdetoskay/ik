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
    public class TestController : Controller
    {
        private ikEntities db = new ikEntities();

        // GET: Test
        public async Task<ActionResult> Index()
        {
            var personels = db.Personels.Include(p => p.birim).Include(p => p.Kadro1).Include(p => p.PersonelIhaleDonemleri).Include(p => p.PersonelDetay).Include(p => p.PersonelDevir);
            return View(await personels.ToListAsync());
        }

        // GET: Test/Details/5
        public async Task<ActionResult> Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Personel personel = await db.Personels.FindAsync(id);
            if (personel == null)
            {
                return HttpNotFound();
            }
            return View(personel);
        }

        // GET: Test/Create
        public ActionResult Create()
        {
            ViewBag.birimid = new SelectList(db.birims, "id", "birimad");
            ViewBag.kadro = new SelectList(db.Kadroes, "id", "ad");
            ViewBag.calismadonem = new SelectList(db.PersonelIhaleDonemleris, "id", "id");
            ViewBag.id = new SelectList(db.PersonelDetays, "personelid", "thumb");
            ViewBag.id = new SelectList(db.PersonelDevirs, "personelID", "personelID");
            return View();
        }

        // POST: Test/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Create([Bind(Include = "id,adsoyad,birimid,puantaj,sira,sicilno,tcno,pdksid,giristarihi,kidemtarihi,mikroid,dogumtarihi,cikistarihi,kadro,calismadonem,iban")] Personel personel)
        {
            if (ModelState.IsValid)
            {
                db.Personels.Add(personel);
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }

            ViewBag.birimid = new SelectList(db.birims, "id", "birimad", personel.birimid);
            ViewBag.kadro = new SelectList(db.Kadroes, "id", "ad", personel.kadro);
            ViewBag.calismadonem = new SelectList(db.PersonelIhaleDonemleris, "id", "id", personel.calismadonem);
            ViewBag.id = new SelectList(db.PersonelDetays, "personelid", "thumb", personel.id);
            ViewBag.id = new SelectList(db.PersonelDevirs, "personelID", "personelID", personel.id);
            return View(personel);
        }

        // GET: Test/Edit/5
        public async Task<ActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Personel personel = await db.Personels.FindAsync(id);
            if (personel == null)
            {
                return HttpNotFound();
            }
            ViewBag.birimid = new SelectList(db.birims, "id", "birimad", personel.birimid);
            ViewBag.kadro = new SelectList(db.Kadroes, "id", "ad", personel.kadro);
            ViewBag.calismadonem = new SelectList(db.PersonelIhaleDonemleris, "id", "id", personel.calismadonem);
            ViewBag.id = new SelectList(db.PersonelDetays, "personelid", "thumb", personel.id);
            ViewBag.id = new SelectList(db.PersonelDevirs, "personelID", "personelID", personel.id);
            return View(personel);
        }

        // POST: Test/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Edit([Bind(Include = "id,adsoyad,birimid,puantaj,sira,sicilno,tcno,pdksid,giristarihi,kidemtarihi,mikroid,dogumtarihi,cikistarihi,kadro,calismadonem,iban")] Personel personel)
        {
            if (ModelState.IsValid)
            {
                db.Entry(personel).State = EntityState.Modified;
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }
            ViewBag.birimid = new SelectList(db.birims, "id", "birimad", personel.birimid);
            ViewBag.kadro = new SelectList(db.Kadroes, "id", "ad", personel.kadro);
            ViewBag.calismadonem = new SelectList(db.PersonelIhaleDonemleris, "id", "id", personel.calismadonem);
            ViewBag.id = new SelectList(db.PersonelDetays, "personelid", "thumb", personel.id);
            ViewBag.id = new SelectList(db.PersonelDevirs, "personelID", "personelID", personel.id);
            return View(personel);
        }

        // GET: Test/Delete/5
        public async Task<ActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Personel personel = await db.Personels.FindAsync(id);
            if (personel == null)
            {
                return HttpNotFound();
            }
            return View(personel);
        }

        // POST: Test/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> DeleteConfirmed(int id)
        {
            Personel personel = await db.Personels.FindAsync(id);
            db.Personels.Remove(personel);
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
