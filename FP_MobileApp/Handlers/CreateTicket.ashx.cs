using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using FP_Integration.FP_ExtrenalService;
using FP_Integration;
using FP_MobileApp.Models;
using System.Threading.Tasks;
using Newtonsoft;
using Newtonsoft.Json.Linq;
using System.IO;

namespace FP_MobileApp.Handlers
{
    /// <summary>
    /// Summary description for CreateTicket
    /// </summary>
    public class CreateTicket : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            var Respons = context.Response;
            var Request = context.Request;
            if (context.Request["id"] != null)
            {
                string jsonArray = File.ReadAllText(context.Server.MapPath("../JSON/controlRander.json"));
                JArray obj = JArray.Parse(jsonArray);
                ServiceParameter param = new ServiceParameter();
                param._contactDefinitionId = 702;
                //param._selectContact = context.User.Identity.Name;
                param._submitter= context.User.Identity.Name;
                param._ticketDefinitionId = 646;
                List<itemField> listItemFields = new List<itemField>();
                listItemFields.Add(new itemField() { fieldName = "Short Description", fieldValue = new[] { Request["ShortDescription"] } });
                listItemFields.Add(new itemField() { fieldName = "Status", fieldValue = new[] { "New Request-طلب جديد" } });
                listItemFields.Add(new itemField() { fieldName = "Priority", fieldValue = new[] { "Medium-متوسطة" } });
                listItemFields.Add(new itemField() { fieldName = "Request Type", fieldValue = new[] { Request["requestType"] } });
                listItemFields.Add(new itemField() { fieldName = "Main Category", fieldValue = new[] { Request["mainCategory"] } });
                listItemFields.Add(new itemField() { fieldName = "Sub Category", fieldValue = new[] { Request["subCategory"] } });
                listItemFields.Add(new itemField() { fieldName = "Description", fieldValue = new[] { Request["Description"] } });
                listItemFields.Add(new itemField() { fieldName = "User ID", fieldValue = new[] { context.User.Identity.Name } });
                foreach (JObject item in obj)
                {
                  var templist=  Request.Form.AllKeys.Where(k => k.Contains(item["ControlID"].ToString()));
                    if (templist.Count()>0)
                    {
                        string ctrID = item["ControlID"].ToString();
                        listItemFields.Add(new itemField() {fieldName=item["FPName"].ToString(),fieldValue=new[] { Request[ctrID]==""?null: Request[ctrID] } });
                    }
                     
                }

                param._ticketFields=listItemFields.ToArray();
                long value = createTicket(param);
                Respons.Write(value);
                Respons.Flush();
                Respons.End();

            }
        }

        private long createTicket(ServiceParameter param)
        {
            long returenedRsult = 0;
            try
            {
                ServiceIntegrator client = new ServiceIntegrator();
                return client.CreateTicket(param);
            }
            catch (Exception ex)
            {

                throw;
            }
            return returenedRsult;
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