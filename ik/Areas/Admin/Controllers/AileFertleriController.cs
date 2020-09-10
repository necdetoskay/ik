using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Validation;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using System.Net;
using System.Text;
using System.Web;
using System.Web.Mvc;
using ik.Models;
using ik.Models.DataClasslari;

namespace ik.Areas.Admin.Controllers
{
    [FilterConfig.CustomActionFilter]
    [Authorize(Users = @"KENTKONUT\noskay,KENTKONUT\derya.aslan")]
    public class AileFertleriController : Controller
    {
        private ikEntities db = new ikEntities();




        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        /// <summary>
        /// Personele ait mevcut aile fertlerini listeler
        /// </summary>
        /// <param name="id">pdks id</param>
        /// <returns></returns>
        public ActionResult PersonelFertListe(int id)
        {
            var pers = db.Personels.FirstOrDefault(c => c.id == id);
            ViewBag.tc = pers.tcno;
            var liste = pers.Ozluk_AileFertleri.ToList();
            return PartialView(liste);
        }

        public ActionResult Ekle(int pid)
        {
            ViewBag.yakinlikListe = new SelectList(db.Ozluk_Enum_Detay.Where(c => c.enumid == 3), "id", "degerad");
            var fert = new Ozluk_AileFertleri()
            {
                personelID = pid,
                dogumTarihi = DateTime.Today
            };
            return PartialView(fert);
        }

        [HttpPost]
        [ActionName("Ekle")]
        public ActionResult EkleKaydet(int pid, Ozluk_AileFertleri model)
        {
            if (ModelState.IsValid)
            {
                db.Ozluk_AileFertleri.Add(model);
                try
                {
                    db.SaveChanges();
                }
                catch (DbEntityValidationException e)
                {
                    foreach (var eve in e.EntityValidationErrors)
                    {
                        Console.WriteLine("Entity of type \"{0}\" in state \"{1}\" has the following validation errors:",
                            eve.Entry.Entity.GetType().Name, eve.Entry.State);
                        foreach (var ve in eve.ValidationErrors)
                        {
                            Console.WriteLine("- Property: \"{0}\", Error: \"{1}\"",
                                ve.PropertyName, ve.ErrorMessage);
                        }
                    }

                }
                return Json(new { Success = true }, JsonRequestBehavior.AllowGet);
            }


            ViewBag.yakinlikListe = new SelectList(db.Ozluk_Enum_Detay.Where(c => c.enumid == 3), "id", "degerad");
            return PartialView("Ekle", model);
        }
        /// <summary>
        /// id si verilen personelin aile fertlerini listeler
        /// </summary>
        /// <param name="pid">ik personel id'si</param>
        /// <returns></returns>
        public ActionResult FertListe(int pid)
        {
            var pers = db.Personels.FirstOrDefault(c => c.id == pid);
            ViewBag.tc = pers.tcno;
            var liste = pers.Ozluk_AileFertleri.ToList();
            return PartialView(liste);
        }

        /// <summary>
        /// /id'si verilen personel ferd i için yüklenen dosya adının database e kaydeder.
        /// </summary>
        /// <param name="url">dosya yolu</param>
        /// <param name="thumb">thumb yolu</param>
        /// <param name="fertid">kayıtlı aile ferdinin id'si</param>
        /// <returns></returns>
        public ActionResult AileFertResimEkle(string url, string thumb, int fertid)
        {
            var ferturl = new Ozluk_AileFertleriUrl
            {
                ailefertID = fertid,
                url = url,
                thumb = thumb
            };
            db.Ozluk_AileFertleriUrl.Add(ferturl);
            db.SaveChanges();
            return Json(new { Success = true, ID = ferturl.id }, JsonRequestBehavior.AllowGet);

        }

        public ActionResult AileFertdosyasil(int id)
        {
            var ferturl = db.Ozluk_AileFertleriUrl.FirstOrDefault(c => c.id == id);
            if (ferturl != null)
            {
                db.Ozluk_AileFertleriUrl.Remove(ferturl);
                try
                {
                    db.SaveChanges();
                    return Json(new { Success = true, Message = "Kayıt Silindi." }, JsonRequestBehavior.AllowGet);
                }
                catch (Exception x)
                {
                    return Json(new { Success = false, Message = x.Message }, JsonRequestBehavior.AllowGet);
                }
            }
            else
            {
                return Json(new { Success = false, Message = "Kayıt Bulunamadı" }, JsonRequestBehavior.AllowGet);
            }
        }

        /// <summary>
        /// id si verilen aileferdinin kaydınız siler
        /// </summary>
        /// <param name="id">fert id</param>
        /// <returns></returns>
        public ActionResult AileFertSil(int id)
        {
            var fert = db.Ozluk_AileFertleri.FirstOrDefault(c => c.id == id);
            StringBuilder sb = new StringBuilder();
            foreach (var ferturl in fert.Ozluk_AileFertleriUrl)
            {
                var result = IKHelper.Sil(Request, ferturl.Thumb);
                if (result) sb.AppendLine("thumb silindi");
                result = IKHelper.Sil(Request, ferturl.url);
                if (result) sb.AppendLine("url silindi");
            }
            db.Ozluk_AileFertleri.Remove(fert);
            db.SaveChanges();
            //fert sil
            //ferte bağlı url kayıtlarını sil
            //fert url ye bağlı dosyaları sil
            //hepsi silindiyse tr sil
            return Json(new { Success = true, Data = sb.ToString() }, JsonRequestBehavior.AllowGet);

        }

        public ActionResult Duzenle(int fertid)
        {
            var fert = db.Ozluk_AileFertleri.FirstOrDefault(c => c.id == fertid);
            ViewBag.yakinlikListe = new SelectList(db.Ozluk_Enum_Detay.Where(c => c.enumid == 3), "id", "degerad");
            return PartialView("Ekle", fert);
        }
        [HttpPost]
        [ActionName("Duzenle")]
        [ValidateAntiForgeryToken]
        public ActionResult DuzenlePost(int fertid, Ozluk_AileFertleri model)
        {
            if (ModelState.IsValid)
            {
                db.Entry(model).State = EntityState.Modified;
                db.SaveChanges();
                return Json(new { Success = true }, JsonRequestBehavior.AllowGet);
            }
            ViewBag.yakinlikListe = new SelectList(db.Ozluk_Enum_Detay.Where(c => c.enumid == 3), "id", "degerad");
            return PartialView("Ekle", model);
        }

       
        public ActionResult _DosyaSil(int id)
        {
            var evrak = db.Ozluk_AileFertleriUrl.FirstOrDefault(c => c.id == id);
            var dosya = new DosyaIslemleri();
            var resulturl = dosya.DosyaSil(Request, evrak.url);
            var resultthumb = dosya.DosyaSil(Request, evrak.thumb);
            if ((resulturl == DosyaSilResult.Hata || resultthumb == DosyaSilResult.Hata) &&
                (resulturl == DosyaSilResult.Silinemedi || resultthumb == DosyaSilResult.Silinemedi))
            {
                return Json(new {Success=false,Data= string.Format("Silme işlemi Başarısız: Url:{0}-Thumb:{1}",resulturl.ToString(),resultthumb.ToString()) }, JsonRequestBehavior.AllowGet);
            }

            db.Ozluk_AileFertleriUrl.Remove(evrak);
            try
            {
                db.SaveChanges();
                return Json(new { Success = true, Data = string.Format("Silme işlemi Başarılı: Url:{0}-Thumb:{1}", resulturl.ToString(), resultthumb.ToString()) }, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                return Json(new { Success = false, Data = string.Format("Silme işlemi Başarısız: Url:{0}-Thumb:{1}  Hata:{2}", resulturl.ToString(), resultthumb.ToString(),ex.Message) }, JsonRequestBehavior.AllowGet);
            }
            
        }

        public ActionResult AileFertDuzenle(int fertid)
        {
            var fert = db.Ozluk_AileFertleri.FirstOrDefault(c => c.id == fertid);
            ViewBag.yakinlikListe = new SelectList(db.Ozluk_Enum_Detay.Where(c => c.enumid == 3), "id", "degerad");
            return PartialView(fert);
        }

        [HttpPost]
        [ActionName("AileFertDuzenle")]
        [ValidateAntiForgeryToken]
        public ActionResult AileFertDuzenlePost(int fertid,Ozluk_AileFertleri model)
        {
            if (ModelState.IsValid)
            {
                var fert = db.Ozluk_AileFertleri.FirstOrDefault(c => c.id == fertid);
                fert.tcNo = model.tcNo;
                fert.adsoyad = model.adsoyad;
                fert.dogumTarihi = model.dogumTarihi;
                db.SaveChanges();
                return Json(new {Success=true,Data=new{ AdSoyad=model.adsoyad, DogumTarihi = model.dogumTarihi.ToShortDateString(),TCNo=model.tcNo} }, JsonRequestBehavior.AllowGet);

            }
            ViewBag.yakinlikListe = new SelectList(db.Ozluk_Enum_Detay.Where(c => c.enumid == 3), "id", "degerad");
            return PartialView(model);
        }
    }
}
