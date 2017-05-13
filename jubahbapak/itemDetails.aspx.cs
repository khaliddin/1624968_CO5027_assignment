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
       // SqlConnection con = new SqlConnection(@"Data Source=SQL2016.FSE.Network;Initial Catalog=db_1624968_co5027_asg;User ID=user_db_1624968_co5027_asg;Password=Co5027-asg;MultipleActiveResultSets=True;Application Name=EntityFramework");
        
        protected void Page_Load(object sender, EventArgs e)
        {
           /* con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "select * from prod_table INNER JOIN image_table ON prod_table.id = image_table.imgName";
            cmd.ExecuteNonQuery();

            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            //prodrepeat.DataSource = dt;
            //prodrepeat.DataBind();
            con.Close();*/
            string getid = Request.QueryString["id"];
            int getidint = int.Parse(getid);

            //get product detail data from the database
            co5027Entities db = new co5027Entities();
            var proddetsID = db.prod_table.Single(p => p.id == getidint);
            string prodName = proddetsID.prod_name;
            string prodDet = proddetsID.prod_details;
            string prodPrice = proddetsID.prod_price;
            //string strprodprice = Convert.ToString(prodPrice);
            var prodQty = proddetsID.prod_quantity;
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
            prodname.Text = prodName;
            prodDesc.Text = prodDet;
            prodprice.Text = prodPrice;
            quantity.Text = stockAvailable;
            //cart
            addcart.ImageUrl = "img/cart.png";
            cartUrl.NavigateUrl = "https://www.youtube.com/channel/UC5EaTjhEx5OYLO89kLU--Yg";

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
    }
}