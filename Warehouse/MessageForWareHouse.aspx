<%@ Page Title="" Language="C#" MasterPageFile="~/BanquetMasterPage.master" AutoEventWireup="true" CodeFile="MessageForWareHouse.aspx.cs" Inherits="Warehouse_MessageForWareHouse" %>
<%@ Register src="../Controls/ReciveAndReplyEmailControl.ascx" tagname="ReciveAndReplyEmailControl" tagprefix="uc2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../App_Themes/StyleSheet1.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="MainPage">
        <div class="MainPageTitle">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Image/PMTitel.png" />
        </div>
        <div class="MainPageContent">
            <uc2:ReciveAndReplyEmailControl ID="ReciveAndReplyEmailControl1" 
                runat="server" />
        </div>
    </div>

</asp:Content>

