using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Drawing;

namespace jubahbapak
{
    public partial class image_upload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string prodId = Request.QueryString["Id"];
            //get image extension
            string extension = (System.IO.Path.GetExtension(imageview.FileName).ToLower());
            /*string extension1 = (System.IO.Path.GetExtension(detail_image1.FileName).ToLower());
            string extension2 = (System.IO.Path.GetExtension(detail_image2.FileName).ToLower());
            string extension3 = (System.IO.Path.GetExtension(detail_image3.FileName).ToLower());
            string extensionfeat = (System.IO.Path.GetExtension(feature_image.FileName).ToLower());*/
            //validat extension
            if (extension == ".jpg" || extension == ".jpeg" || extension == ".png" || extension == ".gif")
            {
                //determine image dimensions
                Image imageView = Image.FromStream(imageview.PostedFile.InputStream);
                //System.Drawing.Image image = System.Drawing.Image.FromStream(selectimg.PostedFile.InputStream);
                int width = imageView.Width;
                int height = imageView.Height;
               /* //1
                System.Drawing.Image image1 = System.Drawing.Image.FromStream(detail_image1.PostedFile.InputStream);
                int width1 = image1.Width;
                int height1 = image1.Height;
                //2
                System.Drawing.Image image2 = System.Drawing.Image.FromStream(detail_image2.PostedFile.InputStream);
                int width2 = image2.Width;
                int height2 = image2.Height;
                //3
                System.Drawing.Image image3 = System.Drawing.Image.FromStream(detail_image3.PostedFile.InputStream);
                int width3 = image3.Width;
                int height3 = image3.Height;
                //featured
                System.Drawing.Image imagefeat = System.Drawing.Image.FromStream(feature_image.PostedFile.InputStream);
                int widthfeat = imagefeat.Width;
                int heightfeat = imagefeat.Height;*/
                //save the image data
                co5027Entities db = new co5027Entities();
                image_table imageData = new image_table();
                
                imageData.width = width;
                /*imageData.width1 = width1;
                imageData.width2 = width2;
                imageData.width3 = width3;
                imageData.fimgwidth = widthfeat;*/
                imageData.height = height;
                /*imageData.height1 = height1;
                imageData.height2 = height2;
                imageData.height3 = height3;
                imageData.fimgheight = heightfeat;*/
                imageData.extension = extension;
                /*imageData.extension1 = extension1;
                imageData.extension2 = extension2;
                imageData.extension3 = extension3;
                imageData.fimgextension = extensionfeat;*/
                /*imageData.prevImg1 = prodId + ".prev1";
                imageData.prevImg2 = prodId + ".prev2";
                imageData.prevImg3 = prodId + ".prev3";
                imageData.featureImg = prodId + ".feature";*/
                db.image_table.Add(imageData);
                db.SaveChanges();

                //assemble filename

                string filename = prodId + extension;

                //save image file
                imageView.Save(Server.MapPath("~/prodImg/" + filename));
                //notify
                image_uploadLit.Text = "<p>File successfully uploaded as " + filename + " in the prodImg folder</p>";
            }
        }

        protected void uploadview_btn_Click(object sender, EventArgs e)
        {
            string prodId = Request.QueryString["Id"];
            //get image extension
            string extension = (System.IO.Path.GetExtension(imageview.FileName).ToLower());
            
            //validate extension
            if (extension == ".jpg" || extension == ".jpeg" || extension == ".png" || extension == ".gif")
            {
                //determine image dimensions
                Image imageView = Image.FromStream(imageview.PostedFile.InputStream);
                int width = imageView.Width;
                int height = imageView.Height;
                //save the image data
                co5027Entities db = new co5027Entities();
                image_table imageData = new image_table();
                imageData.width = width;
                imageData.height = height;
                imageData.extension = extension;
                db.image_table.Add(imageData);
                db.SaveChanges();

                //assemble filename

                string filename = prodId + extension;

                //save image file
                imageView.Save(Server.MapPath("~/prodImg/" + filename));
                //notify
                image_uploadLit.Text = "<p>File successfully uploaded as " + filename + " in the prodImg folder</p>";
            }
        }

        protected void upload1_btn_Click(object sender, EventArgs e)
        {
            string prodId = Request.QueryString["Id"];
            //get image extension
            string extension = (System.IO.Path.GetExtension(detail_image1.FileName).ToLower());

            //validate extension
            if (extension == ".jpg" || extension == ".jpeg" || extension == ".png" || extension == ".gif")
            {
                //determine image dimensions
                Image imageView = Image.FromStream(detail_image1.PostedFile.InputStream);
                int width = imageView.Width;
                int height = imageView.Height;
                //save the image data
                co5027Entities db = new co5027Entities();
                image_table imageData = new image_table();
                imageData.width1 = width;
                imageData.height1 = height;
                imageData.extension1 = extension;
                db.image_table.Add(imageData);
                db.SaveChanges();

                //assemble filename

                string filename = prodId + ".detail1" + extension;

                //save image file
                imageView.Save(Server.MapPath("~/prodImg/" + filename));
                //notify
                image_uploadLit.Text = "<p>File successfully uploaded as " + filename + " in the prodImg folder</p>";
            }
        }
    }
}