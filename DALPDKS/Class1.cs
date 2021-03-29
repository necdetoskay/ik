using System;
using System.Collections.Generic;
using System.Linq;
using MySql.Data.MySqlClient;

namespace DALPDKS
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
    public class PDKS
    {
        public PDKS()
        {
            //using (var con = new MySqlConnection("Server=172.41.40.85;Database=perkotek;Uid=root;Pwd=max;AllowZeroDateTime=True;Charset=latin5"))
            //{var com = new MySqlCommand("", con);}
        }
        public void Girisler(DateTime tarih1, DateTime tarih2)
        {
            var pers = new List<PdksPersonel>();
            using (var con = new MySqlConnection("Server=172.41.40.85;Database=perkotek;Uid=root;Pwd=max;AllowZeroDateTime=True;Charset=latin5"))
            {
                var com = new MySqlCommand("", con);
                try
                {
                    com.CommandText = string.Format("select CONCAT(personel_kartlari.adi,' ',personel_kartlari.soyadi)as adsoyad, personel_id, tarih,giris_saat,cikis_saat from personel_giriscikis " +
                   "INNER JOIN personel_kartlari on personel_kartlari.id=personel_giriscikis.personel_id  where tarih>='{0}' and tarih<='{1}'",
                        tarih1.ToString("yyyy-MM-dd"),
                        tarih2.ToString("yyyy-MM-dd"));
                    con.Open();

                    var reader = com.ExecuteReader();
                    while (reader.Read())
                    {
                        var id = (int)(uint)reader["personel_id"];
                        var tarih = reader["tarih"].ToString();
                        var ad = (string)reader["adsoyad"];
                        var p = pers.FirstOrDefault(c => c.ID == id);
                        var giris = reader["giris_saat"];
                        var cikis = reader["cikis_saat"];
                        if (p == null)
                        {
                            p = new PdksPersonel
                            {
                                ID = id,
                                AdSoyad = ad
                            };
                            pers.Add(p);
                        }
                        if (p[tarih] == null)
                        {
                            p.Tarihler.Add(new PdksTarih
                            {
                                Tarih = DateTime.Parse(tarih)
                            });
                        }

                        if (giris is System.DBNull)
                        {

                        }
                        else
                        {
                            p[tarih].Hareketler.Add(TimeSpan.Parse(giris.ToString()));
                        }
                        if (cikis is System.DBNull)
                        {

                        }
                        else
                        {
                            p[tarih].Hareketler.Add(TimeSpan.Parse(cikis.ToString()));
                        }


                    }
                    reader.Close();



                    //com.CommandText=string.Format("select CONCAT(personel_kartlari.adi,' ',personel_kartlari.soyadi)as adsoyad, personel_id, tarih,gidis_saat,gelis_saat,saatlik from personel_izin  INNER JOIN personel_kartlari on personel_kartlari.id=personel_giriscikis.personel_id  where tarih>='{0}' and tarih<='{1}'",
                    //    tarih1.ToString("yyyy-MM-dd"),
                    //    tarih2.ToString("yyyy-MM-dd"));

                    //reader = com.ExecuteReader();
                    //while (reader.Read())
                    //{
                    //    var id = (int)(uint)reader["personel_id"];
                    //    var tarih = reader["tarih"].ToString();
                    //    var ad = (string)reader["adsoyad"];
                    //    var p = pers.FirstOrDefault(c => c.ID == id);
                    //    var gidis = TimeSpan.Parse(reader["gidis_saat"].ToString());
                    //    var gelis = TimeSpan.Parse(reader["gelis_saat"].ToString());
                    //    var saatlik = (int)reader["saatlik"];
                    //    if (p == null)
                    //    {
                    //        p = new PdksPersonel
                    //        {
                    //            ID = id,
                    //            AdSoyad = ad
                    //        };
                    //        pers.Add(p);
                    //    }
                    //    if (p[tarih] == null)
                    //    {
                    //        p.Tarihler.Add(new PdksTarih
                    //        {
                    //            Tarih = DateTime.Parse(tarih)
                    //        });
                    //    }
                    //    else
                    //    {
                    //        //buraya izin girilecek
                    //        p[tarih].Hareketler.Add(new PdksHareket
                    //        {
                    //            Hareket = gidis
                    //        });
                    //    }


                    //}
                    //reader.Close();

                }
                catch (Exception x)
                {


                }
            }
        }

        //iki tarih arası giriş ve çıkışlar
    }

    public class PdksPersonel
    {
        public int ID { get; set; }
        public string AdSoyad { get; set; }
        public List<PdksTarih> Tarihler { get; set; }

        public PdksPersonel()
        {
            Tarihler = new List<PdksTarih>();
        }
        public PdksTarih this[string tarih]
        {
            get
            {
                foreach (var pdkstarih in Tarihler)
                {
                    if (pdkstarih.Tarih.ToShortDateString() == tarih)
                        return pdkstarih;
                }
                return null;
            }
        }

        public override string ToString()
        {
            return AdSoyad.ToString();
        }
    }

    public class PdksTarih
    {
        public DateTime Tarih { get; set; }

        public List<TimeSpan> Hareketler { get; set; }

        public PdksTarih()
        {
            Hareketler = new List<TimeSpan>();
        }

        public override string ToString()
        {
            if(Hareketler.Any())
            {
                var test = "";
                if(Hareketler.Count()==2)
                {

                }
                else
                {
                    //giris veya çıkış yok
                }
            }
            return Tarih.ToShortDateString();
        }
    }
    public class PdksHareket
    {
        public TimeSpan Hareket { get; set; }
    }
    //PERSONEL
    //GÜN
    //GİRİŞLER
    //İZİNLER
}
