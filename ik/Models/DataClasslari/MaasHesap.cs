using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ik.Models.DataClasslari
{
    public class MaasHesap
    {
        public List<decimal> Ucretler { get; set; }       
        public decimal YemekIstisnaTutar { get; set; }
        public bool IstisnaVarmi { get; set; }
        public decimal YemekUcret { get; set; }     
        public decimal AGI { get; set; }
        public decimal SGKUstLimit { get; set; }
        public decimal SGKAltLimit { get; set; }
        public decimal DevredenGelirVergiMatrah { get; set; }
        public bool Icra { get; set; }
        public decimal IcraTutar { get; set; }


        public vergi_dilim VergiDilim { get; set; }

        public MaasHesap()
        {
            Ucretler = new List<decimal>();
        }

        public MaasHesapDetay Hesapla()
        {
            var bruttoplam = Ucretler.Sum();
            var sgkmatr = IstisnaVarmi ? bruttoplam - YemekIstisnaTutar : bruttoplam;
            var sgkprim = Math.Round(sgkmatr * 0.14m, 2);
            var issizlikprim = Math.Round(sgkmatr * 0.01m, 2);
            var damgaverg = Math.Round(bruttoplam * 0.00759m, 2);
            var gelirvergimatrah = bruttoplam - sgkprim - issizlikprim;



            var gelirvergisi = 0m;
            var dilimler = VergiDilim.vergi_dilim_detay.ToList();


            for (int i = 0; i < dilimler.Count(); i++)
            {
                if (dilimler[i].alt <= DevredenGelirVergiMatrah && DevredenGelirVergiMatrah <= dilimler[i].ust)
                {
                    var parça = (DevredenGelirVergiMatrah + gelirvergimatrah) - dilimler[i].ust;
                    if (parça > 0)
                    {
                        gelirvergisi += ((gelirvergimatrah - parça) * dilimler[i].oran) / 100;
                        gelirvergisi += (parça * dilimler[i + 1].oran) / 100;
                    }
                    else
                    {
                        gelirvergisi += (gelirvergimatrah * dilimler[i].oran) / 100;
                    }



                }
                else continue;
            }
            gelirvergisi = Math.Round(gelirvergisi, 2);

            var net = bruttoplam - sgkprim - issizlikprim - damgaverg - gelirvergisi;

            return new MaasHesapDetay
            {
                DamgaVergi = damgaverg,
                IssizlikPrim = issizlikprim,
                SgkMatrah = sgkmatr,
                SgkPrim = sgkprim,
                BrutToplam = bruttoplam,
                Net = net

            };
        }

    }
    public class MaasHesapDetay
    {
        public decimal SgkMatrah { get; set; }
        public decimal SgkPrim { get; set; }
        public decimal IssizlikPrim { get; set; }
        public decimal DamgaVergi { get; set; }
        public decimal BrutToplam { get; set; }
        public decimal Net { get; set; }
    }
}