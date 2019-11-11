<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RepeaterEx2.aspx.cs" Inherits="Aspapplication.RepeaterEx2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <section class="container">
        <div class="h2 bg-success text-white">Repeater Example 2</div>
        <div class="row">
            <div class="col">
                <asp:Repeater ID="repeater1" runat="server" OnItemCommand="repeater1_ItemCommand">
                    <HeaderTemplate>
                        <h4 class="bg-dark text-light">Customer </h4>
                       <table class="table table-dark">
                           <thead>
                               <tr>
                                   <th>Company Name</th>
                                   <th>Contact Name</th>
                                   <th>City</th>
                                   <th>Country</th>
                                   <th></th>
                               </tr>
                           </thead>
                      
                     </HeaderTemplate>
                    <FooterTemplate>
                        <tfoot>
                            <tr>
                                <td colspan="5" class="bg-info text-dark text-right p-1">End of List</td>
                            </tr>
                        </tfoot>
                        </table>
                    </FooterTemplate>
                    <ItemTemplate>
                        <tr></tr>
                       <td> <%# DataBinder.Eval(Container.DataItem,"CompanyName") %></td>
                        <td> <%# DataBinder.Eval(Container.DataItem,"ContactName") %></td>
                       <td> <%#  DataBinder.Eval(Container,"DataItem.City") %>,</td>
                      <td>  <%#  DataBinder.Eval(Container,"DataItem.Country") %>.</td>
                      <td>
                          <asp:LinkButton ID="link1" runat="server"
                              CssClass="btn btn-warning btn-sm w-100" Text="View Details"
                              CommandName="view"
                              CommandArgument='<%# DataBinder.Eval(Container.DataItem,"CustomerID" ) %>'
                              />.
                      </td>
                    </ItemTemplate>
                   
                    <AlternatingItemTemplate>
                         <tr></tr>
                       <td> <%# DataBinder.Eval(Container.DataItem,"CompanyName") %></td>
                        <td> <%# DataBinder.Eval(Container.DataItem,"ContactName") %></td>
                       <td> <%#  DataBinder.Eval(Container,"DataItem.City") %>,</td>
                      <td>  <%#  DataBinder.Eval(Container,"DataItem.Country") %>.</td>
                      <td>
                          <asp:LinkButton ID="link1" runat="server"
                              CssClass="btn btn-warning btn-sm w-100" Text="View Details"
                              CommandName="view"
                              CommandArgument='<%# DataBinder.Eval(Container.DataItem,"CustomerID" ) %>'
                              />
                      </td>
                        </div>
                    </AlternatingItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </section>
</asp:Content>
