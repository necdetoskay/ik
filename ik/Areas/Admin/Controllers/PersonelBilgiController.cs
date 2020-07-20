using ik.Areas.Admin.Data;
using ik.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ik.Areas.Admin.Controllers
{
    [FilterConfig.CustomActionFilter]
    [Authorize(Users = @"KENTKONUT\noskay,KENTKONUT\derya.aslan")]
    public class PersonelBilgiController : Controller
    {
        private readonly ikEntities db = new ikEntities();
        private ik.Models.KENTEntities ke = new KENTEntities();
        // GET: Admin/PersonelBilgi
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult PersonelIKBilgi(int id)
        {
            var ik = db.Personels.FirstOrDefault(c => c.id == id);
            var ikbilgi = new PersonelIKBilgi
            {
                ID = ik.id,
                MikroID=ik.mikroid.Value,
                PdksID=ik.pdksid.Value
            };
            return PartialView(ikbilgi);
        }
        public ActionResult PersonelMikroBilgi(int id)
        {
            var ik = db.Personels.FirstOrDefault(c => c.id == id);
            var ikbilgi = new PersonelMikroBilgi
            {
                ID = ik.mikroid.Value
            };
            return PartialView(ikbilgi);
        }








        public JsonResult _ikmikroidkontrol(int id,Guid guid)
        {
            var personel = db.Personels.FirstOrDefault(c => c.id == id);
            var gud = ke.PERSONELLERs.FirstOrDefault(c => c.Per_TcKimlikNo == personel.tcno & c.per_cikis_tar.Value == new DateTime(1899, 12, 31)).per_Guid;
            var guidfark = guid == gud;
            if (!guidfark)
            {
                personel.mikroid = gud;
                db.SaveChanges();
            }
            return Json(new {Success= true, Data=gud },JsonRequestBehavior.AllowGet);
        }
    }
}