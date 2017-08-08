using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using FP_Integration.FP_ExtrenalService;
namespace FP_Integration
{
    public partial class ServiceParameter
    {
        public string[] _assignees { get; set; }
        public Nullable<long> _contactDefinitionId { get; set; }
        public Nullable<bool> _contactDefinitionIdSpecified { get; set; }
        public Nullable<long> _quickTemplateId { get; set; }
        public Nullable<bool> _quickTemplateIdSpecified { get; set; }
        public string _selectContact { get; set; }
        public string _submitter { get; set; }
        public Nullable<long> _ticketDefinitionId { get; set; }
        public itemField[] _ticketFields { get; set; }
        public Nullable<long> _ticketId { get; set; }
        
    }
}
