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
    
    public partial class Ozluk_IseGirisEvrak
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Ozluk_IseGirisEvrak()
        {
            this.Ozluk_IseGirisEvrakUrl = new HashSet<Ozluk_IseGirisEvrakUrl>();
        }
    
        public int id { get; set; }
        public int personelid { get; set; }
        public int evraktip { get; set; }
        public bool mevcut { get; set; }
        public System.DateTime tarih { get; set; }
        public string detay { get; set; }
        public string not { get; set; }
    
        public virtual Personel Personel { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Ozluk_IseGirisEvrakUrl> Ozluk_IseGirisEvrakUrl { get; set; }
        public virtual Ozluk_IseGirisGerekEvrakTip Ozluk_IseGirisGerekEvrakTip { get; set; }
    }
}
