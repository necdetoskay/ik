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
    public class MaasIsListeOldController : Controller
    {
        private ikEntities db = new ikEntities();

        // GET: MaasIsListe
        public async Task<ActionResult> Index()
        {
            return View(await db.Maas_Is_Liste.ToListAsync());
        }

        // GET: MaasIsListe/Details/5
        public async Task<ActionResult> Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Maas_Is_Liste maas_Is_Liste = await db.Maas_Is_Liste.FindAsync(id);
            if (maas_Is_Liste == null)
            {
                return HttpNotFound();
            }
            return View(maas_Is_Liste);
        }

        // GET: MaasIsListe/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: MaasIsListe/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Create([Bind(Include = "id,ad,durum")] Maas_Is_Liste maas_Is_Liste)
        {
            if (ModelState.IsValid)
            {
                db.Maas_Is_Liste.Add(maas_Is_Liste);
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }

            return View(maas_Is_Liste);
        }

        // GET: MaasIsListe/Edit/5
        public async Task<ActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Maas_Is_Liste maas_Is_Liste = await db.Maas_Is_Liste.FindAsync(id);
            if (maas_Is_Liste == null)
            {
                return HttpNotFound();
            }
            return View(maas_Is_Liste);
        }

        // POST: MaasIsListe/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Edit([Bind(Include = "id,ad,durum")] Maas_Is_Liste maas_Is_Liste)
        {
            if (ModelState.IsValid)
            {
                db.Entry(maas_Is_Liste).State = EntityState.Modified;
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }
            return View(maas_Is_Liste);
        }

        // GET: MaasIsListe/Delete/5
        public async Task<ActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Maas_Is_Liste maas_Is_Liste = await db.Maas_Is_Liste.FindAsync(id);
            if (maas_Is_Liste == null)
            {
                return HttpNotFound();
            }
            return View(maas_Is_Liste);
        }

        // POST: MaasIsListe/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> DeleteConfirmed(int id)
        {
            Maas_Is_Liste maas_Is_Liste = await db.Maas_Is_Liste.FindAsync(id);
            db.Maas_Is_Liste.Remove(maas_Is_Liste);
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

        public async Task<ActionResult> AtlIsler(int id)
        {
            var iş = db.Maas_Is_Liste.FirstOrDefault(c =>c.id==id);
            ViewBag.IsAd = iş.ad;
            ViewBag.MaasIsListeId = id;
            var altliste = db.Maas_Is_Liste_Detay.Where(c => c.maasIsListeId == id);
            return View(await altliste.ToListAsync());
        }

        public ActionResult AtlIsEkle(int id)
        {
            return PartialView(new Maas_Is_Liste_Detay
            {
                maasIsListeId = id
            });
        }

        [HttpPost]
        public ActionResult AtlIsEkle(int id,Maas_Is_Liste_Detay detay)
        {
            if (ModelState.IsValid)
            {
                db.Maas_Is_Liste_Detay.Add(detay);
                db.SaveChanges();
            }
            return Json(new { success=true},JsonRequestBehavior.AllowGet);
        }

        public ActionResult ListeOlustur()
        {
            return View();
        }

        public ActionResult _ListeOlustur(int yil,int ay)
        {
            var liste = db.Maas_Is_Liste.ToList();
            return PartialView(liste);
        }

        public JsonResult _ListeKaydet(string[][] data,int ay=0,int yil=0)
        {
            foreach (var iş in data)
            {
                var parent = int.Parse(iş[0]);
                var child = int.Parse(iş[1]);
                var maasis = db.Maas_Is.FirstOrDefault(c => c.tahakkukay == ay & c.tahakkukyil == yil & c.isId == parent&c.durum==true);
                if (maasis==null)
                {
                    maasis = new Maas_Is
                    {
                        durum = true,
                        tahakkukay = ay,
                        tahakkukyil = yil,
                        isId = parent
                    };
                    db.Maas_Is.Add(maasis);
                }
                if (child > 0)
                {
                    if (db.Maas_Is_Detay.Any(c => c.maasIsId == parent & c.maasIsListeDetayId == child))
                    {

                    }
                    else
                    {
                        maasis.Maas_Is_Detay.Add(new Maas_Is_Detay
                        {
                            durum = true,
                            maasIsListeDetayId = child
                        });
                    }

                  
                }
            }
            try
            {
                db.SaveChanges();
            }
            catch (Exception ex)
            {}
            return null;
        }
    }
}
