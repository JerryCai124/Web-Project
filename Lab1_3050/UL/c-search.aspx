 <%@ Page Title="" Language="C#" MasterPageFile="~/UL/c-Site.Master" AutoEventWireup="true" CodeBehind="c-search.aspx.cs" Inherits="Lab1_3050.UL.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Search</title>
    <link
        rel="stylesheet"
        href="/Assets/Styles/pages/search.css"
        type="text/css"
    />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Navibar" runat="server">
 
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="middle" runat="server">
     <div class="search-box">
        <div class="search-box-inner">
            <form action="/Product/Search" method="get">
                <input
                    class="search-input"
                    type="text"
                    name="keyword"
                    placeholder="please enter your keyword here" />
                <button class="btn-search" type="submit">Search</button>
            </form>
        </div>
        <div class="search-body">
            <table class="table search-table">
                <thead>
                    <tr>
                        <th colspan="5">Your Search Result</th>
                    </tr>
                    <tr>
                        <th width="30%">Image</th>
                        <th>Name</th>
                        <th>Price</th>
                        <th>Total</th>
                        <th>Stock</th>
                    </tr>
                </thead>
                <tbody>
                    
                        <tr>
                            <td>
                                <img src="<%=product.Image %>" class="img-thumbnail" alt="Can not display image" /></td>
                            <td>
                                <a href="/Product/Item?Id=<%=product.Id %>"><%=product.Name %></a> 
                            </td>
                            <td>$<%=product.Price %></td>
                            <td><%=product.Total %></td>
                            <td><%=product.Stock %></td>
                        </tr>
                    
                    
                    else
                    { %>
                        <tr>
                            <td rowspan="2" colspan="5">
                                We cannot find anything through your keyword
                            </td>
                        </tr>
                    <% } %>
                </tbody>
            </table>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
