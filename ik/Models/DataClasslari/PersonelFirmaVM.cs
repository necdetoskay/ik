using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Runtime.InteropServices;
using System.Web;

namespace ik.Models.DataClasslari
{
    /// <summary>
    /// Her Personeli bağlı olduğu firma ile ilişkilendirir
    /// her ilişkilendirmede çalışma dönemi olarak personelihaledönemleri tablosuna kayıt açar ki
    /// hergi personel hangi dönemlerden nerede çalışmış takip edilebilsin
    /// </summary>
    public class PersonelFirmaVM
    {
        [DisplayName("PLokasyonu")]
        [Required(ErrorMessage = "Lokasyon Seçiniz")]
        public int Lokasyon { get; set; }

        [DisplayName("Personel Adı")]
        [Required(ErrorMessage = "Personel Seçiniz")]
        public int PersonelID { get; set; }

        [DisplayName("Firma Adı")]
        [Required(ErrorMessage = "Firma Seçiniz")]
        public int FirmaId { get; set; }

        [DisplayName("İhale Dönemi")]
        [Required(ErrorMessage = "İhale Dönemi Seçiniz")]
        public int IhaleDonem { get; set; }

        [DisplayName("Kadro Tipi")]
        [Required(ErrorMessage = "Kadro Tipi Seçiniz")]
        public int KadroTipi { get; set; }

        [DisplayName("Birimi")]
        [Required(ErrorMessage = "Birimi Seçiniz")]
        public int Birimi { get; set; }

        [DisplayName("Görevi")]
        [Required(ErrorMessage = "Görev Seçiniz")]
        public int Gorevi { get; set; }

        [DisplayName("Tahsili")]
        [Required(ErrorMessage = "Tahsil Seçiniz")]
        public int Tahsili { get; set; }


    }
}