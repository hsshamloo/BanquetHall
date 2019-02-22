<%@ Page Title="" Language="C#" MasterPageFile="~/BanquetMasterPage.master" AutoEventWireup="true"
    CodeFile="FoodReservedReport.aspx.cs" Inherits="Catering_FoodReservedReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../App_Themes/StyleSheet1.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            color: #FFFFCC;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script type="text/C#" runat="server">
        string memberNameByEmail(string email)
        {
            string newmemberInfo = new Members().memberNameByEmail(email);
            return newmemberInfo;
        }
    
    
    </script>
    <div class="MainPage">
        <div class="MainPageTitle">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Image/FoodReservedForReservationTitel.png" />
        </div>
        <div class="MainPageContent" style="text-align: left; width: 860px; left: 30px; ">
            <div style="text-align: right ; width: auto; float:right">
                <span class="style1">لیست غذاهای سفارش داده شده ، برای مراسم</span>
            </div>
            <div style="text-align: right; width: auto ; float:right; margin-right : 4px">
                <asp:Label ID="ResIdLb" runat="server"></asp:Label>
            </div>
            <br/>
            <div style="text-align: right ; width: auto; position:relative; top:0px">
            <div style="text-align: right ; width: auto; float:right">
                <span class="style1">نام مشتری</span>
            </div>
            <div style="text-align: right; width: auto ; float:right; margin-right : 4px">
                <asp:Label ID="costNameLb" runat="server"></asp:Label>
            </div>
            </div>
            <div style="text-align: right; width: 860px; left: 0px; overflow: auto; position: relative; top:10px; height:360px">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow"
                    BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="FoodOrderID"
                    DataSourceID="LinqDataSource1" ForeColor="Black" GridLines="None" 
                    Style="text-align: right;
                    float: right; width: 860px; left: 0px; overflow: auto; position: relative; top: 10px;" 
                    AllowPaging="True">
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    <Columns>
                        <asp:BoundField DataField="StatusOfOrder" HeaderText="وضعیت" SortExpression="StatusOfOrder">
                            <HeaderStyle HorizontalAlign="Right" />
                            <ItemStyle HorizontalAlign="Right" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Count" HeaderText="تعداد" SortExpression="Count">
                            <HeaderStyle HorizontalAlign="Right" />
                            <ItemStyle HorizontalAlign="Right" />
                        </asp:BoundField>
                        <asp:BoundField DataField="FoodName" HeaderText="نام غذا" SortExpression="FoodName">
                            <HeaderStyle HorizontalAlign="Right" />
                            <ItemStyle HorizontalAlign="Right" />
                        </asp:BoundField>
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
            <div>
                <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="DataClassesDataContext"
                    EntityTypeName="" TableName="FoodOrderTables" Where="ReservationId == @ReservationId1"
                    EnableDelete="True" EnableInsert="True" EnableUpdate="True">
                    <WhereParameters>
                        <asp:QueryStringParameter Name="ReservationId1" QueryStringField="ReserveId" Type="String" />
                    </WhereParameters>
                </asp:LinqDataSource>
            </div>
            <div style="text-align: center">
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Image/hasDone.png"
                    OnClick="ImageButton1_Click" Style="text-align: center" />
            </div>
        </div>
    </div>
</asp:Content>
