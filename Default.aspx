<%@ Page Title="" Language="C#" MasterPageFile="~/BanquetMasterPage.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="App_Themes/StyleSheet1.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="MainPage">
        <div class="MainPageTitle">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Image/firstPageTitel.png" />
        </div>
        <div class="MainPageContent">
            <asp:Panel ID="Panel2" runat="server" CssClass="panelTegisterUser">
                <div style="text-align: center; font-size: x-large;">
                    <span class="style1">کاربرگرامی خوش آمدید</span><br />
                    <br />
                    <br />
                    <span class="style1">مجموعه تالارهای پذیرایی ایرانیان مفتخر است در محیطی آرام و پرسنلی
                        مجرب و متعهد برگزارکننده مجالس شما در سالن‌های با‌شکوه و مجلل باشد</span><br />
                    <br />
                    <br />
                    &nbsp;نامزدی ، عقد و عروسی ولیمه ، میهمانی ، سوگواری و همایش
                    <br />
                    <br />
                    همراه با پارکینگ و آسانسور اختصاصی<br />
                    <br />
                    <br />
                    &nbsp;برای رزروتالار و غذای مورد نظر ابتدا باید در سایت عضو شوید.
                </div>
            </asp:Panel>
        </div>
    </div>
</asp:Content>
