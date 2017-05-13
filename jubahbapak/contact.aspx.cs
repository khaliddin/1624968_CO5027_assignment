using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Text.RegularExpressions;
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
            //all fields are empty
            if (string.IsNullOrWhiteSpace(ctctxtname.Text) &&
                string.IsNullOrWhiteSpace(ctctxtemail.Text) &&
                string.IsNullOrWhiteSpace(ctctxtsubject.Text) &&
                string.IsNullOrWhiteSpace(ctctxtmessage.Text))
            {
                nametxterrorlit.Text = "Please fill in name";
                emailtxterrorlit.Text = "Please enter your email here";
                sbjtxterrorlit.Text = "Give a subject for your message";
                msgtxterrorlit.Text = "Type what you want to tell us here.";
            }
            //name and email fields are empty
            else if (string.IsNullOrWhiteSpace(ctctxtname.Text) &&
                string.IsNullOrWhiteSpace(ctctxtemail.Text) &&
                (!string.IsNullOrWhiteSpace(ctctxtsubject.Text)) &&
                (!string.IsNullOrWhiteSpace(ctctxtmessage.Text)))
            {
                nametxterrorlit.Text = "Please fill in name";
                emailtxterrorlit.Text = "Please enter your email here";
                sbjtxterrorlit.Text = "";
                msgtxterrorlit.Text = "";
            }
            //name and subject fields are empty
            else if (string.IsNullOrWhiteSpace(ctctxtname.Text) &&
                (!string.IsNullOrWhiteSpace(ctctxtemail.Text)) &&
                string.IsNullOrWhiteSpace(ctctxtsubject.Text) &&
                (!string.IsNullOrWhiteSpace(ctctxtmessage.Text)))
            {
                nametxterrorlit.Text = "Please fill in name";
                emailtxterrorlit.Text = "";
                sbjtxterrorlit.Text = "Give a subject for your message";
                msgtxterrorlit.Text = "";
            }
            //name and message fields are empty
            else if (string.IsNullOrWhiteSpace(ctctxtname.Text) &&
                (!string.IsNullOrWhiteSpace(ctctxtemail.Text)) &&
                (!string.IsNullOrWhiteSpace(ctctxtsubject.Text)) &&
                string.IsNullOrWhiteSpace(ctctxtmessage.Text))
            {
                nametxterrorlit.Text = "Please fill in name";
                emailtxterrorlit.Text = "";
                sbjtxterrorlit.Text = "";
                msgtxterrorlit.Text = "Type what you want to tell us here.";
            }
            //name, email and subject fields are empty
            else if (string.IsNullOrWhiteSpace(ctctxtname.Text) &&
                string.IsNullOrWhiteSpace(ctctxtemail.Text) &&
                string.IsNullOrWhiteSpace(ctctxtsubject.Text) &&
                (!string.IsNullOrWhiteSpace(ctctxtmessage.Text)))
            {
                nametxterrorlit.Text = "Please fill in name";
                emailtxterrorlit.Text = "Please enter your email here";
                sbjtxterrorlit.Text = "Give your message a subject";
                msgtxterrorlit.Text = "";
            }
            //name, email and message fields are empty
            else if (string.IsNullOrWhiteSpace(ctctxtname.Text) &&
                string.IsNullOrWhiteSpace(ctctxtemail.Text) &&
                (!string.IsNullOrWhiteSpace(ctctxtsubject.Text)) &&
                string.IsNullOrWhiteSpace(ctctxtmessage.Text))
            {
                nametxterrorlit.Text = "Please fill in name";
                emailtxterrorlit.Text = "Please enter your email here";
                sbjtxterrorlit.Text = "";
                msgtxterrorlit.Text = "Type what you want to tell us here.";
            }
            //name, subject and message are empty
            else if (string.IsNullOrWhiteSpace(ctctxtname.Text) &&
                (!string.IsNullOrWhiteSpace(ctctxtemail.Text)) &&
                string.IsNullOrWhiteSpace(ctctxtsubject.Text) &&
                string.IsNullOrWhiteSpace(ctctxtmessage.Text))
            {
                nametxterrorlit.Text = "Please fill in name";
                emailtxterrorlit.Text = "";
                sbjtxterrorlit.Text = "Give your message a subject";
                msgtxterrorlit.Text = "Type what you want to tell us here.";
            }
            //email, subject and message are empty
            else if ((!string.IsNullOrWhiteSpace(ctctxtname.Text)) &&
                string.IsNullOrWhiteSpace(ctctxtemail.Text) &&
                string.IsNullOrWhiteSpace(ctctxtsubject.Text) &&
                (string.IsNullOrWhiteSpace(ctctxtmessage.Text)))
            {
                nametxterrorlit.Text = "";
                emailtxterrorlit.Text = "Please enter your email here";
                sbjtxterrorlit.Text = "Give your message a subject";
                msgtxterrorlit.Text = "Type what you want to tell us here.";
            }
            //email and subject are empty
            else if ((!string.IsNullOrWhiteSpace(ctctxtname.Text)) &&
                string.IsNullOrWhiteSpace(ctctxtemail.Text) &&
                string.IsNullOrWhiteSpace(ctctxtsubject.Text) &&
                (!string.IsNullOrWhiteSpace(ctctxtmessage.Text)))
            {
                nametxterrorlit.Text = "";
                emailtxterrorlit.Text = "Please enter your email here";
                sbjtxterrorlit.Text = "Give your message a subject";
                msgtxterrorlit.Text = "";
            }
            //email and message are empty
            else if ((!string.IsNullOrWhiteSpace(ctctxtname.Text)) &&
                string.IsNullOrWhiteSpace(ctctxtemail.Text) &&
                (!string.IsNullOrWhiteSpace(ctctxtsubject.Text)) &&
                string.IsNullOrWhiteSpace(ctctxtmessage.Text))
            {
                nametxterrorlit.Text = "";
                emailtxterrorlit.Text = "Please enter your email here";
                sbjtxterrorlit.Text = "";
                msgtxterrorlit.Text = "Type what you want to tell us here.";
            }
            //subject and message are empty
            else if ((!string.IsNullOrWhiteSpace(ctctxtname.Text)) &&
                (!string.IsNullOrWhiteSpace(ctctxtemail.Text)) &&
                string.IsNullOrWhiteSpace(ctctxtsubject.Text) &&
                string.IsNullOrWhiteSpace(ctctxtmessage.Text))
            {
                nametxterrorlit.Text = "";
                emailtxterrorlit.Text = "";
                sbjtxterrorlit.Text = "Give your message a subject";
                msgtxterrorlit.Text = "Type what you want to tell us here.";
            }
            //name field is empty
            else if (string.IsNullOrWhiteSpace(ctctxtname.Text) &&
                (!string.IsNullOrWhiteSpace(ctctxtemail.Text)) &&
                (!string.IsNullOrWhiteSpace(ctctxtsubject.Text)) &&
                (!string.IsNullOrWhiteSpace(ctctxtmessage.Text)))
            {
                nametxterrorlit.Text = "Please fill in name";
                emailtxterrorlit.Text = "";
                sbjtxterrorlit.Text = "";
                msgtxterrorlit.Text = "";
            }
            //email field is empty
            else if ((!string.IsNullOrWhiteSpace(ctctxtname.Text)) &&
                 string.IsNullOrWhiteSpace(ctctxtemail.Text) &&
                 (!string.IsNullOrWhiteSpace(ctctxtsubject.Text)) &&
                 (!string.IsNullOrWhiteSpace(ctctxtmessage.Text)))
            {
                nametxterrorlit.Text = "";
                emailtxterrorlit.Text = "Enter your email here.";
                sbjtxterrorlit.Text = "";
                msgtxterrorlit.Text = "";
            }

            //test email
            else if ((!string.IsNullOrWhiteSpace(ctctxtname.Text)) &&
                 (!string.IsNullOrWhiteSpace(ctctxtsubject.Text)) &&
                 (!string.IsNullOrWhiteSpace(ctctxtmessage.Text)) &&
                 (!string.IsNullOrWhiteSpace(ctctxtemail.Text)) &&
                 (!Regex.IsMatch(ctctxtemail.Text,
                @"^(?("")("".+?(?<!\\)""@)|(([0-9a-z]((\.(?!\.))|[-!#\$%&'\*\+/=\?\^`\{\}\|~\w])*)(?<=[0-9a-z])@))" +
                @"(?(\[)(\[(\d{1,3}\.){3}\d{1,3}\])|(([0-9a-z][-\w]*[0-9a-z]*\.)+[a-z0-9][\-a-z0-9]{0,22}[a-z0-9]))$",
                RegexOptions.IgnoreCase, TimeSpan.FromMilliseconds(250))))
            {
                nametxterrorlit.Text = "";
                emailtxterrorlit.Text = "Invalid email format";
                sbjtxterrorlit.Text = "";
                msgtxterrorlit.Text = "";
            }
            //subject field is empty
            else if ((!string.IsNullOrWhiteSpace(ctctxtname.Text)) &&
                (!string.IsNullOrWhiteSpace(ctctxtemail.Text) &&
                string.IsNullOrWhiteSpace(ctctxtsubject.Text)) &&
                (!string.IsNullOrWhiteSpace(ctctxtmessage.Text)))
            {
                nametxterrorlit.Text = "";
                emailtxterrorlit.Text = "";
                sbjtxterrorlit.Text = "Give a subject for your message";
                msgtxterrorlit.Text = "";
            }
            //message field is empty
            else if ((!string.IsNullOrWhiteSpace(ctctxtname.Text)) &&
                  (!string.IsNullOrWhiteSpace(ctctxtemail.Text) &&
                  (!string.IsNullOrWhiteSpace(ctctxtsubject.Text))) &&
                  string.IsNullOrWhiteSpace(ctctxtmessage.Text))
            {
                nametxterrorlit.Text = "";
                emailtxterrorlit.Text = "";
                sbjtxterrorlit.Text = "";
                msgtxterrorlit.Text = "Enter your message here.";
            }
            //all fields are filled in correctly
            else
            {
                nametxterrorlit.Text = "";
                emailtxterrorlit.Text = "";
                sbjtxterrorlit.Text = "";
                msgtxterrorlit.Text = "";


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
                msg.To.Add(new MailAddress(ctctxtemail.Text));

                msg.Subject = ctctxtsubject.Text;
                msg.IsBodyHtml = true;
                msg.Body = string.Format("From: " + ctctxtname.Text + ",   Email: " + ctctxtemail.Text + ",   Message: " + ctctxtmessage.Text + ", Combobox: " + dpl.SelectedItem.Value);

                try
                {
                    client.Send(msg);
                    ctcliteral.Text = "Your message has been successfully sent.";
                }
                catch (Exception ex)
                {
                    ctcliteral.Text = "Error occured while sending your message." + ex.Message;
                }
                ctctxtname.Text = "";
                ctctxtemail.Text = "";
                ctctxtsubject.Text = "";
                ctctxtmessage.Text = "";

            }
            
        




            // SmtpClient smtpClient = new SmtpClient();
            // System.Net.NetworkCredential cred = new System.Net.NetworkCredential("username", "password");
            //  MailMessage userMessage = new MailMessage();
            // userMessage.From = new MailAddress(ctctxtemail.Text);
            //   userMessage.To.Add(new MailAddress("khaliddin.26@gmail.com"));
        }
    }
}