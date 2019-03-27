using System;
using System.Collections.Generic;
using System.IO;
using System.Security.Cryptography;
using System.Text;
using System.Web.Mvc;
using ik.Models;
using Newtonsoft.Json;

namespace ik.Controllers
{
    [FilterConfig.CustomActionFilter]
    [Authorize(Users = @"KENTKONUT\noskay,KENTKONUT\derya.aslan")]
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            //"cNxnPxplYwOwHK1G+V37ak/9ERDOI00NK2AQ0qjTTDhEMQJLgdVk7g=="
           
            //var m=new MaasHesap(MaaşHesapTip.BrüttenNete);
            //m.Tutar = 4494.64M;


            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }



    }

    

}