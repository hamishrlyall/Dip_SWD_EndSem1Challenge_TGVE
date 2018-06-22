using System.Web;
using System.Web.Mvc;

namespace Dip_SWD_EndSem1Challenge
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
        }
    }
}
