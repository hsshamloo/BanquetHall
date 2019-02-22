<%@ Page Title="" Language="C#" MasterPageFile="~/BanquetMasterPage.master" AutoEventWireup="true"
    CodeFile="RegisterNewItem.aspx.cs" Inherits="RegisterNewItem" EnableEventValidation="false" %>

<%@ Register Src="~/Controls/RegisterNewItem.ascx" TagName="RegisterNewItem" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../App_Themes/StyleSheet1.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="MainPage">
        <div class="MainPageTitle">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Image/addNewItemTitel.png" />
        </div>
        <div class="MainPageContent">
            <uc1:RegisterNewItem ID="RegisterNewItem1" runat="server" />
            <asp:Panel ID="Panel2" runat="server">
                <div class="foodInformationHalfMainpageContent">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow"
                        BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="ItemId" DataSourceID="LinqDataSource1"
                        ForeColor="Black" GridLines="None" Style="float: right" AllowPaging="True" AllowSorting="True">
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                        <Columns>
                            <asp:TemplateField HeaderText="قیمت" SortExpression="Price">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Price") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# 
                                    Convert.ToInt32(Eval("Price"))
                                     %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Right" />
                                <ItemStyle Width="100px" />
                            </asp:TemplateField>
                            <asp:BoundField DataField="NumberOfAvailable" HeaderText="تعداد موجود" SortExpression="NumberOfAvailable">
                                <HeaderStyle HorizontalAlign="Right" />
                                <ItemStyle Width="150px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ItemType" HeaderText="نوع کالا" SortExpression="ItemType">
                                <HeaderStyle HorizontalAlign="Right" />
                                <ItemStyle Width="150px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ItemName" HeaderText="نام کالا" SortExpression="ItemName">
                                <HeaderStyle HorizontalAlign="Right" />
                                <ItemStyle Width="250px" />
                            </asp:BoundField>
                            <asp:CommandField CausesValidation="False" DeleteText="حذف" 
                                ShowDeleteButton="True" CancelText="انصراف" EditText="ویرایش" 
                                ShowEditButton="True" UpdateText="بروزرسانی" >
                            <ItemStyle Width="120px" />
                            </asp:CommandField>
                        </Columns>
                        <FooterStyle BackColor="Tan" />
                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                        <SortedAscendingCellStyle BackColor="#FAFAE7" />
                        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                        <SortedDescendingCellStyle BackColor="#E1DB9C" />
                        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                    </asp:GridView>
                </div>
                <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="DataClassesDataContext"
                    EnableDelete="True" EnableInsert="True" EnableUpdate="True" EntityTypeName=""
                    TableName="ItemInWareHouseInfoTables">
                </asp:LinqDataSource>
            </asp:Panel>
        </div>
    </div>
</asp:Content>
