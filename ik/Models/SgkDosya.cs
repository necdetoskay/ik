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
    
    public partial class SgkDosya
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public SgkDosya()
        {
            this.PersonelDetays = new HashSet<PersonelDetay>();
        }
    
        public int id { get; set; }
        public string SgkNo { get; set; }
        public string Ad { get; set; }
        public string TC { get; set; }
        public string SistemSifre { get; set; }
        public string IsyeriSifre { get; set; }
        public int SiraNo { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PersonelDetay> PersonelDetays { get; set; }
    }
}
