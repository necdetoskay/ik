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
    
    public partial class Personel
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Personel()
        {
            this.Avanslars = new HashSet<Avanslar>();
            this.birims = new HashSet<birim>();
            this.GeciciMazerets = new HashSet<GeciciMazeret>();
            this.Icralars = new HashSet<Icralar>();
            this.ImzaTakipDetays = new HashSet<ImzaTakipDetay>();
            this.Izins = new HashSet<Izin>();
            this.PersonelEtikets = new HashSet<PersonelEtiket>();
            this.PersonelFirmas = new HashSet<PersonelFirma>();
            this.PersonelGrups = new HashSet<PersonelGrup>();
            this.PersonelIhaleDonemleris = new HashSet<PersonelIhaleDonemleri>();
            this.PersonelOzlukEvraks = new HashSet<PersonelOzlukEvrak>();
            this.Rapors = new HashSet<Rapor>();
            this.Yizins = new HashSet<Yizin>();
            this.PersonelUcrets = new HashSet<PersonelUcret>();
            this.Task_Details = new HashSet<Task_Details>();
            this.OzlukGorevlendirmes = new HashSet<OzlukGorevlendirme>();
            this.OzlukEgitimDetays = new HashSet<OzlukEgitimDetay>();
            this.PersonelMesais = new HashSet<PersonelMesai>();
            this.Ozluk_IseGirisEvrak = new HashSet<Ozluk_IseGirisEvrak>();
            this.Ozluk_AileFertleri = new HashSet<Ozluk_AileFertleri>();
        }
    
        public int id { get; set; }
        public string adsoyad { get; set; }
        public Nullable<int> birimid { get; set; }
        public bool puantaj { get; set; }
        public Nullable<int> sira { get; set; }
        public string sicilno { get; set; }
        public string tcno { get; set; }
        public Nullable<int> pdksid { get; set; }
        public Nullable<System.DateTime> giristarihi { get; set; }
        public Nullable<System.DateTime> kidemtarihi { get; set; }
        public Nullable<System.Guid> mikroid { get; set; }
        public Nullable<System.DateTime> dogumtarihi { get; set; }
        public Nullable<System.DateTime> cikistarihi { get; set; }
        public Nullable<int> kadro { get; set; }
        public string iban { get; set; }
        public Nullable<bool> yaka { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Avanslar> Avanslars { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<birim> birims { get; set; }
        public virtual birim birim { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<GeciciMazeret> GeciciMazerets { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Icralar> Icralars { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ImzaTakipDetay> ImzaTakipDetays { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Izin> Izins { get; set; }
        public virtual Kadro Kadro1 { get; set; }
        public virtual PersonelDetay PersonelDetay { get; set; }
        public virtual PersonelDevir PersonelDevir { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PersonelEtiket> PersonelEtikets { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PersonelFirma> PersonelFirmas { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PersonelGrup> PersonelGrups { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PersonelIhaleDonemleri> PersonelIhaleDonemleris { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PersonelOzlukEvrak> PersonelOzlukEvraks { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Rapor> Rapors { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Yizin> Yizins { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PersonelUcret> PersonelUcrets { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Task_Details> Task_Details { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<OzlukGorevlendirme> OzlukGorevlendirmes { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<OzlukEgitimDetay> OzlukEgitimDetays { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PersonelMesai> PersonelMesais { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Ozluk_IseGirisEvrak> Ozluk_IseGirisEvrak { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Ozluk_AileFertleri> Ozluk_AileFertleri { get; set; }
    }
}
