using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ik.Models
{

    public enum MaaşHesapTip
    {
        BrüttenNete,NettenBrüte
    }
    public class MaasHesap
    {
        public vergi_dilim VergiDilimleri { get; set; }
        public decimal Tutar { get; set; }
        public MaaşHesapTip HesapTip { get; set; }

        private decimal asgariÜcret;
        public decimal AsgariÜcret
        {
            get { return asgariÜcret; }
        }

        public decimal Yemekİstisna
        {
            get { return 0; }
        }

        public MaasHesap(MaaşHesapTip hesaptip)
        {
            using (var db=new ikEntities())
            {
                VergiDilimleri = db.vergi_dilim.FirstOrDefault(c => c.yil == 2019);
                asgariÜcret = db.kanunparametres.FirstOrDefault(c => c.yil == 2019).brutasgari;
            }
            
            this.HesapTip = hesaptip;
        }
        public decimal SGKPrim
        {
            get
            {
                if(HesapTip== MaaşHesapTip.BrüttenNete)
                    return Tutar * 0.15M;
                return 0;
            }
        }

        public decimal DamgeVergisi
        {
            get
            {
                if(HesapTip== MaaşHesapTip.BrüttenNete)
                    return Tutar * 0.00759M;
                return 0;
            }
        }

        public decimal GelirVergisi
        {
            get
            {

                return 0;
            }
        }

    }


}