using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;
using ik.Areas.Admin.Data;
using ik.Models;
using WebGrease.Css.Extensions;

namespace ik.Areas.Admin.Controllers
{
    [FilterConfig.CustomActionFilter]
    [Authorize(Users = @"KENTKONUT\noskay,KENTKONUT\derya.aslan")]
    public class OzlukHomeController : Controller
    {
        readonly log4net.ILog logger = log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        private readonly ikEntities db = new ikEntities();
        // GET: Admin/Home
        public ActionResult Index()
        {
            return View();
        }


        public ActionResult Durum()
        {
            var liste = db.Ozluk_IseGirisEvrak.GroupBy(c => c.Personel);
            var evrakdurum=new List<PersonelIseGirisEvrakDurumVM>();
            foreach (var persevr in liste)
            {
                var pers = new PersonelIseGirisEvrakDurumVM()
                {
                    ID = persevr.Key.id,
                    PersonelAd = persevr.Key.adsoyad
                };
                foreach (var evrak in persevr.Key.Ozluk_IseGirisEvrak)
                {
                  pers.IseGirisEvrakDurumVMs.Add(new IseGirisEvrakDurumVM
                  {
                      Durum = evrak.mevcut,
                      EvrakAd = evrak.Ozluk_IseGirisGerekEvrakTip.ad,
                      ID = evrak.id
                  });  
                }
                evrakdurum.Add(pers);
            }
            return View(evrakdurum);
        }

        public ActionResult YillikIzinDefter()
        {
            return View();
        }
    }
}