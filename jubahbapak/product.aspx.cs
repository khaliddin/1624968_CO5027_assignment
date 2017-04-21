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
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-I9CB9LF\SQLEXPRESS;Initial Catalog=jubahbapak;Integrated Security=True");
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "select * from prod_table INNER JOIN tblImage ON prod_table.id = tblImage.imgName";
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