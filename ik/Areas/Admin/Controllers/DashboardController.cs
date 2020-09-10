using ik.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity.SqlServer;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ik.Areas.Admin.Controllers
{
    [FilterConfig.CustomActionFilter]
    [Authorize(Users = @"KENTKONUT\noskay,KENTKONUT\derya.aslan")]
    public class DashboardController : Controller
    {
        private readonly ikEntities db = new ikEntities();
        private ik.Models.KENTEntities ke = new KENTEntities();
        // GET: Admin/Dashboard
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult CalisanSayi()
        {
    
            //çalışan sayısı
            //tarihten sonra girenleri dikkate alma
            //o tarihten önce işe girenler, cıkış yapmayanlar veya o tarihten sonra çıkış yapanlar

            return View();
        }
        public JsonResult _CalisanSayi(DateTime tarih)
        {
            var calisan = ke.PERSONELLERs.Where(c=>c.per_giris_tar<=tarih & c.per_is_grup==1 &(c.per_cikis_tar==new DateTime(1899,12,31) || c.per_cikis_tar> tarih )).Count();
            return Json(new {Success=true,Data=calisan },JsonRequestBehavior.AllowGet);
        }

        public ActionResult PersonelYas()
        {
            var personeller = db.Personels.Where(c => c.cikistarihi == null)
                .Select(d => new {AdSoyad = d.adsoyad, Yas =SqlFunctions.DateDiff("year", d.dogumtarihi.Value,DateTime.Now)}).OrderByDescending(c=>c.Yas).ToList();
            return View(personeller);
        }
    }
}