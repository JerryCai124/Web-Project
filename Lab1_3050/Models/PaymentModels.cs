using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Lab1_3050.Models
{
    public class PaymentModels
    {


        public string Name { get; set; }
        public string Number { get; set; }

        public int CVC { get; set; }
        public DateTime Expiry { get; set; }
        
    }
}