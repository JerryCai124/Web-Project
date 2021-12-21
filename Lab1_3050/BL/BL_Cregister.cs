using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Lab1_3050.DAL
{
    public class BL_Cregister
    {
        public static int customerReg(string strUserName, string strPassword, string strName, string strEmail, string strAddress, string strMobile, int iSuspend, int iDel)
        {



            DAL.Register.cReg(strUserName, strPassword, strName, strEmail, strAddress, strMobile, iSuspend, iDel);
            return 0;
        }
    }
}