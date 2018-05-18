using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ik.Models;

namespace ik.Controllers
{
    [FilterConfig.CustomActionFilter]
    [Authorize(Users = @"KENTKONUT\noskay,KENTKONUT\derya.aslan")]
    public class ArsivController : Controller
    {
        private readonly ikEntities db = new ikEntities();
      

        protected override void Dispose(bool disposing)
        {
          
            db.Dispose();
            base.Dispose(disposing);
        }

     
        public ActionResult ArsivPersonelBilgi(int id)
       {
            try
            {
                var bilgi = db.Arsiv_Personel.FirstOrDefault(c => c.id == id);
                
                return Json(new
                {
                    Success = true,
                    Data = new
                    {
                        bilgi.adsoyad,
                        bilgi.sicilno,
                        Giris = bilgi.giristarihi.ToShortDateString(),
                        Cikis = bilgi.cikistarihi.ToShortDateString(),
                        bilgi.klasorno,
                        ihaletipi = bilgi.Arsiv_Ihaletip==null?"": bilgi.Arsiv_Ihaletip.ihaletipi
                    }
                }, JsonRequestBehavior.AllowGet);
            }
            catch (Exception xx)
            {

                return null;
            }
       }

     

        [HttpPost]
        public JsonResult PersonelAra(string term)
        {
            var queryable = from p in (from p in db.Arsiv_Personel 
                                       where p.adsoyad.Contains(term)
                                       select p)
                            select new { label = p.adsoyad, val = p.id };
            return Json(queryable.ToList());
        }

    
        public ActionResult Index()
        {
            return View();
        }
    }
}