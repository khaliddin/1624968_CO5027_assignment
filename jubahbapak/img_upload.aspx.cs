using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Sql;

namespace jubahbapak
{
    public partial class Itempage : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
        }
    
        protected void cfm_img_upload_Click(object sender, EventArgs e)
        {
            string prodId = Request.QueryString["Id"];
            //get image extension
            string extension = (System.IO.Path.GetExtension(selectimg.FileName).ToLower());
            //validat extension
            if (extension == ".jpg" || extension == ".jpeg" || extension == ".png" || extension == ".gif")
            {
                //determine image dimensions
                System.Drawing.Image image = System.Drawing.Image.FromStream(selectimg.PostedFile.InputStream);
                int width = image.Width;
                int height = image.Height;
                //save the image data
                DatabaseEntities db = new DatabaseEntities();
                tblImage imageData = new tblImage();
                imageData.altText = setalttxt.Text;
                imageData.width = width;
                imageData.height = height;
                imageData.extension = extension;
                imageData.imgName = prodId;
                db.tblImages.Add(imageData);
                db.SaveChanges();

                //assemble filename
               
                string filename = prodId + extension;

                //save image file
                image.Save(Server.MapPath("~/prodImg/" + filename));
                //notify
                img_uploadLit.Text = "<p>File successfully uploaded as " + filename + " in the prodImg folder</p>";
            }
        }

        protected void shwimg_Click(object sender, EventArgs e)
        {
            try
            {
                string idString = Request.QueryString["Id"];
                int idint = int.Parse(idString);

                DatabaseEntities db = new DatabaseEntities();
                var imgdata = db.tblImages.Single(p => p.imageID == idint);
                string imgid = imgdata.extension;
                string productId = Request.QueryString["Id"];

                //creates filename using query string

                string filename = idString + imgid;

                //will be missing alternate text and dimensions
                imgselect.ImageUrl = "~/prodImg/" + filename;
            }
            catch
            {
                showimglit.Text = "Image not found";
            }

        }
    }
    }
