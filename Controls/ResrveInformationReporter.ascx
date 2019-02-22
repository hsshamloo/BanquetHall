<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ResrveInformationReporter.ascx.cs" Inherits="Controls_ResrveInformationReporter" %>
<link href="../App_Themes/StyleSheet1.css" rel="stylesheet" type="text/css" />
<div class="HalfLeftMainPageContent" style="height:auto; float:right ; right:30px">
    <div class="HalfMainField">
        <div class="MiddelChild">
        </div>
        <div class="RightChild">
        </div>
    </div>
    <div class="HalfMainField">
        <div class="MiddelChild">
            <asp:Label ID="numberOfReserveLb" runat="server" Style="color: #FFFF66"></asp:Label>
        </div>
        <div class="RightChild">
            : معلق</div>
    </div>
    <div class="HalfMainField">
        <div class="MiddelChild">
            <asp:HyperLink ID="reserveIdHypeLi" runat="server" Style="color: #FFFF99">[reserveIdHypeLi]</asp:HyperLink>
        </div>
        <div class="RightChild">
            :  تایید شده</div>
    </div>
    <div class="HalfMainField">
        <div class="MiddelChild">
            <asp:Label ID="UserMemberNameLb" runat="server" Style="color: #FFFFCC"></asp:Label>
        </div>
        <div class="RightChild">
            :نام کاربر</div>
    </div>
    <div class="HalfMainField">
        <div class="MiddelChild">
            <asp:Label ID="NumberOfGuestLb" runat="server" Style="color: #FFFFCC"></asp:Label>
        </div>
        <div class="RightChild">
            : تعداد مهمان ها</div>
    </div>
    <div class="HalfMainField">
        <div class="MiddelChild">
            <asp:Label ID="reserveDateLb" runat="server" Style="color: #FFFFCC"></asp:Label>
        </div>
        <div class="RightChild">
            : تاریخ مجلس</div>
    </div>
    <div class="HalfMainField">
        <div class="MiddelChild">
            <asp:Label ID="hallIdLb" runat="server" Style="color: #FFFFCC"></asp:Label>
        </div>
        <div class="RightChild">
            :کد تالار
        </div>
    </div>
    <div class="HalfMainField">
        <div class="MiddelChild">
            <asp:Label ID="submitDateLb" runat="server" Style="color: #FFFFCC"></asp:Label>
        </div>
        <div class="RightChild">
            :تاریخ ثبت رزرو</div>
    </div>
    <div class="HalfMainField">
        <div class="MiddelChild">
            <asp:Label ID="statusOfReserveLb" runat="server" Style="color: #FFFFCC"></asp:Label>
        </div>
        <div class="RightChild">
            :وضعیت رزرو</div>
    </div>
    <div class="HalfMainField">
        <div class="MiddelChild">
            <asp:ImageButton ID="ImageButton2" runat="server" 
                ImageUrl="~/Image/makeBillBtn.png" onclick="ImageButton2_Click" />
&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Image/cancelReserveBtn.png"
                OnClick="ImageButton1_Click" />
        </div>
        <div class="RightChild">
        </div>
    </div>
</div> 