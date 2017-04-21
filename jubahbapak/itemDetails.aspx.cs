using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Data.Entity;

namespace jubahbapak
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        //SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-I9CB9LF\SQLEXPRESS;Initial Catalog=jubahbapak;Integrated Security=True");
      // int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            string getid = Request.QueryString["Id"];
            int getidint = int.Parse(getid);

            DatabaseEntities db = new DatabaseEntities();
            var proddetsID = db.prod_table.Single(p => p.id == getidint);
            string prodName = proddetsID.prod_name;
            string prodDet = proddetsID.prod_details;
            double prodPrice = proddetsID.prod_price;
            string strprodprice = Convert.ToString(prodPrice);
            int prodQty = proddetsID.prod_quantity;
            string strprodqty = Convert.ToString(prodQty);

            prodNameLit.Text = prodName;
            prodDetLit.Text = prodDet;
            prodPriceLit.Text = strprodprice;
            prodQtyLit.Text = strprodqty;

            var imgdata = db.tblImages.Single(p => p.imageID == getidint);
            string imgexten = imgdata.extension;
            string filename = getid + imgexten;

            prodImage.ImageUrl = "prodImg/" + filename;




           /*id = Convert.ToInt32(Request.QueryString["id"].ToString());
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "select * from prod_table";
            cmd.ExecuteNonQuery();

            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            dynamic.DataBind();
            con.Close();*/
        }
    }
}