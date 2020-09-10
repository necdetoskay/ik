using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.Mvc;
using ik.Models;
using ik.Models.DataClasslari;
using Microsoft.Ajax.Utilities;

namespace ik.Areas.Admin.Controllers
{
    [FilterConfig.CustomActionFilter]
    [Authorize(Users = @"KENTKONUT\noskay,KENTKONUT\derya.aslan")]
    public class IseGirisEvrakController : Controller
    {
        readonly log4net.ILog logger = log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        private readonly ikEntities db = new ikEntities();
        private ik.Models.KENTEntities ke = new KENTEntities();
        // GET: Admin/IseGirisEvrak
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult OzelEvrakHazirla(int id)
        {
            var personel = db.Personels.FirstOrDefault(c => c.id == id);
            ViewBag.tcNO = personel.tcno;

            var liste = personel.Ozluk_IseGirisEvrak.Where(c => c.evraktip == 18)
                .ToList();
            return PartialView("_PersonelOzelEvrak",liste );
        }

        public ActionResult IseGirisEvraklariHazirla(int id)
        {
            var personel = db.Personels.FirstOrDefault(c => c.id == id);
            var mevcut = db.Ozluk_IseGirisEvrak.Where(c => c.personelid == id).Select(d => d.Ozluk_IseGirisGerekEvrakTip).Where(c => c.evrakkategori == 1).ToList();
            var list = db.Ozluk_IseGirisGerekEvrakTip.Where(c => c.evrakkategori == 1).ToList();
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

            return PartialView("_PersonelEvrak", personel.Ozluk_IseGirisEvrak.Where(c => c.Ozluk_IseGirisGerekEvrakTip.evrakkategori == 1).OrderBy(c => c.Ozluk_IseGirisGerekEvrakTip.adet > 0).ToList());
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
                    return Json(new { Success = true, Message = "Kayıt silindi" }, JsonRequestBehavior.AllowGet);
                }
                catch (Exception)
                {
                    return Json(new { Success = false, Message = "Kayıt Silinemedi" }, JsonRequestBehavior.AllowGet);
                }
            }
            //url sil
            return Json(new { Success = false, Message = "Kayıt Bulunamadı!!" }, JsonRequestBehavior.AllowGet);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="id">işe giriş evrak id'si</param>
        /// <param name="url">eklenecek evrak url si</param>
        /// <param name="thumb">eklenecek evrak thumb url</param>
        /// <returns></returns>
        public ActionResult _GirisEvrakKaydet(int id, string url, string thumb)
        {
            var evrak = db.Ozluk_IseGirisEvrak.FirstOrDefault(c => c.id == id);
            var evrakurl = new Ozluk_IseGirisEvrakUrl
            {
                url = url,
                thumb = thumb
            };
            evrak.Ozluk_IseGirisEvrakUrl.Add(evrakurl);
            try
            {
                db.SaveChanges();
                return Json(new { Success = true, Data = evrakurl.id }, JsonRequestBehavior.AllowGet);
            }
            catch (Exception)
            {
                return Json(new { Success = false }, JsonRequestBehavior.AllowGet);

            }

        }


        private bool __DosyaSil(Ozluk_IseGirisEvrakUrl evrak)
        {
            var islem = new DosyaIslemleri();

            var url = islem.DosyaSil(Request, evrak.url);
            if (url != DosyaSilResult.Silindi)
                logger.Info(url.ToString());
            var thumb = islem.DosyaSil(Request, evrak.thumb);
            if (thumb != DosyaSilResult.Silindi)
                logger.Info(thumb.ToString());
            return (url == DosyaSilResult.Bulunamadı & thumb == DosyaSilResult.Bulunamadı) ||
                   (url == DosyaSilResult.Silindi & thumb == DosyaSilResult.Silindi);
        }

        /// <summary>
        /// işe giriş evrağı için yüklenen dosyalardan birini sil
        /// </summary>
        /// <param name="id">işe giriş yüklenen dosya id</param>
        /// <returns></returns>
        public ActionResult _DosyaSil(int id)
        {
            var dosyaurl = db.Ozluk_IseGirisEvrakUrl.FirstOrDefault(c => c.id == id);
            var islem = __DosyaSil(dosyaurl);

            //var islem = new DosyaIslemleri();

            //var url = islem.DosyaSil(Request, dosyaurl.url);
            //var thumb = islem.DosyaSil(Request, dosyaurl.thumb);
            if (islem)//resimler zaten sistemde yok kayıt silinebilir
            {
                db.Ozluk_IseGirisEvrakUrl.Remove(dosyaurl);
                try
                {
                    db.SaveChanges();
                }
                catch (Exception ex)
                {
                    return Json(new { Success = false, Data = "Kayıt Silinemedi Log Dosyasını kontrol Ediniz"/*string.Format("Kayıt Silinemedi :Url {0} , Thumb {1} , Hata: ", url.ToString(), thumb.ToString(), ex.Message) */}, JsonRequestBehavior.AllowGet);
                }
            }
            else
            {
                return Json(new { Success = false, Data = "Kayıt Silinemedi Log Dosyasını kontrol Ediniz" /*string.Format("Kayıt Silinemedi :Url {0} , Thumb {1} , Hata: Silme işlemi iptal edildi ", url.ToString(), thumb.ToString())*/ }, JsonRequestBehavior.AllowGet);

            }

            return Json(new { Success = true, Data = "Kayıt Silindi" /*string.Format("Url {0} , Thumb {1}", url.ToString(), thumb.ToString())*/ }, JsonRequestBehavior.AllowGet);

        }


        [HttpPost]
        /// <summary>
        /// işe giriş evrak durum ve detay bilgilerini günceller
        /// </summary>
        /// <param name="id">evrak kayıt id si</param>
        /// <param name="mevcut">evrak mevcut mu?</param>
        /// <param name="detay">varsa detay bilgi</param>
        /// <returns></returns>
        public ActionResult _IseGirisEvrakGuncelle(int id, bool mevcut, string detay)
        {
            var evrak = db.Ozluk_IseGirisEvrak.FirstOrDefault(c => c.id == id);
            evrak.mevcut = mevcut;
            if(!String.IsNullOrEmpty(detay))
                evrak.detay = detay;
            if (!mevcut)
            {
                var islem = true;
                //var olan dosyaları sil

                while (evrak.Ozluk_IseGirisEvrakUrl.Any())
                {
                    var evrakurl = evrak.Ozluk_IseGirisEvrakUrl.First();
                    islem = __DosyaSil(evrakurl);
                    if (islem)
                    {
                        db.Ozluk_IseGirisEvrakUrl.Remove(evrakurl);
                    }
                    else
                    {
                        return Json(new { Success = false, Data = "Güncelleme Başarısız : Log Dosyası Kontrol Ediniz" }, JsonRequestBehavior.AllowGet);
                    }
                }
               

            }

            try
            {
                db.SaveChanges();
                return Json(new { Success = true, Data = "Güncelleme Başarılı" }, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                return Json(new { Success = false, Data = "Güncelleme Başarısız :" + ex.Message }, JsonRequestBehavior.AllowGet);
            }

        }


        public ActionResult _OzelEvrakEkle(int id)
        {
            var evrak = new Ozluk_IseGirisEvrak
            {
                evraktip = 18, personelid = id,
            };
            return PartialView(evrak);
        }

        [HttpPost]
        [ActionName("_OzelEvrakEkle")]
        public ActionResult _OzelEvrakEklePost(int id, Ozluk_IseGirisEvrak model)
        {
            model.tarih=DateTime.Now;
            model.mevcut = true;
            if (ModelState.IsValid)
            {
                db.Ozluk_IseGirisEvrak.Add(model);
                try
                {
                    db.SaveChanges();
                    return Json(new { Success = true }, JsonRequestBehavior.AllowGet);
                }
                catch (Exception ex)
                {
                    return Json(new { Success = false ,Data=ex.Message}, JsonRequestBehavior.AllowGet);
                }
            }

            return PartialView(model);
        }

        /// <summary>
        /// kişiye özel evrak kaydı sil
        /// </summary>
        /// <param name="id">ise giriş evrak kayıt id'si kategori 18 olan özel evrak</param>
        /// <returns></returns>
        public ActionResult OzelEvrakSil(int id)
        {
            var evrak = db.Ozluk_IseGirisEvrak.FirstOrDefault(c => c.id == id);
            while (evrak.Ozluk_IseGirisEvrakUrl.Any())
            {
                var evrakurl = evrak.Ozluk_IseGirisEvrakUrl.First();
                var success=__DosyaSil(evrakurl);
                if (success)
                {
                    db.Ozluk_IseGirisEvrakUrl.Remove(evrakurl);
                }
                else
                {
                    return Json(new { Success = false, Data = "Güncelleme Başarısız : Log Dosyası Kontrol Ediniz" }, JsonRequestBehavior.AllowGet);
                }
            }

            db.Ozluk_IseGirisEvrak.Remove(evrak);
            try
            {
                db.SaveChanges();
                return Json(new { Success = true, Data = "Güncelleme Başarılı" }, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                return Json(new { Success = false, Data = "Güncelleme Başarısız : Log Dosyası Kontrol Ediniz Hata:"+ex.Message }, JsonRequestBehavior.AllowGet);
            }

        }

        public ActionResult _OzelEvrakGuncelle(int id, string detay)
        {
            var evrak = db.Ozluk_IseGirisEvrak.FirstOrDefault(c => c.id == id);

            var save = false;
            if (!String.IsNullOrEmpty(detay))
            {
                evrak.detay = detay;
                save = true;
            }
            else if (!string.IsNullOrEmpty(evrak.detay))
            {
                save = true;
                evrak.detay = null;
            }

            if (save)
            {
                try
                {
                    db.SaveChanges();
                    return Json(new { Success = true, Data = "Güncelleme Başarılı" }, JsonRequestBehavior.AllowGet);
                }
                catch (Exception ex)
                {
                    return Json(new { Success = true, Data = "Güncelleme Başarısız Hata:" + ex.Message },
                        JsonRequestBehavior.AllowGet);
                }
            }

            return Json(new { Success = true, Data = "Güncelleme Başarılı" }, JsonRequestBehavior.AllowGet);

        }
    }
}