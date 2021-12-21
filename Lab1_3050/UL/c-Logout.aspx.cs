using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab1_3050.UL
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if(Session["admin"] == null) { 
                Response.Write("<script>window.alert('have not login yet！');</script>");
                Server.Transfer("c-login.aspx");
            }
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            if (Session["admin"] != null)
            {
                Session.Clear();
                Response.Write("<script>window.alert('successful！');</script>");

                Server.Transfer("c-index.aspx");
            }

        }
    }
}