using System;
using System.Collections.Generic;
using System.Diagnostics;
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

        public decimal _gelirVergisi(decimal devreden, decimal gelirvergisimatrah)
        {
            var gelirvergisi = 0m;
            var dilimler = VergiDilim.vergi_dilim_detay.ToList();
            for (int i = 0; i < dilimler.Count(); i++)
            {
                if (dilimler[i].alt <= devreden && devreden <= dilimler[i].ust)
                {
                    var parça = (devreden + gelirvergisimatrah) - dilimler[i].ust;
                    if (parça > 0)
                    {
                        gelirvergisi += ((gelirvergisimatrah - parça) * dilimler[i].oran) / 100;
                        gelirvergisi += (parça * dilimler[i + 1].oran) / 100;
                    }
                    else
                    {
                        gelirvergisi += (gelirvergisimatrah * dilimler[i].oran) / 100;
                    }
                }
                else continue;
            }
            gelirvergisi = Math.Round(gelirvergisi, 2);
            return gelirvergisi;
        }

        public void MaasHesapDenemeTest()
        {
            var devredengelirvergimatrah = 20527.70m;
            var brut = 5478.29m;
            var istisna = 129m;
            var sgkmatr = brut - istisna;
            var sgkprim= Math.Round(sgkmatr * 0.14m, 2);
            var issizlik = Math.Round(sgkmatr * 0.01m, 2);
            var damgaverg = Math.Round(brut * 0.00759m, 2);
            var gelirvergisimatrahmaaş = brut - sgkprim - issizlik;
            var gelirvergisimatrah = 0m;
            var gelirvergisi = _gelirVergisi(devredengelirvergimatrah , gelirvergisimatrahmaaş)-264.87m;
            var netmaaş = brut - sgkprim - issizlik - damgaverg- gelirvergisi;


            var yemekbrut = 571.85m;
            var net = 0m;
            do
            {
                sgkmatr = yemekbrut- istisna;
                sgkprim = Math.Round(sgkmatr * 0.14m, 2);
                issizlik = Math.Round(sgkmatr * 0.01m, 2);
                gelirvergisimatrah = yemekbrut - sgkprim - issizlik;

                var gelievergi = _gelirVergisi(devredengelirvergimatrah+ gelirvergisimatrahmaaş, gelirvergisimatrah);
                damgaverg = Math.Round(yemekbrut * 0.00759m, 2);
                net = yemekbrut - sgkprim - issizlik - damgaverg - gelievergi;
                yemekbrut++;
                //Console.WriteLine(net);
            } while (net<400m);

            yemekbrut -= 0.01m;
            do
            {
                sgkmatr = yemekbrut - istisna;
                sgkprim = Math.Round(sgkmatr * 0.14m, 2);
                issizlik = Math.Round(sgkmatr * 0.01m, 2);
                gelirvergisimatrah = yemekbrut - sgkprim - issizlik;

                var gelievergi = _gelirVergisi(devredengelirvergimatrah + gelirvergisimatrahmaaş, gelirvergisimatrah);
                damgaverg = Math.Round(yemekbrut * 0.00759m, 2);
                net = yemekbrut - sgkprim - issizlik - damgaverg - gelievergi;
                yemekbrut -= 0.01m;
                Debug.WriteLine(net);
            } while (net != 400m);
        }

       

        public MaasHesapDetay Hesapla()
        {
            var bruttoplam = Ucretler.Sum();
            var sgkmatr = IstisnaVarmi ? bruttoplam - YemekIstisnaTutar : bruttoplam;
            var sgkprim = Math.Round(sgkmatr * 0.14m, 2);
            var issizlikprim = Math.Round(sgkmatr * 0.01m, 2);
            var damgaverg = Math.Round(bruttoplam * 0.00759m, 2);
            var gelirvergimatrah = bruttoplam - sgkprim - issizlikprim;


            var gelirvergisi = _gelirVergisi(DevredenGelirVergiMatrah, gelirvergimatrah);

            #region gelir vergisi hesap eski
            //var gelirvergisi = 0m;
            //var dilimler = VergiDilim.vergi_dilim_detay.ToList();
            //for (int i = 0; i < dilimler.Count(); i++)
            //{
            //    if (dilimler[i].alt <= DevredenGelirVergiMatrah && DevredenGelirVergiMatrah <= dilimler[i].ust)
            //    {
            //        var parça = (DevredenGelirVergiMatrah + gelirvergimatrah) - dilimler[i].ust;
            //        if (parça > 0)
            //        {
            //            gelirvergisi += ((gelirvergimatrah - parça) * dilimler[i].oran) / 100;
            //            gelirvergisi += (parça * dilimler[i + 1].oran) / 100;
            //        }
            //        else
            //        {
            //            gelirvergisi += (gelirvergimatrah * dilimler[i].oran) / 100;
            //        }
            //    }
            //    else continue;
            //}
            //gelirvergisi = Math.Round(gelirvergisi, 2); 
            #endregion

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