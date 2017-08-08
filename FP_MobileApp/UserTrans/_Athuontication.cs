using Microsoft.AspNet.Identity.Owin;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;

namespace FP_MobileApp.UserTrans
{
    public partial class _Athuontication
    {
        public async Task<string> login(string username, string pwd, HttpContext context)
        {
            string returnUrl = string.Empty;
            try
            {
                var manager = context.GetOwinContext().GetUserManager<ApplicationUserManager>();
                var signinManager = context.GetOwinContext().GetUserManager<ApplicationSignInManager>();
                var result = signinManager.PasswordSignInAsync(username, pwd, true, false).Result;
                switch (result)
                {
                    case SignInStatus.Success:
                        returnUrl = "success";
                        break;
                    case SignInStatus.LockedOut:
                        returnUrl = "locked";
                        break;
                    case SignInStatus.RequiresVerification:
                        returnUrl = "verification";
                        break;
                    case SignInStatus.Failure:
                    default:
                        returnUrl = "fail";
                        break;
                }
            }
            catch (Exception ex)
            {

                throw;
            }
            return returnUrl;
        }
    }
}