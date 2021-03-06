﻿using System.Web.Mvc;
using System.Web.Routing;

namespace ik
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");
            routes.MapRoute(
                name: "Personelizingiriscikisdurum",
                url: "iznim",
                defaults: new { controller = "YillikIznim", action = "Index" }
            );


            routes.MapRoute(
                name: "PersonelDurum",
                url: "PersonelDurum",
                defaults: new { controller = "Rapor", action = "PersonelDurum" }
            );
            routes.MapRoute("Default", "{controller}/{action}/{id}",
                new {controller = "Home", action = "Index", id = UrlParameter.Optional},
               new string[] { "ik.Controllers" }
                );
           

        }
    }}