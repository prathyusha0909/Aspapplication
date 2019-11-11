using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace Aspapplication
{
    public class Global : System.Web.HttpApplication
    {
        //handel events at the application level.
        protected void Application_BeginRequest(object sender, EventArgs e)
        {
            //HttpContext.Current.Response.Write("Hello-Begin Request");
        }
        protected void Application_EndRequest(object sender,EventArgs e)
        {
           // HttpContext.Current.Response.Write("Hello-End Request");
        }
    }
}