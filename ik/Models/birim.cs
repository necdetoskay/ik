//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ik.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class birim
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public birim()
        {
            this.Personels = new HashSet<Personel>();
        }
    
        public int id { get; set; }
        public string birimad { get; set; }
        public string fullad { get; set; }
        public Nullable<int> sira { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Personel> Personels { get; set; }
    }
}
