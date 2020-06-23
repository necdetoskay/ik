using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ik.Models;
using Microsoft.Ajax.Utilities;

namespace ik.Areas.OzlukAdmin.Controllers
{
    [FilterConfig.CustomActionFilter]
    [Authorize(Users = @"KENTKONUT\noskay,KENTKONUT\derya.aslan")]
    public class IseGirisEvrakController : Controller
    {
        readonly log4net.ILog logger = log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        private readonly ikEntities db = new ikEntities();
        private ik.Models.KENTEntities ke = new KENTEntities();
        // GET: OzlukAdmin/IseGirisEvrak
        public ActionResult Index()
        {
            return View();
        }



        public ActionResult EvraklariHazirla(int id)
        {
            var personel = db.Personels.FirstOrDefault(c => c.id == id);
            var mevcut = db.Ozluk_IseGirisEvrak.Where(c => c.personelid == id).Select(d => d.Ozluk_IseGirisGerekEvrakTip).ToList();
            var list = db.Ozluk_IseGirisGerekEvrakTip.ToList();
            var fark = list.Except(mevcut);
            fark.ForEach(d =>
            {
                personel.Ozluk_IseGirisEvrak.Add(new Ozluk_IseGirisEvrak
                {
                    evraktip = d.id,
                    tarih = DateTime.Now
                });
            });

            db.SaveChanges();
            ViewBag.tcNO = personel.tcno;

            return PartialView("_PersonelGirisEvrak", personel.Ozluk_IseGirisEvrak.ToList());


        }

        public JsonResult _GirisEvrakKayitGuncelle(int kayitid, string detay, bool mevcut)
        {
            try
            {
                var kayit = db.Ozluk_IseGirisEvrak.FirstOrDefault(c => c.id == kayitid);
                var kaydet = false;
                if (!string.IsNullOrEmpty(detay) && kayit.detay != detay)
                {
                    kayit.detay = detay;
                    kaydet = true;
                }
                if (kayit.mevcut != mevcut)
                {
                    kayit.mevcut = mevcut;
                    kaydet = true;
                }
                if (kaydet)
                {
                    db.SaveChanges();
                    return Json(new { Success = true, Message = kayit.Ozluk_IseGirisGerekEvrakTip.ad + " kaydı değiştirildi." }, JsonRequestBehavior.AllowGet);
                }
                else
                {
                    return Json(new { Success = false, Message = kayit.Ozluk_IseGirisGerekEvrakTip.ad + " kaydı değiştirilmedi." }, JsonRequestBehavior.AllowGet);
                }
            }
            catch (Exception ex)
            {

                return Json(new { Success = false, Message = "Hata Oluştu. " + ex.Message }, JsonRequestBehavior.AllowGet);
            }

        }

        public JsonResult _IseGirisEvrakResmiSil(int id)
        {
            try
            {
                var evrak = db.Ozluk_IseGirisEvrakUrl.FirstOrDefault(c => c.id == id);
                //önce resmi sil
                var url = evrak.url;
                var fizikselyol = System.Web.HttpContext.Current.Request.MapPath("~") + "\\" + url;

                logger.Error(fizikselyol);

                if (System.IO.File.Exists(fizikselyol))
                {
                    System.IO.File.Delete(fizikselyol);
                    db.Ozluk_IseGirisEvrakUrl.Remove(evrak);
                    db.SaveChanges();
                    return Json(new { Success = true, Message = "Dosya ve Kayıt Silindi." }, JsonRequestBehavior.AllowGet);
                }
                else
                {
                    db.Ozluk_IseGirisEvrakUrl.Remove(evrak);
                    db.SaveChanges();
                    return Json(new { Success = true, Message = "Dosya Bulunamadı fakat Kayıt Silindi." }, JsonRequestBehavior.AllowGet);
                }



            }
            catch (Exception ex)
            {

                return Json(new { Success = false, Message = "Hata Oluştu. " + ex.Message }, JsonRequestBehavior.AllowGet);
            }
        }

        public ActionResult _GirisEvrakEkle(int id, string url)
        {
            var girisevrak = db.Ozluk_IseGirisEvrak.FirstOrDefault(c => c.id == id);
            var evrakurl = new Ozluk_IseGirisEvrakUrl
            {
                isegirisevrakid = girisevrak.id,
                url = url
            };
            girisevrak.Ozluk_IseGirisEvrakUrl.Add(evrakurl);
            girisevrak.mevcut = true;
            try
            {
                db.SaveChanges();
                return Json(new { Success = true, ID = evrakurl.id }, JsonRequestBehavior.AllowGet);
            }
            catch (Exception)
            {

                throw;
            }

            //geriye url idsin döndür
        }

        public ActionResult _GirisEvrakSil(int id)
        {
            var evrakurl = db.Ozluk_IseGirisEvrakUrl.FirstOrDefault(c => c.id == id);
            if (evrakurl != null)
            {
                db.Ozluk_IseGirisEvrakUrl.Remove(evrakurl);
                try
                {
                    db.SaveChanges();
                    return Json(new { Success = true,Message="Kayıt silindi" }, JsonRequestBehavior.AllowGet);
                }
                catch (Exception)
                {
                    return Json(new { Success = false,Message="Kayıt Silinemedi" }, JsonRequestBehavior.AllowGet);
                }
            }
            //url sil
            return Json(new { Success = false,Message="Kayıt Bulunamadı!!" }, JsonRequestBehavior.AllowGet);
        }
    }
}