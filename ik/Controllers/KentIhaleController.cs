using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Security.AccessControl;
using System.Web.Mvc;
using ik.Models;
using WebGrease.Css.Extensions;

namespace ik.Controllers
{
    [FilterConfig.CustomActionFilter]
    [Authorize(Users = @"KENTKONUT\noskay")]
    public class KentIhaleController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

       
        public JsonResult PersonelAra(string term)
        {
            var liste = new ArrayList();
            using (var ihale=new kentmakineihaleEntities())
            {
                ihale.PERSONELLERs.Where(c => c.per_adi.Contains(term))
                    .ForEach(d=>liste.Add(new{Ad=d.per_adi,Soyad=d.per_soyadi,SicilNo=d.per_kod,Ihale="KentMakine"}));

                ihale.PERSONELLERs.Where(c => c.per_soyadi.Contains(term))
                    .ForEach(d => liste.Add(new  { Ad = d.per_adi, Soyad = d.per_soyadi, SicilNo = d.per_kod, Ihale = "KentMakine" }));

            }
            using (var makine=new kentihaleEntities())
            {
                makine.PERSONELLERs.Where(c => c.per_adi.Contains(term))
                    .ForEach(d => liste.Add(new  { Ad = d.per_adi, Soyad = d.per_soyadi, SicilNo = d.per_kod, Ihale = "KentIhale" }));

                makine.PERSONELLERs.Where(c => c.per_soyadi.Contains(term))
                    .ForEach(d => liste.Add(new { Ad = d.per_adi, Soyad = d.per_soyadi, SicilNo = d.per_kod, Ihale = "KentIhale" }));
            }

            using (var makine = new KENTEntities())
            {
                makine.PERSONELLERs.Where(c => c.per_adi.Contains(term))
                    .ForEach(d => liste.Add(new { Ad = d.per_adi, Soyad = d.per_soyadi, SicilNo = d.per_kod, Ihale = "Kent KONUT" }));

                makine.PERSONELLERs.Where(c => c.per_soyadi.Contains(term))
                    .ForEach(d => liste.Add(new { Ad = d.per_adi, Soyad = d.per_soyadi, SicilNo = d.per_kod, Ihale = "Kent KONUT" }));
            }



            return Json(liste,JsonRequestBehavior.AllowGet);
        }

        
    }

    
}