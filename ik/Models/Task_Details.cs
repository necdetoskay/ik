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
    
    public partial class Task_Details
    {
        public int id { get; set; }
        public int taskid { get; set; }
        public int personelid { get; set; }
        public Nullable<System.DateTime> tarih { get; set; }
        public string not { get; set; }
    
        public virtual Personel Personel { get; set; }
        public virtual Task Task { get; set; }
    }
}
