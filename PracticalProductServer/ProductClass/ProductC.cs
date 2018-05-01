using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace ProductClass
{
    public class ProductC
    {
        classicmodelsEntities1 cm = new classicmodelsEntities1();

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

        public List<string> getStat(string choice)
        {
            int count = sortList(choice).Count();
            double percentage = (count * 110 )/ 100;
            percentage = Math.Round(percentage);

            List<string> list = new List<string>();

            list.Add(count.ToString());
            list.Add(percentage.ToString());

            return list;
        }
    }
}
