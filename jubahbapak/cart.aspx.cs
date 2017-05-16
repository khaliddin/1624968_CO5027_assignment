using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PayPal.Api;

namespace jubahbapak
{
    public partial class cart : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            string cookie;
            cookie = Convert.ToString(Request.Cookies["aa"].Value);
            string[] arr = cookie.Split('.');
            for(int i = 0;i < arr.Length; i++)
            {
                Response.Write(arr[i].ToString());
                Response.Write("<br>");
            }
        }

        protected void purchasebutton_Click(object sender, EventArgs e)
        {
            co5027Entities itemDB = new co5027Entities();
            prod_table pd = new prod_table();
            //available quantity
            var itemQty = pd.prod_quantity;
            int intItemQty = Convert.ToInt32(itemQty);
            //packing cost

            decimal packingcost = 1.0m;
            //item price
            decimal itemprice = 10.0m;
            //number of item bought
            int quantityofitem = int.Parse(ddlquantity.SelectedValue);
            //total of items without shipping
            decimal subtotal = (quantityofitem * itemprice);
            //cost of aftershipping
            decimal total = subtotal + packingcost;

            //authenticate paypal
            var config = ConfigManager.Instance.GetProperties();
            var accessToken = new OAuthTokenCredential("ARi2nXIMDuEfS496R3CUPsoI33sOHFRPxd67pIy09844v6vAQNphaQGjEl1sLf264ZnWKtXban8ypwQk", "EINK0glsrrSG01NVDblVWeQfxQ5mFTGQFYZx9lkZIzHGu0OcmgjlFnnO1iTKMvm3mvUsFSfByQOTwG1A").GetAccessToken();

            //Get APIcontext 
            var apiContext = new APIContext(accessToken);
            apiContext.Config = config;

            //items transaction and payment objects
            var jubahItem = new Item();
            jubahItem.name = "jubah satu";
            jubahItem.currency = "GBP";
            jubahItem.price = itemprice.ToString();
            jubahItem.sku = "PEPCO5027";
            jubahItem.quantity = quantityofitem.ToString();

            //subtotal
            var transactionDets = new Details();
            transactionDets.tax = "0";
            transactionDets.shipping = packingcost.ToString();
            transactionDets.subtotal = subtotal.ToString();

            //amount object compromising total amount
            var transactionAmount = new Amount();
            transactionAmount.currency = "GBP";
            transactionAmount.total = total.ToString("0.00");
            transactionAmount.details = transactionDets;

            //transaction object
            var transobj = new Transaction();
            transobj.description = "your items";
            transobj.invoice_number = Guid.NewGuid().ToString();
            transobj.amount = transactionAmount;
            transobj.item_list = new ItemList
            {
                items = new List<Item> { jubahItem }
            };

            //buyer object
            var buyer = new Payer();
            buyer.payment_method = "paypal";

            //redirect to avoid error 404
            var redirection = new RedirectUrls();
            redirection.cancel_url = "http://localhost:61238/cart.aspx";
            redirection.return_url = "http://localhost:61238/purchased.aspx";

            //payment object
            var pay = Payment.Create(apiContext, new Payment
            {
                intent = "sale",
                payer = buyer,
                transactions = new List<Transaction> { transobj },
                redirect_urls = redirection
            }
                );

            //create session
            Session["paymentId"] = pay.id;

            //URL to send user to from the links in the payment object
            foreach (var link in pay.links)
            {
                if(link.rel.ToLower().Trim().Equals("approval_url"))
                {
                    //send user to the appropritate link if link is found
                    Response.Redirect(link.href);
                }
            }
       
            


        }
    }
}