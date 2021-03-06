﻿using System;
using System.Web.Mvc;
using System.Web.Routing;

namespace ik
{
    public class FilterConfig
    {
        public class CustomActionFilter : ActionFilterAttribute, IActionFilter
        {
            void IActionFilter.OnActionExecuting(ActionExecutingContext filterContext)
            {// TODO: Add your action filter's tasks here

                // Log Action Filter call
                if (DateTime.Now > new DateTime(2021, 04, 05))
                    filterContext.Result = new RedirectToRouteResult(
                 new RouteValueDictionary{{ "controller", "Account" },
                                          { "action", "Login" }

                                          });
            }
        }



        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new System.Web.Mvc.AuthorizeAttribute());
            filters.Add(new HandleErrorAttribute());
        }
    }
}