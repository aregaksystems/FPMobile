using FP_Integration;
using FP_Integration.FP_ExtrenalService;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;

namespace FP_MobileApp.Handlers
{
    /// <summary>
    /// Summary description for EditTicket
    /// </summary>
    public class EditTicket : IHttpHandler
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
                param._ticketDefinitionId = 646;
                param._ticketId = long.Parse(Request["tid"]);
                List<itemField> listItemFields = new List<itemField>();
                listItemFields.Add(new itemField() { fieldName = "Short Description", fieldValue = new[] { Request["ShortDescription"] } });
    

                listItemFields.Add(new itemField() { fieldName = "Description", fieldValue = new[] { Request["Description"] } });
                //foreach (JObject item in obj)
                //{
                //    var templist = Request.Form.AllKeys.Where(k => k.Contains(item["ControlID"].ToString()));
                //    if (templist.Count() > 0)
                //    {
                //        string ctrID = item["ControlID"].ToString();
                //        listItemFields.Add(new itemField() { fieldName = item["FPName"].ToString(), fieldValue = new[] { Request[ctrID] == "" ? null : Request[ctrID] } });
                //    }

                //}

                param._ticketFields = listItemFields.ToArray();
                long value = editTicket(param);
                Respons.Write(value);
                Respons.Flush();
                Respons.End();

            }
        }
        private long editTicket(ServiceParameter param)
        {
            long returenedRsult = 0;
            try
            {
                ServiceIntegrator client = new ServiceIntegrator();
                return client.EditTicket(param);
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