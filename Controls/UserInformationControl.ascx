<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UserInformationControl.ascx.cs"
    Inherits="Controls_UserInformationControl" %>
<link href="../App_Themes/StyleSheet1.css" rel="stylesheet" type="text/css" />
<div class="HalfLeftMainPageContent" style="height: auto; float: right; right: 30px">
    <div id="Fild1" class="HalfMainField">
        <div id="SecendLeftChild" class="MiddelChild">
            <asp:Label ID="fNameLb" runat="server" Style="color: #FFFFCC"></asp:Label>
        </div>
        <div id="RightChild" class="RightChild">
            : نام</div>
    </div>
    <div id="Div1" class="HalfMainField">
        <div id="Div3" class="MiddelChild">
            <asp:Label ID="lNameLb" runat="server" Style="color: #FFFFCC"></asp:Label>
        </div>
        <div id="Div4" class="RightChild">
            : نام خانوادگی</div>
    </div>
    <div id="Div2" class="HalfMainField">
        <div id="Div54" class="MiddelChild">
            <asp:Label ID="GenderLb" runat="server" Style="color: #FFFFCC"></asp:Label>
        </div>
        <div id="Div55" class="RightChild">
            : جنسیت</div>
    </div>
    <div id="Div5" class="HalfMainField">
        <div id="Div18" class="MiddelChild">
            <asp:Label ID="emailLb" runat="server" Style="color: #FFFFCC"></asp:Label>
        </div>
        <div id="Div19" class="RightChild">
            :ایمیل</div>
    </div>
    <div id="Div6" class="HalfMainField">
        <div id="Div22" class="MiddelChild">
            <asp:Label ID="TelephoneLb" runat="server" Style="color: #FFFFCC"></asp:Label>
        </div>
        <div id="Div23" class="RightChild">
            :تلفن</div>
    </div>
    <div id="Div7" class="HalfMainField">
        <div id="Div26" class="MiddelChild">
            <asp:Label ID="CountryLb" runat="server" Style="color: #FFFFCC"></asp:Label>
        </div>
        <div id="Div27" class="RightChild">
            :کشور</div>
    </div>
    <div id="Div8" class="HalfMainField">
        <div id="Div30" class="MiddelChild">
            <asp:Label ID="ProvinceLb" runat="server" Style="color: #FFFFCC"></asp:Label>
        </div>
        <div id="Div31" class="RightChild">
            :استان</div>
    </div>
    <div id="Div9" class="HalfMainField">
        <div id="Div34" class="MiddelChild">
            <asp:Label ID="CityLb" runat="server" Style="color: #FFFFCC"></asp:Label>
        </div>
        <div id="Div35" class="RightChild">
            :شهر</div>
    </div>
    <div id="Div10" class="HalfMainField" style="height:70px">
        <div id="Div38" class="MiddelChildBig">
            <asp:TextBox ID="AddressTextBox" runat="server" Height="59px" TextMode="MultiLine"
                Width="271px" ReadOnly="True" CssClass="PersianText"></asp:TextBox>
        </div>
        <div id="Div39" class="RightChildBig" style="text-align: right">
            :آدرس</div>
    </div>
</div>
