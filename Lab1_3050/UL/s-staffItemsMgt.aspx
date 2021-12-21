<%@ Page Title="" Language="C#" MasterPageFile="~/UL/s-admin.Master" AutoEventWireup="true" CodeBehind="s-staffItemsMgt.aspx.cs" Inherits="Lab1_3050.UL.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 89px;
        }
        .auto-style3 {
            height: 21px;
            width: 89px;
        }
        .auto-style4 {
            width: 76px;
        }
        .auto-style5 {
            height: 21px;
            width: 76px;
        }
        .auto-style8 {
            width: 171px;
        }
        .auto-style9 {
            height: 21px;
            width: 171px;
        }
        .auto-style10 {
            width: 138px;
        }
        .auto-style11 {
            height: 21px;
            width: 138px;
        }
        .auto-style12 {
            width: 136px;
        }
        .auto-style13 {
            height: 21px;
            width: 136px;
        }
        .auto-style14 {
            width: 142px;
        }
        .auto-style15 {
            height: 21px;
            width: 142px;
        }
        .auto-style16 {
            width: 177px;
        }
        .auto-style17 {
            height: 21px;
            width: 177px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainPart" runat="server">
    <div>

            

                <asp:Repeater ID="RepGoods" runat="server" OnItemCommand="RepGoods_ItemCommand">

                <HeaderTemplate>
                    <table border="1">
                        <tr>
                            
                            <th class="auto-style16">Name</th>
                            <th class="auto-style12">Price</th>
                            <th class="auto-style10">detail</th>
                            <th class="auto-style8">image</th>
                            <th class="auto-style14">Type</th>
                            <th class="auto-style4">Edit</th>
                            <th class="auto-style2">Delete</th>
                        </tr>
                

                 </HeaderTemplate>

                <ItemTemplate>
                     <tr>
                            <td><%# Eval("Name") %></td>
                            <td><%# Eval("Price") %></td>
                            <td><%# Eval("detail") %></td>
                         <td><%# Eval("image") %></td>
                         <td><%# Eval("type") %></td>
                            <td><a href="Edit.aspx?id=<%# Eval("Name") %>">修改</a></td>
                            <td>
                                <asp:LinkButton ID="lbDelete" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="del">删除</asp:LinkButton></td>
                        </tr>
                </ItemTemplate>

                <FooterTemplate>
                    </table>
                </FooterTemplate>

            </asp:Repeater>
                <br />
            <br />
            <asp:HyperLink ID="hlFirst" runat="server">首页</asp:HyperLink>
&nbsp;
            <asp:HyperLink ID="hlUp" runat="server">上一页</asp:HyperLink>
            &nbsp; <asp:HyperLink ID="hlDown" runat="server">下一页</asp:HyperLink>
&nbsp;
            <asp:HyperLink ID="hlLast" runat="server">末页</asp:HyperLink>
&nbsp;当前第：<asp:Label ID="labCurrentPage" runat="server"></asp:Label>页

         
            <br />
            <br />
            <br />
            <br />

                
                

            

     
            

         
            <br />
            <br />
            <br />
            <br />

            <table>
                <tr>
                    <td>Item Name：<asp:TextBox ID="txtName" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Item Price：<asp:TextBox ID="txtPrice" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Item Details：<asp:TextBox ID="Textdetail" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Item Image：<asp:TextBox ID="TextImg" runat="server"></asp:TextBox></td>
                </tr>

                <tr>
                    <td>Item type：<asp:TextBox ID="TextType" runat="server"></asp:TextBox></td>
                </tr>
                
                <tr>
                    <td>
                        <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" /></td>
                </tr>
            </table>

        </div>
</asp:Content>
