//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ik.Areas.KVKK.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class KVKK_HukukiDayanak
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public KVKK_HukukiDayanak()
        {
            this.KVKK_Sablon = new HashSet<KVKK_Sablon>();
        }
    
        public int id { get; set; }
        public string hukukidayanak { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<KVKK_Sablon> KVKK_Sablon { get; set; }
    }
}
