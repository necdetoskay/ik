using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ik.Models.DataClasslari;

namespace ik.Controllers
{

    [FilterConfig.CustomActionFilter]
    [Authorize(Users = @"KENTKONUT\noskay,KENTKONUT\derya.aslan,KENTKONUT\mcagdas")]
    public class ikRaporController : Controller
    {
        // GET: ikRapor
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult _GunlukRapor()
        {
            return PartialView();
        }
        public ActionResult _HaftalikRapor()
        {
            return PartialView();
        }

        public ActionResult _MazeretliGelmeyenler()
        {
            var data=new DataPDKS().MazeretliGelmeyenler(DateTime.Now);
            return PartialView(data.OrderBy(c=>c.Baslangıc));
        }

        public ActionResult _GecKalanlar()
        {
            var data=new DataPDKS().GecKalanlar(DateTime.Now);
         
            return PartialView(data.OrderBy(c=>c.Giris));
        }

       

        public ActionResult _HaftalikGecKalanlar()
        {
            var data=new DataPDKS().GecKalanlar(new DateTime(2020,10,12),new DateTime(2020,10,18));
            return PartialView(data.OrderBy(c=>c.Giris));
        }
    }
}