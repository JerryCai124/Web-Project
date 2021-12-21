<%@ Page Title="" Language="C#" MasterPageFile="~/UL/c-Site.Master" AutoEventWireup="true" CodeBehind="c-cart.aspx.cs" Inherits="Lab1_3050.UL.WebForm16" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .box {

            top:200px;
            position: relative;
            max-width: 1190px;
            margin:0 auto;
            height:auto;
        }
        .auto-style1 {
            height: 119px;
        }
        .auto-style2 {
            width: 1059px;
        }
        .auto-style3 {
            height: 65px;
        }



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
<asp:Content ID="Content2" ContentPlaceHolderID="Navibar" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="middle" runat="server">
    <div class ="box">

            

                
                    <table border="1" class="auto-style2" style="position: relative">
                        <tr>
                            <th class="auto-style3">image</th>
                            <th class="auto-style3">Name</th>
                            <th class="auto-style3">Price</th>
                            <th class="auto-style3">Amount</th>
                            <th class="auto-style3">Total</th>
                            <th class="auto-style3">Delete</th>
                        </tr>
                

                
                     <tr>
                            <td class="auto-style1"><%# Eval("image") %></td>
                            <td class="auto-style1"><%# Eval("Name") %></td>
                            <td class="auto-style1"><%# Eval("Price") %></td>
                            <td class="auto-style1"><%# Eval("Amount") %></td>
                            <td class="auto-style1"><%# Eval("Total Price") %></td> 
                            <td class="auto-style1">
                                <asp:LinkButton ID="lbDelete" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="del" OnClick="lbDelete_Click">Delete</asp:LinkButton></td>
                        </tr>
                

                
                    </table>
                

        </div>
    <div class="bg" >
            <br />
            <br />
            <br />
            <br />
            <table class="auto-style15">
                <tr>
                    <td style="text-align: center;" >
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <h1 style="color: #3366FF; font-size: 50px;">&nbsp;</h1>
                       <asp:Button ID="Button1" runat="server" style="cursor: pointer; margin-left: 0px;" BackColor="#0002AE" BorderColor="White" BorderStyle="None" CssClass="auto-style13" Font-Size="Large" ForeColor="White" Height="40px" Text="Continue Shopping" Width="255px" PostBackUrl="c-index.aspx" OnClick="Button1_Click" />
&nbsp;
                        
                        <asp:Button ID="Button2" runat="server" style="cursor: pointer; margin-left: 0px;" BackColor="#0002AE" BorderColor="White" BorderStyle="None" CssClass="auto-style13" Font-Size="Large" ForeColor="White" Height="40px" Text="Make a payment" Width="255px"  OnClick="Button2_Click" />
                        
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        <br />
                        <br />
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
