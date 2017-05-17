using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Data.Entity;
using PayPal.Api;

namespace jubahbapak
{
    public partial class WebForm2 : System.Web.UI.Page

    {
        SqlConnection con = new SqlConnection(@"Data Source=SQL2016.FSE.Network;Initial Catalog=db_1624968_co5027_asg;User ID=user_db_1624968_co5027_asg;Password=Co5027-asg;MultipleActiveResultSets=True;Application Name=EntityFramework");
        int pqty;
        string pname, pdesc, pprice, prodquant;

        int id, pquant;
        string prodName, prodDet, prodPrice;
        protected void Page_Load(object sender, EventArgs e)
        {
            string getid = Request.QueryString["id"];
            int getidint = int.Parse(getid);
            id = getidint;

            //get product detail data from the database
            co5027Entities db = new co5027Entities();
            var proddetsID = db.prod_table.Single(p => p.id == getidint);
            prodName = proddetsID.prod_name;
            prodDet = proddetsID.prod_details;
            prodPrice = proddetsID.prod_price;
            //string strprodprice = Convert.ToString(prodPrice);
            var prodQty = proddetsID.prod_quantity;
            pquant = Convert.ToInt32(prodQty);
            string stockAvailable;
            if (prodQty > 0)
            {
                stockAvailable = "In stock";
            }
            else
            {
                stockAvailable = "Out of stock";
            }
            //put product data retrieved into the webpage
            prodnametxt.Text = prodName;
            proddesctxt.Text = prodDet;
            prodpricetxt.Text = prodPrice;
            quantity.Text = stockAvailable;

            //first image
            //get data from database
            var bigimg = db.image_table.Single(p => p.imgName == getid);
            string imgexten = bigimg.extension;
            string filename = getid + imgexten;
            string alternateText1 = bigimg.altText;
            //put data retrieved to Image/web page
            detailImage.ImageUrl = "prodImg/" + filename;
            detailImage.AlternateText = alternateText1;
            HyperLink1.NavigateUrl = "prodImg/" + filename;

            //second image
            //get data from database
            var previmg1 = db.prevImage1_table.Single(p => p.prevImg3Name == getid);
            string previmg1exten = previmg1.extension1;
            string previmg1filename = getid + ".prev1" + previmg1exten;
            string alternateTxt2nd = previmg1.altText1;
            //put data retrieved to Image/web page
            Image1.ImageUrl = "prodImg/" + previmg1filename;
            Image1.AlternateText = alternateTxt2nd;
            HyperLink2.NavigateUrl = "prodImg/" + previmg1filename;

            //third image
            //get data from database
            var previmg2 = db.prevImage2_table.Single(p => p.prevImg2Name == getid);
            string previmg2exten = previmg2.extension;
            string previmg2filename = getid + ".prev2" + previmg2exten;
            string alternateTxt3rd = previmg2.altText2;
            //put data retrieved to Image/web page
            Image2.ImageUrl = "prodImg/" + previmg2filename;
            Image2.AlternateText = alternateTxt3rd;
            HyperLink3.NavigateUrl = "prodImg/" + previmg2filename;

        }

        protected void addcart_Click(object sender, EventArgs e)
        {
            co5027Entities itemDB = new co5027Entities();
            prod_table pd = new prod_table();
            //available quantity
            var itemQty = pd.prod_quantity;
            int intItemQty = Convert.ToInt32(itemQty);
            //packing cost

            decimal packingcost = 1.0m;
            //item price
            decimal itemprice = int.Parse(prodpricetxt.Text);
            //number of item bought
            int quantityofitem = 1;
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
            redirection.cancel_url = "http://1624968.studentwebserver.co.uk/CO5027/Product.aspx";
            redirection.return_url = "http://1624968.studentwebserver.co.uk/CO5027/purchased.aspx";

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
                if (link.rel.ToLower().Trim().Equals("approval_url"))
                {
                    //send user to the appropritate link if link is found
                    Response.Redirect(link.href);
                }
            }
         
        }
    }
}