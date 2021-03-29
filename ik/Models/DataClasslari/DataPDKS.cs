using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Data;
using System.Data.Entity.Migrations.Model;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MySql.Data.MySqlClient;
using ik.Models;

namespace ik.Models.DataClasslari
{
    public class DataPDKS
    {
        private ikEntities db = new ikEntities();

        
        public List<DataPDKSMazeretliGelmeyenlerVM> MazeretliGelmeyenler(DateTime tarih1)
        {
            var dset = new ikDSet();

            using (
                var con =
                    new MySqlConnection(
                        "Server=172.41.40.85;Database=perkotek;Uid=root;Pwd=max;AllowZeroDateTime=True;Charset=latin5"))
            {
                var com =
                    new MySqlCommand("SELECT personel_kartlari.id,personel_kartlari.sicilno,personel_kartlari.adi,personel_kartlari.soyadi,personel_kartlari.sirket_kod,kodlar_departman.aciklama as birim FROM personel_kartlari INNER JOIN kodlar_departman ON kodlar_departman.kod = personel_kartlari.departman_kod",
                        con);
                if (con.State != ConnectionState.Open)
                    con.Open();
                var adapter = new MySqlDataAdapter(com);
                adapter.Fill(dset.personel_kartlari);
                com.CommandText =
                    string.Format(
                        "select personel_izin.id, personel_izin.personel_id,personel_izin.tarih,personel_izin.gidis_saat,personel_izin.gelis_saat,personel_izin.aciklama,tatil_id,tatil_tablo.aciklama  as IzinTur from personel_izin inner join tatil_tablo on personel_izin.tatil_id=tatil_tablo.id");// where tarih='{0}'",
                                                                                                                                                                                                                                                                                                        // tarih1.ToString("yyyy-MM-dd"));
                adapter.Fill(dset.personel_izin);


                con.Close();
                foreach (var personel in dset.personel_kartlari)
                {
                    try
                    {


                        var personelIzinRow = Enumerable.Where(dset.personel_izin, c => c.tarih == tarih1.Date).FirstOrDefault(c => c.personel_id == personel.id);
                        if (personelIzinRow != null)
                        {
                            Console.WriteLine(personelIzinRow.ItemArray);
                            if (personelIzinRow.tatil_id == 9 && personelIzinRow.gidis_saat > new TimeSpan(8, 30, 0)) continue;
                            personel.Takip = personelIzinRow.IzinTur;
                            var id = personelIzinRow.id;
                            var aciklama = personelIzinRow.aciklama;
                            var pid = personelIzinRow.personel_id;
                            var tarih = personelIzinRow.tarih;
                            var ac = personelIzinRow.aciklama;

                            while (true)
                            {
                                var tarih2 = tarih.AddDays(1);
                                if (tarih2.DayOfWeek == DayOfWeek.Sunday)
                                    tarih2 = tarih2.AddDays(1);

                                var next =
                                    dset.personel_izin.SingleOrDefault(c => c.tarih == tarih2 && c.personel_id == pid && c.aciklama == ac);

                                if (next == null)
                                {
                                    //if (tarih.DayOfWeek == DayOfWeek.Friday)
                                    //    tarih = tarih.AddDays(3);
                                    //if (tarih == null) tarih = DateTime.Now;
                                    personel.isbasi = tarih.ToShortDateString();
                                    break;

                                }
                                tarih = tarih2;
                            }

                            while (true)
                            {
                                var tarih2 = tarih.AddDays(-1);
                                if (tarih2.DayOfWeek == DayOfWeek.Sunday)
                                    tarih2 = tarih2.AddDays(-1);

                                var next = dset.personel_izin.SingleOrDefault(c => c.tarih == tarih2 && c.personel_id == pid && c.aciklama == ac);

                                if (next == null)
                                {
                                    //if (tarih.DayOfWeek == DayOfWeek.Friday)
                                    //    tarih = tarih.AddDays(3);
                                    //if (tarih == null) tarih = DateTime.Now;
                                    personel.baslama = tarih.ToShortDateString();
                                    break;

                                }
                                tarih = tarih2;
                            }




                        }
                    }
                    catch (Exception ex)
                    {
                        Console.WriteLine(ex.Message);
                    }finally
                    {
                        db.Dispose();
                    }
                }
            }

          
            var data =
              dset.personel_kartlari.Where(c => c.Takip != null)
                  .Select(c => new DataPDKSMazeretliGelmeyenlerVM {ID=c.id,  AdSoyad = c.adi + " " + c.soyadi, Aciklama = c.Takip, Bitis = DateTime.Parse(c.isbasi), Baslangıc = DateTime.Parse(c.baslama), Birim = c.birim }).ToList();



            var a = new ikEntities();
            foreach (var maz in data)
            {
                var pers = a.Personels.FirstOrDefault(c => c.pdksid == maz.ID);
                var izinler = a.YizinDetays.FirstOrDefault(c => c.tarih ==maz.Baslangıc && c.Yizin.personelid == pers.id);
                if(izinler!=null)
                {
                    if (izinler.baslangic == new TimeSpan(08, 30, 0))
                        maz.Aciklama = maz.Aciklama + " (Öğleden Önce)";
                    
                    else
                    {
                        maz.Aciklama = maz.Aciklama + " (Öğleden Sonra)";
                    }
                }

            }
            
            
          

            return data;

        }

        public List<DataPDKSGecKalanlarVM> GecKalanlar(DateTime tarih1)
        {
            return GecKalanlar(tarih1, tarih1);
        }

        public List<DataPDKSGecKalanlarVM> GecKalanlar(DateTime tarih1,DateTime tarih2)
        {
            var dset = new ikDSet();

            using (
                var con =
                    new MySqlConnection(
                        "Server=172.41.40.85;Database=perkotek;Uid=root;Pwd=max;AllowZeroDateTime=True;Charset=latin5"))
            {
                var com = new MySqlCommand("", con);
                if (con.State != ConnectionState.Open)
                    con.Open();

                com.CommandText =
                    string.Format(
                        "select personel_giriscikis.personel_id as personelID, CONCAT(personel_kartlari.adi,' ',personel_kartlari.soyadi) as PersonelAdSoyad,personel_giriscikis.tarih as Tarih, personel_giriscikis.giris_saat as GirisSaati,  TIME_TO_SEC(DATE_SUB(CONCAT(personel_giriscikis.tarih, ' ',personel_giriscikis.giris_saat),INTERVAL '0 08:30:00' DAY_SECOND))/60 as GecKalma from personel_giriscikis" +
                        " inner join personel_kartlari on personel_giriscikis.personel_id = personel_kartlari.id " +
                        " where (personel_giriscikis.tarih between '{0}'and '{1}' ) and personel_kartlari.ozel_kod = 0 and personel_kartlari.bolum_kod is null ",//"and personel_giriscikis.giris_saat> '08:35'",
                        tarih1.ToString("yyyy-MM-dd"),tarih2.ToString("yyyy-MM-dd"));


                var adapter = new MySqlDataAdapter(com);
                adapter.Fill(dset.personel_geckalan);
            

                con.Close();
            }


            var data =
                dset.personel_geckalan.Where(c => c.GirisSaati > new TimeSpan(8, 35, 0)).Select(c =>
                    new DataPDKSGecKalanlarVM
                    {
                        AdSoyad = c.PersonelAdSoyad,
                        Giris = c.GirisSaati, //.ToString(@"hh\:mm"),
                        GecKalma = c.GecKalma,

                        ID = c.personelID,
                        Tarih = c.Tarih
                    });

         

            return data.ToList();

        }

        public int MazeretEkle(int pdksid, PDKSTatilID tatilid, DateTime baslangic, DateTime bitis, string aciklama)
        {
            int kayıt = 0;
            
            using (
                var con =
                    new MySqlConnection(
                        "Server=172.41.40.85;Database=perkotek;Uid=root;Pwd=max;AllowZeroDateTime=True;Charset=latin5"))
            {
                var com = new MySqlCommand("", con);
                if (con.State != ConnectionState.Open)
                    con.Open();
              
                while (baslangic<=bitis)
                {
                    com.CommandText = string.Format("insert into personel_izin (personel_id,tatil_id,tarih,gidis_saat,gelis_saat,saatlik,aciklama) " +
                                                    "values({0},{1},'{2}','00:00:00','00:00:00',0,'{3}')",pdksid,(int)tatilid,baslangic.ToString("yyyy-MM-dd"),aciklama);
                   kayıt+=com.ExecuteNonQuery();
                    baslangic=baslangic.AddDays(1);
                }
                con.Close();
                
            }

            return kayıt;
        }
    }

    public class DataPDKSMazeretEkleVM
    {
       
        public int  pdksID { get; set; }
        [Required]
        [Display(Name = "Mazeret İzin Tipi")]
        public PDKSTatilID tatilID { get; set; }
        [Required]
        [Display(Name = "Başlangıç Tarihi")]
        [DataType(DataType.Date)]
        public DateTime baslangic { get; set; }
        [Required]
        [Display(Name = "Bitiş Tarihi")]
        [DataType(DataType.Date)]
        public DateTime bitis { get; set; }
        [Required]
        [Display(Name = "Açıklama")]
        public string aciklama { get; set; }

        [Display(Name = "Saatlik")]
        public bool Saatlik { get; set; }

        [RequiredIf("Saatlik" , true)]
        public TimeSpan CikisSaat { get; set; }

        [RequiredIf("Saatlik" , true)]
        public TimeSpan GirisSaat { get; set; }

    }

    public class DataPDKSGecKalanlarVM
    {
        public int ID { get; set; }
        public string AdSoyad { get; set; }
        public TimeSpan Giris { get; set; }
        public int GecKalma { get; set; }
        public DateTime Tarih { get; set; }
    }

    public class DataPDKSMazeretliGelmeyenlerVM
    {
        public int ID { get; set; }
        public string AdSoyad { get; set; }
        public string Aciklama { get; set; }
        public DateTime Baslangıc { get; set; }
        public DateTime Bitis { get; set; }
        public string Birim { get; set; }
    }
}