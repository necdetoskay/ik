using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;

namespace ik.Controllers
{
    public class MediaController : Controller
    {
        public ActionResult _PersonelResimleri()
        {
            var folder = Server.MapPath("~//Content//Media//pers_resim");
            System.IO.DirectoryInfo dir = new System.IO.DirectoryInfo(folder);
            IEnumerable<System.IO.FileInfo> fileList = dir.GetFiles("*.*", System.IO.SearchOption.AllDirectories);
            var q = (from f in fileList select new
            {
                text=f.Name,
                imageSrc= "/Content/Media/pers_resim/"+f.Name
            }).ToList();

            return Json(q, JsonRequestBehavior.AllowGet);
        }
    }
}

        //text: "Twitter",
        //value: 2,
        //selected: false,
        //description: "Description with Twitter",
        //imageSrc: "http://i.imgur.com/8ScLNnk.png"