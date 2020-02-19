using System;
using System.Collections.Generic;
using System.DirectoryServices.AccountManagement;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ik.Models;
using PtakipDAL;

namespace ik.Controllers
{
    public class GirislerimController : Controller
    {
        private readonly ikEntities db = new ikEntities();

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
        // GET: Girislerim
        public ActionResult Index()
        {
            return PartialView();
        }

        public JsonResult GirisCikis()
        {
            var user = UserPrincipalExtended.FindByIdentity(
           new PrincipalContext(ContextType.Domain), User.Identity.Name);
            var id = int.Parse(user.Pager);
        
            var personel = db.Personels.SingleOrDefault(c => c.id == id);
            if (personel != null)
            {
                var pdksid = personel.pdksid;
                PerkotekContext pdb = new PerkotekContext();
                pdb.PuantajHazirla(new DateTime(DateTime.Now.Year, DateTime.Now.Month, 1).Date, DateTime.Now.Date, pdksid.Value, true);
                var p = pdb.personel.FirstOrDefault().PTarihs.OrderBy(c=>c.Tarih);
                return Json(new {Success=true,Data=p}, JsonRequestBehavior.AllowGet);
            }
            return Json(new { Success = false }, JsonRequestBehavior.AllowGet);
        }
    }
}