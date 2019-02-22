<%@ Page Title="" Language="C#" MasterPageFile="~/BanquetMasterPage.master" AutoEventWireup="true" CodeFile="WareHouse.aspx.cs" Inherits="WareHouse" EnableEventValidation="false"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <link href="../App_Themes/StyleSheet1.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="MainPage">
        <div class="MainPageTitle">
            <asp:Image ID="Image1" runat="server" 
                ImageUrl="~/Image/warehousePartTitel.png" />
        </div>
        <div class="MainPageContent" >
            <div style="background-position: right center; width: 182px; height: 232px; float: left;
                position: absolute; top: 348px; left: 585px;">
                <div style= "position:absolute; height:49px ; width:57px; top: 10px; left: 9px; font-size: large; font-weight: 700;">
                    <asp:HyperLink ID="NumHL" runat="server" 
                        NavigateUrl="~/Warehouse/ListOfItemNeedToBuyForWarehouse.aspx" 
                        style="color: #FF0000; font-size: x-large; background-color: #FFFFFF">[NumHL]</asp:HyperLink>
                    </div>
                <asp:HyperLink ID="HyperLink3" runat="server" ImageUrl="~/Image/byeGeorce.png" 
                    ForeColor="#764F26" 
                    NavigateUrl="~/Warehouse/ListOfItemNeedToBuyForWarehouse.aspx">HyperLink</asp:HyperLink>
            </div>
            <div style="background-position: right center; width: 182px; height: 232px; float: left;
                position: absolute; top: 59px; left: 328px;">
                <asp:HyperLink ID="HyperLink5" runat="server" ImageUrl="~/Image/InWareHouseItem.png" 
                    NavigateUrl="~/AllAvailableItemInWareHouse.aspx" BackColor="#764F26" 
                    ForeColor="#764F26">HyperLink</asp:HyperLink>
            </div>
            <div style="width: 208px; height: 232px; float: right; position: absolute; top: 37px;
                right: 563px;">
                
                    
                <asp:HyperLink ID="HyperLink7" runat="server" ForeColor="#764F26" 
                    ImageUrl="~/Image/ItemKsitedByKitchen.png" 
                    NavigateUrl="~/Warehouse/ListOfOrder.aspx">HyperLink</asp:HyperLink>
                
                    
            </div>
            <div style="background-position: right center; width: 182px; height: 232px; float: left;
                position: absolute; top: 351px; left: 90px;">
                <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="~/Image/messageFolder.png" 
                    ForeColor="#764F26" NavigateUrl="~/Warehouse/MessageForWareHouse.aspx">HyperLink</asp:HyperLink>
            </div>
             <div style="width: 208px; height: 232px; float: right; position: absolute; top: 66px;
                right: 72px;">
                <asp:HyperLink ID="HyperLink4" runat="server" 
                    ImageUrl="~/Image/addNewItem.png" 
                     NavigateUrl="~/Warehouse/RegisterNewItem.aspx" ForeColor="#764F26">HyperLink</asp:HyperLink>
            </div>
        </div>
    </div>
</asp:Content>

