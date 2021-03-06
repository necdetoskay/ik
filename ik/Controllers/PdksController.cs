﻿using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Web.Mvc;
using ik.Models;
using ik.Models.DataClasslari;
using Microsoft.Ajax.Utilities;
using MySql.Data.MySqlClient;
using PtakipDAL;

namespace ik.Controllers
{
    [FilterConfig.CustomActionFilter]
    [CustomAuthorize(Users = @"KENTKONUT\noskay,KENTKONUT\derya.aslan")]
    public class PdksController : Controller
    {
        private MySqlConnection db;
        private ikEntities ik = new ikEntities();

        protected override void Dispose(bool disposing)
        {
            // db.Dispose();
            base.Dispose(disposing);
        }
        public ActionResult _IzinGirisEkle(int id, string tarih, bool tip)
        {
            using (var dv = new ikEntities())
            {
                var p = dv.Personels.FirstOrDefault(c => c.id == id);
                using (
              db =
                  new MySqlConnection(
                      "Server=172.41.40.85;Database=perkotek;Uid=root;Pwd=max;AllowZeroDateTime=True;Charset=latin5"))
                {
                    var info = new object();
                    var com = new MySqlCommand("", db);

                    //girişi varmı
                    //izni varmı
                    if (db.State != ConnectionState.Open)
                        db.Open();
                    com.CommandText =
                                    String.Format("select * from personel_izin where personel_id={0} and tarih='{1}'",
                                        p.pdksid, DateTime.Parse(tarih).ToString("yyyy-MM-dd"));
                    var reader = com.ExecuteReader();
                    if (reader.HasRows)
                    {
                        return Json(new { Success = true, Mesaj = "Belirtilen Tarihe Ait Giriş Kaydı Bulundu" }, JsonRequestBehavior.AllowGet);
                    }
                    if (!reader.IsClosed)
                        reader.Close();
                    com.CommandText =
                               string.Format(
                                   "select * from personel_giriscikis where personel_id={0} and tarih='{1}'", p.pdksid,
                                   DateTime.Parse(tarih).ToString("yyyy-MM-dd"));
                    if (!reader.IsClosed)
                        reader.Close();
                    reader = com.ExecuteReader();
                    if (reader.HasRows)
                    {
                        // sb.AppendLine(string.Format("{0} için  {1} tarihinde girişi mevcut", p.adsoyad, tarih));
                        if (!reader.IsClosed)
                            reader.Close();
                        return Json(new { Success = true, Mesaj = "Belirtilen Tarihe Ait İzin Kaydı Bulundu" }, JsonRequestBehavior.AllowGet);
                    }

                    //buradan sonra izin veya giriş yapılacak
                    if (tip)
                    {
                        com.CommandText =
                            string.Format(
                                "insert into personel_izin(personel_id,tatil_id,tarih,aciklama) values({0},{1},'{2}','{3}')",
                                p.pdksid, 5, DateTime.Parse(tarih).ToString("yyyy-MM-dd"),
                                "COVİD-19 İDARİ İZİN");
                        if (!reader.IsClosed)
                            reader.Close();
                        int result = com.ExecuteNonQuery();
                        if (result > 0)
                        {
                            return Json(new { Success = true, Mesaj = "Giriş Kaydı Oluşturuldu" },
                                JsonRequestBehavior.AllowGet);
                        }
                        return Json(new { Success = false, Mesaj = "Hata !!!!  Giriş Kaydı Oluşturulamadı" },
                            JsonRequestBehavior.AllowGet);
                    }
                    else
                    {
                        if (!reader.IsClosed)
                            reader.Close();
                        com.CommandText =
                            string.Format(
                                "insert into personel_giriscikis(personel_id,tarih,giris_saat,cikis_saat,elle_giris,giris_kapi,cikis_kapi) " +
                                "values({0},'{1}','{2}','{3}',{4},{5},{6})", p.pdksid, DateTime.Parse(tarih).ToString("yyyy-MM-dd"), new TimeSpan(08, 30, 0), new TimeSpan(17, 30, 0), 0, 3, 3);
                        int result = com.ExecuteNonQuery();
                        if (result > 0)
                        {
                            return Json(new { Success = true, Mesaj = "İzin Kaydı Oluşturuldu" },
                                JsonRequestBehavior.AllowGet);
                        }
                        return Json(new { Success = false, Mesaj = "Hata !!!!  İzin Kaydı Oluşturulamadı" },
                            JsonRequestBehavior.AllowGet);
                    }


                }
            }





        }

        public ActionResult TopluEksikHareketler()
        {
            return View();
        }

        public JsonResult PersonelBilgi(string adsoyad)
        {
            using (
                db =
                    new MySqlConnection(
                        "Server=172.41.40.85;Database=perkotek;Uid=root;Pwd=max;AllowZeroDateTime=True;Charset=latin5"))
            {
                var info = new object();
                var com = new MySqlCommand("", db);
                if (db.State != ConnectionState.Open)
                    db.Open();
                com.CommandText = string.Format("select * from personel_kartlari where concat(adi,' ',soyadi)='{0}'",
                    adsoyad);
                var reader = com.ExecuteReader();
                while (reader.Read())
                {
                    info = new
                    {
                        id = reader["id"],
                        giristarihi = reader["giristarihi"],
                        kartno = reader["kartno"]
                    };
                }

                db.Close();
                return Json(info, JsonRequestBehavior.AllowGet);
            }
        }


        [HttpPost]

        public ActionResult IzinEkle(int personelid = 0)
        {
            if (personelid < 1)
                return HttpNotFound();
            //personelid sinden personeli çek
            var personel = ik.Personels.SingleOrDefault(c => c.id == personelid);
            var izinler =
                personel.Izins.Where(
                    c => c.baslangictarih >= new DateTime(2017, 01, 01) || c.bitistarihi >= new DateTime(2017, 01, 01));

            using (
                db =
                    new MySqlConnection(
                        "Server=172.41.40.85;Database=perkotek;Uid=root;Pwd=max;AllowZeroDateTime=True;Charset=latin5"))
            {
                var info = new object();
                var com = new MySqlCommand("", db);
                if (db.State != ConnectionState.Open)
                    db.Open();

                foreach (var izin in izinler)
                {
                    com.CommandText =
                        string.Format(
                            "select count(*) from personel_izin where personel_id={2} and tatil_id=6 and  tarih>='{0}' and tarih<='{1}'",
                            izin.baslangictarih.ToString("yyyy-MM-dd"), izin.bitistarihi.ToString("yyyy-MM-dd"),
                            personel.pdksid);
                    var reader = (int)com.ExecuteScalar();
                    if (reader > 0)
                    {
                        izin.Mevcut = true;
                    }
                    //her izin başlangıç bitiş arası pdks kaydı varmı
                }
                db.Close();
            }
            //ik izinleri listele
            //pdks izinleri ile karşılaştır eksik izinleri işaretler
            ViewBag.pID = personelid;
            return PartialView(izinler.OrderByDescending(c => c.baslangictarih));
        }

        [HttpPost]
        public JsonResult PdksIzinEkle(int izinid)
        {
            var izin = ik.Izins.SingleOrDefault(c => c.id == izinid);
            var personel = izin.Personel;
            var tarih1 = izin.baslangictarih;
            var tarih2 = izin.bitistarihi;
            using (
                db =
                    new MySqlConnection(
                        "Server=172.41.40.85;Database=perkotek;Uid=root;Pwd=max;AllowZeroDateTime=True;Charset=latin5"))
            {
                var info = new object();
                var com = new MySqlCommand("", db);

                if (db.State != ConnectionState.Open)
                    db.Open();
                int toplamgun = 0;
                for (DateTime t1 = tarih1; t1 <= tarih2; t1 = t1.AddDays(1))
                {
                    try
                    {
                        if (t1.DayOfWeek == DayOfWeek.Sunday) continue;
                        //her gün için pdks izin kaydı gir
                        com.CommandText =
                            string.Format("select count(*) from personel_izin where personel_id={0} and tarih='{1}'",
                                personel.pdksid, t1.ToString("yyyy-MM-dd"));
                        int result = (int)com.ExecuteScalar();
                        if (result > 0) continue;
                        com.CommandText =
                            string.Format(
                                "insert into personel_izin (personel_id,tatil_id,tarih,gidis_saat,gelis_saat,saatlik,aciklama,otoizin) " +
                                "values ({0},6,'{1}','00:00:00','00:00:00',0,'{2} YILINDAN {3} GUN',0)", personel.pdksid,
                                t1.ToString("yyyy-MM-dd"), izin.yil, izin.gun);
                        //izin varmı
                        //yoksa resmi tatilmi
                        //yoksa insert
                        toplamgun += (int)com.ExecuteNonQuery();
                    }
                    catch (Exception ex)
                    {
                        Console.WriteLine(ex.Message);
                        return Json(new { Success = false }, JsonRequestBehavior.AllowGet);
                    }

                }
                db.Close();
            }
            return Json(new { Success = true, izinid }, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public JsonResult PdksIzinGir(Guid mikroid, int izinyil, string baslangic, string bitis, string aciklama)
        {
            using (var ik = new ikEntities())
            {
                var personel = ik.Personels.SingleOrDefault(c => c.mikroid == mikroid);
                using (db =
                    new MySqlConnection(
                        "Server=172.41.40.85;Database=perkotek;Uid=root;Pwd=max;AllowZeroDateTime=True;Charset=latin5"))
                {
                    var info = new object();
                    var com = new MySqlCommand("", db);

                    if (db.State != ConnectionState.Open)
                        db.Open();

                    for (DateTime t1 = DateTime.Parse(baslangic); t1 <= DateTime.Parse(bitis); t1 = t1.AddDays(1))
                    {
                        try
                        {
                            if (t1.DayOfWeek == DayOfWeek.Sunday) continue;
                            //her gün için pdks izin kaydı gir
                            com.CommandText =
                                string.Format(
                                    "select count(*) from personel_izin where personel_id={0} and tarih='{1}'",
                                    personel.pdksid, t1.ToString("yyyy-MM-dd"));
                            int result = (int)com.ExecuteScalar();
                            if (result > 0) continue;
                            com.CommandText =
                                string.Format(
                                    "insert into personel_izin (personel_id,tatil_id,tarih,gidis_saat,gelis_saat,saatlik,aciklama,otoizin) " +
                                    "values ({0},6,'{1}','00:00:00','00:00:00',0,'{2}',0)", personel.pdksid,
                                    t1.ToString("yyyy-MM-dd"), aciklama);
                            com.ExecuteNonQuery();

                        }
                        catch (Exception ex)
                        {
                            Console.WriteLine(ex.Message);
                            return Json(new { Success = false }, JsonRequestBehavior.AllowGet);
                        }

                    }
                    db.Close();
                }
                return Json(new { Success = true, PersonelID = personel.id, Arac = personel.PersonelDetay.sirketarac },
                    JsonRequestBehavior.AllowGet);






            }
        }

        public ActionResult EksikHareketler()
        {
            return View();
        }

        public ActionResult _MazeretEkle(string[][] data)
        {
            ArrayList liste = new ArrayList();
            using (
                db =
                    new MySqlConnection(
                        "Server=172.41.40.85;Database=perkotek;Uid=root;Pwd=max;AllowZeroDateTime=True;Charset=latin5"))
            {

                var com = new MySqlCommand("", db);
                db.Open();
                foreach (string[] dizi in data)
                {
                    try
                    {
                        var id = int.Parse(dizi[0]);
                        var tarih = DateTime.Parse(dizi[1]);
                        string giris = dizi[3];
                        string gelis = dizi[4];
                        string dateid = dizi[5];
                        string mazeret = dizi[6];
                        int saatlik = (giris == "00:00" || gelis == "00:00") ? 0 : 1;

                        com.CommandText = string.Format(
                            "insert into personel_izin (personel_id,tatil_id,tarih,gidis_saat,gelis_saat,saatlik,aciklama,otoizin) " +
                            "values({0},{1},'{2}','{3}','{4}',{5},'{6}',0)", id, 3, tarih.ToString("yyyy-MM-dd"), giris,
                            gelis, saatlik, mazeret);

                        var res = com.ExecuteNonQuery();
                        if (res > 0)
                        {
                            liste.Add(new { dateid });
                        }


                    }
                    catch (Exception x)
                    {

                    }
                }


                db.Close();
            }

            return Json(liste, JsonRequestBehavior.AllowGet);
        }

        public ActionResult _EksikHareketEkle(string[][] data)
        {
            ArrayList liste = new ArrayList();
            using (
                db =
                    new MySqlConnection(
                        "Server=172.41.40.85;Database=perkotek;Uid=root;Pwd=max;AllowZeroDateTime=True;Charset=latin5"))
            {

                var com = new MySqlCommand("", db);
                db.Open();
                foreach (string[] dizi in data)
                {
                    try
                    {
                        var id = int.Parse(dizi[0]);
                        var tarih = DateTime.Parse(dizi[1]);
                        string giris = dizi[3];
                        string cikis = dizi[4];
                        string dateid = dizi[5];

                        if (giris != "")
                        {
                            if (cikis == "") //sadece girişi insert et
                            {
                                com.CommandText = string.Format(
                                    "insert into personel_giriscikis (personel_id,tarih,giris_saat,elle_giris,giris_kapi,vardiya) " +
                                    "values({0},'{1}','{2}','{3}',0,-1)", id, tarih.ToString("yyyy-MM-dd"), giris, 19);
                            }
                            else
                            {
                                com.CommandText = string.Format(
                                    "insert into personel_giriscikis (personel_id,tarih,giris_saat,cikis_saat,elle_giris,elle_cikis,giris_kapi,cikis_kapi,vardiya) " +
                                    "values({0},'{1}','{2}','{3}',{4},{5},0,0,-1)", id, tarih.ToString("yyyy-MM-dd"),
                                    giris, cikis, 19, 19);
                            }

                        }
                        else
                        {
                            if (cikis != null) //sadece girişi insert et
                            {
                                com.CommandText = string.Format(
                                    "insert into personel_giriscikis (personel_id,tarih,cikis_saat,elle_cikis,cikis_kapi,vardiya) " +
                                    "values({0},'{1}','{2}','{3}',0,-1)", id, tarih.ToString("yyyy-MM-dd"), cikis, 19);
                            }
                        }

                        var res = com.ExecuteNonQuery();
                        if (res > 0)
                        {
                            liste.Add(new { dateid });
                        }
                    }
                    catch (Exception x)
                    {

                    }
                }


                db.Close();
            }

            return Json(liste, JsonRequestBehavior.AllowGet);
            //BAŞARILI HER KAYIT İÇİN GEREİYE BİLGİ DÖNDÜR TABLE ROW PAİNT GREEN
            //dizi her satır için insert sorgusu yaz

        }

        public ActionResult _RaporEkle(int? pdksid, DateTime baslangic, DateTime bitis)
        {
            return RedirectToAction("SaglikRapor", "Personel");

        }

        /// <summary>
        /// ayın başından bu güne kadar olan giriş çıkışları personel idsine göre getirir
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public JsonResult AylikHareketler(int id) //ik id
        {
            var t2 = DateTime.Now;
            var t1 = new DateTime(t2.Year, t2.Month, 1);
            var pers = ik.Personels.FirstOrDefault(c => c.id == id);
            PerkotekContext cont = new PerkotekContext();
            cont.PuantajHazirla(t1, t2, pers.pdksid.Value, false);
            var liste =
                cont.personel.FirstOrDefault(d => d.ID == pers.pdksid.Value)
                    .PTarihs.OrderBy(c => c.Tarih)
                    .AsQueryable()
                    .Select(c => new
                    {
                        Tarih = c.Tarih.ToLongDateString(),
                        Giriş = c.Giris.ToString(@"hh\:mm"),
                        Çıkış = c.Cikis.ToString(@"hh\:mm")
                    }).ToList();

            return Json(new { Success = true, Data = liste }, JsonRequestBehavior.AllowGet);
        }

        public JsonResult IzinveRaporlar(int ikID)
        {
            var pers = ik.Personels.FirstOrDefault(c => c.id == ikID);

            using (
                db =
                    new MySqlConnection(
                        "Server=172.41.40.85;Database=perkotek;Uid=root;Pwd=max;AllowZeroDateTime=True;Charset=latin5"))
            {
                var info = new object();
                var com =
                    new MySqlCommand(
                        "SELECT personel_izin.id, CONCAT(personel_kartlari.adi, ' ', personel_kartlari.soyadi) as adsoyad," +
                        " personel_izin.tarih,personel_izin.gidis_saat,personel_izin.gelis_saat,personel_izin.aciklama,tatil_tablo.aciklama as izintip " +
                        " FROM personel_izin INNER JOIN personel_kartlari ON personel_kartlari.id = personel_izin.personel_id " +
                        " INNER JOIN tatil_tablo ON tatil_tablo.id = personel_izin.tatil_id WHERE `personel_id` = '" +
                        pers.pdksid.Value + "'", db);

                if (db.State != ConnectionState.Open)
                    db.Open();
                MySqlDataReader reader = com.ExecuteReader();
                var izinler = new List<pdksizinrapor>();
                while (reader.Read())
                {

                    var ad = (string)reader["adsoyad"];
                    var trh = DateTime.Parse(reader["tarih"].ToString());
                    var gdsst = (TimeSpan)reader["gidis_saat"];
                    var glsst = (TimeSpan)reader["gelis_saat"];
                    var acklm = (string)reader["aciklama"];
                    var iztp = (string)reader["izintip"];

                    izinler.Add(new pdksizinrapor
                    {
                        adsoyad = ad,
                        tarih = trh,
                        gidis_saat = gdsst,
                        gelis_saat = glsst,
                        aciklama = acklm,
                        izintip = iztp
                    });

                }

                db.Close();



                //Izin tipine göre gruplama olmuyor tüm resmi tatilleri aynı gruba alıyor
                try
                {
                    var liste = izinler.GroupBy(c => c.aciklama).Select(c => new
                    {
                        aciklama = c.Key,
                        izintip = c.FirstOrDefault().izintip,
                        Baslangic =
                            c.FirstOrDefault().tarih.ToShortDateString() + " " +
                            (c.FirstOrDefault().gidis_saat.ToString() == "00:00:00"
                                ? ""
                                : c.FirstOrDefault().gidis_saat.ToString()),
                        Bitis =
                            c.LastOrDefault().tarih.ToShortDateString() + " " +
                            (c.LastOrDefault().gelis_saat.ToString() == "00:00:00"
                                ? ""
                                : c.LastOrDefault().gelis_saat.ToString())
                    });
                    return Json(new { Success = true, Data = liste }, JsonRequestBehavior.AllowGet);
                }
                catch (Exception ex)
                {


                }


            }


            return Json(new { Success = false }, JsonRequestBehavior.AllowGet);
        }

        public ActionResult MazeretEkle()
        {
            return View();
        }


        public ActionResult RaporDurum()
        {
            return View();
        }

        public ActionResult Raporlar(DateTime baslangic, DateTime bitis)
        {
            DateTime tarih1 = baslangic;
            DateTime tarih2 = bitis;

            var izinler = new List<pdksizinrapor>();
            using (
                db =
                    new MySqlConnection(
                        "Server=172.41.40.85;Database=perkotek;Uid=root;Pwd=max;AllowZeroDateTime=True;Charset=latin5"))
            {
                var info = new object();
                var com =
                    new MySqlCommand(
                        string.Format(
                            "SELECT personel_izin.id, CONCAT(personel_kartlari.adi, ' ', personel_kartlari.soyadi) as adsoyad," +
                            " personel_izin.tarih,personel_izin.gidis_saat,personel_izin.gelis_saat,personel_izin.aciklama,tatil_tablo.aciklama as izintip " +
                            " FROM personel_izin INNER JOIN personel_kartlari ON personel_kartlari.id = personel_izin.personel_id " +
                            " INNER JOIN tatil_tablo ON tatil_tablo.id = personel_izin.tatil_id WHERE personel_izin.tarih>='{0}' and personel_izin.tarih<='{1}' and personel_izin.tatil_id=7",
                            tarih1.ToString("yyyy-MM-dd"), tarih2.ToString("yyyy-MM-dd")), db);

                if (db.State != ConnectionState.Open)
                    db.Open();
                MySqlDataReader reader = com.ExecuteReader();

                while (reader.Read())
                {

                    var ad = (string)reader["adsoyad"];
                    var trh = DateTime.Parse(reader["tarih"].ToString());
                    var gdsst = (TimeSpan)reader["gidis_saat"];
                    var glsst = (TimeSpan)reader["gelis_saat"];
                    var acklm = (string)reader["aciklama"];
                    var iztp = (string)reader["izintip"];

                    izinler.Add(new pdksizinrapor
                    {
                        adsoyad = ad,
                        tarih = trh,
                        gidis_saat = gdsst,
                        gelis_saat = glsst,
                        aciklama = acklm,
                        izintip = iztp
                    });

                }

                db.Close();

                var groupped = izinler.GroupBy(c => c.adsoyad);
            }

            return PartialView(izinler);
        }

        [HttpPost]
        public ActionResult _GecKalanlarRapor(List<int> liste, DateTime tarih1, DateTime tarih2)
        {
            var pgc = new List<PDKSGirisCikis>();
            var pm = new List<PDKSMazeret>();
            var pers = liste.Select(vv => ik.Personels.SingleOrDefault(c => c.id == vv)).ToList();
            var gecvm = new List<GecKalanlarVM>();
            //personel giriş çıkış ve mazeretleri yükle
            using (
                db =
                    new MySqlConnection(
                        "Server=172.41.40.85;Database=perkotek;Uid=root;Pwd=max;AllowZeroDateTime=True;Charset=latin5"))
            {
                try
                {
                    var com = new MySqlCommand("", db);
                    db.Open();
                    StringBuilder sb = new StringBuilder();
                    foreach (var p in pers)
                    {
                        sb.Append("personel_id=" + p.pdksid + " or ");
                    }
                    sb.Remove(sb.Length - 4, 3);
                    com.CommandText =
                        string.Format(
                            "select personel_id,tarih,giris_saat,cikis_saat,personel_giriscikis.id from personel_giriscikis " +
                            "INNER JOIN personel_kartlari ON personel_kartlari.id = personel_giriscikis.personel_id " +
                            "where ({0}) and tarih>='{1}' and tarih<='{2}' and personel_kartlari.ozel_kod=0",
                            sb.ToString(), tarih1.ToString("yyyy-MM-dd"), tarih2.ToString("yyyy-MM-dd"));
                    var dset = new GirisCikis();
                    var adapter = new MySqlDataAdapter(com);
                    adapter.Fill(dset.PersonelGirisCikis);
                    com.CommandText = String.Format(
                        "SELECT personel_izin.personel_id,personel_izin.tatil_id,personel_izin.tarih,personel_izin.gidis_saat,personel_izin.gelis_saat,personel_izin.saatlik,personel_izin.aciklama from personel_izin " +
                        "INNER JOIN personel_kartlari ON personel_kartlari.id = personel_izin.personel_id " +
                        "where ({0}) and tarih>='{1}' and tarih<='{2}' and saatlik=1",
                        sb.ToString(), tarih1.ToString("yyyy-MM-dd"), tarih2.ToString("yyyy-MM-dd"));
                    adapter.Fill(dset.PersonelIzin);
                    db.Close();

                    foreach (var per in dset.PersonelGirisCikis.GroupBy(c => c.personel_id))
                    {
                        foreach (var pt in per.GroupBy(d => d.tarih))
                        {
                            if (pt.Key.Date.DayOfWeek == DayOfWeek.Saturday || pt.Key.Date.DayOfWeek == DayOfWeek.Sunday)
                                continue;


                            var gec = new GecKalanlarVM();
                            var prs = pers.SingleOrDefault(c => c.pdksid == per.Key);
                            gec.personelid = prs.id;
                            gec.ID = pt.FirstOrDefault().id;
                            gec.AdSoyad = prs.adsoyad;
                            gec.Tarih = pt.Key.ToShortDateString();

                            var har = new List<TimeSpan>();
                            foreach (var pg in pt)
                            {

                                try
                                {
                                    if (pg.giris_saat != new TimeSpan(0, 0, 0))
                                        har.Add(pg.giris_saat);





                                }
                                catch
                                {
                                }
                                try
                                {
                                    if (pg.cikis_saat != new TimeSpan(0, 0, 0))
                                        har.Add(pg.cikis_saat);
                                }
                                catch
                                {
                                }
                            }
                            gec.Giris = har.OrderBy(c => c.Ticks).FirstOrDefault();
                            //gec.ID =pt.FirstOrDefault().id;
                            // var p = per.FirstOrDefault();





                            var izinler = dset.PersonelIzin.Where(d => d.tarih == pt.Key & d.personel_id == per.Key);

                            if (izinler.Any())
                            {
                                foreach (var v1 in izinler)
                                {
                                    if (v1.gidis_saat == new TimeSpan(8, 30, 0))
                                    {
                                        gec.Giris = new TimeSpan(8, 30, 0);
                                    }
                                }
                                //
                            }

                            var f = gec.Giris.Subtract(new TimeSpan(8, 30, 0));
                            int fark = 0;
                            if (f.Hours > 0)
                            {
                                fark += f.Hours * 60;
                                fark += f.Minutes;
                                gec.Fark = fark;
                                gecvm.Add(gec);
                            }
                            else
                            {
                                if (f.Minutes > 5)
                                {
                                    fark += f.Minutes;
                                    gec.Fark = fark;
                                    gecvm.Add(gec);
                                }
                            }
                            //gec.ID==
                            // gecvm.Add(gec);
                        }


                    }
                }
                catch (Exception exc)
                {


                }
                //her personel için ad soyad, tarih, giriş saat, geç kalma süresi
            }

            return PartialView("_GecKalanlarRapor", gecvm.ToList());


        }

        public ActionResult _Puantaj(List<int> liste, DateTime tarih1, DateTime tarih2)
        {
            var pgc = new List<PDKSGirisCikis>();
            var pm = new List<PDKSMazeret>();
            if (liste == null)
                return Json(new { Success = false }, JsonRequestBehavior.AllowGet);
            var pers = liste.Select(vv => ik.Personels.SingleOrDefault(c => c.id == vv)).ToList();

            //personel giriş çıkış ve mazeretleri yükle
            using (
                db =
                    new MySqlConnection(
                        "Server=172.41.40.85;Database=perkotek;Uid=root;Pwd=max;AllowZeroDateTime=True;Charset=latin5"))
            {
                var com = new MySqlCommand("", db);
                db.Open();
                foreach (var p in pers)
                {
                    com.CommandText =
                        string.Format(
                            "select personel_id,tarih,giris_saat,cikis_saat from personel_giriscikis where personel_id={0} and tarih>='{1}' and tarih<='{2}'",
                            p.pdksid, tarih1.ToString("yyyy-MM-dd"), tarih2.ToString("yyyy-MM-dd"));

                    var reader = com.ExecuteReader();
                    while (reader.Read())
                    {

                        try
                        {
                            pgc.Add(new PDKSGirisCikis
                            {
                                personelID = (int)(uint)reader["personel_id"],
                                tarih = DateTime.Parse(reader["tarih"].ToString()),
                                giris = reader["giris_saat"],
                                cikis = reader["cikis_saat"]
                            });
                        }
                        catch (Exception xxxx)
                        {

                            throw;
                        }
                    }
                    reader.Close();

                    com.CommandText =
                        string.Format(
                            "select personel_id,tarih,tatil_id,gidis_saat,gelis_saat,saatlik,aciklama from personel_izin where personel_id={0} and tarih>='{1}' and tarih<='{2}'",
                            p.pdksid, tarih1.ToString("yyyy-MM-dd"), tarih2.ToString("yyyy-MM-dd"));

                    reader = com.ExecuteReader();
                    while (reader.Read())
                    {
                        try
                        {
                            pm.Add(new PDKSMazeret
                            {
                                personelID = (int)(uint)reader["personel_id"],
                                tarih = DateTime.Parse(reader["tarih"].ToString()),
                                giris = reader["gidis_saat"],
                                cikis = reader["gelis_saat"],
                                saatlik = (byte)reader["saatlik"],
                                aciklama = (string)reader["aciklama"],
                                tatilID = int.Parse(reader["tatil_id"].ToString())

                            });
                        }
                        catch (Exception xxxx)
                        {
                        }
                    }
                    reader.Close();



                }
                db.Close();
            }
            CultureInfo myCI = new CultureInfo("tr-TR");
            Calendar cal = myCI.Calendar;
            //MAZERET VE GİRİŞ ÇIKIŞLARI BİRLEŞTİR

            try
            {
                var list = pers.Select(c => new PDKSPersonel
                {
                    birim = c.birim.birimad,
                    personeladsoyad = c.adsoyad,
                    personelkod = c.sicilno,
                    personelID = c.pdksid.Value
                }).ToList();


                foreach (var p in list)
                {
                    for (DateTime i = tarih1; i <= tarih2; i = i.AddDays(1))
                    {
                        p.gunler.Add(new PDKSGun
                        {
                            tarih = i.Date,
                            hafta =
                                cal.GetWeekOfYear(i.Date, myCI.DateTimeFormat.CalendarWeekRule,
                                    myCI.DateTimeFormat.FirstDayOfWeek)>52?1:cal.GetWeekOfYear(i.Date, myCI.DateTimeFormat.CalendarWeekRule,
                                    myCI.DateTimeFormat.FirstDayOfWeek)

                        });
                    }

                    foreach (var gun in p.gunler)
                    {
                        var mzrt = pm.Where(d => d.tarih == gun.tarih & d.personelID == p.personelID);
                        if (mzrt.Any())
                        {
                            gun.mazeretler = mzrt.ToList();
                            if (mzrt.Any(c => c.tatilID == 6))
                            {
                                gun.Puantaj = "Y.İ.";
                            }
                            if (mzrt.Any(c => c.tatilID == 7))
                            {
                                gun.Puantaj = "R";
                            }
                            if (mzrt.Any(c => c.tatilID == 9)) //mazeret varsa giriş veya çıkış saatini değiştir
                            {
                                foreach (var m in mzrt)
                                {
                                    if (((TimeSpan)m.giris) == new TimeSpan(8, 30, 0)) //sabah mazaret var
                                    {
                                        gun.girisler.Add(new PDKSGirisCikis
                                        {
                                            personelID = p.personelID,
                                            tarih = gun.tarih,
                                            giris = new TimeSpan(8, 30, 0)
                                        });
                                    }
                                    if (((TimeSpan)m.cikis) == new TimeSpan(17, 30, 0)) //çıkışta mazaret var
                                    {
                                        gun.girisler.Add(new PDKSGirisCikis
                                        {
                                            personelID = p.personelID,
                                            tarih = gun.tarih,
                                            cikis = new TimeSpan(17, 30, 0)
                                        });
                                    }
                                }
                            }
                        }

                        var gc = pgc.Where(d => d.tarih == gun.tarih & d.personelID == p.personelID);
                        if (gc.Any())
                        {
                            gun.girisler = gc.ToList();
                            if (gun.Puantaj != "R")
                                gun.Puantaj = "X";
                        }
                        else //mazeret veya rapor varmı
                        {
                            if (gun.tarih.DayOfWeek == DayOfWeek.Saturday || gun.tarih.DayOfWeek == DayOfWeek.Sunday)
                            {
                                if (gun.Puantaj == "")
                                    gun.Puantaj = "";
                            }
                        }


                    }

                    p.gunler.ForEach(
                        c =>
                            c.girisler =
                                pgc.Where(d => d.tarih == c.tarih & d.personelID == p.personelID)
                                    .Select(f => new PDKSGirisCikis
                                    {
                                        personelID = f.personelID,
                                        giris = f.giris,
                                        cikis = f.cikis,
                                        tarih = f.tarih
                                    }).ToList());

                    p.gunler.ForEach(
                        c =>
                            c.mazeretler =
                                pm.Where(d => d.tarih == c.tarih & d.personelID == p.personelID)
                                    .Select(f => new PDKSMazeret()
                                    {
                                        personelID = f.personelID,
                                        giris = f.giris,
                                        cikis = f.cikis,
                                        tarih = f.tarih,
                                        saatlik = f.saatlik,
                                        aciklama = f.aciklama,
                                        tatilID = f.tatilID
                                    }).ToList());
                }

                foreach (var gun in list)
                {
                    foreach (var g in gun.gunler)
                    {
                        foreach (var mes in g.girisler)
                        {
                            if (mes.giris != System.DBNull.Value)
                                g.hareketler.Add((TimeSpan)mes.giris);
                            if (mes.cikis != System.DBNull.Value)
                                g.hareketler.Add((TimeSpan)mes.cikis);

                        }

                        try
                        {
                            //var orderedgiris = g.hareketler.OrderBy(c => c.Hours).ThenBy(d => d.Minutes);
                            //if (orderedgiris.Any())
                            //{
                            //    g.Giris = orderedgiris.First();
                            //    g.Cikis = orderedgiris.Last();
                            //}

                            g.Giris = g.hareketler.First();
                            g.Cikis = g.hareketler.Last();

                        }
                        catch (Exception gc)
                        {
                        }

                        try
                        {
                            if (g.Cikis != null || g.Giris != null)
                                g.fm = (int)((TimeSpan)g.Cikis).Subtract((TimeSpan)g.Giris).TotalMinutes;
                        }
                        catch (Exception fm)
                        {

                        }
                        //mesai hesaplaması yapılacak


                    }
                }


                return Json(list, JsonRequestBehavior.AllowGet);
            }
            catch (Exception xException)
            {
            }


            return Json("hata oluştu", JsonRequestBehavior.AllowGet);
        }


        [HttpPost]
        public ActionResult TopluMazeretGir(int[] personeller, string[] tarihler, int izintur, string aciklama,
            bool kaydet = false)
        {
            var sb = new StringBuilder();
            using (var ik = new ikEntities())
            {
                using (
                    db =
                        new MySqlConnection(
                            "Server=172.41.40.85;Database=perkotek;Uid=root;Pwd=max;AllowZeroDateTime=True;Charset=latin5")
                    )
                {
                    var com = new MySqlCommand("", db);

                    db.Open();
                    foreach (var tarih in tarihler)
                    {

                        foreach (var personel in personeller)
                        {
                            db.Close();
                            db.Open();
                            var p = ik.Personels.SingleOrDefault(c => c.id == personel);
                            if (p != null && !p.puantaj) continue;
                            //ZATEN İZNİ VARSA EKLEME
                            //GİRİŞİ VARSA EKLEME
                            com.CommandText =
                                String.Format("select * from personel_izin where personel_id={0} and tarih='{1}'",
                                    p.pdksid, DateTime.Parse(tarih).ToString("yyyy-MM-dd"));
                            var reader = com.ExecuteReader();

                            if (reader.HasRows)
                            {
                                // sb.AppendLine(string.Format("{0} için  {1} tarihine ait izin kaydı mevcut", p.adsoyad, tarih));
                                continue;
                            }

                            com.CommandText =
                                string.Format(
                                    "select * from personel_giriscikis where personel_id={0} and tarih='{1}'", p.pdksid,
                                    DateTime.Parse(tarih).ToString("yyyy-MM-dd"));
                            if (!reader.IsClosed)
                                reader.Close();
                            reader = com.ExecuteReader();
                            if (reader.HasRows)
                            {
                                // sb.AppendLine(string.Format("{0} için  {1} tarihinde girişi mevcut", p.adsoyad, tarih));
                                if (!reader.IsClosed)
                                    reader.Close();
                                continue;
                            }
                            if (!reader.IsClosed)
                                reader.Close();
                            com.CommandText =
                                string.Format(
                                    "insert into personel_izin(personel_id,tatil_id,tarih,aciklama) values({0},{1},'{2}','{3}')",
                                    p.pdksid, izintur, DateTime.Parse(tarih).ToString("yyyy-MM-dd"), aciklama);
                            if (kaydet)
                            {
                                int result = com.ExecuteNonQuery();
                                if (result > 0)
                                {
                                    sb.AppendLine(string.Format("{0} için  {1} tarihine kayıt girildi", p.adsoyad, tarih));
                                }
                            }
                            else
                            {
                                sb.AppendLine(string.Format("{0} için  {1} tarihine kayıt girilecek", p.adsoyad,
                                    tarih));
                            }
                        }
                    }
                    db.Close();
                }
                return Json(new { Success = true, Data = sb.ToString() }, JsonRequestBehavior.AllowGet);
            }
        }

        public class PDKSPersonel
        {
            public int personelID { get; set; }
            public string personelkod { get; set; }
            public string personeladsoyad { get; set; }
            public string birim { get; set; }
            public List<PDKSGun> gunler { get; set; }

            public PDKSPersonel()
            {
                gunler = new List<PDKSGun>();
            }
        }

        public class PDKSGun
        {
            public int fm { get; set; }
            public int hafta { get; set; }
            public DateTime tarih { get; set; }
            public List<PDKSGirisCikis> girisler { get; set; }
            public List<PDKSMazeret> mazeretler { get; set; }
            public string Puantaj { get; set; } //X,R,Y.İ.
            public object Giris { get; set; }
            public object Cikis { get; set; }
            public List<TimeSpan> hareketler { get; set; }

            public PDKSGun()
            {
                girisler = new List<PDKSGirisCikis>();
                mazeretler = new List<PDKSMazeret>();
                hareketler = new List<TimeSpan>();
            }

            public override string ToString()
            {
                return Puantaj;
            }
        }

        public class PDKSGirisCikis
        {
            public int personelID { get; set; }
            public DateTime tarih { get; set; }
            public object giris { get; set; }
            public object cikis { get; set; }

            public PDKSGirisCikis()
            {

            }

        }

        public class PDKSMazeret
        {
            public int tatilID { get; set; }
            public int personelID { get; set; }
            public DateTime tarih { get; set; }
            public object giris { get; set; }
            public object cikis { get; set; }
            public byte saatlik { get; set; }
            public string aciklama { get; set; }
        }

        public class pdksizinrapor
        {
            public string adsoyad { get; set; }
            public DateTime tarih { get; set; }
            public TimeSpan gidis_saat { get; set; }
            public TimeSpan gelis_saat { get; set; }
            public string aciklama { get; set; }
            public string izintip { get; set; }
        }

        [HttpPost]
        public ActionResult IzinSil(int pdksid, string tarih1, string tarih2)
        {
            var date1 = DateTime.Parse(tarih1);
            var date2 = DateTime.Parse(tarih2);
            int record = 0;
            using (db = new MySqlConnection("Server=172.41.40.85;Database=perkotek;Uid=root;Pwd=max;AllowZeroDateTime=True;Charset=latin5"))
            {
                var com = new MySqlCommand("", db);
                com.CommandText =
                    string.Format(
                        "select * from personel_izin where personel_id={0} and tarih>='{1}' and tarih<='{2}'", pdksid, date1.ToString("yyyy-MM-dd"), date2.ToString("yyyy-MM-dd"));
                db.Open();
                MySqlDataReader reader = com.ExecuteReader();
                while (reader.Read())
                {
                    record++;
                    Console.WriteLine(reader["id"]);
                }
                reader.Close();
            }
            db.Close();
            return Json(new { Success = record > 0 }, JsonRequestBehavior.AllowGet);
        }

        [Authorize]
        private void _TarihlerArasiGirisCikisDurum(int id, DateTime baslangic, DateTime bitis, List<PDKSGirisCikis> giriscikis, List<PDKSMazeret> izinler)
        {

            //tüm giriş çıkışları al
            //tüm izinleri al
            //tarihin başından sonuna kadar tarih sorgula
            //giriş çıkış varsa yaz yoksa izin kontrol et  o da yoksa  gelmemiş demektir
            using (db = new MySqlConnection("Server=172.41.40.85;Database=perkotek;Uid=root;Pwd=max;AllowZeroDateTime=True;Charset=latin5"))
            {

                var com = new MySqlCommand("", db);
                com.CommandText = string.Format("select *from personel_giriscikis where personel_id={0} and tarih>='{1}' and tarih<='{2}'", id, baslangic.ToString("yyyy-MM-dd"), bitis.ToString("yyyy-MM-dd"));
                db.Open();
                MySqlDataReader reader = com.ExecuteReader();
                while (reader.Read())
                {
                    giriscikis.Add(new PDKSGirisCikis()
                    {
                        personelID = int.Parse(reader["personel_id"].ToString()),
                        giris = reader["giris_saat"],
                        cikis = reader["cikis_saat"],
                        tarih = DateTime.Parse(reader["tarih"].ToString())
                    });
                    //Console.WriteLine(reader["id"]);
                }
                reader.Close();
                com.CommandText = string.Format(
                   "select * from personel_izin where personel_id={0} and tarih>='{1}' and tarih<='{2}'", id, baslangic.ToString("yyyy-MM-dd"), bitis.ToString("yyyy-MM-dd"));

                reader = com.ExecuteReader();
                while (reader.Read())
                {
                    izinler.Add(new PDKSMazeret
                    {
                        aciklama = (string)reader["aciklama"],
                        personelID = int.Parse(reader["personel_id"].ToString()),
                        tarih = DateTime.Parse(reader["tarih"].ToString()),
                        giris = reader["gelis_saat"],
                        cikis = reader["gidis_saat"],
                        saatlik = (byte)reader["saatlik"],
                        tatilID = (int)reader["tatil_id"]
                    });

                }
                reader.Close();
            }
            db.Close();

        }


        [Authorize]
        [AllowAnonymous]
        public ActionResult TarihlerArasiGirisCikisDurum(int id, DateTime baslangic, DateTime bitis)
        {
            var giriscikis = new List<PDKSGirisCikis>();
            var izinler = new List<PDKSMazeret>();

            _TarihlerArasiGirisCikisDurum(id, baslangic, bitis, giriscikis, izinler);
            return Json(new { Success = true, Data = new { GirisCikis = giriscikis, Izin = izinler } }, JsonRequestBehavior.AllowGet);
        }

        public ActionResult TcKontrol()
        {
            var personels = ik.Personels.Where(c => c.cikistarihi == null)
                .Select(c => new { id = c.pdksid, tc = c.tcno }).ToList();
            using (db = new MySqlConnection("Server=172.41.40.85;Database=perkotek;Uid=root;Pwd=max;AllowZeroDateTime=True;Charset=latin5"))
            {

                var com = new MySqlCommand("", db);
                db.Open();
                foreach (var personel in personels)
                {
                    com.CommandText = string.Format("update personel_kartlari set sskno='{0}' where id={1}",
                        personel.tc, personel.id);
                    com.ExecuteNonQuery();
                }
                db.Close();

            }
            return Json(true, JsonRequestBehavior.AllowGet);
        }

        [Authorize]
        public ActionResult PersonelGunDurum(int id, DateTime tarih)
        {
            var personelid = ik.Personels.FirstOrDefault(c => c.id == id).pdksid;
            var durum = -1;
            using (db = new MySqlConnection("Server=172.41.40.85;Database=perkotek;Uid=root;Pwd=max;AllowZeroDateTime=True;Charset=latin5"))
            {

                var com = new MySqlCommand("", db);
                com.CommandText = string.Format("select * from personel_giriscikis where personel_id={0} and tarih>='{1}'", personelid, tarih.ToString("yyyy-MM-dd"));
                db.Open();
                var reader = com.ExecuteScalar();
                if (reader == null)
                {
                    //girişi yok
                    com.CommandText = string.Format(
                      "select * from personel_izin where personel_id={0} and tarih>='{1}'", personelid, tarih.ToString("yyyy-MM-dd"));
                    var read = com.ExecuteReader();
                    while (read.Read())
                    {
                        durum = (int)read[2];
                    }
                    read.Close();

                }
                else
                {
                    durum = 0;
                }

            }
            db.Close();
            return Json(new { Success = true, Data = durum }, JsonRequestBehavior.AllowGet);
        }

        public ActionResult AylikGecKalmaDurum(int ay)
        {
            var start = new DateTime(2020, ay, 01);
            var finish = start.AddMonths(1).AddDays(-1) > DateTime.Now.Date ? DateTime.Now.Date.AddDays(-1) : start.AddMonths(1).AddDays(-1);
            var personeller = new List<PersonelPDSK>();

            using (db = new MySqlConnection("Server=172.41.40.85;Database=perkotek;Uid=root;Pwd=max;AllowZeroDateTime=True;Charset=latin5"))
            {

                var com = new MySqlCommand("", db);
                com.CommandText = string.Format("SELECT personel_kartlari.id, personel_kartlari.adi,personel_kartlari.soyadi,personel_giriscikis.tarih,personel_giriscikis.giris_saat,personel_giriscikis.cikis_saat  FROM " +
                "personel_kartlari INNER JOIN personel_giriscikis ON personel_giriscikis.personel_id = personel_kartlari.id where personel_kartlari.cikistarihi is null and (tarih BETWEEN '{0}' and '{1}') and bolum_kod is null", start.ToString("yyyy-MM-dd"), finish.ToString("yyyy-MM-dd"));
                db.Open();
                var reader = com.ExecuteReader();

                while (reader.Read())
                {
                    var pdksID = (int)(uint)reader["id"];
                    var ad = (string)reader["adi"];
                    var soyad = (string)reader["soyadi"];
                    var first = personeller.FirstOrDefault(c => c.pdksID == pdksID);
                    if (first == null)
                    {
                        var f = new PersonelPDSK(pdksID, ad + ' ' + soyad, start, finish);
                        personeller.Add(f);
                        first = f;
                    }


                    var t = DateTime.Parse(reader["tarih"].ToString());
                    var tarih = first.Tarihler.FirstOrDefault(c => c.Tarih == t);
                    var giris = (reader["giris_saat"] is DBNull) ? TimeSpan.Zero : TimeSpan.Parse(reader["giris_saat"].ToString());
                    var cikis = (reader["cikis_saat"] is DBNull) ? TimeSpan.Zero : TimeSpan.Parse(reader["cikis_saat"].ToString());
                    if (tarih != null)
                    {
                        if (giris != TimeSpan.Zero)
                            tarih.Girisler.Add(giris);
                        if (cikis != TimeSpan.Zero)
                            tarih.Girisler.Add(cikis);
                    }
                }
                reader.Close();


                com.CommandText = string.Format("SELECT personel_kartlari.id,personel_kartlari.adi,personel_kartlari.soyadi,personel_izin.tatil_id,personel_izin.tarih,personel_izin.gidis_saat,personel_izin.gelis_saat,personel_izin.saatlik,personel_izin.aciklama " +
                    "FROM personel_kartlari INNER JOIN personel_izin ON personel_izin.personel_id = personel_kartlari.id WHERE personel_kartlari.cikistarihi IS null AND personel_kartlari.bolum_kod IS null and (tarih BETWEEN '{0}' and '{1}')", start.ToString("yyyy-MM-dd"), finish.ToString("yyyy-MM-dd"));
                reader = com.ExecuteReader();
                while (reader.Read())
                {
                    var pdksID = (int)(uint)reader["id"];
                    var ad = (string)reader["adi"];
                    var soyad = (string)reader["soyadi"];
                    var tatilid = (PDKSTatilID)reader["tatil_id"];
                    var t = DateTime.Parse(reader["tarih"].ToString());
                    int saatlik = (int)(byte)reader["saatlik"];
                    var aciklama = (string)reader["aciklama"];
                    var giris = TimeSpan.Parse(reader["gidis_saat"].ToString());
                    var cikis = (reader["gelis_saat"] is DBNull) ? TimeSpan.Zero : TimeSpan.Parse(reader["gelis_saat"].ToString());

                    var first = personeller.FirstOrDefault(c => c.pdksID == pdksID);
                    if (first == null)
                    {
                        var f = new PersonelPDSK(pdksID, ad + ' ' + soyad, start, finish);
                        personeller.Add(f);
                        first = f;
                    }
                    var tarih = first.Tarihler.FirstOrDefault(c => c.Tarih == t);
                    if (tarih != null)
                    {
                        tarih.Mazeretler.Add(new PersonelPDSKMazeret
                        {
                            Aciklama = aciklama,
                            GelisSaat = cikis,
                            GidisSaat = giris,
                            Saatlik = saatlik != 0,
                            TatilID = tatilid
                        });
                    }

                }

            }
            db.Close();

            var geckalma = new List<PDSKGecKalma>();
            var mazeret = new List<PDSKMazeret>();
            var eksikhareket = new List<PDSKMazeret>();

            foreach (var personel in personeller)
            {
                //if(personel.AdSoyad.StartsWith("EMİNE"))
                //{

                //}
                foreach (var tarih in personel.Tarihler)
                {
                    var siralitarih = tarih.Girisler.OrderBy(c => c.Ticks);
                    if (tarih.Mazeretler.Any())
                    {
                        if (tarih.Mazeretler.Any(c => c.Saatlik == true))//saatlik yarım gün izin veya rapor
                        {
                            if (tarih.Mazeretler.Any(c => c.GidisSaat == new TimeSpan(08, 30, 0)))
                            {
                                tarih.Girisler.Add(new TimeSpan(08, 30, 0));
                            }
                            else if (tarih.Mazeretler.Any(c => c.GelisSaat == new TimeSpan(17, 30, 0)))
                            {
                                tarih.Girisler.Add(new TimeSpan(17, 30, 0));
                            }
                        }
                        else//tüm gün izin veya rapor
                        {
                            mazeret.Add(new PDSKMazeret
                            {
                                AdSoyad = personel.AdSoyad,
                                Tarih = tarih.Tarih,
                                Aciklama = tarih.Mazeretler.FirstOrDefault(c => c.Saatlik == false).Aciklama
                            });
                        }
                    }
                    else
                    {

                    }

                    if (tarih.Tarih.DayOfWeek == DayOfWeek.Saturday || tarih.Tarih.DayOfWeek == DayOfWeek.Sunday)
                        continue;

                    if (tarih.Girisler.Any())
                    {
                        var girisler = tarih.Girisler.OrderBy(c => c.Ticks);
                        var first = girisler.First();

                        if(girisler.Count()==1)
                        {
                            var gfark = first.Subtract(new TimeSpan(08, 30, 0)).TotalMinutes;
                            var cfark = new TimeSpan(17, 30, 0).Subtract(first).TotalMinutes;
                            if (gfark > cfark)
                            {
                                eksikhareket.Add(new PDSKMazeret{AdSoyad = personel.AdSoyad,Tarih = tarih.Tarih,Aciklama = "Giriş Yapılmamış"});
                                //return "Giriş Yapılmamış";
                            }
                            else{
                                eksikhareket.Add(new PDSKMazeret{AdSoyad = personel.AdSoyad,Tarih = tarih.Tarih,Aciklama = "Çıkış Yapılmamış"});
                                //return "Çıkış Yapılmamış";
                            }

                        }
                        if (first > new TimeSpan(13, 30, 0))
                        {
                            

                            //giriş yapılmamış
                            continue;
                        }
                        var fark = first.Subtract(new TimeSpan(08, 30, 0)).TotalMinutes;
                        if (fark > 5)
                        {
                            geckalma.Add(new PDSKGecKalma
                            {
                                AdSoyad = personel.AdSoyad,
                                Tarih = tarih.Tarih,
                                Giris = girisler.First(),
                                GecKalma = (int)fark
                            });
                        }

                    }
                    else
                    {

                    }


                }
            }

            if (geckalma.Any())
            {
                foreach (var pers in geckalma.GroupBy(c => c.AdSoyad))
                {

                }


            }

            return Json(new { Success = true, GecKalma = geckalma.GroupBy(c => c.AdSoyad), Mazeretler = mazeret,EksikHareketler=eksikhareket.GroupBy(c => c.AdSoyad) }, JsonRequestBehavior.AllowGet);


        }

        public ActionResult MazeretIzinEkle(int izinid)
        {
            var yarım = ik.YizinDetays.FirstOrDefault(c => c.yizinid == izinid);
            var belgeno = yarım.belgesayi;
            var baslangic = yarım.baslangic;
            var bitis = yarım.bitis;
            var aciklama = yarım.belgesayi;
            var yıl = yarım.Yizin.yil;
            var tarih = yarım.tarih;
            var id = yarım.Yizin.Personel.pdksid;
            using (db = new MySqlConnection("Server=172.41.40.85;Database=perkotek;Uid=root;Pwd=max;AllowZeroDateTime=True;Charset=latin5"))
            {

                var com = new MySqlCommand("", db);
                com.CommandText = string.Format("insert into personel_izin (personel_id,tatil_id,tarih,gidis_saat,gelis_saat,saatlik,aciklama,otoizin) values(" +
                                                "{0},{1},'{2}','{3}','{4}',1,'{5}',0)", id, 9, tarih.ToString("yyyy-MM-dd"), baslangic, bitis, string.Format("{0} IZNINDEN YARIM GUN {1}", yıl, belgeno));
                try
                {
                    db.Open();
                    var scaler = com.ExecuteReader();
                    db.Close();
                    return Json(new { Success = true }, JsonRequestBehavior.AllowGet);
                }
                catch (Exception x)
                {
                    return Json(new { Success = false, Message = x.Message }, JsonRequestBehavior.AllowGet);

                }

            }


        }

        public ActionResult _PersonelMazeretEkle(int id)
        {
            var model = new DataPDKSMazeretEkleVM
            {
                pdksID = id
            };
            return PartialView(model);
        }
        [HttpPost]
        [ActionName("_PersonelMazeretEkle")]
        public ActionResult _PersonelMazeretEklePost(int id,DataPDKSMazeretEkleVM model)
        {
            if(ModelState.IsValid)
            {
                try
                {
                    var pdks = new DataPDKS();
                    var success = pdks.MazeretEkle(model.pdksID, model.tatilID, model.baslangic, model.bitis, model.aciklama);
                    return Json(new {Success=true,Data=success }, JsonRequestBehavior.AllowGet);
                }
                catch (Exception x)
                {
                    return Json(new {Success=false,Data=x.Message }, JsonRequestBehavior.AllowGet);
                }
                
            }
           
         
            return PartialView(model);
        }
    }
}
