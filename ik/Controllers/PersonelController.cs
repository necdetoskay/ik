using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ik.Models;

namespace ik.Controllers
{
    [Authorize(Users = @"KENTKONUT\noskay")]
    public class PersonelController : Controller
    {

        private ikEntities db = new ikEntities();
        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }

        // GET: Personel
        public ActionResult Index()
        {

            return View();
        }
    }
}