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
    
    public partial class Icralar
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Icralar()
        {
            this.IcraOdemes = new HashSet<IcraOdeme>();
        }
    
        public int id { get; set; }
        public string dosyano { get; set; }
        public System.DateTime tebligtarih { get; set; }
        public string alacaklı { get; set; }
        public string icradaire { get; set; }
        public decimal tutar { get; set; }
        public int personelid { get; set; }
        public string IBAN { get; set; }
        public Nullable<bool> tamamlanma { get; set; }
        public string not { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<IcraOdeme> IcraOdemes { get; set; }
        public virtual Personel Personel { get; set; }
    }
}
