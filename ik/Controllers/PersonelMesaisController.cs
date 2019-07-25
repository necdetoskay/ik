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
    public class PersonelMesaisController : Controller
    {
        private ikEntities db = new ikEntities();
        // GET: PersonelMesais
        public async Task<ActionResult> Index()
        {
            var personelMesais = db.PersonelMesais.Include(p => p.Personel);
            return View(await personelMesais.ToListAsync());
        }

        // GET: PersonelMesais/Details/5
        public async Task<ActionResult> Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            PersonelMesai personelMesai = await db.PersonelMesais.FindAsync(id);
            if (personelMesai == null)
            {
                return HttpNotFound();
            }
            return View(personelMesai);
        }

        // GET: PersonelMesais/Create
        public ActionResult Create()
        {
            ViewBag.personelID = new SelectList(db.Personels.Where(c=>c.cikistarihi==null), "id", "adsoyad");
            return View();
        }

        // POST: PersonelMesais/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Create([Bind(Include = "id,personelID,yil,ay,mesai")] PersonelMesai personelMesai)
        {
            if (ModelState.IsValid)
            {
                db.PersonelMesais.Add(personelMesai);
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }

            ViewBag.personelID = new SelectList(db.Personels.Where(c => c.cikistarihi == null), "id", "adsoyad", personelMesai.personelID);
            return View(personelMesai);
        }

        // GET: PersonelMesais/Edit/5
        public async Task<ActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            PersonelMesai personelMesai = await db.PersonelMesais.FindAsync(id);
            if (personelMesai == null)
            {
                return HttpNotFound();
            }
            ViewBag.personelID = new SelectList(db.Personels.Where(c => c.cikistarihi == null), "id", "adsoyad", personelMesai.personelID);
            return View(personelMesai);
        }

        // POST: PersonelMesais/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Edit([Bind(Include = "id,personelID,yil,ay,mesai")] PersonelMesai personelMesai)
        {
            if (ModelState.IsValid)
            {
                db.Entry(personelMesai).State = EntityState.Modified;
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }
            ViewBag.personelID = new SelectList(db.Personels.Where(c => c.cikistarihi == null), "id", "adsoyad", personelMesai.personelID);
            return View(personelMesai);
        }

        // GET: PersonelMesais/Delete/5
        public async Task<ActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            PersonelMesai personelMesai = await db.PersonelMesais.FindAsync(id);
            if (personelMesai == null)
            {
                return HttpNotFound();
            }
            return View(personelMesai);
        }

        // POST: PersonelMesais/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> DeleteConfirmed(int id)
        {
            PersonelMesai personelMesai = await db.PersonelMesais.FindAsync(id);
            db.PersonelMesais.Remove(personelMesai);
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
