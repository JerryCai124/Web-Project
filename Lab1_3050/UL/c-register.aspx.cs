using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using Lab1_3050.DAL;

namespace Lab1_3050.UL
{
    public partial class WebForm15 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string Username = Text1.Value;
            string pwd = Text2.Value;
            string name = Text4.Value;
            string email = Text6.Value;
            string address = Text5.Value;
            string mobile = Text7.Value;
            int iSuspend = 0;
            int iDel = 0;

            BL_Cregister.customerReg(Username, pwd, name, email, address, mobile, iSuspend, iDel);

            Response.Write("<script>alert(\"Verified email has been sent,please check\")</script>");
            Server.Transfer("c-index.aspx");
        }
    }
}