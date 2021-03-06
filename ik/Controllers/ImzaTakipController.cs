﻿using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ik.Models;
using Microsoft.Ajax.Utilities;

namespace ik.Controllers
{
    [FilterConfig.CustomActionFilter]
    [Authorize(Users = @"KENTKONUT\noskay,KENTKONUT\derya.aslan")]
    public class ImzaTakipController : Controller
    {
        private readonly ikEntities db = new ikEntities();

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }

        // GET: ImzaTakip
        public ActionResult Index()
        {
            var liste = db.ImzaTakips.OrderByDescending(c=>c.id).ToList();
            return View(liste);
        }

        public ActionResult Create()
        {
            ViewBag.grupListe = new SelectList(db.Grups, "id", "ad");
            return PartialView();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(ImzaTakip takip)
        {
            if (ModelState.IsValid)
            {
                db.ImzaTakips.Add(takip);
                db.SaveChanges();
                var grup = db.Grups.FirstOrDefault(c => c.id == takip.grupID);
                grup.PersonelGrups.ForEach(c=>takip.ImzaTakipDetays.Add(new ImzaTakipDetay
                {
                    takipid = takip.id,personelID = c.personelid
                }));
                //kaydet
                db.SaveChanges();
                return Json(new { success = true });
            }
            ViewBag.grupListe = new SelectList(db.Grups, "id", "ad");
            return PartialView(takip);

        }



        [HttpPost]
        public JsonResult _imzalistekaydet(int[] liste,string ad)
        {
            var grup = new Grup
            {
                ad = ad
            };
            db.Grups.Add(grup);
            liste.ForEach(c=>grup.PersonelGrups.Add(new PersonelGrup
            {
                personelid = c
            }));

            db.SaveChanges();
            
            return Json(new {Success=true,redirect=true,redirecturl=@Url.Action("PersonelGrup","Grups",new {grupid=grup.id}),Data=string.Format("{0} adet personel {1} adlı gruba kaydedildi",grup.PersonelGrups.Count,grup.ad)},JsonRequestBehavior.AllowGet);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="id">imza takip id</param>
        /// <returns></returns>
        public ActionResult ImzaTakipDetay(int id)
        {
            ViewBag.ImzaTakipID = id;
            var liste = db.ImzaTakipDetays.Where(c => c.takipid == id);
            return View(liste);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="id">imzatakipid bu id den personel id si bulunabilir</param>
        /// <returns></returns>
        public ActionResult TakipImzala(int id)
        {
            var detay = db.ImzaTakipDetays.SingleOrDefault(c => c.id == id);
            return PartialView(detay);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult TakipImzala(int id,ImzaTakipDetay model)
        {
            if (ModelState.IsValid)
            {
                model.imzaTarih=DateTime.Now;
                db.Entry(model).State= EntityState.Modified;
                db.SaveChanges();
                return Json(new {success = true}, JsonRequestBehavior.AllowGet);
            }
            return PartialView(model);
        }

        public ActionResult ImzaTakibeEkle(int takipid)
        {
            ViewBag.TakipId = takipid;
            return View();
        }

        public JsonResult _imzatakippersonelliste(int takipid)
        {
            try
            {
                var liste = db.ImzaTakips.FirstOrDefault(c => c.id == takipid).ImzaTakipDetays.Select(d => new Personel
                {
                    id = d.personelID,
                    adsoyad = d.Personel.adsoyad
                });//dropdown için personel listesi oluştur, yukarıdaki listedekileri dropdown listesinden çıkart
                var liste2 = db.Personels.Where(c => c.cikistarihi == null).ToList();

                foreach (var olanlar in liste)
                {
                    foreach (var olmayanlar in liste2)
                    {
                        if (olanlar.id == olmayanlar.id)
                        {
                            liste2.Remove(olmayanlar);
                            break;
                        }
                    }
                }

            


                var sonliste = liste2.GroupBy(e => e.birim.birimad).Select(d => new
                {
                    Birim = d.Key,
                    Personeller = d.Select(f => new
                    {
                        f.adsoyad,
                        f.id,
                        f.mikroid,
                    })

                    //d.birim.birimad
                }).ToList();
                return Json(new { Success = true, Data = sonliste }, JsonRequestBehavior.AllowGet);
            }
            catch (Exception x)
            {
                return Json(new { Success = false, Data = x.InnerException }, JsonRequestBehavior.AllowGet);
            }
        }
    }
}