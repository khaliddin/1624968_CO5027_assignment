using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace jubahbapak
{
    public partial class contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ctcsendbtn_Click(object sender, EventArgs e)
        {
            SmtpClient client = new SmtpClient();
            client.DeliveryMethod = SmtpDeliveryMethod.Network;
            client.EnableSsl = true;
            client.Host = "smtp.gmail.com";
            client.Port = 587;

            // Smtp authentication
            System.Net.NetworkCredential userpass = new System.Net.NetworkCredential("traderalid@gmail.com", "123456_654321");
            client.UseDefaultCredentials = false;
            client.Credentials = userpass;

            MailMessage msg = new MailMessage();
            msg.From = new MailAddress(ctctxtemail.Text);
            msg.To.Add(new MailAddress("khaliddin.26@gmail.com"));

            msg.Subject = ctctxtsubject.Text;
            msg.IsBodyHtml = true;
            msg.Body = string.Format("From: " + ctctxtname.Text + ",   Email: " + ctctxtemail.Text +",   Message: "+ ctctxtmessage.Text);

            try
            {
                client.Send(msg);
                ctcliteral.Text = "Your message has been successfully sent.";
            }
            catch (Exception ex)
            {
                ctcliteral.Text = "Error occured while sending your message." + ex.Message;
            }




            // SmtpClient smtpClient = new SmtpClient();
            // System.Net.NetworkCredential cred = new System.Net.NetworkCredential("username", "password");
            //  MailMessage userMessage = new MailMessage();
            // userMessage.From = new MailAddress(ctctxtemail.Text);
            //   userMessage.To.Add(new MailAddress("khaliddin.26@gmail.com"));
        }
    }
}