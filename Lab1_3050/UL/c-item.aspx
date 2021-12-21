<%@ Page Title="" Language="C#" MasterPageFile="~/UL/c-Site.Master" AutoEventWireup="true" CodeBehind="c-item.aspx.cs" Inherits="Lab1_3050.UL.WebForm17" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .grid {
    height:580px;
    max-width:1190px;
    margin-top:20px;
    margin:0 auto;
}
        .grid-col2 {
    width: 500px;
    height: 100%;
    margin-left: 10px;
}.grid-col3 {
    width: 500px;
    height: 100%;
}
/* 右边模块 */

.news {
    height: auto;
    border-bottom: 1px solid #ccc;
    background-color: #fff;
    padding: 7px 13px 0;
    box-sizing: border-box;
}
        .auto-style1 {
            height: 534px;
            width: 669px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Navibar" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="middle" runat="server">
    <div class="w grid">
        <div class="grid-col2 fl">
            
                
                
                
                <img src="IMG/manukahoney.jpg" alt="" class="auto-style1" />&nbsp;
                
                
                
            
        </div>
        <div class="grid-col3 fr">
            <!--新闻模块-->
            <div class="news" style="float:left;margin-left:10px">
            <b>
                Item Name：
            </b>
            <P>Manuka Honey</P>
            <br/>
            <br/>
            <br/>
            <b>
                Price：
            </b>
            <p>$12.99</p>
            <br/>
            <br/>
            <br/>
            <b>
                Details：
            </b>
            <p>Australian Manuka honey sourced from our Local beekeepers which harvest this honey from Aussie bush lands. </p>
            <p> Delivered freshly to our manufacturing plant where it is bottled raw and unprocessed.</p>
            <br/>
            <br/>
            <br/>
            <b>
                Amount：
            </b>

            <asp:TextBox ID="txtBuyNum" runat="server" Text="1" Width="121px"></asp:TextBox>
            <br/>
            <br/>
            <br/>
            &nbsp;
            <asp:Button ID="btnAddCar" runat="server" Text="Add to cart" OnClick="btnAddCar_Click" Width="340px" />
            &nbsp;&nbsp;&nbsp;<br />
&nbsp;
            <asp:Button ID="btnContinueBuy" runat="server" Text="Continue shopping" OnClick="btnContinueBuy_Click" Width="340px" />
        </div>
            
            
        </div>

    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
