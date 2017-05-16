using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PayPal.Api;

namespace jubahbapak
{
    public partial class purchased : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cfmPurchase_Click(object sender, EventArgs e)
        {
            var config = ConfigManager.Instance.GetProperties();
            var accessToken = new OAuthTokenCredential("ARi2nXIMDuEfS496R3CUPsoI33sOHFRPxd67pIy09844v6vAQNphaQGjEl1sLf264ZnWKtXban8ypwQk", "EINK0glsrrSG01NVDblVWeQfxQ5mFTGQFYZx9lkZIzHGu0OcmgjlFnnO1iTKMvm3mvUsFSfByQOTwG1A").GetAccessToken();

            //Get APIcontext 
            var apiContext = new APIContext(accessToken);
            apiContext.Config = config;

            //retrieve payment ID

            var paymentId = Session["paymentId"].ToString();

            if (!String.IsNullOrEmpty(paymentId))
            {
                //create payment object using payment ID from the session
                var payment = new Payment()
                {
                    id = paymentId
                };


                //retrieve payer ID from query string
                var payerId = Request.QueryString["PayerID"].ToString();
                var paymentExecute = new PaymentExecution() { payer_id = payerId };

                //payment execution
                var executedPayment = payment.Execute(apiContext, paymentExecute);

                //notify buyer
                purchaseLit.Text = "Your order is complete";
                cfmPurchase.Visible = false;
                sure.Visible = false;

            }
        }
    }
}