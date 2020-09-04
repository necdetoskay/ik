using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.Web.Mvc;
using System.Web.Mvc.Html;
using ik.Models;

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


   

    public class OzlukDigerEvrakMetaData
    {
        [Required]
        public string evrakadi { get; set; }

    }
    

    
}