using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;


namespace jubahbapak
{
    public partial class login : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void register_Click(object sender, EventArgs e)
        {
            //create dbcontext that specified the connection string
            var identityDbContext = new IdentityDbContext("studentserverSQL");

            //create user store and user manager
            var userstore = new UserStore<IdentityUser>(identityDbContext);
            var manager = new UserManager<IdentityUser>(userstore);
            //create role store and role manager
            var roleStore = new RoleStore<IdentityRole>(identityDbContext);
            var roleManager = new RoleManager<IdentityRole>(roleStore);
            //create user
            var user = new IdentityUser() { UserName = regusernametxt.Text, Email = regemailtxt.Text };
            IdentityResult result = manager.Create (user, regpasswordtxt.Text);
            if (result.Succeeded)
            {
                littext1.Text = "registration successful, welcome " + regusernametxt.Text;
            }
            else
            {
                littext1.Text = "Error occured, registration failed: " + result.Errors.FirstOrDefault();
            }
            //create role
            IdentityRole userRole = new IdentityRole("user");
            roleManager.Create(userRole);
            manager.AddToRole(user.Id, "user");
            manager.Update(user);

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var identityDbContext = new IdentityDbContext("studentserverSQL");
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var userManager = new UserManager<IdentityUser>(userStore);
            var user = userManager.Find(loginusernametxt.Text, loginpasswordtxt.Text);
            if (user != null)
            {
                LogUserIn(userManager, user);
            }
            else
            {
                loginliteral.Text = "Invalid login credentials, please makesure the correct username and password is entered.";
            };
        }
       

        private void LogUserIn(UserManager<IdentityUser> usermanager, IdentityUser user)
        {
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            var userIdentity = usermanager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);
            authenticationManager.SignIn(new Microsoft.Owin.Security.AuthenticationProperties() { }, userIdentity);
            //user is automaticatlly redirected if trying to access another page
        }
    }
}