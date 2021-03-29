using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ik.Models.DataClasslari
{

    public enum PDKSTatilID
    {
        AkdiTatil = 1,
        HaftaTatili = 2,
        Ücretliİzin = 3,
        Ücretsizİzin = 4,
        İdariTatil = 5,
        Yıllıkİzin = 6,
        Raporlu = 7,
        Denkleştirme = 8, 
        Mazeret = 9,
        ResmiTatil = 10
    }

    public class PDSKGecKalma
    {
        public string AdSoyad { get; set; }
        public DateTime Tarih { get; set; }
        public TimeSpan Giris { get; set; }
        public int GecKalma { get; set; }
    }
    public class PDSKMazeret
    {
        public string AdSoyad { get; set; }
        public DateTime Tarih { get; set; }
        public string Aciklama { get; set; }

    }

    public class PersonelPDSK
    {
        public int ikID { get; set; }
        public int pdksID { get; set; }

        public string AdSoyad { get; set; }
        public List<PersonelPDSKTarih> Tarihler { get; set; }

        public PersonelPDSK(int pdksId, string adsoyad)
        {
            var tarih = DateTime.Now;
            PDKSTarihHazirla(pdksId, adsoyad, tarih, tarih);
        }

        public PersonelPDSK(int pdksId, string adsoyad, DateTime tarih)
        {
            PDKSTarihHazirla(pdksId, adsoyad, tarih, tarih);
        }
        public PersonelPDSK(int pdksId, string adsoyad, DateTime tarih1, DateTime tarih2)
        {

            PDKSTarihHazirla(pdksId, adsoyad, tarih1, tarih2);
        }

        private void PDKSTarihHazirla(int pdksId, string adsoyad, DateTime tarih1, DateTime tarih2)
        {
            this.pdksID = pdksId;
            this.AdSoyad = adsoyad;
            Tarihler = new List<PersonelPDSKTarih>();
            for (DateTime t1 = tarih1; t1 <= tarih2; t1 = t1.AddDays(1))
            {
                Tarihler.Add(new PersonelPDSKTarih()
                {
                    Tarih = t1
                });
            }
        }

        public override string ToString()
        {
            return AdSoyad;
        }
    }
    public class PersonelPDSKTarih
    {
        public DateTime Tarih { get; set; }
        public List<TimeSpan> Girisler { get; set; }
        public List<PersonelPDSKMazeret> Mazeretler { get; set; }
        public string Aciklama { get; set; }

        public PersonelPDSKTarih()
        {
            Girisler = new List<TimeSpan>();
            Mazeretler = new List<PersonelPDSKMazeret>();
           
        }

        public override string ToString()
        {
            switch (Girisler.Count())
            {
                case 0://giriş ve çıkış yok
                   if(Mazeretler.Any())
                   {
                        if(Mazeretler.Count()<2)
                        {
                            var maz= Mazeretler.First();
                            return maz.TatilID.ToString() + " " + maz.Aciklama;
                        }


                   }else
                   {
                       if(Tarih.DayOfWeek== DayOfWeek.Saturday || Tarih.DayOfWeek== DayOfWeek.Sunday)
                       {
                           return "Hafta Sonu";
                       }
                       else
                       {
                           return "Devamsız";
                       }
                   }
                   break;
                case 1://giriş veya çıkış yok
                    var gfark = Girisler.First().Subtract(new TimeSpan(08, 30, 0)).TotalMinutes;
                    var cfark=new TimeSpan(17,30,0).Subtract(Girisler.First()).TotalMinutes;
                    if (gfark > cfark)
                        return "Giriş Yapılmamış";
                    else 
                        return "Çıkış Yapılmamış";
                default://birden fazla giriş çıkış hareketi var
                    var girisler = Girisler.OrderBy(c=>c.Ticks);
                    var first = girisler.First();
                    if(first>new TimeSpan(12,0,0))
                    {
                        if(Mazeretler.Any(d=>d.TatilID== PDKSTatilID.Yıllıkİzin || Mazeretler.Any(c=>c.TatilID == PDKSTatilID.Mazeret)))
                        {

                        }
                        else
                        {
                            return "Giriş Yapılmamış, Çıkış var";    
                        }
                        
                    }else
                    {
                        return girisler.First().Subtract(new TimeSpan(08, 30, 0)).TotalMinutes.ToString();
                    }
                    
                    break;
            }
            
            return Tarih.ToShortDateString();
        }
    }

    public class PersonelPDSKMazeret
    {
        public PDKSTatilID TatilID { get; set; }
        public TimeSpan GidisSaat { get; set; }
        public TimeSpan GelisSaat { get; set; }
        public bool Saatlik { get; set; }
        public string Aciklama { get; set; }

    }

    public class AylikGecKalmaVM
    {
        public int pdksID { get; set; }
        public string ad { get; set; }
        public string soyad { get; set; }
        public DateTime tarih { get; set; }
        public TimeSpan? giris { get; set; }
        public TimeSpan? cikis { get; set; }
    }
}