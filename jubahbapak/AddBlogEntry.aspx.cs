using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace jubahbapak
{
    public partial class entity : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            
        }

        protected void btnAddEntry_Click(object sender, EventArgs e)
        {
            /*BlogEntry entry = new BlogEntry();
            entry.Title = txtTitle.Text;
            entry.Body = bodytxt.Text;
            entry.Date = DateTime.Now;
            DatabaseEntities db = new DatabaseEntities();
            db.BlogEntries.Add(entry);
            db.SaveChanges();*/
           
        }

        protected void uploadbtn_Click(object sender, EventArgs e)
        {
            //get image extension
            string extension = (System.IO.Path.GetExtension(imgselect.FileName).ToLower());
            //validate extension
            if (extension == ".jpg" || extension == ".jpeg" || extension == ".png" || extension == ".gif")
            {
                //load image in memory to determine dimensions
                System.Drawing.Image img = System.Drawing.Image.FromStream(imgselect.PostedFile.InputStream);
                int width = img.Width;
                int height = img.Height;
                //save the image data
                DatabaseEntities db = new DatabaseEntities();
                tblImage imageData = new tblImage();
                imageData.altText = txtAltText.Text;
                imageData.width = width;
                imageData.height = height;
                imageData.extension = extension;
                db.tblImages.Add(imageData);
                db.SaveChanges();

                //assemble filename
                string filename = imageData.imageID.ToString() + extension;

                //save image file
                img.Save(Server.MapPath("~/prodImg/" + filename));
                //notify
                litResult.Text = "<p>File successfully uploaded as " + filename + " in the prodImg folder</p>";

            }
        }
    }
}