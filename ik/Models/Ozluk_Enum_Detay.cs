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
    
    public partial class Ozluk_Enum_Detay
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Ozluk_Enum_Detay()
        {
            this.Ozluk_AileFertleri = new HashSet<Ozluk_AileFertleri>();
        }
    
        public int id { get; set; }
        public int enumid { get; set; }
        public string degerad { get; set; }
    
        public virtual Ozluk_Enum Ozluk_Enum { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Ozluk_AileFertleri> Ozluk_AileFertleri { get; set; }
    }
}
