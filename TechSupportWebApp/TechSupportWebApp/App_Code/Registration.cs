using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TechSupportWebApp.App_Code
{
    public class Registration
    {
        // private fields
        private int customerID;
        private string productCode;
        private string registrationDate;

        // default constructor
        public Registration()
        {
        }

        // custom constructor
        public Registration(int customerID, string productCode, string registrationDate)
        {
            this.CustomerID = customerID;
            this.ProductCode = productCode;
            this.RegistrationDate = registrationDate;
        }

        // properties of the class
        public int CustomerID
        {
            get
            {
                return customerID;
            }
            set
            {
                customerID = value;
            }
        }

        public string ProductCode
        {
            get;
            set;
        }

        public string RegistrationDate
        {
            get;
            set;
        }
    }
}