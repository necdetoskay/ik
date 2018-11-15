using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ik.Models;

namespace ik.Controllers
{
    [FilterConfig.CustomActionFilter]
    [Authorize(Users = @"KENTKONUT\noskay,KENTKONUT\derya.aslan")]
    public class GenelController : Controller
    {
        private ikEntities db = new ikEntities();
        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }

        // GET: Genel
        public ActionResult Index()
        {
            return View();
        }

        public JsonResult Gun(DateTime tarih)
        {
            try
            {
                var gun = db.DiniGunlers.SingleOrDefault(c => c.tarih == tarih.Date);
                if (gun != null)
                    return Json(new { Success = true, Data = gun.ad }, JsonRequestBehavior.AllowGet);
            }
            catch (Exception x)
            {

              
            }
            return Json( new {Success=false,Data=""}, JsonRequestBehavior.AllowGet);
        }
    }
}