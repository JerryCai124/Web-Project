<%@ Page Title="" Language="C#" MasterPageFile="~/UL/c-Site.Master" AutoEventWireup="true" CodeBehind="WebForm18.aspx.cs" Inherits="Lab1_3050.UL.WebForm18" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <style>
      .auto-style1 {
            width: 100%;
            height: 1083px;
        }
        
        
        .auto-style2 {
            height: 145px;
        }
         .round {
       width:100px; height:30px;
    border: 5px solid #dedede;
    -moz-border-radius: 15px;      /* Gecko browsers */
    -webkit-border-radius: 15px;   /* Webkit browsers */
    border-radius:15px;            /* W3C syntax */
   cursor:pointer;
        }
          .roundl {
       width:100px; height:30px;
    border: 5px solid #dedede;
    -moz-border-radius: 15px;      /* Gecko browsers */
    -webkit-border-radius: 15px;   /* Webkit browsers */
    border-radius:15px;            /* W3C syntax */
   cursor:pointer;
   float:left;
        }
           .roundr {
       width:100px; height:30px;
    border: 5px solid #dedede;
    -moz-border-radius: 15px;      /* Gecko browsers */
    -webkit-border-radius: 15px;   /* Webkit browsers */
    border-radius:15px;            /* W3C syntax */
   cursor:pointer;
   margin-left:350px;
        }
        .b {
        border: 1px solid #ccc;
        }
        .auto-style4 {
            height: 145px;
            width: 482px;
        }
        .auto-style5 {
            width: 482px;
        }
        .auto-style8 {
            height: 145px;
            width: 828px;
        }
        .auto-style10 {
            width: 828px;
        }
       .auto-style12 {
           width: 578px;
           margin-left: 22px;
       }
       .auto-style13 {
           margin-left: 0px;
       }
       .auto-style14 {
           margin-left: 911px;
           cursor: pointer;
       }
    </style> 

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Navibar" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="middle" runat="server">

<div class="bg">
            
            <table class="auto-style1">

                <tr>
                    <td class="auto-style2"></td>
                    <td class="auto-style4"></td>
                    <td class="auto-style8" style="border-color: #C0C0C0"><h1 class="auto-style13">Secure Payment by Credit Card</h1>
                        
                        
                        &nbsp;</td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td style="border-color: #C0C0C0;" class="auto-style10">
     
                        
                        <br />
     
                        
                        <br /> Card Number：&nbsp;<input id="Text1" type="text" runat="server" style="border-color: #000000; border-width: thin; border-style: solid solid solid solid; background-color: transparent; font-size: x-large; color: black;" class="auto-style12" /> <br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                              <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Text1" ErrorMessage="Please check you enter,16 digits" ForeColor="Red" ValidationExpression="^\d{16}$"></asp:RegularExpressionValidator>
                        
                        <br />
                        <br />
                                               
                        Expiry Date：&nbsp;&nbsp; <input id="Text2" type="text" runat="server" style="border-color: #000000; border-width: thin; border-style: solid solid solid solid; background-color: transparent; font-size: x-large; color: black; width: 190px; height: 30px;"/>&nbsp;<br />
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="Text2" ErrorMessage="4 digits,no /" ForeColor="Red" ValidationExpression="^\d{4}$"></asp:RegularExpressionValidator>
                                              
                        <br />
                        CVC/CVV：&nbsp;&nbsp;&nbsp;&nbsp; <input id="Text3" type="text" runat="server" style="border-color: #000000; border-width: thin; border-style: solid solid solid solid; background-color: transparent; font-size: x-large; color: black; width: 190px; height: 30px; background-color: transparent; font-size: x-large; color: #000000; " />
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="Text3" ErrorMessage="3 digits,it is on your card back" ForeColor="Red" ValidationExpression="^\d{3}$"></asp:RegularExpressionValidator>
                        
                        <br />
                    
                        <br />
                        <br />
                    
                        <br />
                       &nbsp;<br />
                     
                    </td>
                    <td>&nbsp;</td>
                </tr>
                </table>

&nbsp;
        
                <asp:Button ID="Button1" runat="server" BackColor="#0002AE" BorderColor="White" BorderStyle="None" CssClass="auto-style14" Font-Size="Large" ForeColor="White" Height="40px" Text="Place order &amp; Pay" Width="725px" OnClick="Button1_Click1" />
        </div> 

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
