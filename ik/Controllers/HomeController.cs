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

        public int[] ikiTarihFarki(DateTime sonTarih, DateTime ilkTarih)

        {
            int ilkGun, ilkAy, ilkYil;
            int sonGun, sonAy, sonYil;
            int farkYil, farkAy, farkGun;
            farkYil = 0; farkAy = 0; farkGun = 0;
            ilkYil = ilkTarih.Year;
            ilkAy = ilkTarih.Month;
            ilkGun = ilkTarih.Day;
            sonGun = sonTarih.Day;
            sonAy = sonTarih.Month;
            sonYil = sonTarih.Year;
            if (sonGun < ilkGun){
                sonGun += DateTime.DaysInMonth(sonYil, sonAy);
                farkGun = sonGun - ilkGun;
                sonAy--;
                if (sonAy < ilkAy){
                    sonAy += 12;
                    sonYil--;
                    farkAy = sonAy - ilkAy;
                    farkYil = sonYil - ilkYil;
                }else{
                    farkAy = sonAy - ilkAy;
                    farkYil = sonYil - ilkYil;
                }
            }else{
                farkGun = sonGun - ilkGun;
                if (sonAy < ilkAy){
                    sonAy += 12;
                    sonYil--;
                    farkAy = sonAy - ilkAy;
                    farkYil = sonYil - ilkYil;
                }else{
                    farkAy = sonAy - ilkAy;
                    farkYil = sonYil - ilkYil;
                }
            }
            int[] sonuc = new int[3];
            sonuc[0] = farkYil;
            sonuc[1] = farkAy;
            sonuc[2] = farkGun;
            return sonuc;
        }

        public ActionResult Index()
        {
            //var giri = new DateTime(2013, 02, 01);
            //var cik = new DateTime(2019, 5, 16);
            //var fark = ikiTarihFarki(cik, giri);

            //var kıdem = fark[0] + fark[1]/12 + fark[2]/365;
             //brüt artı son yemek brüt

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