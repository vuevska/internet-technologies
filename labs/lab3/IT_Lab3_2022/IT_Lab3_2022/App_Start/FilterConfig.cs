﻿using System.Web;
using System.Web.Mvc;

namespace IT_Lab3_2022
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
        }
    }
}