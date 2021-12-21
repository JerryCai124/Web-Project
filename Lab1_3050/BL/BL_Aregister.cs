using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Lab1_3050.BL
{
    public class BL_Aregister
    {

        public static int adminReg(string strUserName, string strPassword, string strName, string strEmail, string strAddress, string strMobile)
        {



            DAL.Register.aReg(strUserName, strPassword, strName, strEmail, strAddress, strMobile);
            return 0;
        }
    }
}