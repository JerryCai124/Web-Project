using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Data.SqlClient;
using Lab1_3050.DAL;

namespace Lab1_3050.UL
{
    public partial class WebForm9 : System.Web.UI.Page
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
            /* SmtpClient client = new SmtpClient("smtp.qq.com", 587);
             Random Rdm = new Random();
             //产生0到100000的随机数
             int iRdm = Rdm.Next(0000, 99999);
             MailMessage msg = new MailMessage("A", "B", "验证码", iRdm.ToString());
             client.UseDefaultCredentials = false;
             System.Net.NetworkCredential basicAuthenticationInfo =
             new System.Net.NetworkCredential("A", "C");
             client.Credentials = basicAuthenticationInfo;
             client.EnableSsl = true;
             client.Send(msg);
             */

            string Username = Text1.Value;
            string pwd = Text2.Value;
            string name = Text4.Value;
            string email = Text6.Value;
            string address = Text5.Value;
            string mobile = Text7.Value;
            

            BL.BL_Aregister.adminReg(Username, pwd, name, email, address, mobile);

            Response.Write("<script>alert(\"Please wait for verified\")</script>");
            Server.Transfer("s-staffLogin.aspx");
        }
    }
}