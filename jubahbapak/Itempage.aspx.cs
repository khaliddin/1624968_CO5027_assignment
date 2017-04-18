using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace jubahbapak
{
    public partial class Itempage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //creates filename using query string
            string productId = Request.QueryString["Id"];
            string filename = productId + ".jpg";

            //will be missing alternate text and dimensions
            imgselect.ImageUrl = "~/prodImg/" + filename;
        }

        protected void uploadbutton_Click(object sender, EventArgs e)
        {
            string productId = Request.QueryString["Id"];
            string filename = productId + ".jpg";
            string saveLocation = Server.MapPath("~/prodImg/" + filename);

            imgupload.SaveAs(saveLocation);
        }
    }
}