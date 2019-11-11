﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aspapplication
{
    public partial class WebControls1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<string> intrestsList = new List<string> {
                "Art","Automobiles","Technology","Fasion","Science","Cuisines",
                "Sports","Dance","Music"};

            //The request is a new request or whether it is a postback(submit)request
            if(!IsPostBack)//If it is not postback request,then
            {
                //do the assignment and invoke the methods
               // ChkInterest.DataSource = intrestsList;
               // ChkInterest.DataBind();

            //Alternate way of assigning items to list
            for(int i=0;i<intrestsList.Count;i++)
                {
                    ChkInterest.Items.Add(intrestsList[i]);
                }

            }//otherwise,ignore the assignment
            //since the assignment is not made,the selected values will be available.

          
        }
        protected void btnSave_Click(object sender,EventArgs e)
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("<section class='alert alert-info'>");
            sb.AppendFormat("Hi,<b>{0}</b>!<br/>",txtName.Text)
                .Append("Welcome to our site.you are located in")
                .AppendFormat("<strong>{0}</strong>",ddlLocation.SelectedItem.ToString())
                .AppendFormat("<addres>{0}</address>", Address.Text)
                .Append("<br/>your intrests are:")
                .Append("<ul>");
            foreach(ListItem item in ChkInterest.Items)
            {
                if (item.Selected)
                    sb.AppendFormat("<li>{0}</li>", item.Text);
            }
            sb.Append("</ul>");
            sb.Append("</section>");
            literal1.Text = sb.ToString();
        }
    }
}