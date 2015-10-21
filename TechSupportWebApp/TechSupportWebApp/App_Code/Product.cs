using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TechSupportWebApp.App_Code
{
    public class Product
    {
        // private fields
        private string productName;
        private string productCode;

        // default constructor
        public Product()
        {
        }

        // custom constructor
        public Product(string productName, string productCode)
        {
            this.ProductName = productName;
            this.ProductCode = productCode;
        }

        // properties of the class
        public string ProductName
        {
            get
            {
                return productName;
            }

            set
            {
                productName = value;
            }
        }

        public string ProductCode
        {
            get;
            set;
        }
    }
    
}