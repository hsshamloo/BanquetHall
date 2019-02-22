<%@ Page Title="" Language="C#" MasterPageFile="~/BanquetMasterPage.master" AutoEventWireup="true" CodeFile="ChangeUserRoleType.aspx.cs" Inherits="ChangeUserRoleType" %>

<%@ Register src="~/Controls/changeUserRoleType.ascx" tagname="changeUserRoleType" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../App_Themes/StyleSheet1.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="MainPage">
        <div class="MainPageTitle">
            <asp:Image ID="Image1" runat="server" 
                ImageUrl="~/Image/changeRoleTypeTitel.png" />
        </div>
        <div class="MainPageContent" style="text-align: left; width: 860px; left: 30px; overflow: auto;">
            <div style="text-align: right">
            ایمیل کاربرانی که به تازگی ثبت نام نموده اند و عضویت آنها تایید نشده است ، در زیر نمایش داده می شود
            </div>
            <div style="height:392px; position:relative; top: 10px">
                <uc1:changeUserRoleType ID="changeUserRoleType1" runat="server" />
            </div>
        </div>
    </div>
</asp:Content>

