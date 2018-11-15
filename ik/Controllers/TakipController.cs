using System;
using System.Linq;
using System.Web.Mvc;
using ik.Models;

namespace ik.Controllers
{
    [FilterConfig.CustomActionFilter]
    [Authorize(Users = @"KENTKONUT\noskay,KENTKONUT\derya.aslan")]
    public class TakipController : Controller
    {
        private readonly ikEntities db = new ikEntities();

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }

        // GET: Takip
        public ActionResult Index()
        {
            var liste = db.Takips.Where(c => c.tamamlanma != null).OrderBy(c => c.sontarih).ToList();
            return View(liste);
        }

        // GET: Takip/Create
        public ActionResult Create()
        {
            //if (User.Identity.Name != @"KENTKONUT\noskay")
            //    return RedirectToAction("Index");
            return PartialView();
        }

        // POST: Takip/Create
        [HttpPost]
        public ActionResult Create(Takip takip)
        {
            try
            {
                takip.ekleme = DateTime.Now;
                if (ModelState.IsValid)
                {
                    db.Takips.Add(takip);
                    db.SaveChanges();
                    return Json(new { success = true }, JsonRequestBehavior.AllowGet);
                }
                return PartialView(takip);
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                return PartialView(takip);
            }
        }

        // GET: Takip/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: Takip/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Takip/Delete/5
        public ActionResult Delete(int id)
        {
            var item = db.Takips.SingleOrDefault(c => c.id == id);
            return View(item);
        }

        // POST: Takip/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, Takip takip)
        {
            try
            {
                var t = db.Takips.SingleOrDefault(c => c.id == id);
                db.Takips.Remove(t);
                db.SaveChanges();
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View(takip);
            }
        }

        public ActionResult Tamamla(int id)
        {
            var takip = db.Takips.SingleOrDefault(c => c.id == id);
            if (takip != null)
            {
                takip.tamamlanma = DateTime.Now;
                db.SaveChanges();
            }

            return RedirectToAction("Index");
        }

        public JsonResult _RutinOzet(int limit)
        {
            var date = DateTime.Now.Date.AddDays(10);
            var liste =
                db.Takips.Where(c => c.sontarih < date & c.tamamlanma == null).OrderBy(c => c.sontarih).Take(limit);
            return Json(liste, JsonRequestBehavior.AllowGet);
        }


        public ActionResult RutinOzet(int limit)
        {
            var date = DateTime.Now.Date.AddDays(10);
            var liste =
                db.Takips.Where(c => c.tamamlanma == null).OrderBy(c => c.sontarih);//.Take(limit);

            return PartialView(liste);
        }

        public JsonResult RutinTamamla(int id)
        {
            var takip = db.Takips.SingleOrDefault(c => c.id == id);
            if (takip != null)
            {
                takip.tamamlanma = DateTime.Now;
                db.SaveChanges();
            }

            return _RutinOzet(5);
        }

        public ActionResult RutinEkle()
        {
            return View();
        }

        public ActionResult RutinListe()
        {
            var liste = db.Takips.ToList();
            return View(liste);
        }



        public ActionResult _RutinSil(int id)
        {
            var kayıt = db.Takips.FirstOrDefault(c => c.id == id);
            if (kayıt != null)
            {
                db.Takips.Remove(kayıt);
                try
                {
                    db.SaveChanges();
                    return Json(new { Success = true, Message = kayıt.aciklama + "  kaydı Silindi." }, JsonRequestBehavior.AllowGet);
                }
                catch (Exception ex)
                {
                    return Json(new { Success = false, Message = ex.Message }, JsonRequestBehavior.AllowGet);
                }
            }
            return Json(new { Success = false, Message = "Kayıt Bulunamadı" }, JsonRequestBehavior.AllowGet);
        }

       

        public ActionResult AltGorevler(int id)
        {
            var liste = db.Takips.Where(c => c.parentid == id).ToList();
            return View(liste);
        }

        public void CheckForParentTamam(Takip takip)
        {
            var parent = db.Takips.FirstOrDefault(c => c.id == takip.parentid);
            if (parent != null && parent.Takip1.Any(d => d.tamamlanma != null))
            {
                parent.tamamlanma = DateTime.Now;
                db.SaveChanges();
                CheckForParentTamam(parent);
            }
        }
        public void CheckForParentIptal(Takip takip)
        {
            var parent = db.Takips.FirstOrDefault(c => c.id == takip.parentid);
            if (parent != null && parent.Takip1.Any(d => d.tamamlanma == null))
            {
                parent.tamamlanma = null;
                db.SaveChanges();
                CheckForParentIptal(parent);
            }
        }

        public JsonResult _TakipSil(int id)
        {
            var firstOrDefault = db.Takips.FirstOrDefault(c => c.id == id);
            if (firstOrDefault != null)
            {
                db.Takips.Remove(firstOrDefault);
                db.SaveChanges();
                return Json(new { Success = true },
                    JsonRequestBehavior.AllowGet);
            }
            else
            {
                return Json(new { Success = false },
                    JsonRequestBehavior.AllowGet);
            }
        }
        public JsonResult _TakipTamamla(int id, int parentid)
        {
            try
            {
                var takip = db.Takips.FirstOrDefault(c => c.id == id);
                takip.tamamlanma = DateTime.Now;
                db.SaveChanges();
                CheckForParentTamam(takip);
                return Json(new { Success = true },
                    JsonRequestBehavior.AllowGet);
            }
            catch (Exception)
            {
                return Json(new { Success = false },
                  JsonRequestBehavior.AllowGet);
            }

        }

        public JsonResult _TakipIptal(int id, int parentid)
        {
            try
            {
                var takip = db.Takips.FirstOrDefault(c => c.id == id);
                takip.tamamlanma = null;
                db.SaveChanges();
                CheckForParentIptal(takip);
                return Json(new { Success = true },
                    JsonRequestBehavior.AllowGet);
            }
            catch (Exception)
            {
                return Json(new { Success = false },
                  JsonRequestBehavior.AllowGet);
            }
        }
    }
}