//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace FP_DAL
{
    using System;
    using System.Collections.Generic;
    
    public partial class app_user
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public app_user()
        {
            this.asgnmts = new HashSet<asgnmt>();
        }
    
        public long app_user_id { get; set; }
        public string user_name { get; set; }
        public string pwd { get; set; }
        public Nullable<int> cust_login_type_id { get; set; }
        public Nullable<long> lic_type_id { get; set; }
        public string user_login { get; set; }
        public string email_addr { get; set; }
        public Nullable<System.DateTime> delete_date { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<asgnmt> asgnmts { get; set; }
    }
}
