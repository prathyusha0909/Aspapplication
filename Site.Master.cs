using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aspapplication
{
    public partial class Site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ls1_LoggedOut(object sender, EventArgs e)
        {
            Session.Abandon();
            FormsAuthentication.SignOut();//Killing the Authentication cookie
        }
    }
}