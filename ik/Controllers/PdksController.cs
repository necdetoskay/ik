using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web.Mvc;
using ik.Models;
using Microsoft.Ajax.Utilities;
using MySql.Data.MySqlClient;
using PtakipDAL;

namespace ik.Controllers
{
    [FilterConfig.CustomActionFilter]
    [Authorize(Users = @"KENTKONUT\noskay,KENTKONUT\derya.aslan")]
    public class PdksController : Controller
    {
        private MySqlConnection db;
        private ikEntities ik = new ikEntities();
        protected override void Dispose(bool disposing)
        {
           // db.Dispose();
            base.Dispose(disposing);
        }

        public JsonResult PersonelBilgi(string adsoyad)
        {
            using (db = new MySqlConnection("Server=172.41.40.85;Database=perkotek;Uid=root;Pwd=max;AllowZeroDateTime=True;Charset=latin5"))
            {
                var info = new object();
                var com = new MySqlCommand("", db);
                if (db.State != ConnectionState.Open)
                    db.Open();
                com.CommandText = string.Format("select * from personel_kartlari where concat(adi,' ',soyadi)='{0}'", adsoyad);
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
                personel.Izins.Where(c => c.baslangictarih >= new DateTime(2017, 01, 01) || c.bitistarihi >= new DateTime(2017, 01, 01));

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
                    string.Format("select count(*) from personel_izin where personel_id={2} and tatil_id=6 and  tarih>='{0}' and tarih<='{1}'", izin.baslangictarih.ToString("yyyy-MM-dd"), izin.bitistarihi.ToString("yyyy-MM-dd"), personel.pdksid);
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
                        com.CommandText = string.Format("select count(*) from personel_izin where personel_id={0} and tarih='{1}'", personel.pdksid, t1.ToString("yyyy-MM-dd"));
                        int result = (int)com.ExecuteScalar();
                        if (result > 0) continue;
                        com.CommandText = string.Format("insert into personel_izin (personel_id,tatil_id,tarih,gidis_saat,gelis_saat,saatlik,aciklama,otoizin) " +
                                                        "values ({0},6,'{1}','00:00:00','00:00:00',0,'{2} YILINDAN {3} GUN',0)", personel.pdksid, t1.ToString("yyyy-MM-dd"), izin.yil, izin.gun);
                        //izin varmı
                        //yoksa resmi tatilmi
                        //yoksa insert
                        toplamgun += (int)com.ExecuteNonQuery();
                    }
                    catch (Exception ex)
                    {
                        Console.WriteLine(ex.Message); return Json(new { Success = false }, JsonRequestBehavior.AllowGet);
                    }

                }
                db.Close();
            }
            return Json(new { Success = true, izinid }, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public JsonResult PdksIzinGir(int mikroid, int izinyil, string baslangic, string bitis, string aciklama)
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
                            com.CommandText = string.Format("select count(*) from personel_izin where personel_id={0} and tarih='{1}'", personel.pdksid, t1.ToString("yyyy-MM-dd"));
                            int result = (int)com.ExecuteScalar();
                            if (result > 0) continue;
                            com.CommandText = string.Format("insert into personel_izin (personel_id,tatil_id,tarih,gidis_saat,gelis_saat,saatlik,aciklama,otoizin) " +
                                                            "values ({0},6,'{1}','00:00:00','00:00:00',0,'{2}',0)", personel.pdksid, t1.ToString("yyyy-MM-dd"), aciklama);
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
                return Json(new { Success = true, PersonelID = personel.id, Arac = personel.PersonelDetay.sirketarac }, JsonRequestBehavior.AllowGet);






            }

            return Json(true, JsonRequestBehavior.AllowGet);
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
                            "values({0},{1},'{2}','{3}','{4}',{5},'{6}',0)", id,3, tarih.ToString("yyyy-MM-dd"),giris,gelis,saatlik,mazeret );

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
        public JsonResult AylikHareketler(int id)//ik id
        {
            var t2 = DateTime.Now;
            var t1 = new DateTime(t2.Year, t2.Month, 1);
            var pers = ik.Personels.FirstOrDefault(c => c.id == id);
            PerkotekContext cont = new PerkotekContext();
            cont.PuantajHazirla(t1, t2, pers.pdksid.Value, false);
            var liste = cont.personel.FirstOrDefault(d => d.ID == pers.pdksid.Value).PTarihs.OrderBy(c => c.Tarih).AsQueryable().Select(c => new
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
                var com = new MySqlCommand("SELECT personel_izin.id, CONCAT(personel_kartlari.adi, ' ', personel_kartlari.soyadi) as adsoyad," +
                    " personel_izin.tarih,personel_izin.gidis_saat,personel_izin.gelis_saat,personel_izin.aciklama,tatil_tablo.aciklama as izintip " +
                    " FROM personel_izin INNER JOIN personel_kartlari ON personel_kartlari.id = personel_izin.personel_id " +
                    " INNER JOIN tatil_tablo ON tatil_tablo.id = personel_izin.tatil_id WHERE `personel_id` = '" + pers.pdksid.Value + "'", db);

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
                        Baslangic = c.FirstOrDefault().tarih.ToShortDateString()+" "+(c.FirstOrDefault().gidis_saat.ToString()=="00:00:00"?"": c.FirstOrDefault().gidis_saat.ToString()),
                        Bitis = c.LastOrDefault().tarih.ToShortDateString() + " " + (c.LastOrDefault().gelis_saat.ToString() == "00:00:00" ? "" : c.LastOrDefault().gelis_saat.ToString())
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

        public ActionResult Raporlar()
        {
            int ikID = 2332;
            DateTime tarih1=new DateTime(2018,06,01);
            DateTime tarih2=new DateTime(2018,06,30);
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
                        " INNER JOIN tatil_tablo ON tatil_tablo.id = personel_izin.tatil_id WHERE personel_izin.tarih>='2018-06-01' and personel_izin.tarih<='2018-06-30' and personel_izin.tatil_id=7", db);

                if (db.State != ConnectionState.Open)
                    db.Open();
                MySqlDataReader reader = com.ExecuteReader();
                var izinler = new List<pdksizinrapor>();
                while (reader.Read())
                {

                    var ad = (string) reader["adsoyad"];
                    var trh = DateTime.Parse(reader["tarih"].ToString());
                    var gdsst = (TimeSpan) reader["gidis_saat"];
                    var glsst = (TimeSpan) reader["gelis_saat"];
                    var acklm = (string) reader["aciklama"];
                    var iztp = (string) reader["izintip"];

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

            return View();
        }
      
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
}