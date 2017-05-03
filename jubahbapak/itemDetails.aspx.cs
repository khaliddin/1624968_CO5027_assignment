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
            string getid = Request.QueryString["Id"];
            int getidint = int.Parse(getid);

            co5027Entities db = new co5027Entities();
            var proddetsID = db.prod_table.Single(p => p.id == getidint);
            string prodName = proddetsID.prod_name;
            string prodDet = proddetsID.prod_details;
            string prodPrice = proddetsID.prod_price;
            //string strprodprice = Convert.ToString(prodPrice);
            string prodQty = proddetsID.prod_quantity;
           // string strprodqty = Convert.ToString(prodQty);

            prodname.Text = prodName;
            prodDesc.Text = prodDet;
            prodprice.Text = prodPrice;
            quantity.Text = prodQty;

            //first image
            var imgdata = db.image_table.Single(p => p.imgName == getid);
            string imgexten = imgdata.extension;
            string filename = getid + imgexten;

            detailImage.ImageUrl = "prodImg/" + filename;
            HyperLink1.NavigateUrl = "prodImg/" + filename;

            //second image
            var previmg1 = db.prevImage1_table.Single(p => p.prevImg3Name == getid);
            string previmg1exten = previmg1.extension1;
            string previmg1filename = getid + ".prev1" + previmg1exten;
            Image1.ImageUrl = "prodImg/" + previmg1filename;
            HyperLink2.NavigateUrl = "prodImg/" + previmg1filename;

            //third image
            var previmg2 = db.prevImage2_table.Single(p => p.prevImg2Name == getid);
            string previmg2exten = previmg2.extension;
            string previmg2filename = getid + ".prev2" + previmg2exten;
            Image2.ImageUrl = "prodImg/" + previmg2filename;
            HyperLink3.NavigateUrl = "prodImg/" + previmg2filename;



        }
    }
}