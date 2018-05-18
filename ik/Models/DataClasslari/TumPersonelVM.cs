using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ik.Models.DataClasslari
{
    public class TumPersonelVM
    {
        public int  Firma { get; set; }
        public int KadroTipi { get; set; }
        public int Birimi { get; set; }
        public int Lokasyon { get; set; }
      
        public int Cinsiyeti { get; set; }
        public int Gorev { get; set; }
    }
}