using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;

namespace ik.Models
{
    public enum PEnumDurum
    {
        gelenler,
        gelmeyenler,
        izinliler,
        geckalanlar
    }

    public class GunlukRapor
    {
        public Personel personel { get; set; }
        public PEnumDurum Durum { get; set; }
        public Pers pers { get; set; }

      

    }

    public class PerkotekDB
    {

        ikEntities db = new ikEntities();
        public List<GunlukRapor> test()
        {
            var list = new List<Persotek>();

            using (var con =
                new MySqlConnection(
                    "Server=172.41.40.85;Database=perkotek;Uid=root;Pwd=max;AllowZeroDateTime=True;Charset=latin5"))
            {

                #region personel listesi

                var com = new MySqlCommand("", con);
                com.CommandText = "SELECT id, adi,soyadi FROM personel_kartlari where ozel_kod=0";
                if (con.State != ConnectionState.Open)
                    con.Open();
                var reader = com.ExecuteReader();
                while (reader.Read())
                {
                    list.Add(new Persotek
                    {
                        personelid = (int)(uint)reader["id"],
                        adi = (string)reader["adi"],
                        soyadi = (string)reader["soyadi"]
                    });
                }
                reader.Close();
                #endregion


                #region izinliler
                com.CommandText = string.Format(
                          "SELECT personel_kartlari.id, personel_kartlari.adi,personel_kartlari.soyadi,personel_kartlari.id,personel_izin.tatil_id,personel_izin.tarih, " +
                          "personel_izin.aciklama FROM personel_kartlari INNER JOIN personel_izin ON personel_izin.personel_id = personel_kartlari.id" +
                          " where personel_izin.tarih = '{0}'", DateTime.Now.ToString("yyyy-MM-dd"));

                reader = com.ExecuteReader();

                var izinler = new List<Izinler>();
                while (reader.Read())
                {
                    izinler.Add(new Izinler
                    {
                        personelid = (int)(uint)reader["id"],
                        tarih = DateTime.Parse(reader["tarih"].ToString()),
                        tatilid = (int)reader["tatil_id"],
                        aciklama = (string)reader["aciklama"]
                    });
                }
                reader.Close();
                #endregion
                //izinleri al

                #region giriş saatleri
                com.CommandText =
                            string.Format(
                                "SELECT p.id, p.adi, p.soyadi, g.tarih, g.giris_saat  FROM personel_kartlari p LEFT JOIN personel_giriscikis g ON g.personel_id = p.id where g.tarih='{0}' && p.ozel_kod=0", DateTime.Now.ToString("yyyy-MM-dd"));

                var girisler = new List<GirisSaat>();

                reader = com.ExecuteReader();
                while (reader.Read())
                {
                    girisler.Add(new GirisSaat
                    {
                        personelid = (int)(uint)reader["id"],
                        tarih = DateTime.Parse(reader["tarih"].ToString()),
                        giris_saat = TimeSpan.Parse(reader["giris_saat"].ToString())
                    });
                }
                reader.Close();
                #endregion

                //var gelmeyenler = list.Select(c => new { c.personelid }).Except(girisler.Select(d => new { d.personelid }));
                //var izinsizgelmeyenler = gelmeyenler.Except(izinler.Select(c => new { personelid = c.personelid })).ToList();

                var personelliste = new List<GunlukRapor>(); 




                //girisler.ForEach(c => personelliste.Add(new GunlukRapor()
                //{
                //    personel = db.Personels.FirstOrDefault(d => d.pdksid == c.personelid),
                //    Durum = PEnumDurum.gelenler
                //}));

                //izinsizgelmeyenler.ForEach(c => personelliste.Add(new GunlukRapor()
                //{
                //    personel = db.Personels.FirstOrDefault(d => d.pdksid == c.personelid),
                //    Durum = PEnumDurum.gelmeyenler
                  
                //}));

                //izinler.ForEach(c => personelliste.Add(new GunlukRapor()
                //{
                //    personel = db.Personels.FirstOrDefault(d => d.pdksid == c.personelid),
                //    Durum = PEnumDurum.izinliler
                //}));
                return personelliste;
            }
           

        }
    }



    public interface Pers
    {
        int personelid { get; set; }
    }


    public class GirisSaat : Pers
    {
        public int personelid { get; set; }
        public DateTime tarih { get; set; }
        public TimeSpan giris_saat { get; set; }
    }
    public class Izinler : Pers
    {
        public int personelid { get; set; }
        public DateTime tarih { get; set; }
        public int tatilid { get; set; }
        public string aciklama { get; set; }
    }

    public class Persotek : Pers
    {
        public int personelid { get; set; }
        public string adi { get; set; }
        public string soyadi { get; set; }
    }
}