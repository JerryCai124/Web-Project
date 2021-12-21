<%@ Page Title="" Language="C#" MasterPageFile="~/UL/s-admin.Master" AutoEventWireup="true" CodeBehind="s-staffIndex.aspx.cs" Inherits="Lab1_3050.UL.WebForm8" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <style type="text/css">
        .auto-style6 {
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



<asp:Content ID="Content2" ContentPlaceHolderID="mainPart" runat="server">
    <div class="bg" >
            <br />
            <br />
            <br />
            <br />
            <table class="auto-style15">
                <tr>
                    <td style="text-align: center;" >
                        <br />
                        <h1 style="color: #3366FF; font-size: 50px;">Function Select</h1>
                        <p style="color: #3366FF; font-size: 50px;">&nbsp;</p>
                       
                        <asp:Button ID="Button1" runat="server" style="cursor: pointer; margin-left: 0px;" BackColor="#0002AE" BorderColor="White" BorderStyle="None" CssClass="auto-style13" Font-Size="Large" ForeColor="White" Height="40px" Text="User Account Management" Width="255px" PostBackUrl="s-staffAcctMgt.aspx" />
&nbsp;
                        <asp:Button ID="Button2" runat="server" style="cursor: pointer;" BackColor="#99ccff" BorderStyle="None" CssClass="auto-style13" Font-Size="Large" ForeColor="White" Height="40px" Text="Items Management" Width="255px" PostBackUrl="s-staffItemsMgt.aspx"/>
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        <br />
                        <br />
                       
                        <asp:Button ID="Button3" runat="server" style="cursor: pointer; margin-left: 0px;" BackColor="#ff0000" BorderColor="White" BorderStyle="None" CssClass="auto-style13" Font-Size="Large" ForeColor="White" Height="40px" Text="Log out" Width="255px" PostBackUrl="s-staffLogin.aspx"/>
&nbsp;</td>
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    <td  ></td>
                    <td class="auto-style14"></td>
                </tr>
            </table>
        </div>

</asp:Content>
