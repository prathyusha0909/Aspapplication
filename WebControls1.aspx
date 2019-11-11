<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebControls1.aspx.cs" Inherits="Aspapplication.WebControls1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Literal ID="literal1" runat="server" />
    <section class="card shadow mx-5 mb-5">
        <div class="card-header card-title text-center">Application Form</div>
        <div class="card-body">

            <div class="form-group form-row">
                <div class="col-3 offset-2 text-right">
                    <asp:Label id="lbl1" runat="server" Text="Name:" />
                </div>
                <div class="col-5">
                    <asp:TextBox id="txtName" runat="server" />
                </div>
            </div>
            <!--Password-->
             <div class="form-group form-row">
                <div class="col-3 offset-2 text-right">
                    <asp:Label id="lbl2" runat="server" Text="Password:" />
                </div>
                <div class="col-5">
                    <asp:TextBox id="Password" runat="server" TextMode="Password" />
                </div>
            </div>
           
            <!--address-->
              <div class="form-group form-row">
                <div class="col-3 offset-2 text-right">
                    <asp:Label id="txtAddress" runat="server" Text="Address" />
                </div>
                <div class="col-5">
                    <asp:TextBox id="Address" runat="server" />
                </div>
            </div>
            <!---Gender-->
            <div class="form-group form-row">
                <div class="col-3 offset-2 text-right">
                <asp:Label ID="Lbl4" runat="server" Text="Gender" />

            </div>
            <div class="col-5 text-left">
                 <asp:RadioButton id="radMale" runat="server" GroupName="gender" Text="Male"/>
                <asp:RadioButton id="radFemale" runat="server" GroupName="gender" Text="Female"/>
            </div>
        </div>
        <!--Location-->
         <div class="form-group form-row">
                <div class="col-3 offset-2 text-right">
                <asp:Label ID="lbl5" runat="server" Text="Location" />

            </div>
            <div class="col-5 text-left">
                 <asp:DropDownList id="ddlLocation" runat="server" CssClass="form-control">
                    <asp:ListItem Text="--Select--" Value="0" Selected="True" />
                 <asp:ListItem Text="Bengaluru" Value="Bengaluru"  />
                 <asp:ListItem Text="Bellary" Value="Bellary"  />
</asp:DropDownList>
            </div>
        </div>
            <!---Intrest Hobbies-->
                   <div class="form-group form-row">
                <div class="col-3 offset-2 text-right">
                    <asp:Label id="lbl6" runat="server" Text="Interests" />
                </div>
                <div class="col-5 text-left">
                    <asp:CheckBoxList id="ChkInterest" runat="server" RepeatColumns="2"
                        RepeatDirection="Horizontal" RepeatLayout="Table"
                        CssClass="table table-sm table-striped">
                    </asp:CheckBoxList>
                </div>
            </div>
            <!--buttons-->
            <div class="form-row">
                <div class="col-4 offset-4 btn-group-lg text-center">
                     <asp:Button id="btn1" runat="server" Text="Save"
                         CssClass="btn btn-primary mx-2" OnClick="btnSave_Click"/>
                     <asp:Button id="btn2" runat="server" Text="Cancel"
                         CssClass="btn btn-secondary mx-2"/>
                    
                </div>
            </div>
</div>
    </section>
</asp:Content>
