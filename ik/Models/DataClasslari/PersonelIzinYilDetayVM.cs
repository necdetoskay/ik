using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ik.Models.DataClasslari
{
    public class PersonelIzinYilDetayVM
    {
        public int id { get; set; }
        public DateTime Başlangıç { get; set; }
        public DateTime Bitiş { get; set; }
        public int Gün { get; set; }
    }
}