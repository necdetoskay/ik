using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ik.Controllers;

namespace ik.Models.DataClasslari
{
    public static class MaasHesaplaSt
    {
        public static Hesap MaasHesap(
            double brütmaaş,
            double yemek,
            double avans,
            double bes,
            double devgelvermatrah = 0,
            double agi = 0,
            int sgkgun = 30,
            double mesai = 0, double mesai2 = 0, int tip = 0, double vergiindirim = 0)
        {
            using (var db = new ikEntities())
            {



                if (sgkgun == 0)
                {
                    return new Hesap
                    {
                        Net = 0,
                        DamgaVer = 0,
                        GelirVergisi = 0,
                        SGKPay = 0,
                        İşsizlikPay = 0
                    };
                }

                var yemekistisna = 5.89;

                var dilim = db.vergi_dilim.FirstOrDefault(c => c.yil == 2020).vergi_dilim_detay.ToList();
                brütmaaş = ((brütmaaş / 30) * sgkgun); // 4307.32m;
                double brütyemek = yemek; //Math.Round(sgkgun < 22 ? (yemek / 22.0) * sgkgun : yemek);




                var yemekistisnatutar = 129; //Math.Round(yemekistisna * 22,2);
                var sgkmatrah = Math.Round(brütmaaş + brütyemek - yemekistisnatutar + mesai + mesai2, 2);
                sgkmatrah = sgkmatrah > 22072.5 ? 22072.5 : sgkmatrah;
                double işsizlikprim = 0;
                double sgkprim = 0;
                if (tip == 1)
                {
                    sgkprim = Math.Round(sgkmatrah * 0.075, 2);
                    işsizlikprim = 0;
                }
                else if (tip == 0)
                {
                    sgkprim = Math.Round(sgkmatrah * 0.14, 2);
                    işsizlikprim = Math.Round(sgkmatrah * 0.01, 2);
                }

                var damga = Math.Round((brütmaaş + brütyemek + mesai + mesai2) * 0.00759, 2);
                var gelirvergimatrah = Math.Round(brütmaaş + brütyemek + mesai + mesai2 - sgkprim - işsizlikprim, 2) -
                                       vergiindirim;

                var kümülatif = Math.Round((decimal) (devgelvermatrah + gelirvergimatrah), 2);
                var gelirvergisi = 0m;

                var devgbmatrah = (decimal) devgelvermatrah;
                for (int i = 0; i < dilim.Count; i++)
                {
                    if (devgbmatrah > dilim[i].ust)
                    {

                    }
                    else
                    {
                        if (kümülatif > dilim[i].ust)
                        {
                            var üdilim = (double) (kümülatif - dilim[i].ust);
                            var üst = (üdilim * dilim[i + 1].oran) / 100;
                            var alt = ((gelirvergimatrah - üdilim) * dilim[i].oran) / 100;
                            gelirvergisi = (decimal) (alt + üst);
                            gelirvergisi = Math.Round(gelirvergisi, 2);
                            break;
                            //iki dilim
                        }
                        else
                        {
                            //tek dilim
                            gelirvergisi += (decimal) (gelirvergimatrah * dilim[i].oran) / 100;

                            gelirvergisi = Math.Round(gelirvergisi, 2);
                            break;
                        }
                    }
                }

                //gelirvergisi hesapla
                gelirvergisi -= (decimal) agi;

                var net = brütmaaş + brütyemek + mesai + mesai2 - sgkprim - ((double) gelirvergisi) - damga -
                          işsizlikprim;
                return new Hesap
                {
                    Net = Math.Round(net, 2),
                    DamgaVer = damga,
                    GelirVergisi = (double) gelirvergisi,
                    SGKPay = sgkprim,
                    İşsizlikPay = işsizlikprim
                };
            }
        }
    }
}