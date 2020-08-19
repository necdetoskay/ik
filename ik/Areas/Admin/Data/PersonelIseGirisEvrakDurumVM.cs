using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ik.Areas.Admin.Data
{
    public class PersonelIseGirisEvrakDurumVM
    {
        public int ID { get; set; }
        public string PersonelAd { get; set; }
        public List<IseGirisEvrakDurumVM> IseGirisEvrakDurumVMs { get; set; }

        public PersonelIseGirisEvrakDurumVM()
        {
            IseGirisEvrakDurumVMs=new List<IseGirisEvrakDurumVM>();
        }   
    }

    public class IseGirisEvrakDurumVM
    {
        public int ID { get; set; }
        public string EvrakAd { get; set; }
        public bool Durum { get; set; }
    }
}