<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebControls2.aspx.cs" Inherits="Aspapplication.WebControls2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <asp:Literal ID="literal1" runat="server" />
    <section class="card shadow mx-5 mb-5">
        <div class="card-header card-title text-center">Contact Management</div>
        <div class="card-body">
            <!---FirstName-->
            <div class="form-group form-row">
                <div class="col-3 offset-2 text-right">
                    <asp:Label id="lbl1" runat="server" Text="FirstName:" />
                </div>
                <div class="col-5">
                    <asp:TextBox id="txtFirstName" runat="server" />
                    <asp:RequiredFieldValidator ID="rfv1" runat="server"
                                ControlToValidate="txtFirstName" Display="Static"
                                 ErrorMessage="Name is required." CssClass="text-danger"/>
                </div>
            </div>
            <!---MiddleName-->
             <div class="form-group form-row">
                <div class="col-3 offset-2 text-right">
                    <asp:Label id="lbl2" runat="server" Text="MiddleName:" />
                </div>
                <div class="col-5">
                    <asp:TextBox id="txtMiddleName" runat="server" />
                </div>
            </div>
            <!---LastName-->
             <div class="form-group form-row">
                <div class="col-3 offset-2 text-right">
                    <asp:Label id="lbl3" runat="server" Text="LastName:" />
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                ControlToValidate="txtLastName" Display="Static"
                                Text="*" ErrorMessage="Name is required." CssClass="text-danger"/>
                </div>
                <div class="col-5">
                    <asp:TextBox id="txtLastName" runat="server" />
                </div>
            </div>
             <!--BirthDate-->
             <div class="form-group form-row">
                <div class="col-3 offset-2 text-right">
                    <asp:Label id="lbl4" runat="server" Text="BirthDate" />
                </div>
                <div class="col-5">
                    <asp:TextBox id="txtBirthDate" runat="server"  />

                    <asp:RangeValidator ID="rv1" runat="server"
                                ControlToValidate="txtBirthDate" Display="Static"
                                Text="*" ErrorMessage="Age should be between 18 and 100" 
                                CssClass="text-danger" MinimumValue="18" MaximumValue="100"
                                 Type="Integer"/>
                </div>
            </div>
            <!--Email-->
             <div class="form-group form-row">
                <div class="col-3 offset-2 text-right">
                    <asp:Label id="lbl5" runat="server" Text="Email" />
                    <asp:RegularExpressionValidator ID="reg1" runat="server"
                                ControlToValidate="txtEmail" Display="Static"
                                Text="*" ErrorMessage="Invalid Email Format" 
                                CssClass="text-danger" validationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                 Type="Integer"/>
                </div>
                 <div class="col-5">
                    <asp:TextBox id="txtEmail" runat="server" TextMode="Email" />
                </div>
                 </div>
            <!--MobileNum-->
             <div class="form-group form-row">
                <div class="col-3 offset-2 text-right">
                    <asp:Label id="lbl7" runat="server" Text="MobileNo" />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                                ControlToValidate="txtMobileNo" Display="Static"
                                Text="*" ErrorMessage="Invalid Mobile Number" 
                                CssClass="text-danger" validationExpression="^[789][0-9]{9}$"
                                 Type="Integer"/>
                </div>
                 <div class="col-5">
                    <asp:TextBox id="txtMobileNo" runat="server" TextMode="Number" OnTextChanged="txtMobileNo_TextChanged" />
                </div>
                 </div>
            
           
            <!--buttons--->
               <div class="form-row">
                <div class="col-4 offset-4 btn-group-lg text-center">
                     <asp:Button id="btn1" runat="server" Text="Save"
                         CssClass="btn btn-primary mx-2" />
                     <asp:Button id="btn2" runat="server" Text="Cancel"
                         CssClass="btn btn-secondary mx-2"/>
                    
                </div>

</div>
            </div>
        </section>

</asp:Content>
