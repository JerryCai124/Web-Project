<%@ Page Title="" Language="C#" MasterPageFile="~/UL/c-Site.Master" AutoEventWireup="true" CodeBehind="c-Logout.aspx.cs" Inherits="Lab1_3050.UL.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>log out</title>

    <style type="text/css">
    .container {
        height:1000px;
        
        position: relative;
        max-width: 1190px;
        
    }
        
        div.container {
            text-align:center;
            margin: 0 auto;
            top: 49px;
            left: 0px;
            height: 500px;
        }
        .auto-style1 {
            width: 542px;
            height: 385px;
        }
        .auto-style2 {
            width: 485px;
            height: 54px;
        }
        .auto-style3 {
            width: 487px;
            height: 101px;
        }
        .auto-style6 {
            height: 382px;
        }
        .auto-style7 {
            width: 400px;
            height: 382px;
        }
       
        .auto-style13 {
            margin-bottom: 0px;
        }
       
        .auto-style14 {
            height: 385px;
        }
        .auto-style15 {
            width: 101%;
            height: 859px;
            margin-bottom: 0px;
        }


    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Navibar" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="middle" runat="server">

    <div class="container"> 
    <div class="bg" >
            <br />
            <br />
            <br />
            <br />
            <table class="auto-style15">
                <tr>
                    <td style="text-align: center;" >
                        <br />
                        <h1 style="color: #3366FF; font-size: 50px;">Please comfirm</h1>
                        <p style="color: #3366FF; font-size: 50px;">&nbsp;</p>
                        <p style="color: #3366FF; font-size: 50px;">&nbsp;</p>
                        <br />
                        <asp:Button ID="Button1" runat="server" style="cursor: pointer;" BackColor="#0002AE" BorderColor="White" BorderStyle="None" CssClass="auto-style13" Font-Size="Large" ForeColor="White" Height="40px" Text="Log out" Width="210px" OnClick="Button1_Click1" />
&nbsp;
                        <asp:Button ID="Button2" runat="server" style="cursor: pointer;" BackColor="#0002AE" BorderStyle="None" CssClass="auto-style13" Font-Size="Large" ForeColor="White" Height="40px" Text="Return" Width="210px" PostBackUrl="c-index.aspx" />
                        <br />
 
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        <br />
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    <td  ></td>
                    <td class="auto-style14"></td>
                </tr>
            </table>
        </div> 
    
    </div>


</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
