<%@ Control Language="C#" AutoEventWireup="true" CodeFile="biilUpdatere.ascx.cs" Inherits="Controls_biilUpdatere" %>
<link href="../App_Themes/StyleSheet1.css" rel="stylesheet" type="text/css" />
<div class="HalfLeftMainPageContent" style="height:auto; float:right ; right:30px">
    <div class="HalfMainField">
        <div class="MiddelChild">
            اطلاعات فاکتور قبلی</div>
        <div class="RightChild">
        </div>
    </div>
    <div class="HalfMainField">
        <div class="MiddelChild">
            <asp:Label ID="biilIdLb" runat="server" style="color: #FFFFCC"></asp:Label>
        </div>
        <div class="RightChild">
            :کد فاکتور</div>
    </div>
    <div class="HalfMainField">
        <div class="MiddelChild">
            <asp:Label ID="submitDateBillLb" runat="server" style="color: #FFFFCC"></asp:Label>
        </div>

        <div class="RightChild">
            : تاریخ صدور
        </div>
    </div>
    <div class="HalfMainField">
        <div class="MiddelChild">
            <asp:Label ID="emailLb" runat="server" style="color: #FFFFCC"></asp:Label>
        </div>
        <div class="RightChild">
            :ایمیل مشتری</div>
    </div>
   <div class="HalfMainField">
        <div class="MiddelChild">
        </div>
        <div class="RightChild">
            </div>
    </div>
    <div class="HalfMainField">
        <div class="MiddelChild">
            <asp:Label ID="totalPriceLb" runat="server" style="color: #FFFFCC"></asp:Label>
        </div>
        <div class="RightChild">
            :مانده قبلی </div>
    </div>
    <div class="HalfMainField">
        <div class="MiddelChild">
            <asp:Label ID="changedPricLb" runat="server" style="color: #FFFF66"></asp:Label>
        </div>
        <div class="RightChild">
            :هزینه تغییر یافته</div>
    </div>
    <div class="HalfMainField">
        <div class="MiddelChild">
            <asp:Label ID="amountPaidLb" runat="server" style="color: #FFFFCC"></asp:Label>
        </div>
        <div class="RightChild">
            </div>
    </div>
    <div class="HalfMainField">
        <div class="MiddelChild">
            <asp:Label ID="remainedAmountLb" runat="server" style="color: #FFFFCC"></asp:Label>
        </div>
        <div class="RightChild">
            :مبلغ قابل پرداخت</div>
    </div>
    <div class="HalfMainField">
        <div class="MiddelChild">
        </div>
        <div class="RightChild">
            </div>
    </div>
    <div class="HalfMainField">
        <div class="MiddelChild">
        </div>
        <div class="RightChild">
        </div>
    </div>
    <div class="HalfMainField">
        <div class="MiddelChild">
            <asp:Button ID="acceptBtn" runat="server" BackColor="#FFCC00" 
                BorderColor="#FFCC00"  Text="تایید" 
                Width="112px" onclick="acceptBtn_Click" />
        </div>
        <div class="RightChild">
        </div>
    </div>
</div>