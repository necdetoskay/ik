using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ik.Models;

namespace ik.Controllers
{
    [FilterConfig.CustomActionFilter]
    [Authorize(Users = @"KENTKONUT\noskay,KENTKONUT\derya.aslan")]
    public class UploadController : Controller
    {
        private readonly ikEntities db = new ikEntities();


        public ActionResult DosyaYukle(string tcno,int kayitid)
        {
            string FileName = "";
            HttpFileCollectionBase files = Request.Files;
            for (int i = 0; i < files.Count; i++)
            {
                ////string path = AppDomain.CurrentDomain.BaseDirectory + "Uploads/";    
                ////string filename = Path.GetFileName(Request.Files[i].FileName);    

                HttpPostedFileBase file = files[i];
                string fname;
                //// Checking for Internet Explorer 
                 
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
                if(System.IO.File.Exists(fname))
                {
                    var sanalyol = fname.Replace(Request.ServerVariables["APPL_PHYSICAL_PATH"], String.Empty);
                    FileName = sanalyol;
                    db.Ozluk_IseGirisEvrakUrl.Add(new Ozluk_IseGirisEvrakUrl
                    {
                        isegirisevrakid = kayitid,
                        url = sanalyol
                    });
                }
            }
            db.SaveChanges();

            return Json(FileName, JsonRequestBehavior.AllowGet);
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

      
    }
}