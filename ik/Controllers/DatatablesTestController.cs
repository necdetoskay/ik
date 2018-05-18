using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ik.Models;

namespace ik.Controllers
{
    [FilterConfig.CustomActionFilter]
    public class DatatablesTestController : Controller
    {
        private ikEntities db=new ikEntities();
        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }

        // GET: DatatablesTest
        public ActionResult Index()
        {
            var liste = db.PersonelOzlukEvraks.ToList();
            return View(liste);
        }
    }
}