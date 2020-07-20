using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace ik.Areas.Admin.Data
{
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