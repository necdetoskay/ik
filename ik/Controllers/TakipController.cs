using System;
using System.Linq;
using System.Web.Mvc;
using ik.Models;

namespace ik.Controllers
{
    [Authorize(Users = @"KENTKONUT\noskay,KENTKONUT\agokalp")]
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
            var liste = db.Takips.OrderBy(c => c.tamamlanma != null).ThenBy(c => c.sontarih).Take(10).ToList();
            return View(liste);
        }

        // GET: Takip/Create
        public ActionResult Create()
        {
            if (User.Identity.Name != @"KENTKONUT\noskay")
                return RedirectToAction("Index");
            return View();
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
                    return RedirectToAction("Index");
                }
                return View(takip);
            }
            catch (Exception ex)
            {
                return View(takip);
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
    }
}