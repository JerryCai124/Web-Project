<%@ Page Title="" Language="C#" MasterPageFile="~/UL/c-Site.Master" AutoEventWireup="true" CodeBehind="c-login.aspx.cs" Inherits="Lab1_3050.UL.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Login</title>
    <style>
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
    <div class="bg" >
            <br />
            <br />
            <br />
            <br />
            <table class="auto-style15">
                <tr>
                    <td style="text-align: center;" >
                        <br />
                        <h1 style="color: #3366FF; font-size: 50px;">Login</h1>
                     <br />
                        <br />
                         <br />
                        <br />
                        <input id="Text1" runat="server" style="border-bottom-width:thin;border-style: none none solid solid; width: 470px; height: 60px; background-color: transparent; font-size: x-large; color: #000000; border-bottom-color: #00FFFF;" type="text"  placeholder="Username" class="auto-style2"/><br />
                       
                        <input id="Password1" runat="server"  style="border-bottom-width:thin; border-style: none none solid solid; width: 470px; height: 60px; background-color: transparent; font-size: x-large; color: #000000; border-bottom-color: #00FFFF;" placeholder="password" class="auto-style3" type="password" /><br />
                        <br />
                        <asp:Button ID="Button1" runat="server" style="cursor: pointer;" BackColor="#0002AE" BorderColor="White" BorderStyle="None" CssClass="auto-style13" Font-Size="Large" ForeColor="White" Height="40px" Text="Sign In" Width="210px" OnClick="Button1_Click1" />
                           &nbsp;
                        <asp:Button ID="Button2" runat="server" style="cursor: pointer;" BackColor="#0002AE" BorderStyle="None" CssClass="auto-style13" Font-Size="Large" ForeColor="White" Height="40px" Text="Sign up" Width="210px" PostBackUrl="c-register.aspx"/>
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

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
