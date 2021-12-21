using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net.Mail;

namespace Lab1_3050.BL
{
    public class BL_Email
    {
        public static void SendEmail(string fromAddress, string toAddress, string subject,string body)
        {  //creat messgae
            MailMessage msg = new MailMessage(fromAddress, toAddress, subject, body);

            //send the message to customer's email
            SmtpClient client = new SmtpClient();
            client.Send(msg);

        }
        public static string getEmailAddress(string p)
        {
            return DAL.Cinforn.GetInfornByName(p);
        }
    }
}