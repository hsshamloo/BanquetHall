<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ShowFoodInfo.ascx.cs" Inherits="Controls_ShowFoodInfo" %>
<link href="../App_Themes/StyleSheet1.css" rel="stylesheet" type="text/css" />

<div class="OnefoodShowDiv">

<div style= " height:32px ; position:relative ; float:right ; margin:2px " >
:نام غذا
</div>
<div style= " height:32px ; position:relative ; float:right ;margin:2px " >
    <asp:Label ID="foodNamelb" runat="server" style="color: #FFFFCC"></asp:Label>
</div>
<div style= " height:32px ; position:relative ; float:right ;margin:2px " >
:قیمت
</div>
<div style= " height:32px ; position:relative ; float:right ;margin:2px " >
    <asp:Label ID="foodPriceLb" runat="server" style="color: #FFFFCC"></asp:Label>
</div>
</div>