<%@ Page Title="" Language="C#" MasterPageFile="~/UL/c-Site.Master" AutoEventWireup="true" CodeBehind="c-register.aspx.cs" Inherits="Lab1_3050.UL.WebForm15" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
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
        .auto-style3 {
            width: 257px;
            height: 30px;
        }
        .auto-style4 {
            height: 145px;
            width: 484px;
        }
        .auto-style5 {
            width: 484px;
        }
        .auto-style8 {
            height: 145px;
            width: 828px;
        }
        .auto-style9 {
            position: absolute;
            left: auto;
            width: 828px;
        }
        .auto-style10 {
            width: 828px;
        }
        .auto-style11 {
            width: 450px;
            margin-left: 211;
        }
    </style> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Navibar" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="middle" runat="server">
    <div class="bg">
            
            <div class="bg">
            
            <table class="auto-style1">

                <tr>
                    <td class="auto-style2"></td>
                    <td class="auto-style4"></td>
                    <td class="auto-style8"><h1 style="margin-left:200px;">Register</h1>
                        
                        
                        &nbsp;</td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td style="color: #FFFFFF; font-size: xx-large;" class="auto-style5">&nbsp;</td>
                    <td style="color: black; font-size: x-large; " class="auto-style9" >
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        
                        Username：<input id="Text1" class="auto-style3" type="text" runat="server" style="border-color: black; border-width: thin; border-style: solid solid solid solid; background-color: transparent; font-size: x-large; color: black; width: 190px; height: 30px;"/>&nbsp;
                        <br />
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Text1" ErrorMessage="This field is required" ForeColor="Red" BorderStyle="None" Height="25px" Width="264px"></asp:RequiredFieldValidator>
                         &nbsp;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td style="color: black; font-size: x-large;" class="auto-style10" >
                        <br />

                        Password：<br />
                        <br />

                        <input id="Text2" type="password" runat="server" style="border-color: black; border-width: thin; border-style: solid solid solid solid; background-color: transparent; font-size: x-large; color: black;" class="auto-style11" /><br />
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Text2" ErrorMessage="begins with a letter and ranges in length from 6 to 18.Contain only characters, Numbers, and Underline" ForeColor="Red" ValidationExpression="^[a-zA-Z]\w{5,17}$"></asp:RegularExpressionValidator>
                        <br />
                        <br />
                        <br />
                        Confirm Password：<input id="Text3" type="password" runat="server" style="border-color: black; border-width: thin; border-style: solid solid solid solid; background-color: transparent; font-size: x-large; color: black;" class="auto-style11" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;<br />
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Text3" ControlToValidate="Text2" ErrorMessage="Password is not match" ForeColor="Red"></asp:CompareValidator>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        <br />
                        </td>
                    <td>&nbsp;</td>
                </tr>
               <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td style="color: black; font-size: x-large;" class="auto-style10">
                        Name：<input id="Text4" type="text" runat="server" style="border-color: #000000; border-width: thin; border-style: solid solid solid solid; background-color: transparent; font-size: x-large; color: black; width: 190px; height: 30px;"/>&nbsp;&nbsp;&nbsp;<br />
                        &nbsp;&nbsp;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>

                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td style="color: black; font-size: x-large;" class="auto-style10">
                        Email:<input id="Text6" type="text" runat="server" style="border-color: #000000; border-width: thin; border-style: solid solid solid solid; background-color: transparent; font-size: x-large; color: black;" /><br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="Text6" ErrorMessage="email format error" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        &nbsp;&nbsp;&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>

                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td style="color: black; font-size: x-large;" class="auto-style10">
                        Gender：<asp:RadioButton ID="RadioButton1" runat="server" Text="Male" Checked="True" GroupName="gender" OnCheckedChanged="RadioButton1_CheckedChanged" />
                        &nbsp;
                        <asp:RadioButton ID="RadioButton2" runat="server" Text="Female" GroupName="gender" OnCheckedChanged="RadioButton2_CheckedChanged" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td style="color: black; font-size: x-large;" class="auto-style10">
     
                        
                        <br />
                        <br /> Address：<input id="Text5" type="text" runat="server" style="border-color: #000000; border-width: thin; border-style: solid solid solid solid; background-color: transparent; font-size: x-large; color: black;" /><br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                        <br />
                        <br />
                                               
                        <br />
                        Mobile No.：<input id="Text7" type="text" runat="server" style="border-color: #000000; border-width: thin; border-style: solid solid solid solid; background-color: transparent; font-size: x-large; color: black; width: 190px; height: 30px; background-color: transparent; font-size: x-large; color: #000000; " />
                     
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" BorderColor="#FF3300" ControlToValidate="Text7" ErrorMessage="Mobile No. format error" ForeColor="#FF3300" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                    
                        <br />
                        <br />
                    
                        <br />
                       <input id="Reset1"  runat="server"  class="roundl" type="reset" value="Reset" style="background-color: Aqua" />
                        <asp:Button ID="Button3" class="roundr" runat="server" Text="Register" BackColor="Red" OnClick="Button3_Click"  />
                        
                        <br />
                     
                    </td>
                    <td>&nbsp;</td>
                </tr>
                </table>
        </div>
    </div> 
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
