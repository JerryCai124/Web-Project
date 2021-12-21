<%@ Page Title="" Language="C#" MasterPageFile="~/UL/c-Site.Master" AutoEventWireup="true" CodeBehind="c-history.aspx.cs" Inherits="Lab1_3050.UL.WebForm14" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
         .box {

            top:200px;
            position: relative;
            max-width: 1190px;
            margin:0 auto;
            max-height:1000px;
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
        


    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Navibar" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="middle" runat="server">

     <div class ="box">

            

                
                    <table border="1" class="auto-style2" style="position: relative">
                        <tr>
                            <th class="auto-style3">Order No.</th>
                            <th class="auto-style3">Order Date</th>
                            <th class="auto-style3">Total Price</th>
                            <th class="auto-style3">Status</th>
                              
                        </tr>
                

                
                     <tr>
                            <td class="auto-style1"><%# Eval("Order No.") %></td>
                            <td class="auto-style1"><%# Eval("Order Date") %></td>
                            <td class="auto-style1"><%# Eval("Total Price") %></td>
                            <td class="auto-style1"><%# Eval("Status") %></td>
                     </tr>
                

                
                    </table>
                

                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                

        </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
