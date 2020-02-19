using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace ik.Areas.KVKK.Models
{
    [MetadataType(typeof(SablonMetaData))]
    public partial class KVKK_Sablon
    {
        
    }

    public class SablonMetaData
    {
        [Required]
        [DisplayName("Departman Adı")]
        public int departmanID { get; set; }

        [Required]
        [DisplayName("Kişisel Veri")]
        public int kisiselveriID { get; set; }

        [Required]
        [DisplayName("Faaliyet")]
        public int faaliyetID { get; set; }

        [Required]
        [DisplayName("Veri Kategorisi")]
        public int verikategoriID { get; set; }

        [Required]
        [DisplayName("Özel Nitelik")]
        public bool ozelNitelik { get; set; }

        [Required]
        [DisplayName("Veri Sahibi")]
        public int verisahibiID { get; set; }

        [Required]
        [DisplayName("Veri İşleme Amacı")]
        public int veriislemeamacID { get; set; }

        [Required]
        [DisplayName("Hukuki Dayanak")]
        public int hukukidayanakID { get; set; }

        [Required]
        [DisplayName("Yurt İçi Aktarım")]
        public bool yurticiaktarim { get; set; }

     
        [DisplayName("Yurt İçi Transfer Alıcısı")]
        public int veritransferaliciID { get; set; }

        [Required]
        [DisplayName("Yurt Dışı Aktarım")]
        public bool yurtdisiaktarim { get; set; }

      
        [DisplayName("Teknik Tedbirler")]
        public int tekniktedbirgrupID { get; set; }

     
        [DisplayName("İdari Tedbirler")]
        public int idaritedbirgrupID { get; set; }

        [Required]
        [DisplayName("Veri Saklama Süresi")]
        public int verisaklamasuresiID { get; set; }

    }

}