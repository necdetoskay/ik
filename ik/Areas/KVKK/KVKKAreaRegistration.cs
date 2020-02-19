using System.Web.Mvc;

namespace ik.Areas.KVKK
{
    public class KVKKAreaRegistration : AreaRegistration 
    {
        public override string AreaName 
        {
            get 
            {
                return "KVKK";
            }
        }

        public override void RegisterArea(AreaRegistrationContext context) 
        {
            context.MapRoute(
                "KVKK_default",
                "KVKK/{controller}/{action}/{id}",
                new { action = "Index", id = UrlParameter.Optional }
            );
        }
    }
}