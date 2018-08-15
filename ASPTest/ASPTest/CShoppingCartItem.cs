using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ASPTest
{
    public class CShoppingCartItem
    {
        public string Name { get; set; }
        public int Quality { get; set; }
        public double Price { get; set; }
        public double Count {
            get
            {
                return this.Quality * this.Price;
            }
        }
    }
}