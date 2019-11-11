<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CreateProduct.aspx.cs" Inherits="Aspapplication.CreateProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <section class="container mb-5">
        <h2 class="bg-success text-white text-center">Add a New Product</h2>
          <div class="row">
              <div class="col-8 offset-2">
                  <asp:LinkButton ID="btnSave" runat="server" CssClass="btn btn-primary m-1 p-2"
                      OnClick="btnSave_Click" >
                  <i class="fa fa-save"></i>Save
                  </asp:LinkButton >
                   <asp:LinkButton ID="btnCancl" runat="server" CssClass="btn btn-secondary m-1 p-2"
                       Onclick="btnCancl_Click" >
                  <i class="fa fa-sign-out"></i>Discard
                  </asp:LinkButton >

              </div>
          </div>
    </section>
</asp:Content>
