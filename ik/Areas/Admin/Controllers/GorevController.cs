using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ik.Models;

namespace ik.Areas.Admin.Controllers
{
    [FilterConfig.CustomActionFilter]
    [Authorize(Users = @"KENTKONUT\noskay,KENTKONUT\derya.aslan")]
    public class GorevController : Controller
    {
        private ikEntities db = new ikEntities();
        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }


        // GET: Gorev
        public ActionResult Index()
        {
            var liste = db.Gorev_Detay.Where(c => c.aktif);
            return View(liste);
        }

        public ActionResult Create(int? parentid)
        {
            var gorev = new Gorev_Detay { parentID = parentid,aktif = true};
            return PartialView(gorev);
        }

        [HttpPost]
        public ActionResult Create(Gorev_Detay model, int? parentid)
        {
            if (ModelState.IsValid)
            {
                db.Gorev_Detay.Add(model);
                db.SaveChanges();
                return Json(new { success = true,data=new {id=model.id,parentid=model.parentID,ad=model.ad} });
            }
            return PartialView(model);
        }

        public ActionResult GorevSil(int id)
        {
            try
            {
                var gorev = db.Gorev_Detay.FirstOrDefault(c => c.id == id);
                db.Gorev_Detay.Remove(gorev);
                db.SaveChanges();
                return Json(new { Success = true,data=new {id} }, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                return Json(new { Success = false,Message=ex.Message }, JsonRequestBehavior.AllowGet);
            }
        }
    }
}