<%@ Page Title="" Language="C#" MasterPageFile="~/BanquetMasterPage.master" AutoEventWireup="true" CodeFile="UserReport.aspx.cs" Inherits="Controls_UserReport" EnableEventValidation="false"%>

<%@ Register src="~/Controls/RetriveUserInformation.ascx" tagname="RetriveUserInformation" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../App_Themes/StyleSheet1.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="MainPage">
        <div class="MainPageTitle">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Image/memberInfoTitel.png" />
        </div>
        <div class="MainPageContent" style="text-align: left; width: 890px; left: 30px; overflow: auto;">
            <div style="text-align: right">
            
                <asp:HyperLink ID="HyperLink7" runat="server" 
                    NavigateUrl="~/Manager/ChangeUserRoleType.aspx" 
                    style="color: #FFFFCC; font-size: large;">تایید کاربری</asp:HyperLink>
            
            </div>
           <div style="top: 8px; position: relative; height: 598px; left: 0px">
           <uc1:RetriveUserInformation ID="RetriveUserInformation1" runat="server" />
           </div>
            
        </div>
    </div>
</asp:Content>

