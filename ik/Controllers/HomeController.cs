using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;
using ik.Models;

namespace ik.Controllers
{
    [FilterConfig.CustomActionFilter]
    [Authorize(Users = @"KENTKONUT\noskay,KENTKONUT\derya.aslan")]
    public class HomeController : Controller
    {
        private ikEntities db = new ikEntities();

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
            if (sonGun < ilkGun)
            {
                sonGun += DateTime.DaysInMonth(sonYil, sonAy);
                farkGun = sonGun - ilkGun;
                sonAy--;
                if (sonAy < ilkAy)
                {
                    sonAy += 12;
                    sonYil--;
                    farkAy = sonAy - ilkAy;
                    farkYil = sonYil - ilkYil;
                }
                else
                {
                    farkAy = sonAy - ilkAy;
                    farkYil = sonYil - ilkYil;
                }
            }
            else
            {
                farkGun = sonGun - ilkGun;
                if (sonAy < ilkAy)
                {
                    sonAy += 12;
                    sonYil--;
                    farkAy = sonAy - ilkAy;
                    farkYil = sonYil - ilkYil;
                }
                else
                {
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

          





            return View();
        }
        public struct Kesinti
        {
            public bool sgk;
            public bool gelirvergi;
            public bool damgavergi;
            public bool yemekistisna;
            public bool işsizlik;
        }

        public Hesap MaasHesap(
            double brütmaaş,
            double yemek,
            double avans,
            double bes,
            double devgelvermatrah = 0,
            double agi = 0,
            int sgkgun = 30,
            double mesai = 0, double mesai2 = 0, int tip = 0)
        {

            if (sgkgun == 0)
            {
                return new Hesap
                {
                    Net = 0,
                    DamgaVer = 0,
                    GelirVergisi = 0,
                    SGKPay = 0,
                    İşsizlikPay = 0
                };
            }
            var yemekistisna = 5.89;

            var dilim = db.vergi_dilim.FirstOrDefault(c => c.yil == 2020).vergi_dilim_detay.ToList();
            brütmaaş = ((brütmaaş / 30) * sgkgun);// 4307.32m;
            double brütyemek = yemek;//Math.Round(sgkgun < 22 ? (yemek / 22.0) * sgkgun : yemek);




            var yemekistisnatutar = Math.Round(yemekistisna * 22, 2);
            var sgkmatrah = Math.Round(brütmaaş + brütyemek - yemekistisnatutar + mesai + mesai2, 2);
            sgkmatrah = sgkmatrah > 22072.5 ? 22072.5 : sgkmatrah;
            double işsizlikprim = 0;
            double sgkprim = 0;
            if (tip == 1)
            {
                sgkprim = Math.Round(sgkmatrah * 0.075, 2);
                işsizlikprim = 0;
            }
            else if (tip == 0)
            {
                sgkprim = Math.Round(sgkmatrah * 0.14, 2);
                işsizlikprim = Math.Round(sgkmatrah * 0.01, 2);
            }

            var damga = Math.Round((brütmaaş + brütyemek + mesai + mesai2) * 0.00759, 2);
            var gelirvergimatrah = Math.Round(brütmaaş + brütyemek + mesai + mesai2 - sgkprim - işsizlikprim, 2);
            var kümülatif = Math.Round((decimal)(devgelvermatrah + gelirvergimatrah), 2);
            var gelirvergisi = 0m;

            var devgbmatrah = (decimal)devgelvermatrah;
            for (int i = 0; i < dilim.Count; i++)
            {
                if (devgbmatrah > dilim[i].ust)
                {
                }
                else
                {
                    if (kümülatif > dilim[i].ust)
                    {
                        var üdilim = (double)(kümülatif - dilim[i].ust);
                        var üst = (üdilim * dilim[i + 1].oran) / 100;
                        var alt = ((gelirvergimatrah - üdilim) * dilim[i].oran) / 100;
                        gelirvergisi = (decimal)(alt + üst); gelirvergisi = Math.Round(gelirvergisi, 2);
                        break;
                        //iki dilim
                    }
                    else
                    {
                        //tek dilim
                        gelirvergisi += (decimal)(gelirvergimatrah * dilim[i].oran) / 100;

                        gelirvergisi = Math.Round(gelirvergisi, 2);
                        break;
                    }
                }
            }
            //gelirvergisi hesapla
            gelirvergisi -= (decimal)agi;

            var net = brütmaaş + brütyemek + mesai + mesai2 - sgkprim - ((double)gelirvergisi) - damga - işsizlikprim;
            return new Hesap
            {
                Net = Math.Round(net, 2),
                DamgaVer = damga,
                GelirVergisi = (double)gelirvergisi,
                SGKPay = sgkprim,
                İşsizlikPay = işsizlikprim
            };
        }




        public ActionResult About()
        {
          
            return View();
        }

        public ActionResult Contact()
        {
            var db = new PerkotekDB();
            List<GunlukRapor> rapor= db.test();
            ViewBag.rapor = rapor;
            return View(rapor);
        }



    }



}