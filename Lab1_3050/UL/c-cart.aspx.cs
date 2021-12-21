using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab1_3050.UL
{
    public partial class WebForm16 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null)
            {
                Response.Write("<script>alert('Please Login in ！');</script>");
                Server.Transfer("c-login.aspx");
            }

        }

        protected void lbDelete_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {   

           
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Session["admin"] == null)
                {
                    Response.Write("<script>alert('Please Login in ！');</script>");
                    Server.Transfer("c-login.aspx");
                }


            }
            else {
                Server.Transfer("c-payment.aspx");
            }
        }
    }
}