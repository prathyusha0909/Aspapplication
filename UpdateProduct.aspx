<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UpdateProduct.aspx.cs" Inherits="Aspapplication.UpdateProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="container mb-5">
        <h2 class="bg-success text-white text-center">Update Product Details</h2>
        <div class="row">
            <div class="col-4 offset-2">
               <div class="form-group">
                   <asp:Label ID="lblName" runat="server" CssClass="col-form-label text-dark"
                       Text="Product Name" />
                   <asp:TextBox ID="txtName" runat="server" CssClass="form-control" />
               </div>
            </div>
            <div class="col-4 ">
                <div class="form-group">
                   <asp:Label ID="lblPrice" runat="server" CssClass="col-form-label text-dark"
                       Text="Unit Price" />
                   <asp:TextBox ID="txtPrice" runat="server" CssClass="form-control" />
               </div>
            </div>
      </div>
        <div class="row">
             <div class="col-4 offset-2">
                 <div class="form-group">
                     <asp:Label ID="lblStock" runat="server" CssClass="col-form-label text-dark"
                         Text="Units in Stock" />
                     <asp:TextBox ID="txtStock" runat="server" CssClass="form-control" />
                 </div>
             </div>
        <div class="col-4 ">
                 <div class="form-group">
                     <asp:Label ID="lblCatg" runat="server" CssClass="col-form-label text-dark"
                         Text="Category" />
                     <asp:DropDownList ID="ddlCategories" runat="server" CssClass="form-control" />
                 </div>
             </div>
              </div>

        <div class="row">
            <div class="col-4 offset-2">
               <div class="form-group">
                   <asp:Label ID="lblDiscontinued" runat="server" CssClass="col-form-label text-dark"
                       Text="Discontinued?" />
                   <asp:CheckBox ID="chkDiscontinued" runat="server" CssClass="form-control" />
               </div>
            </div>
      </div>
         <div class="row">
              <div class="col-8 offset-2 text-center">
                  <asp:LinkButton ID="btnSave" runat="server" CssClass="btn btn-primary m-1 p-2"
                      OnClick="btnSave_Click">
                  <i class="fa fa-save"></i>Update
                  </asp:LinkButton >
                   <asp:LinkButton ID="btnCancl" runat="server" CssClass="btn btn-secondary m-1 p-2"
                       Onclick="btnCancl_Click" >
                  <i class="fa fa-sign-out"></i>Discard
                  </asp:LinkButton >
   </div>
          </div>
    </section>

</asp:Content>
