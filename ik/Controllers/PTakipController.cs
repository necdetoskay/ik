using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Globalization;
using System.Linq;
using System.Web.Mvc;
using DevExpress.Data.WcfLinq.Helpers;
using ik.Models;
using Microsoft.Ajax.Utilities;
using MySql.Data.MySqlClient;
using PtakipDAL;
using WebGrease.Css.Extensions;

namespace ik.Controllers
{
    [FilterConfig.CustomActionFilter]
    [Authorize(Users = @"KENTKONUT\noskay,KENTKONUT\derya.aslan")]
    public class PTakipController : Controller
    {
        // GET: PTakip
        private readonly ikEntities db = new ikEntities();

        protected override void Dispose(bool disposing)
        {
            db.Dispose();base.Dispose(disposing);
        }



        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public ActionResult AutoComplete(string term)
        {
            var queryable = from p in (from p in db.Personels
                                       where p.adsoyad.StartsWith(term)
                                       select p).Take(10)
                            select new { label = p.adsoyad, val = p.id };
            return Json(queryable.ToList());
        }


        public JsonResult AylikEksikHareket(DateTime tarih)
        {// var tarih = new DateTime(2017,2,15);
            DateTime tarih1 = new DateTime(tarih.Year, tarih.Month, 01);
            DateTime tarih2 = tarih;
            var liste = new List<Devamsız>();
            var devamsız = new List<DevamsızPersonel>();
            var izinli = new List<Devamsızİzin>();
            var eksikler = new List<AylikEksikHareket>();
            using (
                var con =
                    new MySqlConnection(
                        "Server=172.41.40.85;Database=perkotek;Uid=root;Pwd=max;AllowZeroDateTime=True;Charset=latin5"))
            {
                var com =
                    new MySqlCommand(
                        string.Format("SELECT personel_kartlari.id,concat(personel_kartlari.adi,' ', personel_kartlari.soyadi)as adsoyad, personel_giriscikis.tarih FROM " +
"personel_kartlari INNER JOIN personel_giriscikis ON personel_kartlari.id = personel_giriscikis.personel_id " +
"WHERE personel_kartlari.cikistarihi is null and personel_giriscikis.tarih >= '{0}' and personel_giriscikis.tarih <= '{1}'",
                            tarih1.ToString("yyyy-MM-dd"), tarih2.ToString("yyyy-MM-dd")), con);
                if (con.State != ConnectionState.Open)
                    con.Open();
                var reader = com.ExecuteReader();
                while (reader.Read())
                {
                    liste.Add(new Devamsız { id = reader["id"], adsoyad = reader["adsoyad"], tarih = DateTime.Parse(reader["tarih"].ToString()) });
                }
                reader.Close();
                com.CommandText = "SELECT id,concat(adi,' ',soyadi) as adsoyad from personel_kartlari WHERE ozel_kod = 0 and cikistarihi is null";
                reader = com.ExecuteReader();
                while (reader.Read())
                {
                    devamsız.Add(new DevamsızPersonel { id = reader["id"], adsoyad = reader["adsoyad"] });
                }
                reader.Close();
                com.CommandText = string.Format("SELECT personel_izin.personel_id,personel_izin.tarih,concat(personel_kartlari.adi,' ', personel_kartlari.soyadi)as adsoyad from personel_izin inner join personel_kartlari on personel_kartlari.id = personel_izin.personel_id WHERE personel_izin.tarih >= '{0}' and personel_izin.tarih <= '{1}'",
                     tarih1.ToString("yyyy-MM-dd"), tarih2.ToString("yyyy-MM-dd"));
                reader = com.ExecuteReader();
                while (reader.Read())
                {
                    izinli.Add(new Devamsızİzin() { id = reader["personel_id"], adsoyad = reader["adsoyad"], tarih = DateTime.Parse(reader["tarih"].ToString()) });
                }
                reader.Close();
                con.Close();
            }

            for (DateTime t1 = tarih1; t1 <= tarih2; t1 = t1.AddDays(1))
            {
                Console.WriteLine(t1);
                if (t1.DayOfWeek == DayOfWeek.Saturday || t1.DayOfWeek == DayOfWeek.Sunday)
                    continue;
                // var a = liste.Where(c => c.tarih == t1).Select(c => c.adsoyad).Except(devamsız.Select(d => d.adsoyad)).Except(izinli.Where(c => c.tarih == t1).Select(f=>f.adsoyad));
                var b = devamsız.Select(c => c.adsoyad).Except(liste.Where(c => c.tarih == t1).Select(c => c.adsoyad)).Except(izinli.Where(c => c.tarih == t1).Select(f => f.adsoyad));
                if (b.Any())
                {
                    try
                    {
                        foreach (var bb in b)
                        {
                            var p = db.Personels.FirstOrDefault(c => c.adsoyad == bb.ToString());
                            if(p.kadro!=1) continue;
                            var mm = p.GeciciMazerets.FirstOrDefault(c => c.personelID == p.id & c.tarih.Date == t1.Date);
                            if (mm == null && (t1.DayOfWeek == DayOfWeek.Saturday || t1.DayOfWeek == DayOfWeek.Sunday || db.ResmiTatils.Any(c => c.tarih == t1))) continue;
                            var eksik =
                                new AylikEksikHareket() { id = p.id, mazeret = mm == null ? "yok" : mm.mazeret, adsoyad = bb.ToString(), tarih = t1.ToShortDateString() };
                            eksikler.Add(eksik);

                        }

                        // b.ToList().ForEach(r => eksikler.Add(new { id =0, mazeret="", adsoyad = r.ToString(), tarih = t1.ToShortDateString() }));
                    }
                    catch (Exception ex)
                    {
                        Console.WriteLine(ex.Message);


                    }

                }
            }



            return Json(eksikler.OrderByDescending(c=>c.tarih), JsonRequestBehavior.AllowGet);
        }



        public ActionResult GunlukTakip(string date)
        {
            var tarih = DateTime.Parse(date);
            var ds = new ikDSet();

            using (
                var con =
                    new MySqlConnection(
                        "Server=172.41.40.85;Database=perkotek;Uid=root;Pwd=max;AllowZeroDateTime=True;Charset=latin5"))
            {
                var com =
                    new MySqlCommand(
                        string.Format(
                            "SELECT personel_giriscikis.personel_id,concat(personel_kartlari.adi,' ',personel_kartlari.soyadi) as personelAdSoyad,personel_giriscikis.tarih,personel_giriscikis.giris_saat FROM  personel_kartlari" +
                            " right outer join personel_giriscikis on personel_giriscikis.personel_id=personel_kartlari.id WHERE personel_giriscikis.tarih = '{0}'",
                            tarih.ToString("yyyy-MM-dd")), con);
                if (con.State != ConnectionState.Open)
                    con.Open();
                var adapter = new MySqlDataAdapter(com);
                adapter.Fill(ds.pGunlukTakipDT);
                con.Close();
            }

            return PartialView(ds);
        }

        public JsonResult MazeretliGelmeyenler(DateTime tarih1)
        {
            var dset = new ikDSet();

            using (
                var con =
                    new MySqlConnection(
                        "Server=172.41.40.85;Database=perkotek;Uid=root;Pwd=max;AllowZeroDateTime=True;Charset=latin5"))
            {
                var com =
                    new MySqlCommand("select id,sicilno,adi,soyadi,sirket_kod from personel_kartlari",
                        con);
                if (con.State != ConnectionState.Open)
                    con.Open();
                var adapter = new MySqlDataAdapter(com);
                adapter.Fill(dset.personel_kartlari);
                com.CommandText =
                    string.Format(
                        "select personel_izin.id, personel_izin.personel_id,personel_izin.tarih,personel_izin.gidis_saat,personel_izin.gelis_saat,personel_izin.aciklama,tatil_id,tatil_tablo.aciklama as IzinTur from personel_izin inner join tatil_tablo on personel_izin.tatil_id=tatil_tablo.id");// where tarih='{0}'",
                       // tarih1.ToString("yyyy-MM-dd"));
                adapter.Fill(dset.personel_izin);


                con.Close();

                foreach (var personel in dset.personel_kartlari)
                {
                    try
                    {
                        
                       
                        var personelIzinRow = dset.personel_izin.Where(c=>c.tarih==tarih1.Date).FirstOrDefault(c => c.personel_id == personel.id);
                        if (personelIzinRow != null) { 
                            if(personelIzinRow.tatil_id==9 && personelIzinRow.gidis_saat>new TimeSpan(8,30,0)) continue;
                            personel.Takip = personelIzinRow.IzinTur;

                            var id = personelIzinRow.id;
                            var aciklama = personelIzinRow.aciklama;
                            var pid = personelIzinRow.personel_id;
                            var tarih = personelIzinRow.tarih;

                            while (true)
                            {
                                var tarih2 = tarih.AddDays(1);
                                if(tarih2.DayOfWeek== DayOfWeek.Sunday)
                                    tarih2 = tarih2.AddDays(1);

                                var next =
                                    dset.personel_izin.SingleOrDefault(c => c.tarih == tarih2 && c.personel_id == pid);

                                if (next == null)
                                {
                                    if (tarih.DayOfWeek == DayOfWeek.Friday)
                                        tarih = tarih.AddDays(3);
                                    personel.isbasi = tarih.ToShortDateString();
                                    break;
                                    
                                }
                                tarih = tarih2;
                            }
                            
                        }
                    }
                    catch (Exception ex)
                    {Console.WriteLine(ex.Message);
                    }
                }
            }
            var data =
                dset.personel_kartlari.Where(c => c.Takip != null)
                    .Select(c => new { adsoyad = c.adi + " " + c.soyadi, aciklama = c.Takip,isbasi=c.isbasi});
            return Json(data.OrderBy(c=>c.adsoyad), JsonRequestBehavior.AllowGet);
        }
        public JsonResult MazeretsizGelmeyenler(DateTime tarih1)
        {
           PerkotekContext pc=new PerkotekContext();
            pc.PuantajHazirla(tarih1, tarih1);

            var liste = pc.personel.Where(c => !c.PTarihs.Any());
            //var liste= pc.personel.Where(c => c.PTarihs.Any(d => d.Giris == new TimeSpan(0, 0, 0)));

            var data =liste.Select(c => new { adsoyad = c.AdSoyad, c.ID });
            return Json(data.OrderBy(c => c.adsoyad), JsonRequestBehavior.AllowGet);
            
        }
        public JsonResult GecKalanlar(DateTime tarih1)
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
                        "select personel_giriscikis.personel_id, CONCAT(personel_kartlari.adi,' ',personel_kartlari.soyadi) as PersonelAdSoyad,personel_giriscikis.tarih as Tarih, personel_giriscikis.giris_saat as GirisSaati,  TIME_TO_SEC(DATE_SUB(CONCAT(personel_giriscikis.tarih, ' ',personel_giriscikis.giris_saat),INTERVAL '0 08:30:00' DAY_SECOND))/60 as GecKalma from personel_giriscikis" +
                        " inner join personel_kartlari on personel_giriscikis.personel_id = personel_kartlari.id " +
                        " where personel_giriscikis.tarih = '{0}' and (personel_kartlari.ozel_kod = 0) ",//"and personel_giriscikis.giris_saat> '08:35'",
                        tarih1.ToString("yyyy-MM-dd"));


                var adapter = new MySqlDataAdapter(com);
                adapter.Fill(dset.personel_geckalan);
                //var person = dset.personel_izin;
                //{
                //    var izin = dset.personel_izin.Where(c => c.personel_id == person.personelID);
                //}

                con.Close();
            }
            var data =
                dset.personel_geckalan.GroupBy(c => c.PersonelAdSoyad).Select(c => c.FirstOrDefault()).Where(c => c.GirisSaati > new TimeSpan(8, 35, 0))
                    .Select(c => new
                    {
                        adsoyad = c.PersonelAdSoyad,
                        giris = c.GirisSaati.ToString(@"hh\:mm"),
                        geckalma = c.GecKalma
                    });
            return Json(data, JsonRequestBehavior.AllowGet);
        }

        public JsonResult CikistaKartBasmayanlar(DateTime tarih1)
        {
            var tarih = tarih1.Subtract(new TimeSpan(1, 0, 0, 0));
            if (tarih.DayOfWeek == DayOfWeek.Sunday)
            {
                tarih = tarih1.Subtract(new TimeSpan(2, 0, 0, 0));
            }
            var liste = new List<Test>();
            var sortedlist = new List<Test>();
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
                        "select personel_giriscikis.personel_id, CONCAT(personel_kartlari.adi,' ',personel_kartlari.soyadi) as PersonelAdSoyad,personel_giriscikis.tarih as Tarih, personel_giriscikis.cikis_saat,personel_giriscikis.giris_saat from personel_giriscikis" +
                        " inner join personel_kartlari on personel_giriscikis.personel_id = personel_kartlari.id " +
                        " where personel_giriscikis.tarih = '{0}' and (personel_kartlari.ozel_kod = 0) ",//"and personel_giriscikis.giris_saat> '08:35'",
                        tarih.ToString("yyyy-MM-dd"));


                var reader = com.ExecuteReader();
                while (reader.Read())
                {
                    liste.Add(new Test { ad = reader["PersonelAdSoyad"].ToString(), tarih = DateTime.Parse(reader["Tarih"].ToString()), CikisSaat = reader["cikis_saat"], GirisSaat = reader["giris_saat"] });
                }
                con.Close();
            }
            Test test;
            foreach (var ad in liste.GroupBy(c => c.ad))
            {
                test = new Test();
                test.ad = ad.Key;

                foreach (var t in ad)
                {
                    if (t.GirisSaat != DBNull.Value)
                        test.Saatler.Add((TimeSpan)t.GirisSaat);
                    if (t.CikisSaat != DBNull.Value)
                        test.Saatler.Add((TimeSpan)t.CikisSaat);}
                sortedlist.Add(test);
            }


            return Json(sortedlist.Where(c => c.Saatler.Count < 2).Select(c => new { adsoyad = c.ad }), JsonRequestBehavior.AllowGet);
        }

        public JsonResult _PersonelDogumTarihi(DateTime tarih)
        {

            var liste = db.Personels.Where(c => c.dogumtarihi.Value.Month == tarih.Month & c.dogumtarihi.Value.Day == tarih.Day & c.cikistarihi==null).Select(c => new { adsoyad = c.adsoyad + " " + c.dogumtarihi.ToString() }).ToList();

            if (liste.Any())
                return Json(new { Data = liste, Success = true }, JsonRequestBehavior.AllowGet);

            return Json(new { Data = "", Success = false }, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public ActionResult GeciciMazeret(int personelID, string mazeret, DateTime tarih)
        {
            var personel = db.Personels.SingleOrDefault(c => c.id == personelID);
            if (personel == null)
            {
                return Json(new { Success = false }, JsonRequestBehavior.AllowGet);
            }
            var mzrt =
                personel.GeciciMazerets.FirstOrDefault(c => c.personelID == personelID & c.tarih.Date == tarih.Date);
            if (mzrt != null)
            {
                mzrt.mazeret = mazeret;
            }
            else
            {
                personel.GeciciMazerets.Add(new GeciciMazeret { mazeret = mazeret, tarih = tarih });
            }
            try
            {
                db.SaveChanges();
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);

            }
            //personel kaydını bul
            return Json(new { Success = true }, JsonRequestBehavior.AllowGet);
        }

        public ActionResult GunlukPTakip(string date)
        {
            var tarih = DateTime.Parse(date);
            PerkotekContext per = new PerkotekContext();
            per.PuantajHazirla(tarih, tarih, true);

           // var gelmeyenler = per.personel.Where(c => c.PTarihs.Any()).OrderBy(c=>c.PTarihs.FirstOrDefault().Giris);




            var liste =
                per.personel.Select(c => new Ptakipgunluk
                {
                    AdSoyad = c.AdSoyad,
                    Giris = c.PTarihs.Any(d => d.Tarih == tarih.Date) ?
                c.PTarihs.FirstOrDefault(d => d.Tarih == tarih.Date).Giris.ToString() :""
                });
           

            return View(liste.OrderBy(c => c.AdSoyad).ToList());
        }
    }

    public class AylikEksikHareket
    {
        public int id { get; set; }
        public string mazeret { get; set; }
        public string adsoyad { get; set; }
        public string tarih { get; set; }
    }

    public class Devamsız
    {
        public object id { get; set; }
        public object adsoyad { get; set; }
        public DateTime tarih { get; set; }
    }

    public class DevamsızPersonel
    {
        public object id { get; set; }
        public object adsoyad { get; set; }
    }

    public class Devamsızİzin
    {
        public object id { get; set; }
        public object adsoyad { get; set; }
        public DateTime tarih { get; set; }
    }

    public class Test
    {
        public Test()
        {
            Saatler = new List<TimeSpan>();
        }
        public string ad { get; set; }
        public DateTime tarih { get; set; }
        public object GirisSaat { get; set; }
        public object CikisSaat { get; set; }

        public List<TimeSpan> Saatler { get; set; }

    }

    public class pgc
    {
        public object personel_id { get; set; }
        public object personelAdSoyad { get; set; }
        public object tarih { get; set; }
        public object giris_saat { get; set; }
        public object cikis_saat { get; set; }
    }

    //personel_id  personelAdSoyad tarih  giris_saat  cikis_saat


}