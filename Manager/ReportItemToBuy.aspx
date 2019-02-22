<%@ Page Title="" Language="C#" MasterPageFile="~/BanquetMasterPage.master" AutoEventWireup="true" CodeFile="ReportItemToBuy.aspx.cs" Inherits="ReportItemToBuy" EnableEventValidation="false"%>

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
           <asp:Label ID="Label2" runat="server" Text="سفارشی موجود نیست" Visible="False" 
                   style="color: #FFFFCC"></asp:Label>
           </div>
           <div>
           <asp:Panel ID="Panel2" runat="server" Height="500px" Width="857px">
               <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                   BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
                   CellPadding="2" DataKeyNames="ItemId" DataSourceID="LinqDataSource1" 
                   ForeColor="Black" GridLines="None" style="float: right" AllowPaging="True" 
                   PageSize="15" onrowdatabound="GridView1_RowDataBound" 
                   ondatabound="GridView1_DataBound">
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
                           <ItemStyle Width="75px" />
                       </asp:TemplateField>
                       <asp:BoundField DataField="StatusOfItem" HeaderText="وضعیت کالا" 
                           SortExpression="StatusOfItem">
                       <HeaderStyle HorizontalAlign="Right" />
                       <ItemStyle Width="150px" />
                       </asp:BoundField>
                       <asp:BoundField DataField="ItemType" HeaderText="نوع کالا" 
                           SortExpression="ItemType">
                       <HeaderStyle HorizontalAlign="Right" />
                       <ItemStyle Width="150px" />
                       </asp:BoundField>
                       <asp:BoundField DataField="NumberOfAvailable" HeaderText="موجودی" 
                           SortExpression="NumberOfAvailable">
                       <HeaderStyle HorizontalAlign="Right" />
                       <ItemStyle Width="150px" />
                       </asp:BoundField>
                       <asp:BoundField DataField="ItemName" HeaderText="نام کالا" 
                           SortExpression="ItemName">
                       <HeaderStyle HorizontalAlign="Right" />
                       <ItemStyle Width="300px" />
                       </asp:BoundField>
                       <asp:CommandField DeleteText="حذف" EditText="ویرایش" ShowDeleteButton="True" 
                           UpdateText="بروزرسانی">
                       <ItemStyle Width="50px" />
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
            </asp:Panel>
            </div>
            <div>
            <asp:LinqDataSource ID="LinqDataSource1" runat="server" 
                ContextTypeName="DataClassesDataContext" EnableDelete="True" 
                EnableInsert="True" EnableUpdate="True" EntityTypeName="" 
                TableName="ItemInWareHouseInfoTables" Where="StatusOfItem == @StatusOfItem">
                <WhereParameters>
                    <asp:Parameter DefaultValue="مورد نیاز" Name="StatusOfItem" Type="String" />
                </WhereParameters>
            </asp:LinqDataSource>
            </div>
            <div style="text-align: center">
                
                <asp:ImageButton ID="ImageButton1" runat="server" 
                    ImageUrl="~/Image/BuyAcceptance.png" onclick="ImageButton1_Click" />
            
            </div>
        </div>
    </div>

</asp:Content>

