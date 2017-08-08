using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using FP_Integration.FP_ExtrenalService;
namespace FP_Integration
{
    public partial class ServiceIntegrator: IServiceIntegrator
    {
        #region CreateTicket
        public  long CreateTicket(ServiceParameter _serviceParm)
        {
            try
            {
                ExternalApiServiceClient client = new ExternalApiServiceClient("ExternalApiServicePort", "http://fds:8080/footprints/servicedesk/externalapisoap/ExternalApiServicePort");

                client.ClientCredentials.UserName.UserName = System.Configuration.ConfigurationManager.AppSettings["FPUser"].ToString();
                client.ClientCredentials.UserName.Password =  System.Configuration.ConfigurationManager.AppSettings["FPPWD"].ToString();
                System.Reflection.PropertyInfo[] obj_ServicePropInfo = NullValueSuppressor<ServiceParameter>(_serviceParm);
                CreateTicketRequest request = new CreateTicketRequest();
                Type requestType = request.GetType();
                System.Reflection.PropertyInfo[] requestPropInfo = requestType.GetProperties(System.Reflection.BindingFlags.Public | System.Reflection.BindingFlags.Instance);
                foreach (System.Reflection.PropertyInfo item in requestPropInfo)
                {
                    foreach (System.Reflection.PropertyInfo objNN in obj_ServicePropInfo)
                    {
                        if (item.Name == objNN.Name)
                        {
                            var value = objNN.GetValue(_serviceParm);
                            item.SetValue(request, value);
                        }
                    }

                }
                createTicketResponse1 response = new createTicketResponse1();

                response.@return = client.createTicket(request);

                return response.@return;

            }
            catch (Exception ex)
            {

                throw;
            }

        }
        #endregion
        #region EditTicket
        public long EditTicket(ServiceParameter _serviceParm)
        {
            try
            {
                ExternalApiServiceClient client = new ExternalApiServiceClient("ExternalApiServicePort", "http://fds:8080/footprints/servicedesk/externalapisoap/ExternalApiServicePort");

                client.ClientCredentials.UserName.UserName = "admin"; /*System.Configuration.ConfigurationManager.AppSettings["FPUser"].ToString()*/;
                client.ClientCredentials.UserName.Password = "P@ssw0rd"; //System.Configuration.ConfigurationManager.AppSettings["FPPWD"].ToString();
                System.Reflection.PropertyInfo[] obj_ServicePropInfo = NullValueSuppressor<ServiceParameter>(_serviceParm);
                EditTicketRequest request = new EditTicketRequest();
                Type requestType = request.GetType();
                System.Reflection.PropertyInfo[] requestPropInfo = requestType.GetProperties(System.Reflection.BindingFlags.Public | System.Reflection.BindingFlags.Instance);
                foreach (System.Reflection.PropertyInfo item in requestPropInfo)
                {
                    foreach (System.Reflection.PropertyInfo objNN in obj_ServicePropInfo)
                    {
                        if (item.Name == objNN.Name)
                        {
                            var value = objNN.GetValue(_serviceParm);
                            item.SetValue(request, value);
                        }
                    }

                }
                editTicketResponse response = new editTicketResponse();
                response.@return =  client.editTicket(request);


                return response.@return;

            }
            catch (Exception ex)
            {

                throw;
            }

        }
        #endregion
        #region NullValueSuppressor
        private System.Reflection.PropertyInfo[] NullValueSuppressor<T>(T _serviceParm)
        {
            try
            {
                Type getObjectType = _serviceParm.GetType();
                System.Reflection.PropertyInfo[] propInfo = getObjectType.GetProperties(System.Reflection.BindingFlags.Public | System.Reflection.BindingFlags.Instance);
                System.Reflection.PropertyInfo[] notNullProperties = (from x in propInfo where ((x.GetValue(_serviceParm) is String && !string.IsNullOrWhiteSpace(x.GetValue(_serviceParm).ToString())) || (x.GetValue(_serviceParm) != null)) select x).ToArray();
                return notNullProperties;
            }
            catch (Exception ex)
            {

                throw;
            }
        } 
        #endregion
    }
}
