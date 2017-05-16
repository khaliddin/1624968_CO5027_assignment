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
        SqlConnection con = new SqlConnection(@"Data Source=SQL2016.FSE.Network;Initial Catalog=db_1624968_co5027_asg;User ID=user_db_1624968_co5027_asg;Password=Co5027-asg;MultipleActiveResultSets=True;Application Name=EntityFramework");
        int pqty;
        string pname, pdesc, pprice, prodquant;

        int id, pquant;
        string prodName, prodDet, prodPrice;
        protected void Page_Load(object sender, EventArgs e)
        {
            string getid = Request.QueryString["id"];
            int getidint = int.Parse(getid);
            id = getidint;

            //get product detail data from the database
            co5027Entities db = new co5027Entities();
            var proddetsID = db.prod_table.Single(p => p.id == getidint);
            prodName = proddetsID.prod_name;
            prodDet = proddetsID.prod_details;
            prodPrice = proddetsID.prod_price;
            //string strprodprice = Convert.ToString(prodPrice);
            var prodQty = proddetsID.prod_quantity;
            pquant = Convert.ToInt32(prodQty);
            string stockAvailable;
            if (prodQty > 0)
            {
                stockAvailable = "In stock";
            }
            else
            {
                stockAvailable = "Out of stock";
            }
            //put product data retrieved into the webpage
            prodnametxt.Text = prodName;
            proddesctxt.Text = prodDet;
            prodpricetxt.Text = prodPrice;
            quantity.Text = stockAvailable;
            //cart
            //addcart.ImageUrl = "img/cart.jpg";
            cartUrl.NavigateUrl = "cart.aspx?id=" + getid;

            //first image
            //get data from database
            var bigimg = db.image_table.Single(p => p.imgName == getid);
            string imgexten = bigimg.extension;
            string filename = getid + imgexten;
            string alternateText1 = bigimg.altText;
            //put data retrieved to Image/web page
            detailImage.ImageUrl = "prodImg/" + filename;
            detailImage.AlternateText = alternateText1;
            HyperLink1.NavigateUrl = "prodImg/" + filename;

            //second image
            //get data from database
            var previmg1 = db.prevImage1_table.Single(p => p.prevImg3Name == getid);
            string previmg1exten = previmg1.extension1;
            string previmg1filename = getid + ".prev1" + previmg1exten;
            string alternateTxt2nd = previmg1.altText1;
            //put data retrieved to Image/web page
            Image1.ImageUrl = "prodImg/" + previmg1filename;
            Image1.AlternateText = alternateTxt2nd;
            HyperLink2.NavigateUrl = "prodImg/" + previmg1filename;

            //third image
            //get data from database
            var previmg2 = db.prevImage2_table.Single(p => p.prevImg2Name == getid);
            string previmg2exten = previmg2.extension;
            string previmg2filename = getid + ".prev2" + previmg2exten;
            string alternateTxt3rd = previmg2.altText2;
            //put data retrieved to Image/web page
            Image2.ImageUrl = "prodImg/" + previmg2filename;
            Image2.AlternateText = alternateTxt3rd;
            HyperLink3.NavigateUrl = "prodImg/" + previmg2filename;

        }

        protected void addcart_Click(object sender, EventArgs e)
        {
         
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "select * from prod_table INNER JOIN image_table ON prod_table.id = image_table.imgName WHERE id=" + id + "";
            cmd.ExecuteNonQuery();

            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            foreach (DataRow drow in dt.Rows)
            {
                pname = drow["prod_name"].ToString();
                pdesc = drow["prod_details"].ToString();
                pprice = drow["prod_price"].ToString();
                prodquant = drow["prod_quantity"].ToString();
                pqty = Convert.ToInt32(prodquant);
            }
            con.Close();

            if (Request.Cookies["aa"] == null)
            {
                Response.Cookies["aa"].Value = pname.ToString() + "," + pdesc.ToString() + "," + pprice.ToString() + "," + prodquant.ToString();
                Response.Cookies["aa"].Expires = DateTime.Now.AddDays(1);
            }
            else
            {
                Response.Cookies["aa"].Value = Request.Cookies["aa"].Value + "|" + pname.ToString() + "," + pdesc.ToString() + "," + pprice.ToString() + "," + prodquant.ToString();
                Response.Cookies["aa"].Expires = DateTime.Now.AddDays(1);
            }


        }
    }
}