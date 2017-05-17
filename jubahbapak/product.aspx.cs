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
        SqlConnection sqlConnect = new SqlConnection(@"Data Source=SQL2016.FSE.Network;Initial Catalog=db_1624968_co5027_asg;User ID=user_db_1624968_co5027_asg;Password=Co5027-asg;MultipleActiveResultSets=True;Application Name=EntityFramework");
        
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
            sqlConnect.Open();
            SqlCommand sqlcmd = sqlConnect.CreateCommand();
            sqlcmd.CommandType = System.Data.CommandType.Text;
            sqlcmd.CommandText = "select * from prod_table INNER JOIN image_table ON prod_table.id = image_table.imgName";
            sqlcmd.ExecuteNonQuery();

            DataTable dbtable = new DataTable();
            SqlDataAdapter sqladapter = new SqlDataAdapter(sqlcmd);
            sqladapter.Fill(dbtable);
            prodrepeat.DataSource = dbtable;
            prodrepeat.DataBind();
            sqlConnect.Close();
            }
            catch
            {
                Literal1.Text = "connection error";
            }

        }

    }
}