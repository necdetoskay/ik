using System;
using System.Collections.Generic;
using System.DirectoryServices.AccountManagement;
using System.Drawing;
using System.Linq;
using System.Web.Mvc;
using ik.Models;

namespace ik.Controllers
{
    [FilterConfig.CustomActionFilter]
    [Authorize]
    public class YillikIznimController : Controller
    {
        private readonly ikEntities db = new ikEntities();

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }

        // GET: YillikIznim
        public ActionResult Index()
        {
            var user = UserPrincipalExtended.FindByIdentity(
                new PrincipalContext(ContextType.Domain), User.Identity.Name);
            var id = int.Parse(user.Pager);
            var personel = db.Personels.SingleOrDefault(c => c.id == id);
            ViewBag.personelAd = personel.adsoyad;
            ViewBag.PDKSID = personel.pdksid;
            ViewBag.id = id;
            var bitis = DateTime.Now;
            ViewBag.baslangic = new DateTime(bitis.Year,bitis.Month,1);
            ViewBag.bitis = bitis;



            var list=new List<SelectListItem>
                {
                    new SelectListItem()
                    {
                        Value = personel.id.ToString(),
                        Text = personel.adsoyad
                    }
                }
            ;

            if (personel.IzinBakmaYetkiUst.Any())
            {
                foreach (var alt in personel.IzinBakmaYetkiUst)
                {
                    list.Add(new SelectListItem
                    {
                        Value =alt.PersonelAlt.id.ToString(),
                        Text = alt.PersonelAlt.adsoyad
                    });
                }
               
            }

            ViewBag.Liste = new SelectList(list, "Value", "Text");

            return PartialView("_YillikIzinler");

        }
    }
}