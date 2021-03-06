﻿using System;
using System.Data.Entity;
using System.IO;
using System.Linq;
using System.Text;
using System.Web.Mvc;
using ik.Models;

namespace ik.Controllers
{
    [FilterConfig.CustomActionFilter]
    [Authorize(Users = @"KENTKONUT\noskay,KENTKONUT\derya.aslan")]
    public class IcraOdemeController : Controller
    {
        private readonly ikEntities db = new ikEntities();

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }

        public ActionResult Index(int icraid = -1)
        {
            if (icraid < 0)
                return RedirectToAction("Index", "Home");
            var icra = db.Icralars.FirstOrDefault(c => c.id == icraid);

            var tc = icra.Personel.tcno;
            ViewBag.tc = tc;
            ViewBag.icraid = icraid;
            return View();
        }

        [HttpPost]
        public JsonResult _IcraOdemeEkle(int icraid, string tarih, decimal tutar)
        {
            db.IcraOdemes.Add(new IcraOdeme
            {
                icraid = icraid,
                tarih = DateTime.Parse(tarih),
                tutar = tutar
            });
            db.SaveChanges();
            return _IcraListe(icraid);
        }

        public JsonResult _IcraListe(int icraid)
        {
            var icra = db.Icralars.SingleOrDefault(c => c.id == icraid);

            var icralar = icra.IcraOdemes.OrderByDescending(c => c.id).Select(c => new { c.aciklama, c.tarih, c.tutar, c.id, c.icraid, c.dosya, c.thumb });
            return Json(new { Success = true, Message = new { icra.IBAN, icra.Personel.adsoyad, icra.alacaklı, icra.dosyano, icra.icradaire, icra.tutar }, Data = icralar }, JsonRequestBehavior.AllowGet);
        }

        public JsonResult _IcraOdemeSil(int odemeid)
        {

            var icraodeme = db.IcraOdemes.SingleOrDefault(c => c.id == odemeid);
            var icra = db.Icralars.SingleOrDefault(c => c.id == icraodeme.icraid);
            db.IcraOdemes.Remove(icraodeme);
            db.SaveChanges();
            var icralar = icra.IcraOdemes.OrderByDescending(c => c.id).Select(c => new { c.aciklama, c.tarih, c.tutar, c.id, c.icraid });
            return Json(new { Success = true, Message = new { icra.IBAN, icra.Personel.adsoyad, icra.alacaklı, icra.dosyano, icra.icradaire, icra.tutar }, Data = icralar }, JsonRequestBehavior.AllowGet);
        }

        public ActionResult Test(int id)
        {
            var odeme = db.IcraOdemes.FirstOrDefault(c => c.id == id);
            return PartialView(odeme);
        }

        [HttpPost]
        public JsonResult _IcraUrlEkle(int id, string dosya, string thumb)
        {
            var icraodeme = db.IcraOdemes.FirstOrDefault(c => c.id == id);
            if (icraodeme == null)
            {
                return Json(new { Success = false }, JsonRequestBehavior.AllowGet);
            }
            icraodeme.dosya = dosya;

            icraodeme.thumb = thumb;
            db.SaveChanges();
            return Json(new { Success = true, Data = icraodeme.id }, JsonRequestBehavior.AllowGet);

        }

        public ActionResult Liste(int icraid)
        {
            var bilgi = db.Icralars.FirstOrDefault(c => c.id == icraid);
            return View(bilgi);
        }

        public ActionResult IcraOdemeler(int id)
        {
            var icra = db.Icralars.FirstOrDefault(c => c.id == id);
            var liste = icra.IcraOdemes.ToList();
            ViewBag.tc = icra.Personel.tcno;
            ViewBag.id = id;
            return PartialView(liste);
        }

        private bool _DekontSil(IcraOdeme odeme)
        {
            try
            {
                var file = Request.ServerVariables["APPL_PHYSICAL_PATH"] + "\\" + odeme.dosya;
                FileInfo fi = new FileInfo(file);
                var message = new StringBuilder();
                var success = true;
                var dosya = fi.Directory + "\\" + fi.Name;
                if (System.IO.File.Exists(dosya))
                {
                    try
                    {
                        System.IO.File.Delete(dosya);
                        message.Append("Dosya Silindi");
                        success = true;

                    }
                    catch (Exception ex)
                    {
                        message.AppendLine("Dosya Silinemedi !!");
                        message.AppendLine(ex.Message);
                        success = false;
                    }
                }
                file = Request.ServerVariables["APPL_PHYSICAL_PATH"] + "\\" + odeme.thumb;
                fi = new FileInfo(file);
                var thumb = fi.Directory + "\\thumb\\" + fi.Name;

                if (System.IO.File.Exists(thumb))
                {
                    try
                    {
                        System.IO.File.Delete(dosya);
                        message.AppendLine("[Thumb] Dosya Silindi");
                        success = true;
                    }
                    catch (Exception ex)
                    {
                        message.AppendLine("[Thumb] Dosya Silinemedi !!");
                        success = false;
                    }
                }
                else
                {
                    message.AppendLine("[Thumb] Dosya Bulunamadı !!");
                }


            }
            catch (Exception ex)
            {
                return false;
            }

            return true;
        }

        public JsonResult _OdemeDekontSil(int id)
        {
            var odeme = db.IcraOdemes.FirstOrDefault(c => c.id == id);
            var success = _DekontSil(odeme);
            if (success)
            {
                odeme.dosya = null;
                odeme.thumb = null;
                db.SaveChanges();
            }
            return Json(new { Success = success }, JsonRequestBehavior.AllowGet);
        }

        public JsonResult _IcraOdemeDekontEkle(int id,string url,string thumb)
        {
            var odeme = db.IcraOdemes.FirstOrDefault(c => c.id == id);
            odeme.dosya = url;
            odeme.thumb = thumb;
            try
            {
                db.SaveChanges();
                return Json(new { Success = true }, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                return Json(new { Success = false,ex.Message }, JsonRequestBehavior.AllowGet);
            }
        }

        public ActionResult _OdemeDuzenle(int id)
        {
            var odeme = db.IcraOdemes.FirstOrDefault(c => c.id == id);
            return PartialView("OdemeEkle",odeme);
        }

        [ActionName("_OdemeDuzenle")]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult _OdemeDuzenlePost(int id, IcraOdeme model)
        {
            if (ModelState.IsValid)
            {
                db.Entry(model).State = EntityState.Modified;
                db.SaveChanges();
                return Json(new { Success=true,Data=new{ model.id,model.aciklama,model.tarih,model.tutar}}, JsonRequestBehavior.AllowGet);
            }

            return Json(new {Success=false }, JsonRequestBehavior.AllowGet);
        }

        public ActionResult _OdemeSil(int id)
        {
            var odeme = db.IcraOdemes.FirstOrDefault(c => c.id == id);
            var sil = _DekontSil(odeme);
            if(sil)
                db.IcraOdemes.Remove(odeme);
            try
            {
                db.SaveChanges();
            
                return Json(new {Success=true }, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                return Json(new {Success=false,ex.Message }, JsonRequestBehavior.AllowGet);
            }
        }

        public ActionResult _OdemeEkle(int id)
        {
            var odeme=new IcraOdeme()
            {
                icraid = id,
                tarih = DateTime.Today
            };
            return PartialView("OdemeEkle", odeme);
        }

        [ActionName("_OdemeEkle")]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult _OdemeEklePost(int id,IcraOdeme odeme)
        {

            var icra = db.Icralars.FirstOrDefault(c => c.id==id);
            var kalan = icra.tutar - icra.IcraOdemes.Sum(c => c.tutar);
            if (odeme.tutar > kalan)
            {
                ModelState.AddModelError(String.Empty, string.Format("tutar, kalan tutar olan {0} tl den büyük olamaz",kalan));
            }
            if (ModelState.IsValid)
            {
                db.IcraOdemes.Add(odeme);
                try
                {
                    db.SaveChanges();
                    return Json(new { Success = true, Data = new { odeme.icraid,odeme.id, odeme.aciklama, odeme.tarih, odeme.tutar } }, JsonRequestBehavior.AllowGet);
                }
                catch (Exception ex)
                {
                    return Json(new { Success=false}, JsonRequestBehavior.AllowGet);
                }
            }
            return PartialView("OdemeEkle", odeme);
        }

        public ActionResult _İcraOdenenKalan(int id)
        {
            var icra = db.Icralars.FirstOrDefault(c => c.id == id);
            var durum = string.Format("{0} / {1}", icra.IcraOdemes.Sum(c => c.tutar), icra.tutar);
            return Json(new { Success=true,Data=durum }, JsonRequestBehavior.AllowGet);
        }
    }
}