<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GridViewEx1.aspx.cs" Inherits="Aspapplication.GridViewEx1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="container">
       <h2 class="bg-success text-white text-center p-2">Working with Grids.</h2>
       <div class="row">
           <div class="col">
               <asp:GridView ID="grid1" runat="server" AllowPaging="True" AllowSorting="True"
                   AutoGenerateColumns="False"
                   CellPadding="4" DataKeyNames="CustomerID" 
                   DataSourceID="SqlDataSource1"
                   ForeColor="#333333" GridLines="None">
                   <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                   <Columns>
                       <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                       <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" ReadOnly="True" SortExpression="CustomerID" />
                       <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" SortExpression="CompanyName" />
                       <asp:BoundField DataField="ContactName" HeaderText="ContactName" SortExpression="ContactName" />
                               <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                       <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                   </Columns>
                   <EditRowStyle BackColor="#999999" />
                   <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                   <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                   <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                   <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                   <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                   <SortedAscendingCellStyle BackColor="#E9E7E2" />
                   <SortedAscendingHeaderStyle BackColor="#506C8C" />
                   <SortedDescendingCellStyle BackColor="#FFFDF8" />
                   <SortedDescendingHeaderStyle BackColor="#6F8DAE" />

               </asp:GridView>
               <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" DeleteCommand="DELETE FROM [Customers] WHERE [CustomerID] = @original_CustomerID AND [CompanyName] = @original_CompanyName AND (([ContactName] = @original_ContactName) OR ([ContactName] IS NULL AND @original_ContactName IS NULL)) AND (([City] = @original_City) OR ([City] IS NULL AND @original_City IS NULL)) AND (([Country] = @original_Country) OR ([Country] IS NULL AND @original_Country IS NULL))" InsertCommand="INSERT INTO [Customers] ([CustomerID], [CompanyName], [ContactName], [City], [Country]) VALUES (@CustomerID, @CompanyName, @ContactName, @City, @Country)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [CustomerID], [CompanyName], [ContactName], [City], [Country] FROM [Customers]" UpdateCommand="UPDATE [Customers] SET [CompanyName] = @CompanyName, [ContactName] = @ContactName, [City] = @City, [Country] = @Country WHERE [CustomerID] = @original_CustomerID AND [CompanyName] = @original_CompanyName AND (([ContactName] = @original_ContactName) OR ([ContactName] IS NULL AND @original_ContactName IS NULL)) AND (([City] = @original_City) OR ([City] IS NULL AND @original_City IS NULL)) AND (([Country] = @original_Country) OR ([Country] IS NULL AND @original_Country IS NULL))">
                   <DeleteParameters>
                       <asp:Parameter Name="original_CustomerID" Type="String" />
                       <asp:Parameter Name="original_CompanyName" Type="String" />
                       <asp:Parameter Name="original_ContactName" Type="String" />
                       <asp:Parameter Name="original_City" Type="String" />
                       <asp:Parameter Name="original_Country" Type="String" />
                   </DeleteParameters>
                   <InsertParameters>
                       <asp:Parameter Name="CustomerID" Type="String" />
                       <asp:Parameter Name="CompanyName" Type="String" />
                       <asp:Parameter Name="ContactName" Type="String" />
                       <asp:Parameter Name="City" Type="String" />
                       <asp:Parameter Name="Country" Type="String" />
                   </InsertParameters>
                   <UpdateParameters>
                       <asp:Parameter Name="CompanyName" Type="String" />
                       <asp:Parameter Name="ContactName" Type="String" />
                       <asp:Parameter Name="City" Type="String" />
                       <asp:Parameter Name="Country" Type="String" />
                       <asp:Parameter Name="original_CustomerID" Type="String" />
                       <asp:Parameter Name="original_CompanyName" Type="String" />
                       <asp:Parameter Name="original_ContactName" Type="String" />
                       <asp:Parameter Name="original_City" Type="String" />
                       <asp:Parameter Name="original_Country" Type="String" />
                   </UpdateParameters>
               </asp:SqlDataSource>
           </div>
       </div>
   </section>
</asp:Content>
