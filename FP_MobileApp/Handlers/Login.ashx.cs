using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.AspNet.Identity;
using FP_MobileApp.UserTrans;
namespace FP_MobileApp.Handlers
{
    /// <summary>
    /// Summary description for Login
    /// </summary>
    public class Login : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            var Request = context.Request;
            var Response = context.Response;

            if (Request["id"] != null)
            {
                _Athuontication auth = new _Athuontication();
                string value = auth.login(Request["username"], Request["pwd"], context).Result;
                if (value== "success")
                {
                    Response.Clear();
                    Response.Write(true);
                    Response.Flush();
                    Response.End();

                }
                
               
                
               
            }
        }
        
        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}