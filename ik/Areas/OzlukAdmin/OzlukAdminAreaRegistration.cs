using System.Web.Mvc;

namespace ik.Areas.OzlukAdmin
{
    public class OzlukAdminAreaRegistration : AreaRegistration 
    {
        public override string AreaName 
        {
            get 
            {
                return "OzlukAdmin";
            }
        }

        public override void RegisterArea(AreaRegistrationContext context) 
        {
            context.MapRoute(
                "OzlukAdmin_default",
                "OzlukAdmin/{controller}/{action}/{id}",
                new { action = "Index", controller="OzlukHome", id = UrlParameter.Optional }
            );
        }
    }
}