using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using  System.IO;
using System.Text;
using System.Web.Helpers;
using System.Web.Mvc;

namespace ik.Models
{
    public static class IKHelper
    {
        public static bool Sil(HttpRequestBase Request ,string url)
        {
            //Uploads\\IseGirisEvraklar\\38167777466\\3d70c1ce-1f77-4e7c-a594-fd000e86c15b.jpg
            var file = Request.ServerVariables["APPL_PHYSICAL_PATH"] + "\\" + url;
            FileInfo fi = new FileInfo(file);
            var dosya = fi.Directory + "\\" + fi.Name;
            var thumb = fi.Directory + "\\thumb\\" + fi.Name;
            var message = new StringBuilder();
            var success = false;
            //directory,name
            if (System.IO.File.Exists(dosya))
            {
                try
                {
                    System.IO.File.Delete(dosya);
                    message.Append("Dosya Silindi");
                    success = true;
                    if (System.IO.File.Exists(thumb))
                    {
                        try
                        {
                            System.IO.File.Delete(dosya);
                            message.Append("[thumb] Dosya Silindi");
                            success = true;
                        }
                        catch
                        {
                            message.Append("[Thumb] Dosya Silinemedi !!");
                            success = false;
                            //dosya silinemedi
                        }
                    }
                    else
                    {
                        message.Append("[Thumb] Dosya Bulunamadı !!");
                    }
                }
                catch (Exception ex)
                {
                    message.Append("Dosya Silinemedi !!");
                    success = false;
                    //dosya silinemedi
                }
            }
            else
            {
                message.Append("Dosya Bulunamadı !!");
            }

            return success;
            // return Json(new { Success = success, Message = message }, JsonRequestBehavior.AllowGet);
        }
    }
}