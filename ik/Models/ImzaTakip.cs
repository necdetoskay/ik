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
    
    public partial class ImzaTakip
    {
        public int id { get; set; }
        public int imzaID { get; set; }
        public int personelID { get; set; }
        public System.DateTime Tarih { get; set; }
        public Nullable<System.DateTime> ImzaTarih { get; set; }
    
        public virtual Imza Imza { get; set; }
        public virtual Personel Personel { get; set; }
    }
}
