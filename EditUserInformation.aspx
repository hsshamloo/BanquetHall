<%@ Page Title="" Language="C#" MasterPageFile="~/BanquetMasterPage.master" AutoEventWireup="true" CodeFile="EditUserInformation.aspx.cs" Inherits="EditUserInformation" EnableEventValidation="false"%>

<%@ Register src="~/Controls/EditUserInfo.ascx" tagname="EditUserInfo" tagprefix="uc1" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <link href="App_Themes/StyleSheet1.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="MainPage" >
        <div class="MainPageTitle">
            <asp:Image ID="Image1" runat="server" 
                ImageUrl="~/Image/edtirUserInfoTitel.png" />
        </div>
        <div class="MainPageContent"  >
           <div>    
            <uc1:EditUserInfo ID="EditUserInfo1" runat="server" />
            </div>
        </div>
    </div>
</asp:Content>

