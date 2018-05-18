using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace ik.Models.DataClasslari
{
    public class YarimIzinEkleVM
    {
        public int izinID { get; set; }
        [Required(ErrorMessage = "{0} Boş Bırakılamaz")]
        [Range(2006, 2050)]
        public int yil { get; set; }
        public int personelID { get; set; }
        [Required(ErrorMessage = "{0} Boş Bırakılamaz")]
        [DisplayName("EBSY Beelge No")]
        public string belgeNo { get; set; }
        [DisplayName("İzin Tarihi")]
        [Required(ErrorMessage = "{0} Boş Bırakılamaz")]
        [DisplayFormat(DataFormatString = "{0:dd/MM/yy}", ApplyFormatInEditMode = true)]
        public DateTime tarih { get; set; }

        [DisplayName("İzin Başlangıç Saati")]
        [Required(ErrorMessage = "{0} Boş Bırakılamaz")]
        [DisplayFormat(DataFormatString = "{0:hh\\:mm}", ApplyFormatInEditMode = true)]
        public TimeSpan baslangic { get; set; }

        [DisplayName("İzin Bitiş Saati")]
        [Required(ErrorMessage = "{0} Boş Bırakılamaz")]
        [DisplayFormat(DataFormatString = "{0:hh\\:mm}", ApplyFormatInEditMode = true)]
        public TimeSpan bitiş { get; set; }
    }
}