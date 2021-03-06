﻿using System;
using System.Collections.Generic;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Mvc;
using ik.Models;

namespace ik.Controllers
{
    [FilterConfig.CustomActionFilter]
    [Authorize(Users = @"KENTKONUT\noskay,KENTKONUT\derya.aslan")]
    public class UploadController : Controller
    {
        readonly log4net.ILog logger = log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        private readonly ikEntities db = new ikEntities();

        public ActionResult DosyaYukleDialog()
        {
            return PartialView();
        }

        [HttpPost]
        [ActionName("DosyaYukleDialog")]
        public ActionResult DosyaYukleDialogKaydet()
        {
            return Json(new { success = true }, JsonRequestBehavior.AllowGet);
        }

        public ActionResult DosyaYukle(int pid, int kayitid)
        {
            var tcno = db.Personels.FirstOrDefault(c => c.id == pid).tcno;
            string FileName = "";

            string dosyaresmi = "";
            int kayit = 0;
            HttpFileCollectionBase files = Request.Files;
            for (int i = 0; i < files.Count; i++)
            {


                HttpPostedFileBase file = files[i];
                string fname;


                if (Request.Browser.Browser.ToUpper() == "IE" || Request.Browser.Browser.ToUpper() == "INTERNETEXPLORER")
                {
                    string[] testfiles = file.FileName.Split(new char[] { '\\' });
                    fname = testfiles[testfiles.Length - 1];
                }
                else
                {
                    fname = file.FileName;
                    FileName = file.FileName;
                }

                //// Get the complete folder path and store the file inside it.  

                var folder = Server.MapPath("~/Uploads/IseGirisEvraklar");

                if (!System.IO.File.Exists(folder))
                {
                    Directory.CreateDirectory(folder);
                }
                folder += "\\" + tcno;
                if (!System.IO.File.Exists(folder))
                {
                    Directory.CreateDirectory(folder);
                }

                FileInfo fi = new FileInfo(fname);
                fname = fname.Replace(fi.Name, Guid.NewGuid().ToString());
                fname = Path.Combine(folder, fname + fi.Extension);
                file.SaveAs(fname);
                //eğer dosya mevcutsa database e kaydet
                if (System.IO.File.Exists(fname))
                {
                    var sanalyol = fname.Replace(Request.ServerVariables["APPL_PHYSICAL_PATH"], String.Empty);
                    FileName = sanalyol;
                    var evrakurl = new Ozluk_IseGirisEvrakUrl
                    {
                        isegirisevrakid = kayitid,
                        url = sanalyol
                    };

                    db.Ozluk_IseGirisEvrakUrl.Add(evrakurl);
                    db.SaveChanges();
                    kayit = evrakurl.id;
                }
                switch (fi.Extension)
                {
                    case ".jpg":
                        {
                            dosyaresmi = FileName;
                            break;
                        }
                    default:
                        {
                            dosyaresmi =
                                string.Format(@"Content\Adobe-PDF-Document-icon.png")
                                    .Replace(Request.ServerVariables["APPL_PHYSICAL_PATH"], String.Empty);
                            break;
                        }

                }

            }

            return Json(new { DosyaAdi = FileName, DosyaResmi = dosyaresmi, KayitNo = kayit }, JsonRequestBehavior.AllowGet);

        }

        // GET: Upload
        /// <summary>
        /// online özlük için dosya yükleme
        /// </summary>
        /// <param name="tc">yükleme yapılan personelin tc si</param>
        /// <param name="filetip">yükleme yapılan dosyanın sınıfı</param>
        /// <returns></returns>
        public ActionResult UploadFiles(int perid, int filetip)
        {
            try
            {
                var tc = "";
                using (var db = new ikEntities())
                {
                    var personel = db.Personels.FirstOrDefault(c => c.id == perid);
                    if (personel == null)
                    {
                        return Json("personel bulunamadı", JsonRequestBehavior.AllowGet);

                    }
                    tc = personel.tcno;
                }
                string FileName = "";

                HttpFileCollectionBase files = Request.Files;

                for (int i = 0; i < files.Count; i++)
                {
                    //string path = AppDomain.CurrentDomain.BaseDirectory + "Uploads/";    
                    //string filename = Path.GetFileName(Request.Files[i].FileName);    

                    HttpPostedFileBase file = files[i];
                    string fname;

                    // Checking for Internet Explorer    
                    if (Request.Browser.Browser.ToUpper() == "IE" || Request.Browser.Browser.ToUpper() == "INTERNETEXPLORER")
                    {
                        string[] testfiles = file.FileName.Split(new char[] { '\\' });
                        fname = testfiles[testfiles.Length - 1];
                    }
                    else
                    {
                        fname = file.FileName;
                        FileName = file.FileName;
                    }

                    // Get the complete folder path and store the file inside it.   
                    var folder = Server.MapPath("~/Uploads/");

                    if (!System.IO.File.Exists(folder))
                    {
                        Directory.CreateDirectory(folder);
                    }
                    folder += "\\" + tc;
                    if (!System.IO.File.Exists(folder))
                    {
                        Directory.CreateDirectory(folder);
                    }
                    folder += "\\" + filetip;
                    if (!System.IO.File.Exists(folder))
                    {
                        Directory.CreateDirectory(folder);
                    }
                    FileInfo fi = new FileInfo(fname);
                    fname = fname.Replace(fi.Name, Guid.NewGuid().ToString());
                    fname = Path.Combine(folder, fname + fi.Extension);
                    file.SaveAs(fname);

                    //kaydı database e kaydet
                }
                return Json(FileName, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                return Json(ex.Message, JsonRequestBehavior.AllowGet);
            }
        }

        //public byte[] Resize(byte[] data, int width)
        //{
        //    using (var stream = new MemoryStream(data))
        //    {
        //        var image = Image.FromStream(stream);

        //        var height = (width * image.Height) / image.Width;
        //        var thumbnail = image.GetThumbnailImage(width, height, null, IntPtr.Zero);

        //        using (var thumbnailStream = new MemoryStream())
        //        {
        //            thumbnail.Save(thumbnailStream, ImageFormat.Jpeg);
        //            return thumbnailStream.ToArray();
        //        }
        //    }
        //}

        public bool IsImage(HttpPostedFileBase bytes)
        {
            try
            {
                using (var bitmap = new System.Drawing.Bitmap(bytes.InputStream))
                {
                    return !bitmap.Size.IsEmpty;
                }
            }
            catch (Exception)
            {
                return false;
            }
        }


        public ActionResult Indir(string url)
        {
            var file = System.Web.HttpContext.Current.Server.MapPath(url).Replace(this.ControllerContext.RouteData.Values["controller"].ToString() + "\\", "").Replace(this.ControllerContext.RouteData.Values["action"].ToString() + "\\", "");//.Replace(Request.ServerVariables["APPL_PHYSICAL_PATH"], String.Empty);
            var fi = new System.IO.FileInfo(file);
            if (!fi.Exists)
            {
                return  HttpNotFound("Dosya Bulunamadı");
            }

            using (var stream = new MemoryStream())
            {
                using (FileStream fle = new FileStream(file, FileMode.Open, FileAccess.Read))
                {
                    byte[] bytes = new byte[fle.Length];
                    fle.Read(bytes, 0, (int)fle.Length);
                    stream.Write(bytes, 0, (int)fle.Length);
                }
                var sifreli = Cryptography.DecryptBytes(stream.ToArray(), "ıon8>'~|*½9<8hyuasdyu", 2);
                return File(sifreli, System.Web.MimeMapping.GetMimeMapping(fi.Name));
            }
        }

        public ActionResult Yukle()
        {
            string FileName = "";
            string dosyaresmi = "";
            var dosyaad = "";
            HttpFileCollectionBase files = Request.Files;

            for (int i = 0; i < files.Count; i++)
            {
                HttpPostedFileBase file = files[i];
                string fname;
                if (Request.Browser.Browser.ToUpper() == "IE" || Request.Browser.Browser.ToUpper() == "INTERNETEXPLORER")
                {
                    string[] testfiles = file.FileName.Split(new char[] { '\\' });
                    fname = testfiles[testfiles.Length - 1];
                }
                else
                {
                    fname = file.FileName;
                   // FileName = file.FileName;
                    dosyaad = file.FileName;

                }


                var kayitklasor = Request.Form["kayitklasor"];
                bool encrypt = true;// bool.Parse(Request.Form["encrypt"]);
                var klasör = Server.MapPath("~/Uploads");
                klasör = klasör + kayitklasor;
                FileInfo fi = new FileInfo(fname);
                var name = Guid.NewGuid().ToString();

                //dosya adını guid dosya adı ile değiştir
                fname = fname.Replace(fi.Name, name); 
                //full dosya adını oluştur
                fname = Path.Combine(klasör, fname + fi.Extension);

                var thumbp = "";//thumbpath.Replace(Request.ServerVariables["APPL_PHYSICAL_PATH"], String.Empty);

                if (!System.IO.File.Exists(klasör))//klasör yoksa klasör oluştur.
                {
                    Directory.CreateDirectory(klasör);
                }

                if (System.Web.MimeMapping.GetMimeMapping(file.FileName).StartsWith("image/"))
                {
                    using (var imgfile = Image.FromStream(file.InputStream))
                    {

                        var thumbpath = klasör + "//thumb//";
                        if (!Directory.Exists(thumbpath))
                            Directory.CreateDirectory(thumbpath);
                        thumbpath += name + ".jpg";//fi.Extension;


                        if (!imgfile.Size.IsEmpty) //yüklenen dosya resim
                        {
                            #region thumbnail oluştur

                            var width = (100 * imgfile.Width) / imgfile.Height;
                            var thumbimage = imgfile.GetThumbnailImage(width, 100, null, IntPtr.Zero);
                            try
                            {
                                thumbimage.Save(thumbpath);
                            }
                            catch (Exception ex)
                            {
                                logger.Info("jpeg thumb kayıt hatası " + ex.Message);
                            }
                            dosyaresmi = thumbpath.Replace(Request.ServerVariables["APPL_PHYSICAL_PATH"], String.Empty);

                            #endregion
                        }
                        else //dosyas bilinen resimlerden değil default bir thumbnail olarak işle
                        {

                        }
                        using (var stream = new MemoryStream())
                        {
                            imgfile.Save(stream, ImageFormat.Jpeg);
                            if (encrypt)
                            {
                                var sifreli = Cryptography.EncryptBytes(stream.ToArray(), "ıon8>'~|*½9<8hyuasdyu", 2);

                                try
                                {
                                    System.IO.File.WriteAllBytes(fname, sifreli);
                                }
                                catch (Exception ex)
                                {
                                    logger.Info("jpeg kayıt hatası " + ex.Message);

                                }

                            }
                            else
                            {
                                System.IO.File.WriteAllBytes(fname, stream.ToArray());
                            }


                        }
                    }
                }
                else if (System.Web.MimeMapping.GetMimeMapping(file.FileName).Contains("application/pdf"))
                {
                    //logger.Info("dosya pdf dosyası");
                    var thumbpath = klasör + "//thumb//";
                    var p = Request.ServerVariables["APPL_PHYSICAL_PATH"] + "/Content/PDF.png";
                    //logger.Info("APPL_PHYSICAL_PATH " + Request.ServerVariables["APPL_PHYSICAL_PATH"]);
                    //logger.Info("content path " + Url.Content("~/Content/PDF.png"));
                    FileInfo finf = new FileInfo(p);
                    //logger.Info("pdf.png " + finf.FullName);
                    if (!Directory.Exists(thumbpath))
                        Directory.CreateDirectory(thumbpath);

                    thumbpath += name + ".JPG";


                    logger.Info("dosya adı " + thumbpath);
                    try
                    {
                        using (var img = Image.FromFile(finf.FullName))
                        {
                            try
                            {
                                img.Save(thumbpath, ImageFormat.Jpeg);
                                logger.Info("png thumb kaydedildi ");
                            }
                            catch (Exception ex)
                            {
                                logger.Info("thumb png kayıt hatası " + ex.Message);
                            }

                        }
                    }
                    catch (Exception ex)
                    {
                        logger.Info("thumb png bakma hatası " + ex.Message);
                    }
                    dosyaresmi = thumbpath.Replace(Request.ServerVariables["APPL_PHYSICAL_PATH"], String.Empty);
                    using (var binaryreader = new BinaryReader(file.InputStream))
                    {

                        if (encrypt)
                        {
                            var sifreli = Cryptography.EncryptBytes(binaryreader.ReadBytes(file.ContentLength),
                                "ıon8>'~|*½9<8hyuasdyu", 2);
                            try
                            {
                                System.IO.File.WriteAllBytes(fname, sifreli);
                                logger.Info("png kaydedildi ");
                            }
                            catch (Exception ex)
                            {

                                logger.Info("png kayıt hatası " + ex.Message);
                            }
                        }
                        else
                        {
                            //  var sifreli = Cryptography.EncryptBytes(binaryreader.ReadBytes(file.ContentLength),"ıon8>'~|*½9<8hyuasdyu", 2);
                            System.IO.File.WriteAllBytes(fname, binaryreader.ReadBytes(file.ContentLength));
                        }

                    }
                }
                else
                {

                }
                FileName = fname.Replace(Request.ServerVariables["APPL_PHYSICAL_PATH"], String.Empty);
            }
            return Json(new { DosyaAdi = FileName, Thumb = dosyaresmi, Alt = dosyaad }, JsonRequestBehavior.AllowGet);
        }

        public ActionResult Sil(string url)
        {

            //Uploads\\IseGirisEvraklar\\38167777466\\3d70c1ce-1f77-4e7c-a594-fd000e86c15b.jpg
            try
            {
                var file = Request.ServerVariables["APPL_PHYSICAL_PATH"] + "\\" + url;
                FileInfo fi = new FileInfo(file);
                var dosya = fi.Directory + "\\" + fi.Name;
                var thumb = fi.Directory + "\\thumb\\" + fi.Name;
                var message = new StringBuilder();
                var success = true;
                //directory,name
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

                return Json(new { Success = true, Message = message.ToString(), Data = @Url.Content("~/Content/unknown.png") }, JsonRequestBehavior.AllowGet);
            }
            catch (Exception)
            {
                return Json(new { Success = true, Message = "Silme Sırasında Hata Oluştu", Data = @Url.Content("~/Content/unknown.png") }, JsonRequestBehavior.AllowGet);
            }

        }
    }
}



//public ActionResult Yukle(string folder)
//{
//    string FileName = "";
//    string dosyaresmi = "";
//    var dosyaad = "";
//    HttpFileCollectionBase files = Request.Files;

//    for (int i = 0; i < files.Count; i++)
//    {


//        HttpPostedFileBase file = files[i];
//        string fname;

//        // Checking for Internet Explorer    
//        if (Request.Browser.Browser.ToUpper() == "IE" || Request.Browser.Browser.ToUpper() == "INTERNETEXPLORER")
//        {
//            string[] testfiles = file.FileName.Split(new char[] { '\\' });
//            fname = testfiles[testfiles.Length - 1];
//        }
//        else
//        {
//            fname = file.FileName;
//            FileName = file.FileName;
//            dosyaad = file.FileName;

//        }
//        var kayitklasor = Request.Form["kayitklasor"];
//        // Get the complete folder path and store the file inside it.   
//        var klasör = Server.MapPath("~/Uploads");
//        klasör = klasör + kayitklasor;
//        if (!System.IO.File.Exists(klasör))
//        {
//            Directory.CreateDirectory(klasör);
//        }
//        FileInfo fi = new FileInfo(fname);
//        var name = Guid.NewGuid().ToString();
//        fname = fname.Replace(fi.Name, name);
//        fname = Path.Combine(klasör, fname + fi.Extension);
//        file.SaveAs(fname);

//        #region thumimg oluştur.
//        System.Drawing.Image image = System.Drawing.Image.FromFile(fname);
//        float aspectRatio = (float)image.Size.Width / (float)image.Size.Height;
//        int newHeight = 200;
//        int newWidth = Convert.ToInt32(aspectRatio * newHeight);
//        System.Drawing.Bitmap thumbBitmap = new System.Drawing.Bitmap(newWidth, newHeight);
//        System.Drawing.Graphics thumbGraph = System.Drawing.Graphics.FromImage(thumbBitmap);
//        thumbGraph.CompositingQuality = System.Drawing.Drawing2D.CompositingQuality.HighQuality;
//        thumbGraph.SmoothingMode = System.Drawing.Drawing2D.SmoothingMode.HighQuality;
//        thumbGraph.InterpolationMode = System.Drawing.Drawing2D.InterpolationMode.HighQualityBicubic;
//        var imageRectangle = new Rectangle(0, 0, newWidth, newHeight);
//        thumbGraph.DrawImage(image, imageRectangle);
//        var thumbpath = klasör + "//thumb//";
//        if (!Directory.Exists(thumbpath))
//            Directory.CreateDirectory(thumbpath);
//        thumbpath += name + ".jpeg";
//        thumbBitmap.Save(thumbpath, System.Drawing.Imaging.ImageFormat.Jpeg);
//        thumbGraph.Dispose();
//        thumbBitmap.Dispose();
//        image.Dispose();
//        #endregion



//        FileName = fname.Replace(Request.ServerVariables["APPL_PHYSICAL_PATH"], String.Empty);
//        var thumbp = thumbpath.Replace(Request.ServerVariables["APPL_PHYSICAL_PATH"], String.Empty);
//        if (System.IO.File.Exists(fname))
//        {
//            switch (fi.Extension)
//            {
//                case ".jpg":
//                    {
//                        dosyaresmi = thumbp;
//                        break;
//                    }
//                default:
//                    {
//                        dosyaresmi =
//                            string.Format(@"Content\Adobe-PDF-Document-icon.png")
//                                .Replace(Request.ServerVariables["APPL_PHYSICAL_PATH"], String.Empty);
//                        break;
//                    }

//            }

//        }

//        //kaydı database e kaydet
//    }
//    return Json(new { DosyaAdi = FileName, Thumb = dosyaresmi, Alt = dosyaad }, JsonRequestBehavior.AllowGet);
//}