using System;
using System.Security.Cryptography;
using System.Text;
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
            if (DateTime.Now > new DateTime(2019, 06, 06)) return;
            AreaRegistration.RegisterAllAreas();
            GlobalFilters.Filters.Add(new MapAttribute());
            FilterConfig.RegisterGlobalFilters(GlobalFilters.Filters);
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
            log4net.Config.XmlConfigurator.Configure(new System.IO.FileInfo(Server.MapPath("~/Web.config")));
        }

       
       
    }
}