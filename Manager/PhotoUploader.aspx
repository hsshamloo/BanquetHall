<%@ Page Title="" Language="C#" MasterPageFile="~/BanquetMasterPage.master" AutoEventWireup="true" CodeFile="PhotoUploader.aspx.cs" Inherits="PhotoUploader" EnableEventValidation="false"%>

<%@ Register src="~/Controls/PhotoUploader.ascx" tagname="PhotoUploader" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="App_Themes/StyleSheet1.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="MainPage">
        <div class="MainPageTitle">
            <asp:Image ID="Image2" runat="server" ImageUrl="~/Image/addPhotoTitel.png" />
        </div>
        <div class="MainPageContent" >
            <asp:Panel ID="Panel2" runat="server" >
            <uc1:PhotoUploader ID="PhotoUploader1" runat="server" />

            <div style="height:600px; text-align:center; font-family: Tahoma; font-size: medium;">

<asp:LinqDataSource ID="LinqDataSource1" runat="server" 
        ContextTypeName="DataClassesDataContext" EnableDelete="True" 
        EnableInsert="True" EnableUpdate="True" EntityTypeName="" 
        TableName="ImagesTables" Where="ObjectID == @ObjectID" 
        EnableViewState="False">
        <WhereParameters>
            <asp:SessionParameter Name="ObjectID" SessionField="IdOfRegisteredObject" 
                Type="String" />
        </WhereParameters>
    </asp:LinqDataSource>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" CellPadding="2" DataKeyNames="ImageId" 
                    DataSourceID="LinqDataSource1" ForeColor="Black" GridLines="None" 
                    Height="400px" PageSize="3" 
                    
                    
                    
                    
                    
                    style="float: right; z-index: 1; left: 250px; top: 75px; position: absolute; text-align: right;" 
                    BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px">
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    <Columns>
                        <asp:BoundField DataField="ImageHeight" HeaderText="ImageHeight" 
                            SortExpression="ImageHeight" />
                        <asp:BoundField DataField="ImageWeight" HeaderText="ImageWeight" 
                            SortExpression="ImageWeight" />
                        <asp:TemplateField HeaderText="تصویر اضافه شده">
                            <ItemTemplate>
                                <asp:Image ID="Image1" runat="server" Height="150px" 
                                    ImageUrl='<%#    "~/Controls/photoshow.ashx?ImageId=" + Eval("ImageId")  %>' 
                                    Width="250px" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField DeleteText="حذف" ShowDeleteButton="True" />
                    </Columns>
                    <PagerStyle BackColor="PaleGoldenrod" BorderStyle="None" BorderWidth="0px" 
                        ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                    <RowStyle BorderStyle="None" BorderWidth="0px" />
                    <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                    <SortedAscendingCellStyle BackColor="#FAFAE7" />
                    <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                    <SortedDescendingCellStyle BackColor="#E1DB9C" />
                    <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                    <EditRowStyle BorderStyle="None" />
                    <FooterStyle BackColor="Tan" />
                    <HeaderStyle BackColor="Tan" BorderStyle="None" Font-Bold="True" />
                </asp:GridView>
    </div>
            </asp:Panel>
        </div>
    </div>
   
</asp:Content>

