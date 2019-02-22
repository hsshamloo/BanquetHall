<%@ Page Title="" Language="C#" MasterPageFile="~/BanquetMasterPage.master" AutoEventWireup="true"
    CodeFile="halls.aspx.cs" Inherits="halls" EnableEventValidation="false"%>

<%@ Register Src="Controls/ShowHallTitle.ascx" TagName="ShowHallTitle" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="App_Themes/StyleSheet1.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="MainPage">
        <div class="MainPageTitle">
            <asp:Image ID="Image1" runat="server" 
                ImageUrl="~/Image/hallInformationTitle.png" />
        </div>
        <div class="MainPageContent" style="text-align: left; width: 860px; left: 30px; overflow: auto;">
            <asp:Panel ID="Panel2" runat="server" CssClass="panelTegisterUser">
            </asp:Panel>
        </div>
    </div>
</asp:Content>
