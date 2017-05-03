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
                co5027Entities db = new co5027Entities();
                image_table imageData = new image_table();
                imageData.altText = setalttxt.Text;
                imageData.width = width;
                imageData.height = height;
                imageData.extension = extension;
                imageData.imgName = prodId;
                db.image_table.Add(imageData);
                db.SaveChanges();

                //assemble filename
               
                string filename = prodId + extension;

                //save image file
                image.Save(Server.MapPath("~/prodImg/" + filename));
                //notify
                img_uploadLit.Text = "<p>File successfully uploaded as " + filename + " in the prodImg folder</p>";
            }
            else
            {
                img_uploadLit.Text = "invalid image file type";
            }
        }

        protected void shwimg_Click(object sender, EventArgs e)
        {
            try
            {
                string idString = Request.QueryString["Id"];
                int idint = int.Parse(idString);

                co5027Entities db = new co5027Entities();
                var imgdata = db.image_table.Single(p => p.imageID == idint);
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

        protected void previmg1_btn_Click(object sender, EventArgs e)
        {
            string prodId = Request.QueryString["Id"];
            //get image extension
            string extension = (System.IO.Path.GetExtension(selectprevimg.FileName).ToLower());
            //validat extension
            if (extension == ".jpg" || extension == ".jpeg" || extension == ".png" || extension == ".gif")
            {
                //determine image dimensions
                System.Drawing.Image image1 = System.Drawing.Image.FromStream(selectprevimg.PostedFile.InputStream);
                int width = image1.Width;
                int height = image1.Height;
                //save the image data
                co5027Entities db = new co5027Entities();
                prevImage1_table imageData = new prevImage1_table();
                imageData.altText1 = setalttextprevimg1.Text;
                imageData.width1 = width;
                imageData.height = height;
                imageData.extension1 = extension;
                imageData.prevImg3Name = prodId;
                db.prevImage1_table.Add(imageData);
                db.SaveChanges();

                //assemble filename

                string filename = prodId + ".prev1" + extension;

                //save image file
                image1.Save(Server.MapPath("~/prodImg/" + filename));
                //notify
                previmg_uploadlit.Text = "<p>File successfully uploaded as " + filename + " in the prodImg folder</p>";
            }
            else
            {
                previmg_uploadlit.Text = "invalid image file type";
            }
        }

        protected void previmg2_btn_Click(object sender, EventArgs e)
        {
            string prodId = Request.QueryString["Id"];
            //get image extension
            string extension = (System.IO.Path.GetExtension(selectprevimg2.FileName).ToLower());
            //validat extension
            if (extension == ".jpg" || extension == ".jpeg" || extension == ".png" || extension == ".gif")
            {
                //determine image dimensions
                System.Drawing.Image image2 = System.Drawing.Image.FromStream(selectprevimg2.PostedFile.InputStream);
                int width = image2.Width;
                int height = image2.Height;
                //save the image data
                co5027Entities db = new co5027Entities();
                prevImage2_table imageData = new prevImage2_table();
                imageData.altText2 = setalttextprevimg1.Text;
                imageData.width2 = width;
                imageData.height2 = height;
                imageData.extension = extension;
                imageData.prevImg2Name = prodId;
                db.prevImage2_table.Add(imageData);
                db.SaveChanges();

                //assemble filename

                string filename = prodId + ".prev2" + extension;

                //save image file
                image2.Save(Server.MapPath("~/prodImg/" + filename));
                //notify
                previmg2_uploadlit.Text = "<p>File successfully uploaded as " + filename + " in the prodImg folder</p>";
            }
            else
            {
                previmg2_uploadlit.Text = "invalid image file type";
            }
        }
    }
}
