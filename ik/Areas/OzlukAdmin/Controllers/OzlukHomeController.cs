using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ik.Areas.OzlukAdmin.Controllers
{
    public class OzlukHomeController : Controller
    {
        // GET: OzlukAdmin/Home
        public ActionResult Index()
        {
            return View();
        }
    }
}