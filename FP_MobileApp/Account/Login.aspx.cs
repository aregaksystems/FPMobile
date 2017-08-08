using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FP_MobileApp.UserTrans;
using Microsoft.AspNet.Identity.Owin;

namespace FP_MobileApp.Account
{
    public partial class Login1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
                var signinManager = Context.GetOwinContext().GetUserManager<ApplicationSignInManager>();
                var result = signinManager.PasswordSignInAsync(username.Text, pwd.Text, true, false).Result;
                switch (result)
                {
                    case SignInStatus.Success:
                        Response.Redirect("../MyRequests.aspx");
                        break;
                    
                    case SignInStatus.Failure:
                    default:
                        alert.Visible = true;
                        break;
                }
            }
        }
    }
}