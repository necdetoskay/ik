using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DevExpress.XtraPrinting.Native;
using ik.Models;

namespace ik.Areas.OzlukAdmin.Controllers
{
    [FilterConfig.CustomActionFilter]
    [Authorize(Users = @"KENTKONUT\noskay,KENTKONUT\derya.aslan")]
    public class IseGirisEvrakController : Controller
    {
        private readonly ikEntities db = new ikEntities();
        private ik.Models.KENTEntities ke = new KENTEntities();
        // GET: OzlukAdmin/IseGirisEvrak
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult _SelectList()
        {
            var liste = db.Personels.Where(c => c.cikistarihi == null && c.kadro < 3).OrderBy(c => c.adsoyad).Select(c => new
            {
                Text = c.adsoyad,
                Value = c.id,
                Thumb = c.PersonelDetay.thumb
            }).ToList();
            return Json(liste, JsonRequestBehavior.AllowGet);
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
           
            return PartialView("_PersonelGirisEvrak",personel.Ozluk_IseGirisEvrak.ToList());

           
        }
    }
}