using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace jubahbapak
{
    public partial class product : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=SQL2016.FSE.Network;Initial Catalog=db_1624968_co5027_asg;User ID=user_db_1624968_co5027_asg;Password=Co5027-asg;MultipleActiveResultSets=True;Application Name=EntityFramework");
        
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "select * from prod_table INNER JOIN image_table ON prod_table.id = image_table.imgName";
            cmd.ExecuteNonQuery();

            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            prodrepeat.DataSource = dt;
            prodrepeat.DataBind();
            con.Close();

        }

    }
}