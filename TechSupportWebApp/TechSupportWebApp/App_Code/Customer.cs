using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TechSupportWebApp.App_Code
{
    public class Customer
    {
        // private fields
        private int customerID;
        private string customerName;

        // default constructor
        public Customer()
        {
        }

        // custom constructor
        public Customer(int customerID, string customerName)
        {
            this.CustomerID = customerID;
            this.CustomerName = customerName;
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

        public string CustomerName
        {
            get;
            set;
        }
    }
}