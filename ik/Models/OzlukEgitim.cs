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
    
    public partial class OzlukEgitim
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public OzlukEgitim()
        {
            this.OzlukEgitimDetays = new HashSet<OzlukEgitimDetay>();
        }
    
        public int id { get; set; }
        public string egitimKonu { get; set; }
        public string egitimVeren { get; set; }
        public int egitimSuresi { get; set; }
        public System.DateTime tarih { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<OzlukEgitimDetay> OzlukEgitimDetays { get; set; }
    }
}
