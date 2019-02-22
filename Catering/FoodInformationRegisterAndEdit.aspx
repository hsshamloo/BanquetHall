<%@ Page Title="" Language="C#" MasterPageFile="~/BanquetMasterPage.master" AutoEventWireup="true" CodeFile="FoodInformationRegisterAndEdit.aspx.cs" Inherits="FoodInformationRegisterAndEdit" EnableEventValidation="false"%>

<%@ Register src="~/Controls/RegisterFood.ascx" tagname="RegisterFood" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <link href="../App_Themes/StyleSheet1.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="MainPage">
        <div class="MainPageTitle">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Image/addNewFoodTitel.png" />
        </div>
        <div class="MainPageContent">
            <asp:Panel ID="Panel2" runat="server" CssClass="panelTegisterUser">
                <uc1:RegisterFood ID="RegisterFood1" runat="server" />
            <div class="foodInformationHalfMainpageContent" >
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
                    CellPadding="2" DataKeyNames="FoodId" DataSourceID="LinqDataSource1" 
                    ForeColor="Black" GridLines="None" 
                    style="float: right; text-align: right;" AllowPaging="True" 
                    AllowSorting="True" >
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    <Columns>
                        <asp:TemplateField HeaderText="قیمت" SortExpression="Price">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Price") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%#
                                 Convert.ToInt32((Eval("Price"))) %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Right" />
                            <ItemStyle HorizontalAlign="Right" Width="150px" />
                        </asp:TemplateField>
                        <asp:BoundField DataField="FoodType" HeaderText="نوع خوراک" 
                            SortExpression="FoodType">
                        <HeaderStyle HorizontalAlign="Right" />
                        <ItemStyle Width="200px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="FoodName" HeaderText="نام خوراک" 
                            SortExpression="FoodName">
                        <HeaderStyle HorizontalAlign="Right" />
                        <ItemStyle Width="250px" />
                        </asp:BoundField>
                        <asp:CommandField CancelText="انصراف" DeleteText="حذف" EditText="ویرایش" 
                            InsertText="وارد کردن" NewText="جدید" SelectText="انتخاب" 
                            ShowDeleteButton="True" UpdateText="بروزرسانی" CausesValidation="False">
                        <ItemStyle Width="50px" />
                        </asp:CommandField>
                        <asp:CommandField CancelText="انصراف" CausesValidation="False" DeleteText="حذف" 
                            EditText="ویرایش" ShowEditButton="True" UpdateText="بروزرسانی" />
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
                    TableName="FoodInfoTables">
                </asp:LinqDataSource>
            </asp:Panel>
            
        </div>
    </div>
</asp:Content>

