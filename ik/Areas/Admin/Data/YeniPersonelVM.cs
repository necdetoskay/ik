using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace ik.Areas.Admin.Data
{
   public class YeniPersonelVM
    {

        [Required(ErrorMessage = "Gerekli !!!!")]
        [Display(Name = "Personel Kodu")]
        public string Kod { get; set; }
        [Required(ErrorMessage = "Gerekli !!!!")]
        [Display(Name = "Mikro Kaydı")]
        public Guid mikroid { get; set; }


        [Required(ErrorMessage = "Gerekli !!!!")]
        [Display(Name = "PDKS Kaydı")]
        public string pdksid { get; set; }

        public int personelid { get; set; }
        [Required(ErrorMessage = "Gerekli !!!!")]
        [Display(Name = "Adı Soyadı")]
        public string adsoyad { get; set; }

        [Required(ErrorMessage = "Gerekli !!!!")]
        [Display(Name = "Birimi")]
        public int birimid { get; set; }

        [Required(ErrorMessage = "Gerekli !!!!")]
        [Display(Name = "Puantaja Dahilmi?")]
        public bool puantaj { get; set; }

        [Required(ErrorMessage = "Gerekli !!!!")]
        [Display(Name = "T.C. No")]
        public string tcno { get; set; }

     

        [Required(ErrorMessage = "Gerekli !!!!")]
        [Display(Name = "İşe Giriş Tarihi")]
        public DateTime isegiris { get; set; }

        

        [Required(ErrorMessage = "Gerekli !!!!")]
        [Display(Name = "Doğum Tarihi")]
        public DateTime dogumtarih { get; set; }

        [Required(ErrorMessage = "Gerekli !!!!")]
        [Display(Name = "IBAN numarası")]
        public string iban { get; set; }
        #region personedetay
        [Required(ErrorMessage = "Gerekli !!!!")]
        [Display(Name = "Çalıştığı Lokasyon")]
        public int lokasyon { get; set; }

        [Required(ErrorMessage = "Gerekli !!!!")]
        [Display(Name = "Görevi")]
        public int gorev { get; set; }

        [Required(ErrorMessage = "Gerekli !!!!")]
        [Display(Name = "Cinsiyeti")]
        public bool cinsiyet { get; set; }

        [Required(ErrorMessage = "Gerekli !!!!")]
        [Display(Name = "Tahsil Durumu")]
        public int tahsil { get; set; }

        [Display(Name = "Personel Resmi")]
       public string thumb { get; set; }

       [Display(Name = "Mail Adresi")]
        public string mailadres { get; set; }

        [Required(ErrorMessage = "Gerekli !!!!")]
        [Display(Name = "SGK Dosyası")]
        public int sgkdosya { get; set; }

   
        [Display(Name = "Ebys Kullanıcı adı")]
        public string ebysad { get; set; }

        [Display(Name = "Ebys Şifresi")]
        public string ebysifre { get; set; }
        #endregion

    }
}