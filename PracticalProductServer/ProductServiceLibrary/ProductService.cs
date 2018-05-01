using System;
using System.Collections.Generic;
using System.Collections;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;


namespace ProductServiceLibrary
{
 
    public class ProductService : IProductService
    {
        classicmodelsEntities2 cm = new classicmodelsEntities2();

        public List<product> productList()
        {
            var list = (from p in cm.products
                        select p).ToList();
            return list;
        }

        public List<product> sortList(string choice)
        {
            var list = (from p in cm.products
                        where p.productLine == choice
                        select p).ToList();
            return list;
        }

        public String displayStat(string choice)
        {
            int count = sortList(choice).Count();
            double percentage = (count * 110) / 100;
            percentage = Math.Round(percentage);

            List<string> list = new List<string>();

            list.Add(count.ToString());
            list.Add(percentage.ToString());

            string stat;
            stat = "Vehicle Count: " + list[0] + "\n" +
                   "Percentage:    " + list[1] + "%";
            return stat;
        }
    }
}
