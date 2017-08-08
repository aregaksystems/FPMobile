using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FP_Integration
{
    interface IServiceIntegrator
    {
        long CreateTicket(ServiceParameter _serviceParm);
       long EditTicket(ServiceParameter _serviceParm);
    }
}
