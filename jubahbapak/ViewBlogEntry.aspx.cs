using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace jubahbapak
{
    public partial class ViewBlogEntry : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string entryIdString = Request.QueryString["Id"];
            int entryId = int.Parse(entryIdString);

           /* DatabaseEntities db = new DatabaseEntities();
            var entry = db.BlogEntries.Single(p => p.Id == entryId);
            litTitle.Text = entry.Title;
            litBody.Text = entry.Body;*/
        }
    }
}