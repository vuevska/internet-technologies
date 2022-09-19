using System.Web;
using System.Web.Mvc;

namespace IT_Lab5_2022
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
            
            /*If we add this AuthorizeAttrubute whataver we want to do
             our app must be authorized first; We must log in.*/
            /*filters.Add(new AuthorizeAttribute());*/
        }
    }
}
