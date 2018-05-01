using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProductDisplay
{
    public partial class ProductPage : System.Web.UI.Page
    {
        ProductReference.ProductServiceClient pr = new ProductReference.ProductServiceClient();
        protected void Page_Load(object sender, EventArgs e)
        {
            grdProducts.DataSource = pr.productList();
            grdProducts.DataBind();

            txtStat.Visible = false;
        }

        protected void ddProductLine_SelectedIndexChanged(object sender, EventArgs e)
        {
            string choice;

            choice = ddProductLine.Text;

            if (choice.Equals("All"))
            {
                grdProducts.DataSource = pr.productList();
                grdProducts.DataBind();

                txtStat.Visible = false;
            }
            else
            {
                grdProducts.DataSource = pr.sortList(choice);
                grdProducts.DataBind();

                txtStat.Visible = true;
                txtStat.Text = pr.displayStat(choice);
            }
         
        }

      
    }
}