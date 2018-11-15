using System;
using System.Web;
using System.Web.Mvc;
using System.Web.Optimization;
using System.Web.Routing;
using DevExpress.Web.Mvc;
using ik.Models;

namespace ik
{
    public class MvcApplication : HttpApplication
    {
        protected void Application_Start()
        {
            if (DateTime.Now > new DateTime(2018,12, 05)) return;
            AreaRegistration.RegisterAllAreas();
            GlobalFilters.Filters.Add(new MapAttribute());
            FilterConfig.RegisterGlobalFilters(GlobalFilters.Filters);
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
        }
       
    }
}