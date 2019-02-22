<%@ Control Language="C#" AutoEventWireup="true" CodeFile="showHallInformation.ascx.cs" Inherits="showHallInformation" %>
<link href="../App_Themes/StyleSheet1.css" rel="stylesheet" type="text/css" />

<div class="Parent" style="height:auto">
<div class="fieldNormal" >
<div class ="LeftChild">
</div>
<div class= "MiddelChild">
    <asp:Label ID="hallNamelb" runat="server" style="color: #FFFFFF"></asp:Label>
</div>
<div class="RightChild">
    :نام تالار</div>
</div>
<div class="fieldNormal" >
<div class ="LeftChild">
</div>
<div class= "MiddelChild">
    <asp:Label ID="halltypelb" runat="server" style="color: #FFFFFF"></asp:Label>
</div>
<div class="RightChild">
    :نوع تالار</div>
</div>
<div class="fieldNormal" >
<div class ="LeftChild">
</div>
<div class= "MiddelChild">
    <asp:Label ID="hallCapacitylb" runat="server" style="color: #FFFFFF"></asp:Label>
</div>
<div class="RightChild">
    :ظرفیت تالار</div>
</div>
<div class="fieldNormal" >
<div class ="LeftChild">
</div>
<div class= "MiddelChild">
    <asp:Label ID="hallPricelb" runat="server" style="color: #FFFFFF"></asp:Label>
</div>
<div class="RightChild">
    :هزینه تالاز</div>
</div>
<div class="fieldNormal">
<div class ="RightChild">
    :معرفی تالار</div>
</div>
<div class="fieldBigExtrem" style="width:730px; height:auto">

    <asp:Label ID="HallDescriptionlb" runat="server" 
        style="font-size: medium; color: #FFFFCC"></asp:Label>

</div>

</div>