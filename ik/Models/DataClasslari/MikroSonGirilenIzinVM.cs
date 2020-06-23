using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace ik.Models.DataClasslari
{  
    public class MikroSonGirilenIzin
    {
        public int ID { get; set; }
        public string PersonelKod { get; set; }
        [DisplayName("Personel Adı")]
        public string Ad { get; set; }
        [DisplayName("Personel Soyadı")]
        public string Soyad { get; set; }

        [DisplayName("Başlangıç Tarihi")]
        [DisplayFormat(DataFormatString = "{0:d}")]
        public DateTime IzinBaşlangic { get; set; }

        [DisplayName("Bitiş Tarihi")]
        [DisplayFormat(DataFormatString = "{0:d}")]
        public DateTime IzinBitis { get; set; }

        [DisplayName("izin Günü")]
        public int IzinGunu { get; set; }

        [DisplayName("Açıklama")] 
        public string Aciklama { get; set; }

    }
}