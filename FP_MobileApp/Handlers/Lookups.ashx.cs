using ControlPanelDAL;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using Newtonsoft;
using Newtonsoft.Json.Linq;
using System.Web.Security;

namespace FP_MobileApp.Handlers
{
    /// <summary>
    /// Summary description for Lookups
    /// </summary>
    public class Lookups : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            var Respons = context.Response;
            var Request = context.Request;
            if (context.Request["id"] != null)
            {
                switch (context.Request["id"])
                {

                    case "2":
                        Respons.Write(GetLookups(Request["perantID"] != "null" ? int.Parse(Request["perantID"]) : (int?)null, Request["DepandancyID"] != "null" ? int.Parse(Request["DepandancyID"]) : (int?)null));
                        Respons.Flush();
                        Respons.End();
                        break;
                    case "3":
                        Respons.Write(getLookJson(context));
                        Respons.Flush();
                        Respons.End();
                        break;
                    default:
                        break;
                }
            }
        }

        #region GetLookUps
        protected string GetLookups(Nullable<int> PerantID, Nullable<int> DepandancyID)
        {
            try
            {
                List<sp_getLookups_Result> list;
                using (FP_ControlPanelEntities context = new FP_ControlPanelEntities())
                {
                    list = context.sp_getLookups(PerantID, DepandancyID).ToList();
                }
                return Newtonsoft.Json.JsonConvert.SerializeObject(list);
            }
            catch (Exception ex)
            {

                throw;
            }
        }
        private string getLookJson(HttpContext context)
        {
            
            try
            {
                string role = string.Empty;
                string jsonArray = File.ReadAllText(context.Server.MapPath("../JSON/Approval.json"));
                JObject jarray = JObject.Parse(jsonArray);
               
                 if (HttpContext.Current.User.IsInRole("CEO"))
                {
                    role = jarray["CEOApproval"].ToString();
                }
                else if (HttpContext.Current.User.IsInRole("DepartmentManager"))
                {
                    role = jarray["DepartmentManagerApproval"].ToString();
                }
                else if (HttpContext.Current.User.IsInRole("FinancialManager"))
                {
                    role = jarray["FinancialManagerApproval"].ToString();
                }
                else if (HttpContext.Current.User.IsInRole("VP"))
                {
                    role = jarray["VPApproval"].ToString();
                }
                else if (HttpContext.Current.User.IsInRole("HRManager"))
                {
                    role = jarray["HRManagerApproval"].ToString();
                }
               
              
               
                
                return role;

            }
            catch (Exception ex)
            {

                throw;
            }
        }
        #endregion
        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}