<%@ Page Title="" Language="C#" MasterPageFile="~/BanquetMasterPage.master" AutoEventWireup="true" CodeFile="findSuiteableHall.aspx.cs" Inherits="findSuiteableHall" EnableEventValidation="false"%>

<%@ Register src="~/Controls/SetDateAndNumberOfG.ascx" tagname="SetDateAndNumberOfG1" tagprefix="uc1" %>
<%@ Register Src="~/Controls/ShowHallTitle.ascx" TagName="ShowHallTitle" TagPrefix="sht1"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../App_Themes/StyleSheet1.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div class="MainPage">
        <div class="MainPageTitle">
            <asp:Image ID="Image1" runat="server" 
                ImageUrl="~/Image/SearchHallToReserve.png" />
        </div>
        <div class="MainPageContent" style="text-align: left; width: 860px; left: 30px; overflow: auto;">
            <uc1:SetDateAndNumberOfG1 runat="server" />
            
            <asp:Panel ID="Panel2" runat="server" CssClass="panleForPage" Height="540px" >
            
            </asp:Panel>
        </div>
    </div>
</asp:Content>

