﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class ikEntities : DbContext
    {
        public ikEntities()
            : base("name=ikEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<birim> birims { get; set; }
        public virtual DbSet<Grup> Grups { get; set; }
        public virtual DbSet<Izin> Izins { get; set; }
        public virtual DbSet<IzinTip> IzinTips { get; set; }
        public virtual DbSet<ihale> ihales { get; set; }
        public virtual DbSet<PersonelGrup> PersonelGrups { get; set; }
        public virtual DbSet<Takip> Takips { get; set; }
        public virtual DbSet<PersonelDevir> PersonelDevirs { get; set; }
        public virtual DbSet<Avanslar> Avanslars { get; set; }
        public virtual DbSet<Icralar> Icralars { get; set; }
        public virtual DbSet<IcraOdeme> IcraOdemes { get; set; }
        public virtual DbSet<EvrakListe> EvrakListes { get; set; }
        public virtual DbSet<PersonelOzlukEvrak> PersonelOzlukEvraks { get; set; }
        public virtual DbSet<ResmiTatil> ResmiTatils { get; set; }
        public virtual DbSet<DiniGunler> DiniGunlers { get; set; }
        public virtual DbSet<GeciciMazeret> GeciciMazerets { get; set; }
        public virtual DbSet<Arsiv_Ihaletip> Arsiv_Ihaletip { get; set; }
        public virtual DbSet<Arsiv_Personel> Arsiv_Personel { get; set; }
        public virtual DbSet<Gorev> Gorevs { get; set; }
        public virtual DbSet<Kadro> Kadroes { get; set; }
        public virtual DbSet<PersonelFirma> PersonelFirmas { get; set; }
        public virtual DbSet<Firma> Firmas { get; set; }
        public virtual DbSet<PersonelIhale> PersonelIhales { get; set; }
        public virtual DbSet<PersonelIhaleDonemleri> PersonelIhaleDonemleris { get; set; }
        public virtual DbSet<Staj_Bolum> Staj_Bolum { get; set; }
        public virtual DbSet<Staj_Evrak> Staj_Evrak { get; set; }
        public virtual DbSet<Staj_Ogrenci> Staj_Ogrenci { get; set; }
        public virtual DbSet<Staj_Ogrenci_Evrak> Staj_Ogrenci_Evrak { get; set; }
        public virtual DbSet<Staj_Okul> Staj_Okul { get; set; }
        public virtual DbSet<Lokasyon> Lokasyons { get; set; }
        public virtual DbSet<PersonelDetay> PersonelDetays { get; set; }
        public virtual DbSet<Tahsil> Tahsils { get; set; }
        public virtual DbSet<Rapor> Rapors { get; set; }
        public virtual DbSet<Rapor_HastalikTip> Rapor_HastalikTip { get; set; }
        public virtual DbSet<Rapor_RaporTip> Rapor_RaporTip { get; set; }
        public virtual DbSet<Kurul> Kuruls { get; set; }
        public virtual DbSet<KurulGorevTip> KurulGorevTips { get; set; }
        public virtual DbSet<KurulTip> KurulTips { get; set; }
        public virtual DbSet<Yizin> Yizins { get; set; }
        public virtual DbSet<YizinDetay> YizinDetays { get; set; }
        public virtual DbSet<ImzaTakip> ImzaTakips { get; set; }
        public virtual DbSet<ImzaTakipDetay> ImzaTakipDetays { get; set; }
        public virtual DbSet<SgkDosya> SgkDosyas { get; set; }
        public virtual DbSet<vergi_dilim> vergi_dilim { get; set; }
        public virtual DbSet<vergi_dilim_detay> vergi_dilim_detay { get; set; }
        public virtual DbSet<Gorev_Detay> Gorev_Detay { get; set; }
        public virtual DbSet<Gorev_Detay_Not> Gorev_Detay_Not { get; set; }
        public virtual DbSet<Personel> Personels { get; set; }
        public virtual DbSet<Meslek> Mesleks { get; set; }
        public virtual DbSet<PersonelUcret> PersonelUcrets { get; set; }
        public virtual DbSet<kanunparametre> kanunparametres { get; set; }
        public virtual DbSet<Task> Tasks { get; set; }
        public virtual DbSet<Task_Details> Task_Details { get; set; }
        public virtual DbSet<OzlukEvrak> OzlukEvraks { get; set; }
        public virtual DbSet<OzlukGorevlendirme> OzlukGorevlendirmes { get; set; }
        public virtual DbSet<OzlukGrupTanim> OzlukGrupTanims { get; set; }
        public virtual DbSet<OzlukGrupTanimDetay> OzlukGrupTanimDetays { get; set; }
        public virtual DbSet<OzlukEgitim> OzlukEgitims { get; set; }
        public virtual DbSet<OzlukEgitimDetay> OzlukEgitimDetays { get; set; }
        public virtual DbSet<PersonelMesai> PersonelMesais { get; set; }
        public virtual DbSet<Ozluk_Enum> Ozluk_Enum { get; set; }
        public virtual DbSet<Ozluk_Enum_Detay> Ozluk_Enum_Detay { get; set; }
        public virtual DbSet<Ozluk_IseGirisEvrak> Ozluk_IseGirisEvrak { get; set; }
        public virtual DbSet<Ozluk_IseGirisGerekEvrakTip> Ozluk_IseGirisGerekEvrakTip { get; set; }
        public virtual DbSet<Ozluk_IseGirisEvrakUrl> Ozluk_IseGirisEvrakUrl { get; set; }
        public virtual DbSet<Ozluk_AileFertleri> Ozluk_AileFertleri { get; set; }
        public virtual DbSet<Ozluk_AileFertleriUrl> Ozluk_AileFertleriUrl { get; set; }
        public virtual DbSet<Ozluk_DigerEvrak> Ozluk_DigerEvrak { get; set; }
        public virtual DbSet<IzinBakmaYetki> IzinBakmaYetkis { get; set; }
    }
}
