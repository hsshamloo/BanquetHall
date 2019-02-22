<%@ Page Title="" Language="C#" MasterPageFile="~/BanquetMasterPage.master" AutoEventWireup="true" CodeFile="ListOfItemNeedToBuyForWarehouse.aspx.cs" Inherits="ListOfItemNeedToBuyForWarehouse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<link href="../App_Themes/StyleSheet1.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="MainPage">
        <div class="MainPageTitle">
            <asp:Image ID="Image1" runat="server" 
                ImageUrl="~/Image/ItemNeedToBuyTitel.png" />
        </div>
        <div class="MainPageContent" style="text-align: right; width: 860px; left: 30px; overflow: auto;">
        <div>
        .مقدار جدید کالا را ، با انتخاب گزینه ویرایش وارد کنید 
        </div>
        <div style="text-align: right; width: 860px; left: 0px; overflow: auto; height: 547px; top: 10px; position: relative; text-align:right;" >
        
        
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AllowSorting="True" AutoGenerateColumns="False" 
                BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
                CellPadding="2" DataKeyNames="ItemId" DataSourceID="LinqDataSource1" 
                ForeColor="Black" GridLines="None" PageSize="15" style="float: right">
                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                <Columns>
                    <asp:BoundField DataField="Price" HeaderText="قیمت واحد" 
                        SortExpression="Price" >
                    <HeaderStyle HorizontalAlign="Right" />
                    <ItemStyle HorizontalAlign="Right" />
                    </asp:BoundField>
                    <asp:BoundField DataField="NumberOfAvailable" HeaderText="موجودی" 
                        SortExpression="NumberOfAvailable" >
                    <HeaderStyle HorizontalAlign="Right" />
                    <ItemStyle Width="100px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="ItemType" HeaderText="نوع کالا" 
                        SortExpression="ItemType" >
                    <HeaderStyle HorizontalAlign="Right" />
                    <ItemStyle Width="250px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="ItemName" HeaderText="نام کالا" 
                        SortExpression="ItemName" >
                    <HeaderStyle HorizontalAlign="Right" />
                    <ItemStyle HorizontalAlign="Right" Width="350px" />
                    </asp:BoundField>
                    <asp:CommandField DeleteText="حذف" EditText="ویرایش" SelectText="انتخاب" 
                        ShowEditButton="True" UpdateText="بروزرسانی">
                    <HeaderStyle HorizontalAlign="Right" />
                    <ItemStyle Width="100px" />
                    </asp:CommandField>
                </Columns>
                <FooterStyle BackColor="Tan" />
                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                    HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                <SortedAscendingCellStyle BackColor="#FAFAE7" />
                <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                <SortedDescendingCellStyle BackColor="#E1DB9C" />
                <SortedDescendingHeaderStyle BackColor="#C2A47B" />
            </asp:GridView>
        
        
        </div>
            <asp:LinqDataSource ID="LinqDataSource1" runat="server" 
                ContextTypeName="DataClassesDataContext" EnableDelete="True" 
                EnableInsert="True" EnableUpdate="True" EntityTypeName="" 
                TableName="ItemInWareHouseInfoTables" Where="StatusOfItem == @StatusOfItem">
                <WhereParameters>
                    <asp:Parameter DefaultValue="تایید خرید" Name="StatusOfItem" Type="String" />
                </WhereParameters>
            </asp:LinqDataSource>
            <div style="text-align: center">
            
                <asp:ImageButton ID="ImageButton1" runat="server" 
                    ImageUrl="~/Image/hasDone.png" onclick="ImageButton1_Click" />
            
            </div>
        </div>
    </div>

</asp:Content>
