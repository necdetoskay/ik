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
    
    public partial class Ozluk_IseGirisEvrakUrl
    {
        public int id { get; set; }
        public int isegirisevrakid { get; set; }
        public string url { get; set; }
        public string ekbilgi { get; set; }
        public string thumb { get; set; }
    
        public virtual Ozluk_IseGirisEvrak Ozluk_IseGirisEvrak { get; set; }
    }
}
