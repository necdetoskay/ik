﻿using DevExpress.Web.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ik.Models;

namespace ik.Controllers
{
    [FilterConfig.CustomActionFilter]
    [Authorize(Users = @"KENTKONUT\noskay,KENTKONUT\agokalp")]
    public class AileFertleriController : Controller
    {

        // GET: AileFertleri
        public ActionResult Index()
        {
           
            return View();
        }





        ik.Models.KENTEntities db = new ik.Models.KENTEntities();

    }
}