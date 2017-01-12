using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Web.Mvc;
using ik.Models;

namespace ik.Controllers
{
    [Authorize(Users = @"KENTKONUT\noskay")]
    public class ImzaController : Controller
    {
        ikEntities db =new ikEntities();

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }

        public ActionResult Index()
        {
            var liste = db.Imzas.ToList();
            return View(liste);
        }

        public ActionResult Create()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Create(Imza imza)
        {
            if (ModelState.IsValid)
            {
                db.Imzas.Add(imza);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(imza);
        }
    }
}