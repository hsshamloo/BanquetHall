<%@ Page Title="" Language="C#" MasterPageFile="~/BanquetMasterPage.master" AutoEventWireup="true" CodeFile="AllAvailableItemInWareHouse.aspx.cs" Inherits="AllAvailableItemInWareHouse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="App_Themes/StyleSheet1.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="MainPage">
        <div class="MainPageTitle">
            <asp:Image ID="Image1" runat="server" 
                ImageUrl="~/Image/ManageAndEditItemTitel.png" />
        </div>
        <div class="MainPageContent" style="text-align: left; width: 860px; left: 30px; overflow: auto;">
            <div style= "height: 580px">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
                    CellPadding="2" DataKeyNames="ItemId" DataSourceID="LinqDataSource1" 
                    ForeColor="Black" GridLines="None" 
                    style="float: right; text-align: right;" AllowPaging="True" PageSize="18" 
                    AllowSorting="True">
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    <Columns>
                        <asp:TemplateField HeaderText="قیمت واحد" SortExpression="Price">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Price") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Convert.ToInt32((Eval("Price"))) %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Right" />
                            <ItemStyle Width="105px" />
                        </asp:TemplateField>
                        <asp:BoundField DataField="NumberOfAvailable" HeaderText="موجودی" 
                            SortExpression="NumberOfAvailable" >
                        <HeaderStyle HorizontalAlign="Right" Width="100px" />
                        <ItemStyle Width="150px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="StatusOfItem" HeaderText="وضعیت" 
                            SortExpression="StatusOfItem">
                        <HeaderStyle HorizontalAlign="Right" />
                        <ItemStyle Width="150px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="ItemType" HeaderText="نوع کالا" 
                            SortExpression="ItemType" >
                        <HeaderStyle HorizontalAlign="Right" />
                        <ItemStyle Width="250px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="ItemName" HeaderText="نام کالا" 
                            SortExpression="ItemName" >
                        <HeaderStyle HorizontalAlign="Right" />
                        <ItemStyle Width="250px" />
                        </asp:BoundField>
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
            <div style="position: absolute; top: 590px; left: 6px;">
             <asp:LinqDataSource ID="LinqDataSource1" runat="server" 
                    ContextTypeName="DataClassesDataContext" EnableDelete="True" 
                    EnableInsert="True" EnableUpdate="True" EntityTypeName="" 
                    TableName="ItemInWareHouseInfoTables">
                </asp:LinqDataSource>
               </div>
        </div>
    </div>
</asp:Content>

