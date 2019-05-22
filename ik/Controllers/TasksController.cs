using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using ik.Models;

namespace ik.Controllers
{
    public class TasksController : Controller
    {
        private ikEntities db = new ikEntities();

        // GET: Tasks
        public ActionResult Index()
        {
            return View(db.Tasks.ToList());
        }

        // GET: Tasks/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Task task = db.Tasks.Find(id);
            if (task == null)
            {
                return HttpNotFound();
            }
            return View(task);
        }

        // GET: Tasks/Create
        public ActionResult Create()
        {
            var t = new Task
            {
                tarih = DateTime.Now,
                sontarih = DateTime.Now
            };
            return View(t);
        }

        // POST: Tasks/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "id,ad,tarih,sontarih")] Task task)
        {
            if (ModelState.IsValid)
            {
                db.Tasks.Add(task);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(task);
        }

        // GET: Tasks/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Task task = db.Tasks.Find(id);
            if (task == null)
            {
                return HttpNotFound();
            }
            return View(task);
        }

        // POST: Tasks/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "id,ad,tarih,sontarih")] Task task)
        {
            if (ModelState.IsValid)
            {
                db.Entry(task).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(task);
        }

        // GET: Tasks/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Task task = db.Tasks.Find(id);
            if (task == null)
            {
                return HttpNotFound();
            }
            return View(task);
        }

        // POST: Tasks/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Task task = db.Tasks.Find(id);
            db.Tasks.Remove(task);
            db.SaveChanges();
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
        public ActionResult TaskPersonelListeEkle(int id)
        {
            var task = db.Tasks.FirstOrDefault(c => c.id == id);
            return View(task);
        }
        public ActionResult _PersonelTaskSelectList(int id)
        {
            var task = db.Tasks.FirstOrDefault(c => c.id == id).Task_Details;
            var l = task.Select(d => d.Personel).Select(c=>c.id).ToList();
            //var per = db.Personels.Where(c => c.cikistarihi == null).Except(task.Select(d => d.Personel)).ToList();
            var pers = db.Personels.Where(c => c.cikistarihi==null & !l.Contains(c.id))
               .Select(d => new
               {
                   Text = d.adsoyad,
                   Value = d.id
               }).ToList();

            return Json(new { Success = true, Data = pers }, JsonRequestBehavior.AllowGet);
        }

        public JsonResult _AddPersonelToTask(int[] selected,int id)
        {
            var task = db.Tasks.SingleOrDefault(c => c.id == id);
            foreach (var sel in selected)
            {
               task.Task_Details.Add(new Task_Details
               {
                   personelid = sel
               });
               
            }
            try
            {
                db.SaveChanges();
            }
            catch (Exception x)
            {

            }
            return Json(new {Success = true});
        }

        public ActionResult _TaskPersonels(int taskid)
        {
            var pers = db.Task_Details.Where(c => c.taskid == taskid);
            return PartialView(pers);
        }

        public JsonResult _DeleteTaskDetail(int id)
        {
            var td = db.Task_Details.FirstOrDefault(c => c.id == id);
            db.Task_Details.Remove(td);
            db.SaveChanges();
            return Json(new {Success=true},JsonRequestBehavior.AllowGet);

        }

        public JsonResult _ConfirmTaskDetail(int id)
        {
            var td = db.Task_Details.FirstOrDefault(c => c.id == id);
            td.tarih=DateTime.Now;
            db.SaveChanges();
            return Json(new { Success = true }, JsonRequestBehavior.AllowGet);
        }

        public ActionResult _CancelTaskDetail(int id)
        {
            var td = db.Task_Details.FirstOrDefault(c => c.id == id);
            td.tarih = null;
            db.SaveChanges();
            return Json(new { Success = true }, JsonRequestBehavior.AllowGet);
        }
    }

   
}
