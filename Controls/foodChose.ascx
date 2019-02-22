<%@ Control Language="C#" AutoEventWireup="true" CodeFile="foodChose.ascx.cs" Inherits="Controls_foodChose" %>
<link href="../App_Themes/StyleSheet1.css" rel="stylesheet" type="text/css" />
<div class="HalfLeftMainPageContent" style="height:auto; float:right;">
    <div class="HalfMainField">
        <div class="MiddelChild">
        </div>
        <div class="RightChild">
        </div>
    </div>
    <div class="HalfMainField" style="border-bottom-color:White">
        <div class="MiddelChild">
            <asp:DropDownList ID="foodTypeDropList" runat="server" AutoPostBack="True" 
                onselectedindexchanged="foodTypeDropList_SelectedIndexChanged" 
                Width="168px" CssClass="comboBoxPersian">
            </asp:DropDownList>
        </div>
        <div class="RightChild">
            :نوع خوراک</div>
    </div>
    <div class="HalfMainField">
        <div class="MiddelChild">
            <asp:DropDownList ID="foodNameDropDown" runat="server" Width="215px" 
                 
                AutoPostBack="True" 
                onselectedindexchanged="foodNameDropDown_SelectedIndexChanged" 
                CssClass="comboBoxPersian">
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
            <asp:Button ID="addBtn" runat="server" Text="اضافه کردن" BackColor="#FFCC33" 
                BorderColor="#FFCC33" onclick="addBtn_Click"
               />
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
    <div class="HalfMainField">
        <div class="MiddelChild">
            
            
            
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="numberOfFoodTxt" ErrorMessage="مقدار را وارد کنید"></asp:RequiredFieldValidator>
            
            
            
            </div>
        <div class="RightChild">
            </div>
    </div>
</div>