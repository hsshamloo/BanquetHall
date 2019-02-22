<%@ Control Language="C#" AutoEventWireup="true" CodeFile="foodReservePart.ascx.cs"
    Inherits="Controls_foodReservePart" %>
<link href="../App_Themes/StyleSheet1.css" rel="stylesheet" type="text/css" />
<div class="HalfLeftMainPageContent" style="height:auto;">
    <div class="HalfMainField">
        <div class="MiddelChild">
        </div>
        <div class="RightChild">
        </div>
    </div>
    <div class="HalfMainField" style="border-bottom-color:White">
        <div class="MiddelChild">
            <asp:Label ID="foodTypeLb" runat="server" Style="color: #FFFFCC; text-decoration: underline;"></asp:Label>
        </div>
        <div class="RightChild">
            :نوع خوراک</div>
    </div>
    <div class="HalfMainField">
        <div class="MiddelChild">
            <asp:DropDownList ID="foodNameDropDown" runat="server" Width="215px" 
                onselectedindexchanged="foodNameDropDown_SelectedIndexChanged1" 
                AutoPostBack="True">
            </asp:DropDownList>
        </div>
        <div class="RightChild">
            :نام خوراک</div>
    </div>
    <div class="HalfMainField">
        <div class="MiddelChild">
            <asp:Label ID="foodCost" runat="server" style="color: #FFFFCC"></asp:Label>
        </div>
        <div class="RightChild">
            :قیمت واحد 
        </div>
    </div>
    <div class="HalfMainField">
        <div class="MiddelChild">
            <asp:Button ID="addBtn" runat="server" Text="اضافه کردن" BackColor="#FFCC33" BorderColor="#FFCC33"
                OnClick="addBtn_Click" />
            &nbsp;
            <asp:TextBox ID="numberOfFoodTxt" runat="server" Width="70px"></asp:TextBox>
        </div>
        <div class="RightChild">
            :تعداد</div>
    </div>
    <div class="HalfMainField">
        <div class="MiddelChild">
            
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="numberOfFoodTxt" ErrorMessage="مقداری درست وارد کنید" 
                ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
            
            </div>
        <div class="RightChild">
            </div>
    </div>
</div>
