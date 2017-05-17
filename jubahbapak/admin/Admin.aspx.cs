using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace jubahbapak.admin
{
    public partial class Admins : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void signoutbut_Click(object sender, EventArgs e)
        {
            HttpContext.Current.GetOwinContext().Authentication.SignOut(DefaultAuthenticationTypes.ApplicationCookie);
        }
        
        protected void Button1_Click(object sender, EventArgs e)
        {
            GridView3.DataBind();
            insmsg.Text = "";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                co5027Entities saveDB = new co5027Entities();
                prod_table productTable = new prod_table();
                productTable.prod_name = pnametbox.Text;
                productTable.prod_details = pdetstxtbox.Text;
                productTable.prod_price = pricetxt.Text;
                string strqty = pqtytxt.Text;
                int intqty = int.Parse(strqty);
                productTable.prod_quantity = intqty;
                saveDB.prod_table.Add(productTable);
                saveDB.SaveChanges();


                GridView3.DataBind();
                insmsg.Text = "Product successfully added";
            }
            catch
            {
                insmsg.Text = "An error occurred while trying to add the product into the database, possibly due to connection to the database. Please make sure all fields are filled and the product price and quantity is in NUMERIC value";
            }
            


        }
    }
}