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
    
    public partial class Rapor
    {
        public int id { get; set; }
        public int raportip { get; set; }
        public System.DateTime baslangic { get; set; }
        public System.DateTime bitis { get; set; }
        public int hastaliktip { get; set; }
        public int personelid { get; set; }
        public string aciklama { get; set; }
    
        public virtual Rapor_HastalikTip Rapor_HastalikTip { get; set; }
        public virtual Rapor_RaporTip Rapor_RaporTip { get; set; }
        public virtual Personel Personel { get; set; }
    }
}