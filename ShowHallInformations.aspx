<%@ Page Title="" Language="C#" MasterPageFile="~/BanquetMasterPage.master" AutoEventWireup="true"
    CodeFile="ShowHallInformations.aspx.cs" Inherits="ShowHallInformations" EnableEventValidation="false" %>

<%@ Register Src="Controls/showHallInformation.ascx" TagName="showHallInformation"
    TagPrefix="uc1" %>
<%@ Register src="Controls/ShowImage.ascx" tagname="ShowImage" tagprefix="uc2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="App_Themes/StyleSheet1.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="MainPage">
        
        <div class="MainContentWithOutTitle">
            
            <uc1:showHallInformation ID="showHallInformation1" runat="server" />
            <uc2:ShowImage ID="ShowImage1" runat="server" />
        </div>
    </div>
</asp:Content>
