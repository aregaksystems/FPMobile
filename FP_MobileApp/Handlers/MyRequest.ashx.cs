using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using FP_DAL;
using Newtonsoft;
namespace FP_MobileApp.Handlers
{
    /// <summary>
    /// Summary description for MyRequest
    /// </summary>
    public class MyRequest : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            var Request = context.Request;
            var Response = context.Response;
            if (Request["id"]!=null)
            {
                int isId = Request.Form.AllKeys.Where(k => k.Contains("Rid")).ToList().Count;
                
                Response.Write(getRequestsList(Request["userID"]!=null? Request["userID"]:null, isId>0?int.Parse(Request["Rid"]):(int?)null));
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
                    List<ticket> list = new List<ticket>();
                    if (id!=null)
                    {
                        if (userID==null)
                        {
                            list = context.tickets.Where(a=> a.id == id).Select(a => a).ToList();
                        }
                        else {
                            list = context.tickets.Where(a => a.user_id == userID && a.id == id).Select(a => a).ToList();
                        }
                        
                    }
                    else { 
                     list = context.tickets.Where(a => a.user_id == userID).Select(a => a).ToList();}
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