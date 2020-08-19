using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.Web.Mvc;
using System.Web.Mvc.Html;

namespace ik.Areas.Admin.Data
{
    public class YillikIzinVM
    {
        public int yil { get; set; }
        [DisplayFormat(DataFormatString = "{0:d}")]
        public DateTime öncekihaketmetarihi { get; set; }
        [DisplayFormat(DataFormatString = "{0:d}")]
        public DateTime haketmetarihi { get; set; }
        public int kidem { get; set; }
        public int izinsuresi { get; set; }
        public int yolizni { get; set; }
        [DisplayFormat(DataFormatString = "{0:d}")]
        public DateTime baslangic { get; set; }
        [DisplayFormat(DataFormatString = "{0:d}")]
        public DateTime bitis { get; set; }
    }


    [MetadataType(typeof(OzlukDigerEvrakMetaData))]
    public partial class Ozluk_DigerEvrak
    {
    }

    public class OzlukDigerEvrakMetaData
    {
        [Required]
        public string evrakadi { get; set; }

    }
    public class Ozluk_AileFertleriMetaData
    {
        [DisplayFormat(DataFormatString = "{0:d}")]
        [DisplayName("Doğum Tarihi")]
        public DateTime dogumTarihi { get; set; }

        [Required]
        [DisplayName("Adı Soyadı")]
        public string adsoyad { get; set; }


        [Required]
        [DisplayName("Yakınlık Derecesi")]
        public int yakinlikID{get; set;}


        [Required]
        [DisplayName("Doğum Yeri")]
        public string dogumYeri { get; set; }
    }

    [MetadataType(typeof(Ozluk_AileFertleriMetaData))]
    public partial class Ozluk_AileFertleri
    {

    }
}