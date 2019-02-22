<%@ Control Language="C#" AutoEventWireup="true" CodeFile="changeUserRoleType.ascx.cs"
    Inherits="Controls_changeUserRoleType" %>
<%@ Register src="UserInformationControl.ascx" tagname="UserInformationControl" tagprefix="uc1" %>
<link href="../App_Themes/StyleSheet1.css" rel="stylesheet" type="text/css" />
<div class="HalfLeftMainPageContent" style="height: auto; float: right; right: 30px">
    <div class="HalfMainField">
        <div class="MiddelChild">
            <asp:DropDownList ID="membersEmailDDl" runat="server" Width="153px" AutoPostBack="True">
            </asp:DropDownList>
        </div>
        <div class="RightChild">
            :ایمیل کاربر</div>
    </div>
    <div class="HalfMainField">
        <div class="MiddelChild">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="membersEmailDDl"
                ErrorMessage="ایمیل کاربر را وارد کنید"></asp:RequiredFieldValidator>
            <asp:Button ID="Button1" runat="server" Text="جستجو" BackColor="#FFCC00" BorderColor="#FFCC00"
                OnClick="Button1_Click" />
        </div>
        <div class="RightChild">
        </div>
    </div>
    <div class="HalfMainField">
        <div class="MiddelChild">
            <asp:Label ID="statusOfAvailabLb" runat="server" Text="کاربر موجود نیست"></asp:Label>
        </div>
        <div class="RightChild">
        </div>
    </div>
    <div class="HalfMainField" style="height: auto">
        <uc1:UserInformationControl ID="UserInformationControl1" runat="server" />
   <br />
    </div>
    <div class="HalfMainField">
        <div class="MiddelChild">
            <asp:DropDownList ID="DropDownList1" runat="server" Style="font-size: small; font-family: Tahoma"
                Width="176px">
                <asp:ListItem Value="مشتری">مشتری</asp:ListItem>
                <asp:ListItem Value="مدیر آشپزخانه">مدیر پذیرایی و آشپزخانه</asp:ListItem>
                <asp:ListItem Value="مدیر انبار">مدیر انبار</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="RightChild">
            :انتخاب کاربری
        </div>
    </div>
    <div class="HalfMainField">
        <div class="MiddelChild">
        </div>
        <div class="RightChild">
        </div>
    </div>
    <div class="HalfMainField">
        <div class="MiddelChild">
            <asp:ImageButton ID="changeRoleTypeBtn" runat="server" ImageUrl="~/Image/changeRoleType.png"
                OnClick="ImageButton1_Click" />
        </div>
        <div class="RightChild">
        </div>
    </div>
</div>
