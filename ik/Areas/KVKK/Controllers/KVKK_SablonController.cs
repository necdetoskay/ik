using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Threading.Tasks;
using System.Net;
using System.Web;
using System.Web.Mvc;
using ik.Areas.KVKK.Models;

namespace ik.Areas.KVKK.Controllers
{
    public class KVKK_SablonController : Controller
    {
        private KvkkEntities db = new KvkkEntities();

        // GET: KVKK/KVKK_Sablon
        public async Task<ActionResult> Index()
        {
            var kVKK_Sablon = db.KVKK_Sablon.Include(k => k.KVKK_1_VeriSahibi).Include(k => k.KVKK_2_VeriIslemeAmaci).Include(k => k.KVKK_3_VeriTransferAlici).Include(k => k.KVKK_5_VeriSaklamaSuresi).Include(k => k.KVKK_Departman).Include(k => k.KVKK_Faaliyet).Include(k => k.KVKK_HukukiDayanak).Include(k => k.KVKK_KisiselVeri).Include(k => k.KVKK_VeriKategori);
            //var kVKK_Sablon = db.KVKK_Sablon.Include(k => k.KVKK_1_VeriSahibi).Include(k => k.KVKK_2_VeriIslemeAmaci).Include(k => k.KVKK_3_VeriTransferAlici).Include(k => k.KVKK_5_VeriSaklamaSuresi).Include(k => k.KVKK_Departman).Include(k => k.KVKK_Faaliyet).Include(k => k.KVKK_HukukiDayanak).Include(k => k.KVKK_IdariTedbirGrup).Include(k => k.KVKK_KisiselVeri).Include(k => k.KVKK_TeknikTedbirGrup).Include(k => k.KVKK_VeriKategori);
            return View(await kVKK_Sablon.ToListAsync());
        }

        // GET: KVKK/KVKK_Sablon/Details/5
        public async Task<ActionResult> Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            KVKK_Sablon kVKK_Sablon = await db.KVKK_Sablon.FindAsync(id);
            if (kVKK_Sablon == null)
            {
                return HttpNotFound();
            }
            return View(kVKK_Sablon);
        }

        // GET: KVKK/KVKK_Sablon/Create
        public ActionResult Create()
        {
            ViewBag.verisahibiID = new SelectList(db.KVKK_1_VeriSahibi, "id", "verisahibi");
            ViewBag.veriislemeamacID = new SelectList(db.KVKK_2_VeriIslemeAmaci, "id", "veriislemeamaci");
            ViewBag.veritransferaliciID = new SelectList(db.KVKK_3_VeriTransferAlici, "id", "veritransferalicisi");
            ViewBag.verisaklamasuresiID = new SelectList(db.KVKK_5_VeriSaklamaSuresi, "id", "verisaklamasuresi");
            ViewBag.departmanID = new SelectList(db.KVKK_Departman, "id", "departman");
            ViewBag.faaliyetID = new SelectList(db.KVKK_Faaliyet, "id", "faaliyet");
            ViewBag.hukukidayanakID = new SelectList(db.KVKK_HukukiDayanak, "id", "hukukidayanak");
            ViewBag.idaritedbir = new SelectList(db.KVKK_IdariTedbir, "id", "idaritedbir");
            ViewBag.kisiselveriID = new SelectList(db.KVKK_KisiselVeri, "id", "kisiselveriad");
            ViewBag.tekniktedbir = new SelectList(db.KVKK_TeknikTedbir, "id", "tedbir");
            ViewBag.verikategoriID = new SelectList(db.KVKK_VeriKategori, "id", "verikategori");
            return View();
        }

        // POST: KVKK/KVKK_Sablon/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Create(KVKK_Sablon kVKK_Sablon,int[] idaritedbir, int[] tekniktedbir)
        {
            if (ModelState.IsValid)
            {
                db.KVKK_Sablon.Add(kVKK_Sablon);
                await db.SaveChangesAsync();
                var tedbirler=new KVKK_IdariTedbirGrup();
                foreach (var tedbir in tekniktedbir)
                {
                    tedbirler.KVKK_TeknikTedbirGrupListe.Add(new KVKK_TeknikTedbirGrupListe {tekniktedbir = tedbir});
                }
                db.KVKK_IdariTedbirGrup.Add(tedbirler);
                db.SaveChanges();
               // kVKK_Sablon.tekniktedbirgrupID == tedbirler.id;
               
                //tedbirleri kaydet 
                // şablonu tekrar kaydet 

                return RedirectToAction("Index");
            }

            ViewBag.verisahibiID = new SelectList(db.KVKK_1_VeriSahibi, "id", "verisahibi");
            ViewBag.veriislemeamacID = new SelectList(db.KVKK_2_VeriIslemeAmaci, "id", "veriislemeamaci");
            ViewBag.veritransferaliciID = new SelectList(db.KVKK_3_VeriTransferAlici, "id", "veritransferalicisi");
            ViewBag.verisaklamasuresiID = new SelectList(db.KVKK_5_VeriSaklamaSuresi, "id", "verisaklamasuresi");
            ViewBag.departmanID = new SelectList(db.KVKK_Departman, "id", "departman");
            ViewBag.faaliyetID = new SelectList(db.KVKK_Faaliyet, "id", "faaliyet");
            ViewBag.hukukidayanakID = new SelectList(db.KVKK_HukukiDayanak, "id", "hukukidayanak");
            ViewBag.idaritedbir = new SelectList(db.KVKK_IdariTedbir, "id", "idaritedbir");
            ViewBag.kisiselveriID = new SelectList(db.KVKK_KisiselVeri, "id", "kisiselveriad");
            ViewBag.tekniktedbir = new SelectList(db.KVKK_TeknikTedbir, "id", "tedbir");
            ViewBag.verikategoriID = new SelectList(db.KVKK_VeriKategori, "id", "verikategori");
            return View(kVKK_Sablon);
        }

        // GET: KVKK/KVKK_Sablon/Edit/5
        public async Task<ActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            KVKK_Sablon kVKK_Sablon = await db.KVKK_Sablon.FindAsync(id);
            if (kVKK_Sablon == null)
            {
                return HttpNotFound();
            }
            ViewBag.verisahibiID = new SelectList(db.KVKK_1_VeriSahibi, "id", "verisahibi", kVKK_Sablon.verisahibiID);
            ViewBag.veriislemeamacID = new SelectList(db.KVKK_2_VeriIslemeAmaci, "id", "veriislemeamaci", kVKK_Sablon.veriislemeamacID);
            ViewBag.veritransferaliciID = new SelectList(db.KVKK_3_VeriTransferAlici, "id", "veritransferalicisi", kVKK_Sablon.veritransferaliciID);
            ViewBag.verisaklamasuresiID = new SelectList(db.KVKK_5_VeriSaklamaSuresi, "id", "verisaklamasuresi", kVKK_Sablon.verisaklamasuresiID);
            ViewBag.departmanID = new SelectList(db.KVKK_Departman, "id", "departman", kVKK_Sablon.departmanID);
            ViewBag.faaliyetID = new SelectList(db.KVKK_Faaliyet, "id", "faaliyet", kVKK_Sablon.faaliyetID);
            ViewBag.hukukidayanakID = new SelectList(db.KVKK_HukukiDayanak, "id", "hukukidayanak", kVKK_Sablon.hukukidayanakID);
            ViewBag.idaritedbirgrupID = new SelectList(db.KVKK_IdariTedbirGrup, "id", "id", kVKK_Sablon.idaritedbirgrupID);
            ViewBag.kisiselveriID = new SelectList(db.KVKK_KisiselVeri, "id", "kisiselveriad", kVKK_Sablon.kisiselveriID);
            ViewBag.tekniktedbirgrupID = new SelectList(db.KVKK_TeknikTedbirGrup, "id", "id", kVKK_Sablon.tekniktedbirgrupID);
            ViewBag.verikategoriID = new SelectList(db.KVKK_VeriKategori, "id", "verikategori", kVKK_Sablon.verikategoriID);
            return View(kVKK_Sablon);
        }

        // POST: KVKK/KVKK_Sablon/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Edit([Bind(Include = "id,departmanID,kisiselveriID,faaliyetID,verikategoriID,ozelNitelik,verisahibiID,veriislemeamacID,hukukidayanakID,yurticiaktarım,veritransferaliciID,yurtdisiaktarim,idaritedbirgrupID,tekniktedbirgrupID,verisaklamasuresiID")] KVKK_Sablon kVKK_Sablon)
        {
            if (ModelState.IsValid)
            {
                db.Entry(kVKK_Sablon).State = EntityState.Modified;
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }
            ViewBag.verisahibiID = new SelectList(db.KVKK_1_VeriSahibi, "id", "verisahibi", kVKK_Sablon.verisahibiID);
            ViewBag.veriislemeamacID = new SelectList(db.KVKK_2_VeriIslemeAmaci, "id", "veriislemeamaci", kVKK_Sablon.veriislemeamacID);
            ViewBag.veritransferaliciID = new SelectList(db.KVKK_3_VeriTransferAlici, "id", "veritransferalicisi", kVKK_Sablon.veritransferaliciID);
            ViewBag.verisaklamasuresiID = new SelectList(db.KVKK_5_VeriSaklamaSuresi, "id", "verisaklamasuresi", kVKK_Sablon.verisaklamasuresiID);
            ViewBag.departmanID = new SelectList(db.KVKK_Departman, "id", "departman", kVKK_Sablon.departmanID);
            ViewBag.faaliyetID = new SelectList(db.KVKK_Faaliyet, "id", "faaliyet", kVKK_Sablon.faaliyetID);
            ViewBag.hukukidayanakID = new SelectList(db.KVKK_HukukiDayanak, "id", "hukukidayanak", kVKK_Sablon.hukukidayanakID);
            ViewBag.idaritedbirgrupID = new SelectList(db.KVKK_IdariTedbirGrup, "id", "id", kVKK_Sablon.idaritedbirgrupID);
            ViewBag.kisiselveriID = new SelectList(db.KVKK_KisiselVeri, "id", "kisiselveriad", kVKK_Sablon.kisiselveriID);
            ViewBag.tekniktedbirgrupID = new SelectList(db.KVKK_TeknikTedbirGrup, "id", "id", kVKK_Sablon.tekniktedbirgrupID);
            ViewBag.verikategoriID = new SelectList(db.KVKK_VeriKategori, "id", "verikategori", kVKK_Sablon.verikategoriID);
            return View(kVKK_Sablon);
        }

        // GET: KVKK/KVKK_Sablon/Delete/5
        public async Task<ActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            KVKK_Sablon kVKK_Sablon = await db.KVKK_Sablon.FindAsync(id);
            if (kVKK_Sablon == null)
            {
                return HttpNotFound();
            }
            return View(kVKK_Sablon);
        }

        // POST: KVKK/KVKK_Sablon/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> DeleteConfirmed(int id)
        {
            KVKK_Sablon kVKK_Sablon = await db.KVKK_Sablon.FindAsync(id);
            db.KVKK_Sablon.Remove(kVKK_Sablon);
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

        public JsonResult _KisiselVeriEkle(string ad)
        {

            if (db.KVKK_KisiselVeri.Any(c => c.kisiselveriad == ad) || ad.Trim().Length < 5)
                return Json(new { Success = false }, JsonRequestBehavior.AllowGet);
            db.KVKK_KisiselVeri.Add(
                new KVKK_KisiselVeri()
                {
                    kisiselveriad = ad
                });
            db.SaveChanges();

            var liste = db.KVKK_KisiselVeri.Select(c => new
            {
                Value = c.id,
                Text = c.kisiselveriad
            }).ToList();


            return Json(new { Success = true, Data = liste }, JsonRequestBehavior.AllowGet);
        }

        public JsonResult _FaaliyetEkle(string ad)
        {
            if (db.KVKK_Faaliyet.Any(c => c.faaliyet == ad) || ad.Trim().Length < 5)
                return Json(new { Success = false }, JsonRequestBehavior.AllowGet);
            db.KVKK_Faaliyet.Add(
                new KVKK_Faaliyet()
                {
                    faaliyet = ad
                });
            db.SaveChanges();

            var liste = db.KVKK_Faaliyet.Select(c => new
            {
                Value = c.id,
                Text = c.faaliyet
            }).ToList();


            return Json(new { Success = true, Data = liste }, JsonRequestBehavior.AllowGet);
        }

        public JsonResult _VeriKategoriEkle(string ad)
        {
            if (db.KVKK_VeriKategori.Any(c => c.verikategori == ad) || ad.Trim().Length < 5)
                return Json(new { Success = false }, JsonRequestBehavior.AllowGet);
            db.KVKK_VeriKategori.Add(
                new KVKK_VeriKategori()
                {
                    verikategori = ad
                });
            db.SaveChanges();

            var liste = db.KVKK_VeriKategori.Select(c => new
            {
                Value = c.id,
                Text = c.verikategori
            }).ToList();
            return Json(new { Success = true, Data = liste }, JsonRequestBehavior.AllowGet);
        }

        public JsonResult _VeriSahibiEkle(string ad)
        {
            if (db.KVKK_1_VeriSahibi.Any(c => c.verisahibi == ad) || ad.Trim().Length < 5)
                return Json(new { Success = false }, JsonRequestBehavior.AllowGet);
            db.KVKK_1_VeriSahibi.Add(
                new KVKK_1_VeriSahibi()
                {
                    verisahibi = ad
                });
            db.SaveChanges();

            var liste = db.KVKK_1_VeriSahibi.Select(c => new
            {
                Value = c.id,
                Text = c.verisahibi
            }).ToList();
            return Json(new { Success = true, Data = liste }, JsonRequestBehavior.AllowGet);
        }

        public JsonResult _VeriİslemeAmacıEkle(string ad)
        {
            if (db.KVKK_2_VeriIslemeAmaci.Any(c => c.veriislemeamaci == ad) || ad.Trim().Length < 5)
                return Json(new { Success = false }, JsonRequestBehavior.AllowGet);
            db.KVKK_2_VeriIslemeAmaci.Add(
                new KVKK_2_VeriIslemeAmaci()
                {
                    veriislemeamaci = ad
                });
            db.SaveChanges();

            var liste = db.KVKK_2_VeriIslemeAmaci.Select(c => new
            {
                Value = c.id,
                Text = c.veriislemeamaci
            }).ToList();
            return Json(new { Success = true, Data = liste }, JsonRequestBehavior.AllowGet);
        }

        public JsonResult _HukukiDayanakEkle(string ad)
        {
            if (db.KVKK_HukukiDayanak.Any(c => c.hukukidayanak == ad) || ad.Trim().Length < 5)
                return Json(new { Success = false }, JsonRequestBehavior.AllowGet);
            db.KVKK_HukukiDayanak.Add(
                new KVKK_HukukiDayanak()
                {
                    hukukidayanak = ad
                });
            db.SaveChanges();

            var liste = db.KVKK_HukukiDayanak.Select(c => new
            {
                Value = c.id,
                Text = c.hukukidayanak
            }).ToList();
            return Json(new { Success = true, Data = liste }, JsonRequestBehavior.AllowGet);
        }

        public JsonResult _IdariTedbirEkle(string ad)
        {
            if (db.KVKK_IdariTedbir.Any(c => c.idaritedbir == ad) || ad.Trim().Length < 5)
                return Json(new { Success = false }, JsonRequestBehavior.AllowGet);
            db.KVKK_IdariTedbir.Add(
                new KVKK_IdariTedbir()
                {
                    idaritedbir = ad
                });
            db.SaveChanges();

            var liste = db.KVKK_IdariTedbir.Select(c => new
            {
                Value = c.id,
                Text = c.idaritedbir
            }).ToList();
            return Json(new { Success = true, Data = liste }, JsonRequestBehavior.AllowGet);
        }

        public JsonResult _TeknikTedbirEkle(string ad)
        {
            if (db.KVKK_TeknikTedbir.Any(c => c.tedbir == ad) || ad.Trim().Length < 5)
                return Json(new { Success = false }, JsonRequestBehavior.AllowGet);
            db.KVKK_TeknikTedbir.Add(
                new KVKK_TeknikTedbir()
                {
                    tedbir = ad
                });
            db.SaveChanges();

            var liste = db.KVKK_TeknikTedbir.Select(c => new
            {
                Value = c.id,
                Text = c.tedbir
            }).ToList();
            return Json(new { Success = true, Data = liste }, JsonRequestBehavior.AllowGet);
        }

        public JsonResult _KategoriTitle (int id)
        {
            var title = db.KVKK_VeriKategori.FirstOrDefault(c => c.id == id)?.örnekler;

            return Json(title, JsonRequestBehavior.AllowGet);
        }

        public ActionResult _DepartmanEkle(string ad)
        {
            if (db.KVKK_Departman.Any(c => c.departman == ad) || ad.Trim().Length < 5)
                return Json(new { Success = false }, JsonRequestBehavior.AllowGet);
            db.KVKK_Departman.Add(
                new KVKK_Departman()
                {
                    departman = ad
                });
            db.SaveChanges();

            var liste = db.KVKK_Departman.Select(c => new
            {
                Value = c.id,
                Text = c.departman
            }).ToList();
            return Json(new { Success = true, Data = liste }, JsonRequestBehavior.AllowGet);
        }
    }
}
