using System.Linq;
using System.Web.Mvc;
using ik.Models;

namespace ik.Areas.OzlukAdmin.Controllers
{

    [FilterConfig.CustomActionFilter]
    [Authorize(Users = @"KENTKONUT\noskay,KENTKONUT\derya.aslan")]
    public class İseGirisCikisIslemleriController : Controller
    {
        private readonly ikEntities db = new ikEntities();
        public ActionResult Sozleşme()
        {
            ViewBag.sgkdosyaListe = new SelectList(db.SgkDosyas.ToList(), "SgkNo", "Ad");
            return View();
        }
    }
}