using FP_DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FP_MobileApp.Handlers
{
    /// <summary>
    /// Summary description for ApprovalRequest
    /// </summary>
    public class ApprovalRequest : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            var Request = context.Request;
            var Response = context.Response;
            if (Request["id"] != null)
            {
                int isId = Request.Form.AllKeys.Where(k => k.Contains("Rid")).ToList().Count;
                Response.Write(getRequestsList(Request["userID"], isId > 0 ? int.Parse(Request["Rid"]) : (int?)null));
                Response.Flush();
                Response.End();
            }
        }
        private string getRequestsList(string userID, Nullable<int> id = null)
        {
            try
            {
                using (footprintEntities context = new footprintEntities())
                {
                    var list = (from a in context.app_user join b in context.asgnmts on a.app_user_id equals b.app_user_id join c in context.tickets on b.item_id equals c.id where a.user_login == userID select new { c.ticket_number, c.title,c.id });
                    return Newtonsoft.Json.JsonConvert.SerializeObject(list);
                }
            }
            catch (Exception ex)
            {

                throw;
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