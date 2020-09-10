using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Mvc;

namespace ik.Models.DataClasslari
{
    public enum DosyaSilResult
    {
        Silindi,
        Silinemedi,
        Bulunamadı,
        Hata
    }

    public class DosyaIslemleri
    {
        public DosyaSilResult DosyaSil(HttpRequestBase http,string url)
        {
            try
            {
                var file = http.ServerVariables["APPL_PHYSICAL_PATH"] + "\\" + url;
                FileInfo fi = new FileInfo(file);
                var dosya = fi.Directory + "\\" + fi.Name;
                if (System.IO.File.Exists(dosya))
                {
                    try
                    {
                        System.IO.File.Delete(dosya);
                        return DosyaSilResult.Silindi;
                    }
                    catch
                    {
                        return DosyaSilResult.Silinemedi;
                    }
                }
            }
            catch (Exception)
            {
                return DosyaSilResult.Hata;
            }

            return DosyaSilResult.Bulunamadı;
        }

    }
}