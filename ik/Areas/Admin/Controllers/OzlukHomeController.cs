using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ik.Areas.Admin.Controllers
{
    [FilterConfig.CustomActionFilter]
    [Authorize(Users = @"KENTKONUT\noskay,KENTKONUT\derya.aslan")]
    public class OzlukHomeController : Controller
    {
        // GET: Admin/Home
        public ActionResult Index()
        {
            return View();
        }

      
    }
}