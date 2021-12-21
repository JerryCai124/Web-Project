<%@ Page Title="" Language="C#" MasterPageFile="~/UL/s-admin.Master" AutoEventWireup="true" CodeBehind="s-staffAcctMgt.aspx.cs" Inherits="Lab1_3050.UL.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainPart" runat="server">
    <table border="1">
                        <tr>
                            <th>Customer Id</th>
                            <th>Customer Username</th>
                            <th>Customer Name</th>
                            <th>Email</th>
                            <th>suspend</th>        
                            <th>view transactions</th>
                            <th>activate</th>
                        </tr>
                
        
                
                     <tr>
                            <td class="auto-style1"><%# Eval("Id") %></td>
                            <td class="auto-style1"><%# Eval("userName") %></td>
                            <td class="auto-style1"><%# Eval("name") %></td>
                            <td class="auto-style1"><%# Eval("email") %></td>

                            <td class="auto-style1"><asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="Suspend">suspend</asp:LinkButton></td>
                            <td class="auto-style1"><a href="c-history.aspx">History</a></td>
                            <td class="auto-style1"><asp:LinkButton ID="lbDelete" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="Activate">activate</asp:LinkButton></td>
                        </tr>
                

                
                    </table>
</asp:Content>
