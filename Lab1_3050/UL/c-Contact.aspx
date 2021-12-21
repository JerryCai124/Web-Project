<%@ Page Title="" Language="C#" MasterPageFile="~/UL/c-Site.Master" AutoEventWireup="true" CodeBehind="c-Contact.aspx.cs" Inherits="Lab1_3050.UL.WebForm4" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Contact Us</title>

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


    </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="Navibar" runat="server">

</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="middle" runat="server">

    
    <div class="container"> 
    <h1>Our details</h1> 
    <div> <p>Address:xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx</p>
        <p>Tel:xxxxxxxxxxxxxxxxxxxxxx</p>
        <p>Email"xxxxxxxxxxxxxxxxxxxxxx</p>
     </div>
    </div>



</asp:Content>





<asp:Content ID="Content4" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
