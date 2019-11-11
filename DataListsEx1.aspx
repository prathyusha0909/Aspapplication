﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DataListsEx1.aspx.cs" Inherits="Aspapplication.DataListsEx1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="container">
        <div class="h2 bg-success text-white">DataList Example 1</div>
        <div class="row">
            <div class="col">
                <asp:DataList ID="DataList1" runat="server" DataKeyField="CustomerId"
                    OnItemCommand="DataList1_ItemCommand"
                    OnEditCommand="DataList1_EditCommand"
                    OnUpdateCommand="DataList1_UpdateCommand"
                    OnCancelCommand="DataList1_CancelCommand"
                    OnDeleteCommand="DataList1_DeleteCommand"
                     RepeatColumns="4"
                    RepeatDirection="Horizontal"
                    RepeatLayout="Table">

                    <HeaderTemplate>
                        <h4 class="bg-dark text-light">Customer List</h4>

                    </HeaderTemplate>



                    <FooterTemplate>
                        </div>
                       
                        <h6 class="bg-info text-dark text-right p-1">End of List</h6>
                    </FooterTemplate>



                    <ItemTemplate>

                        <div class="border m-0 p-2">
                            The Customer <%# DataBinder.Eval(Container.DataItem,"CompanyName") %>
                        ,represented by <%# DataBinder.Eval(Container.DataItem,"ContactName") %>
                        is located in <%# DataBinder.Eval(Container,"DataItem.City") %>
                            <%# DataBinder.Eval(Container,"DataItem.Country")%>.
                      
                            <br />
                            <div class="mt-2 mb-2 d-flex">
                                <asp:LinkButton ID="LinkButton1" runat="server" Text="Modify"
                                    CommandName="Edit"
                                    CommandArgument='<%#DataBinder.Eval(Container.DataItem,"CustomerId") %>'
                                    CssClass="btn btn-secondary btn-sm w-50" />
                                <asp:Button ID="link1" runat="server"
                                    CssClass="btn btn-success btn-sm w-50" Text="View Details"
                                    CommandName="view"
                                    CommandArgument='<%#DataBinder.Eval(Container.DataItem,"CustomerId") %>' />
                            </div>
                        </div>
                    </ItemTemplate>



                    <AlternatingItemTemplate>
                        <div class="bg-light border">
                            The Customer <%# DataBinder.Eval(Container.DataItem,"CompanyName") %>
                        ,represented by <%# DataBinder.Eval(Container.DataItem,"ContactName") %>
                        is located in <%# DataBinder.Eval(Container,"DataItem.City") %>
                            <%# DataBinder.Eval(Container,"DataItem.Country")%>.
                     
                            <br />
                            <div class="mt-2 mb-2 d-flex">
                                <asp:LinkButton ID="link1" runat="server" Text="Modify"
                                    CommandName="Edit"
                                    CommandArgument='<%#DataBinder.Eval(Container.DataItem,"CustomerId") %>'
                                    CssClass="btn btn-secondary btn-sm w-50" />



                                <asp:LinkButton ID="link2" runat="server"
                                    CssClass="btn btn-success btn-sm w-50" Text="View Details"
                                    CommandName="view"
                                    CommandArgument='<%#DataBinder.Eval(Container.DataItem,"CustomerId") %>' />
                            </div>
                        </div>
                    </AlternatingItemTemplate>



                   <EditItemTemplate>
                   <table class="table table-sm ">
                       <tr>
                           <td>Company :</td>
                           <td>
                               <asp:TextBox ID="txtCompany" runat="server" CssClass="form-control" 
                                   Text='<%# DataBinder.Eval(Container.DataItem,"CompanyName") %>'/>
                           </td>
                       </tr>

 

                       <tr>
                           <td>Contact :</td>
                           <td>
                               <asp:TextBox ID="txtContact" runat="server" CssClass="form-control" 
                                   Text='<%# DataBinder.Eval(Container.DataItem,"ContactName") %>'/>
                           </td>
                       </tr>
                       <tr>
                           <td>City :</td>
                           <td>
                               <asp:TextBox ID="txtCity" runat="server" CssClass="form-control" 
                                   Text='<%# DataBinder.Eval(Container.DataItem,"City") %>'/>
                           </td>
                       </tr>
                       <tr>
                           <td>Country :</td>
                           <td>
                               <asp:TextBox ID="txtCountry" runat="server" CssClass="form-control" 
                                   Text='<%# DataBinder.Eval(Container.DataItem,"Country") %>'/>
                           </td>
                       </tr>
                       <tr>
                           <td colspan="2">
                               <asp:Button ID="btnUpdate" runat="server" Text="Update"
                                   CommandName="Update" CssClass="btn btn-sm btn-success" />
                               <asp:Button ID="btnCancel" runat="server" Text="Discard"
                                   CommandName="Cancel" CssClass="btn btn-sm btn-secondary" />
                           </td>
                       </tr>
                   </table>
               </EditItemTemplate>

                </asp:DataList>
            </div>
        </div>
    </section>
</asp:Content>
