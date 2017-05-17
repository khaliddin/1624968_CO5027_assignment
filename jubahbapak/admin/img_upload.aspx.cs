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
            imgselect.Visible = false;
            Image1.Visible = false;
            Image2.Visible = false;
        }
    
        protected void cfm_img_upload_Click(object sender, EventArgs e)
        {
            string productIdentity = Request.QueryString["Id"];
            //get image extension
            string extension = (System.IO.Path.GetExtension(selectimg.FileName).ToLower());
            //validat extension
            if (extension == ".png" || extension == ".jpeg" || extension == ".gif" || extension == ".jpg")
            {
                //determine image dimensions
                System.Drawing.Image imageObj = System.Drawing.Image.FromStream(selectimg.PostedFile.InputStream);
                int width = imageObj.Width;
                int height = imageObj.Height;
                //save the image data
                co5027Entities databaseEntity = new co5027Entities();
                image_table imageTableRows = new image_table();
                imageTableRows.altText = setalttxt.Text;
                imageTableRows.width = width;
                imageTableRows.height = height;
                imageTableRows.extension = extension;
                imageTableRows.imgName = productIdentity;
                databaseEntity.image_table.Add(imageTableRows);
                databaseEntity.SaveChanges();
                //refresh gridview
                GridView1.DataBind();

                //assemble filename

                string filename = productIdentity + extension;

                //save image file
                imageObj.Save(Server.MapPath("~/prodImg/" + filename));
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

                co5027Entities databaseEntity = new co5027Entities();
                var imageTableRows = databaseEntity.image_table.Single(p => p.imageID == idint);
                string imgid = imageTableRows.extension;
                string productId = Request.QueryString["Id"];

                //creates filename using query string

                string filename = idString + imgid;

                //will be missing alternate text and dimensions
                imgselect.ImageUrl = "~/prodImg/" + filename;
                imgselect.Visible = true;
            }
            catch
            {
                showimglit.Text = "Image not found";
            }

        }

        protected void previmg1_btn_Click(object sender, EventArgs e)
        {
            string productIdentity = Request.QueryString["Id"];
            //get image extension
            string extension = (System.IO.Path.GetExtension(selectprevimg.FileName).ToLower());
            //validat extension
            if (extension == ".png" || extension == ".jpeg" || extension == ".gif" || extension == ".jpg")
            {
                //determine image dimensions
                System.Drawing.Image image1 = System.Drawing.Image.FromStream(selectprevimg.PostedFile.InputStream);
                int width = image1.Width;
                int height = image1.Height;
                //save the image data
                co5027Entities databaseEntity = new co5027Entities();
                prevImage1_table imageTableRows = new prevImage1_table();
                imageTableRows.altText1 = setalttextprevimg1.Text;
                imageTableRows.width1 = width;
                imageTableRows.height = height;
                imageTableRows.extension1 = extension;
                imageTableRows.prevImg3Name = productIdentity;
                databaseEntity.prevImage1_table.Add(imageTableRows);
                databaseEntity.SaveChanges();

                //refresh gridview

                GridView2.DataBind();
                //assemble filename

                string filename = productIdentity + ".prev1" + extension;

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
            string productIdentity = Request.QueryString["Id"];
            //get image extension
            string extension = (System.IO.Path.GetExtension(selectprevimg2.FileName).ToLower());
            //validat extension
            if (extension == ".png" || extension == ".jpeg" || extension == ".gif" || extension == ".jpg")
            {
                //determine image dimensions
                System.Drawing.Image image2 = System.Drawing.Image.FromStream(selectprevimg2.PostedFile.InputStream);
                int width = image2.Width;
                int height = image2.Height;
                //save the image data
                co5027Entities databaseEntity = new co5027Entities();
                prevImage2_table imageTableRows = new prevImage2_table();
                imageTableRows.altText2 = setalttextprevimg1.Text;
                imageTableRows.width2 = width;
                imageTableRows.height2 = height;
                imageTableRows.extension = extension;
                imageTableRows.prevImg2Name = productIdentity;
                databaseEntity.prevImage2_table.Add(imageTableRows);
                databaseEntity.SaveChanges();

                //refresh gridview
                GridView3.DataBind();
                //assemble filename

                string filename = productIdentity + ".prev2" + extension;

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

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string idString = Request.QueryString["Id"];
                int idint = int.Parse(idString);

                co5027Entities databaseEntity = new co5027Entities();
                var imageTableRows = databaseEntity.image_table.Single(p => p.imageID == idint);
                string imgid = imageTableRows.extension;
                string productId = Request.QueryString["Id"];

                //creates filename using query string

                string filename = idString + ".prev1" + imgid;

                //will be missing alternate text and dimensions
                Image1.ImageUrl = "~/prodImg/" + filename;
                Image1.Visible = true;

            }
            catch
            {
                showimglit.Text = "Image not found";
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                string idString = Request.QueryString["Id"];
                int idint = int.Parse(idString);

                co5027Entities databaseEntity = new co5027Entities();
                var imageTableRows = databaseEntity.image_table.Single(p => p.imageID == idint);
                string imgid = imageTableRows.extension;
                string productId = Request.QueryString["Id"];

                //creates filename using query string

                string filename = idString + ".prev2" + imgid;

                //will be missing alternate text and dimensions
                
                Image2.ImageUrl = "~/prodImg/" + filename;
                Image2.Visible = true;
            }
            catch
            {
                showimglit.Text = "Image not found";
            }

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            imgselect.Visible = false;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Image1.Visible = false;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Image2.Visible = false;
        }
    }
}
