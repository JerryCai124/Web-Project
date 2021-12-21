using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Lab1_3050.UL
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }
        protected void Button1_Click1(object sender, EventArgs e)
        {
            int result = 0;
            string uname = Text1.Value;
            string upass = Password1.Value;

            result = BL.BL_Clogin.LoginCheck(uname, upass);
            if (result==1)
            {
                Session["admin"] = uname;
                Server.Transfer("c-index.aspx");
                Response.Write("<script>window.alert('successful！');</script>");
            }
            else
            {
                Response.Write("<script>window.alert('invaild of username or password！');</script>");
            }
            /*string str = "Server=localhost;UserId=root;Password=123456;Database=test;pooling=false;CharSet=utf8;port=3306";
            MySqlConnection con = new MySqlConnection(str);
            con.Open();
            string sqlin = "select * from user where username='" + uname + "' and password='" + password + "'";
            MySqlCommand com = new MySqlCommand(sqlin, con);

            MySqlDataReader dr = com.ExecuteReader();
            dr.Read();
            if (dr.HasRows)//if>1，have recorded，login successful
            {
                uname = Text1.Value.Trim();
                Session["admin"] = uname;
                Server.Transfer("index.aspx");
            }
            else
            {
                Response.Write("<script>window.alert('invaild of username or password！');</script>");
            }
            con.Close();*/

        }
    }
}