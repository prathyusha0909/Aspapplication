using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace Aspapplication
{
    public partial class FirstPage:System.Web.UI.Page
    {
        protected TextBox txt1;
        protected override void OnInit(EventArgs e)
        {
            this.Load += new EventHandler(Page_Load);
            base.OnInit(e);
        }
        public void Page_Load(object sender, EventArgs e)
        {
            // check whether the request is a new request or a postback request
            if (!IsPostBack)
                this.txt1.Text = "Enter your name here";
        }
        //public delegate void System.EventHandler(object sender, EventArgs e);
        public void btn1_Click(object sender, EventArgs e)
        {
            this.txt1.Text = this.txt1.Text.ToUpper();
        }
    }
}