using FP_Integration.FP_ExtrenalService;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace FP_MobileApp.Models
{
    public partial class FPServiceParam
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
        public string MainCategory { get; set; }
        public string SubCategory { get; set; }
        public string RequestType { get; set; }
        public string ShortDescription { get; set; }
        public string Description { get; set; }
        
        public string Status { get; set; }
        public string Proiorty { get; set; }
        public string UserID { get; set; }
        public string Bank_Name { get; set; }
        public string Beneficiary_Name { get; set; }
        public string Amount { get; set; }
        public string Amount_Required { get; set; }
        [RegularExpression(@"(?<=\s|^)\d+(?=\s|$)")]
        public long Amount_in_numbers { get; set; }
        public string Department { get; set; }
        public string Petty_cash_type { get; set; }
        public string Purpose_of_Petty_cash { get; set; }
        public string Writing_Amount { get; set; }
        public string Activity_Name { get; set; }
        public string Amendment_Required { get; set; }
        public string Amendment_Type { get; set; }
        public string Directory_Name { get; set; }
        public string Proposed_Amendment { get; set; }
        public string Purpose_of_Amendment { get; set; }
        public long Amount_required_SR { get; set; }
        public string Only_SR { get; set; }
        public string Location { get; set; }
        public string Access_Door_Access_Time { get; set; }
    }
}