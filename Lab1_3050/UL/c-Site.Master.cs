using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab1_3050.UL
{
    public partial class Site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] != null)
            {
                string username = Session["admin"].ToString();
                Label1.Text = "Hi," + username;
            }
            else
                Label1.Text = "Hi,Sign In";
        }
    }
}