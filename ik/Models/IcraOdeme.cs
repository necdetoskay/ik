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
    
    public partial class IcraOdeme
    {
        public int id { get; set; }
        public int icraid { get; set; }
        public System.DateTime tarih { get; set; }
        public decimal tutar { get; set; }
        public string aciklama { get; set; }
        public string dosya { get; set; }
        public string thumb { get; set; }
    
        public virtual Icralar Icralar { get; set; }
    }
}
