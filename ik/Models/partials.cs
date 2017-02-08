using System;
using System.CodeDom;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ik.Models
{
    public static class Helpers
    {
        public static MvcHtmlString If(this MvcHtmlString value, bool evaluation)
        {
            return evaluation ? value : MvcHtmlString.Empty;
        }
    }

    [MetadataType(typeof(TakipMetaData))]
    public partial class Takip
    {

    }



    public class ImzaTakipVM
    {
        public int PersonelID { get; set; }
        public int ImzaGrupID { get; set; }

        [Required(ErrorMessage = "Acıklama boş Bırakılamaz")]
        public string Aciklama { get; set; }

        [Key]
        public int id { get; set; }
    }
    public class TakipMetaData
    {
        [Required(ErrorMessage = "Gerekli")]
        [DisplayName("Açıklama")]
        public string aciklama { get; set; }

        [Required(ErrorMessage = "Gerekli")]
        [DisplayName("Son Tarih")]
        public DateTime sontarih { get; set; }

    }





    public class PersonelIzinVM
    {
        public string PersonelAd { get; set; }
        public int IzinYıl { get; set; }
        public int ToplamIzin { get; set; }
    }

    public class Kidem
    {
        public int yil { get; set; }
        public DateTime baslangic { get; set; }
        public DateTime bitis { get; set; }
        public int hakedilenizin { get; set; }
        public int kullanilan { get; set; }
        public int kalan { get; set; }
    }
}