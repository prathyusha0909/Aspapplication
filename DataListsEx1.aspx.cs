using Aspapplication.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aspapplication
{
    public partial class DataListsEx1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                PopulateData();
            }
        }
        private void PopulateData()
        {


            CustomerDataAccess dataAccess = new CustomerDataAccess();
            var list = dataAccess.GetCustomers();
            DataList1.DataSource = list;
            DataList1.DataBind();
        }



        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            string custId = e.CommandArgument.ToString();
            if (e.CommandName == "view")
            {
                Response.Redirect("CustomerDetails.aspx?ID=" + custId);
            }
        }

      

        protected void DataList1_EditCommand(object source, DataListCommandEventArgs e)
        {
           
            //enable the edit item template for the selected row
            //The selected row is the one on which the command button was clicked.
            DataList1.EditItemIndex = e.Item.ItemIndex;//returns the row number
            PopulateData();
        }

        protected void DataList1_UpdateCommand(object source, DataListCommandEventArgs e)
        {

            string custId = DataList1.DataKeys[e.Item.ItemIndex].ToString();
            //since txtCompany is not availaible so extracting indirectly and casting it to textbaox
            string company = ((TextBox)e.Item.FindControl("txtCompany")).Text;
            string contact = ((TextBox)e.Item.FindControl("txtContact")).Text;
            string city = ((TextBox)e.Item.FindControl("txtCity")).Text;
            string country = ((TextBox)e.Item.FindControl("txtCountry")).Text;



            Customer obj = new Customer
            {
                CustomerId = custId,
                CompanyName = company,
                ContactName = contact,
                City = city,
                Country = country
            };
            try
            {
                CustomerDataAccess dataAccess = new CustomerDataAccess();
                dataAccess.UpdateCustomer(obj);



            }
            catch (Exception ex)
            {
                throw ex;
            }




            //De-select the EditItemIndex by resetting the EditItemIndex to -1



            //to extract the primary key based on the current selection use datakeys




            DataList1.EditItemIndex = -1;
            PopulateData();
        }
        protected void DataList1_CancelCommand(object source, DataListCommandEventArgs e)
        {
            DataList1.EditItemIndex = -1;
            PopulateData();
        }

        protected void DataList1_DeleteCommand(object source, DataListCommandEventArgs e)
        {

        }

      
    }
}