<%@ Page Title="" Language="C#" MasterPageFile="~/UL/c-Site.Master" AutoEventWireup="true" CodeBehind="c-index.aspx.cs" Inherits="Lab1_3050.UL.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/index.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 24700%;
            width: 30px;
            height: 60px;
            transform: translateY(-50%);
            text-align: center;
            line-height: 60px;
            font-size: 20px;
            color: rgba(255, 255, 255, .6);
            font-family: arial;
            font-weight: normal;
            left: 6px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="middle" runat="server">
    <div class="w grid">
        <div class="grid-col1 fl">
            <ul>
              
                <li> <a href="goods/honey.aspx">All kind of Honey </a></li>
                <li> <a href="#">Beehives & Frames </a></li>
                <li> <a href="#">Tools </a></li>
                <li> <a href="#">Clothing </a></li>
                <li> <a href="#">Containers </a></li>
                <li> <a href="#">Bees </a></li>
            </ul>
              
        </div>
        <div class="grid-col2 fl">
            <div class="grid-col2-t">
                
                <a href="#" class="auto-style1"><</a>
                
                <a href="c-item.aspx"><img src="IMG/manukahoney.jpg" width="790" alt="" style="height: 458px" /></a>&nbsp;
                
                <a href="#"class="arrow-r">></a>
                
            </div>
        </div>
        <div class="grid-col3 fr">
            <!--新闻模块-->
            <div class="news">
                <div class="news-t">
                    <p>Information</p>
                </div>
                <div class="news-b">
                    <p>COVID-19 is affecting all of us and can be fearful for many. Specially the ones with older age, chronic diseases and the immune compromised. Honey is a known immune booster and has been used for many years. We have being running normally during this crisis and doing our best to serve you and our country in every way possible.</p>
                </div>
            </div>
            
        </div>
    </div>
    
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
