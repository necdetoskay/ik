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
    
    public partial class Ozluk_IseGirisGerekEvrakTip
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Ozluk_IseGirisGerekEvrakTip()
        {
            this.Ozluk_IseGirisEvrak = new HashSet<Ozluk_IseGirisEvrak>();
        }
    
        public int id { get; set; }
        public string ad { get; set; }
        public int adet { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Ozluk_IseGirisEvrak> Ozluk_IseGirisEvrak { get; set; }
    }
}