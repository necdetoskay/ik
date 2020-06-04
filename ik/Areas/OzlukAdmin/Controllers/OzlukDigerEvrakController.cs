using System.Linq;
using System.Web.Mvc;
using ik.Models;

namespace ik.Areas.OzlukAdmin.Controllers
{
    [FilterConfig.CustomActionFilter]
    [Authorize(Users = @"KENTKONUT\noskay,KENTKONUT\derya.aslan")]
    public class OzlukDigerEvrakController : Controller
    {
        private ikEntities db = new ikEntities();

        public ActionResult Index()
        {
            return View();
        }



        public ActionResult IkCreate(int personelid)
        {
            return PartialView(new Ozluk_DigerEvrak {personelid =personelid});
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult IkCreate(Ozluk_DigerEvrak model)
        {
            if (ModelState.IsValid)
            {
                db.Ozluk_DigerEvrak.Add(model);
                db.SaveChanges(); 
                return Json(new { Success = true, Data = model }, JsonRequestBehavior.AllowGet);
            }
            return PartialView(model);
            //return Json(new { Success = false, Message = "hata oluştu", Data = model }, JsonRequestBehavior.AllowGet);
        }

        public ActionResult DigerEvrakListe(int id)
        {
            var liste = db.Ozluk_DigerEvrak.Where(c => c.personelid == id).ToList();
            return PartialView(liste);
        }
    }
}