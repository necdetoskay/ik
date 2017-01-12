using System;
using System.CodeDom;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace ik.Models
{
    [MetadataType(typeof(TakipMetaData))]
    public partial class Takip
    {

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
}