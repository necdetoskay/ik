using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Validation;
using System.Linq;
using System.Threading.Tasks;
using System.Net;
using System.Web;
using System.Web.Mvc;
using DevExpress.XtraScheduler.Native;
using ik.Models;

namespace ik.Areas.OzlukAdmin.Controllers
{
    public class AileFertleriController : Controller
    {
        private ikEntities db = new ikEntities();


        public async Task<ActionResult> AileFertleri()
        {
            return View();
        }




        // GET: OzlukAdmin/AileFertleri
        public async Task<ActionResult> Index()
        {
            var ozluk_AileFertleri = db.Ozluk_AileFertleri.Include(o => o.Ozluk_Enum_Detay).Include(o => o.Personel);
            return View(await ozluk_AileFertleri.ToListAsync());
        }

        // GET: OzlukAdmin/AileFertleri/Details/5
        public async Task<ActionResult> Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Ozluk_AileFertleri ozluk_AileFertleri = await db.Ozluk_AileFertleri.FindAsync(id);
            if (ozluk_AileFertleri == null)
            {
                return HttpNotFound();
            }
            return View(ozluk_AileFertleri);
        }

        // GET: OzlukAdmin/AileFertleri/Create
        public ActionResult Create()
        {
            ViewBag.yakinlikID = new SelectList(db.Ozluk_Enum_Detay, "id", "degerad");
            ViewBag.personelID = new SelectList(db.Personels, "id", "adsoyad");
            return View();
        }

        // POST: OzlukAdmin/AileFertleri/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Create([Bind(Include = "id,personelID,yakinlikID,adsoyad,dogumYeri,dogumTarihi,url")] Ozluk_AileFertleri ozluk_AileFertleri)
        {
            if (ModelState.IsValid)
            {
                db.Ozluk_AileFertleri.Add(ozluk_AileFertleri);
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }

            ViewBag.yakinlikID = new SelectList(db.Ozluk_Enum_Detay, "id", "degerad", ozluk_AileFertleri.yakinlikID);
            ViewBag.personelID = new SelectList(db.Personels, "id", "adsoyad", ozluk_AileFertleri.personelID);
            return View(ozluk_AileFertleri);
        }

        // GET: OzlukAdmin/AileFertleri/Edit/5
        public async Task<ActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Ozluk_AileFertleri ozluk_AileFertleri = await db.Ozluk_AileFertleri.FindAsync(id);
            if (ozluk_AileFertleri == null)
            {
                return HttpNotFound();
            }
            ViewBag.yakinlikID = new SelectList(db.Ozluk_Enum_Detay, "id", "degerad", ozluk_AileFertleri.yakinlikID);
            ViewBag.personelID = new SelectList(db.Personels, "id", "adsoyad", ozluk_AileFertleri.personelID);
            return View(ozluk_AileFertleri);
        }

        // POST: OzlukAdmin/AileFertleri/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Edit([Bind(Include = "id,personelID,yakinlikID,adsoyad,dogumYeri,dogumTarihi,url")] Ozluk_AileFertleri ozluk_AileFertleri)
        {
            if (ModelState.IsValid)
            {
                db.Entry(ozluk_AileFertleri).State = EntityState.Modified;
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }
            ViewBag.yakinlikID = new SelectList(db.Ozluk_Enum_Detay, "id", "degerad", ozluk_AileFertleri.yakinlikID);
            ViewBag.personelID = new SelectList(db.Personels, "id", "adsoyad", ozluk_AileFertleri.personelID);
            return View(ozluk_AileFertleri);
        }

        // GET: OzlukAdmin/AileFertleri/Delete/5
        public async Task<ActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Ozluk_AileFertleri ozluk_AileFertleri = await db.Ozluk_AileFertleri.FindAsync(id);
            if (ozluk_AileFertleri == null)
            {
                return HttpNotFound();
            }
            return View(ozluk_AileFertleri);
        }

        // POST: OzlukAdmin/AileFertleri/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> DeleteConfirmed(int id)
        {
            Ozluk_AileFertleri ozluk_AileFertleri = await db.Ozluk_AileFertleri.FindAsync(id);
            db.Ozluk_AileFertleri.Remove(ozluk_AileFertleri);
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

        /// <summary>
        /// Personele ait mevcut aile fertlerini listeler
        /// </summary>
        /// <param name="id">pdks id</param>
        /// <returns></returns>
        public ActionResult PersonelFertListe(int id)
        {
            var pers = db.Personels.FirstOrDefault(c => c.id == id);
            ViewBag.tc = pers.tcno;
            var liste = pers.Ozluk_AileFertleri.ToList();
            return PartialView(liste);
        }

        public ActionResult Ekle(int pid)
        {
            ViewBag.yakinlikListe = new SelectList(db.Ozluk_Enum_Detay.Where(c => c.enumid == 3), "id", "degerad");
            var fert = new Ozluk_AileFertleri()
            {
                personelID = pid,
                dogumTarihi = DateTime.Today
            };
            return PartialView(fert);
        }

        [HttpPost]
        [ActionName("Ekle")]
        public ActionResult EkleKaydet(int pid, Ozluk_AileFertleri model)
        {
            if (ModelState.IsValid)
            {
                db.Ozluk_AileFertleri.Add(model);
                try
                {
                    db.SaveChanges();
                }
                catch (DbEntityValidationException e)
                {
                    foreach (var eve in e.EntityValidationErrors)
                    {
                        Console.WriteLine("Entity of type \"{0}\" in state \"{1}\" has the following validation errors:",
                            eve.Entry.Entity.GetType().Name, eve.Entry.State);
                        foreach (var ve in eve.ValidationErrors)
                        {
                            Console.WriteLine("- Property: \"{0}\", Error: \"{1}\"",
                                ve.PropertyName, ve.ErrorMessage);
                        }
                    }
                    throw;
                }




                return Json(new {success=true}, JsonRequestBehavior.AllowGet);
            }


            ViewBag.yakinlikListe = new SelectList(db.Ozluk_Enum_Detay.Where(c => c.enumid == 3), "id", "degerad");
            return PartialView(model);
        }

        public ActionResult FertListe(int pid)
        {
            var pers = db.Personels.FirstOrDefault(c=>c.id==pid);
            ViewBag.tc = pers.tcno;
            var liste = pers.Ozluk_AileFertleri.ToList();
           return PartialView(liste);
        }


        public ActionResult AileFertResimEkle(string url,int fertid)
        {
            var ferturl = new Ozluk_AileFertleriUrl
            {
                ailefertID = fertid,
                url = url
            };
            db.Ozluk_AileFertleriUrl.Add(ferturl);
            db.SaveChanges();
            return Json(new {Success=true,ID=ferturl.id}, JsonRequestBehavior.AllowGet);
           
        }
    }
}
