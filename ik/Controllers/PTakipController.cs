using System;
using System.Data;
using System.Linq;
using System.Runtime.InteropServices;
using System.Web.Mvc;
using ik.Models;
using MySql.Data.MySqlClient;


namespace ik.Controllers
{
    [Authorize(Users = @"KENTKONUT\noskay")]
    public class PTakipController : Controller
    {
        // GET: PTakip
      
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult GunlukTakip(string date)
        {
            var tarih = DateTime.Parse(date);
            var ds=new ikDSet();

            using (var con = new MySqlConnection("Server=172.41.40.85;Database=perkotek;Uid=root;Pwd=max;AllowZeroDateTime=True;Charset=latin5"))
            {
                var com=new MySqlCommand(string.Format("SELECT personel_giriscikis.personel_id,concat(personel_kartlari.adi,' ',personel_kartlari.soyadi) as personelAdSoyad,personel_giriscikis.tarih,personel_giriscikis.giris_saat FROM  personel_kartlari" +
                                                       " right outer join personel_giriscikis on personel_giriscikis.personel_id=personel_kartlari.id WHERE personel_giriscikis.tarih = '{0}'", tarih.ToString("yyyy-MM-dd")), con);
                if(con.State!= ConnectionState.Open)
                    con.Open();
                var adapter =new MySqlDataAdapter(com);
                adapter.Fill(ds.pGunlukTakipDT);
                con.Close();


            }

            return PartialView(ds);
        }


        public JsonResult MazeretliGelmeyenler(DateTime tarih1)
        {
            var dset = new ikDSet();

            using (var con = new MySqlConnection("Server=172.41.40.85;Database=perkotek;Uid=root;Pwd=max;AllowZeroDateTime=True;Charset=latin5"))
            {
                var com = new MySqlCommand("select id,sicilno,adi,soyadi,sirket_kod from personel_kartlari where sirket_kod=1 or sirket_kod=5", con);
                if (con.State != ConnectionState.Open)
                    con.Open();
                var adapter = new MySqlDataAdapter(com);
                adapter.Fill(dset.personel_kartlari);
                com.CommandText = string.Format("select personel_izin.personel_id,personel_izin.tarih,personel_izin.gidis_saat,personel_izin.gelis_saat,personel_izin.aciklama,tatil_id,tatil_tablo.aciklama as IzinTur from personel_izin inner join tatil_tablo on personel_izin.tatil_id=tatil_tablo.id  where tarih>='{0}'", tarih1.ToString("yyyy-MM-dd"));
                adapter.Fill(dset.personel_izin);

               
                con.Close();

                foreach (var personel in dset.personel_kartlari)
                {
                    try
                    {
                        //var personelGiriscikisRow = dset.personel_giriscikis.FirstOrDefault(c => c.personel_id == personel.id);
                        //if (personelGiriscikisRow != null)
                        //    personel.Takip =
                        //        personelGiriscikisRow.giris_saat.ToString();

                        var personelIzinRow = dset.personel_izin.FirstOrDefault(c => c.personel_id == personel.id);
                        if (personelIzinRow != null)
                            personel.Takip = personelIzinRow.IzinTur;
                    }
                    catch (Exception x)
                    {


                    }
                }


            }
            var data =
                    dset.personel_kartlari.Where(c => c.Takip!=null ).Select(c => new { adsoyad = c.adi + " " + c.soyadi,aciklama=c.Takip });
            return Json(data, JsonRequestBehavior.AllowGet);
        }
        public JsonResult MazeretsizGelmeyenler(DateTime tarih1)
        {
            var dset=new ikDSet();
           
            using (var con = new MySqlConnection("Server=172.41.40.85;Database=perkotek;Uid=root;Pwd=max;AllowZeroDateTime=True;Charset=latin5"))
            {
                var com = new MySqlCommand("select id,sicilno,adi,soyadi,sirket_kod from personel_kartlari where sirket_kod=1 or sirket_kod=5",con);
                if (con.State != ConnectionState.Open)
                    con.Open();
                var adapter = new MySqlDataAdapter(com);
                adapter.Fill(dset.personel_kartlari);
                com.CommandText = string.Format("select personel_id,tarih,gidis_saat,gelis_saat,aciklama,tatil_id from personel_izin where tarih='{0}'",tarih1.ToString("yyyy-MM-dd"));
                adapter.Fill(dset.personel_izin);

                com.CommandText = string.Format("select personel_id,tarih,giris_saat,cikis_saat from personel_giriscikis  where tarih='{0}'", tarih1.ToString("yyyy-MM-dd"));
                adapter.Fill(dset.personel_giriscikis);
                con.Close();

                foreach (var personel in dset.personel_kartlari)
                {
                    try
                    {
                        var personelGiriscikisRow = dset.personel_giriscikis.FirstOrDefault(c => c.personel_id == personel.id);
                        if (personelGiriscikisRow != null)
                            personel.Takip =
                                personelGiriscikisRow.giris_saat.ToString();

                        var personelIzinRow = dset.personel_izin.FirstOrDefault(c => c.personel_id == personel.id);
                        if (personelIzinRow != null)
                            personel.Takip = personelIzinRow.aciklama;
                    }
                    catch (Exception x)
                    {

                      
                    }
                }
                

            }
            var data =
                    dset.personel_kartlari.Where(c => c.Takip == null)
                        .Select(c => new { adsoyad = c.adi + " " + c.soyadi });
            return Json(data,JsonRequestBehavior.AllowGet);
        }

        public JsonResult GecKalanlar(DateTime tarih1,DateTime tarih2)
        {
            var dset = new ikDSet();

            using (var con = new MySqlConnection("Server=172.41.40.85;Database=perkotek;Uid=root;Pwd=max;AllowZeroDateTime=True;Charset=latin5"))
            {
                var com = new MySqlCommand("",con);
                if (con.State != ConnectionState.Open)
                    con.Open();

                com.CommandText = String.Format("select CONCAT(personel_kartlari.adi,' ',personel_kartlari.soyadi) as PersonelAdSoyad, personel_giriscikis.giris_saat as GirisSaati, MINUTE(personel_giriscikis.giris_saat)-30 as GecKalma from personel_giriscikis" +
 " inner join personel_kartlari on personel_giriscikis.personel_id = personel_kartlari.id "+
"where personel_giriscikis.tarih >= '{0}' and personel_giriscikis.tarih <= '{1}' and(personel_kartlari.sirket_kod = 1 or personel_kartlari.sirket_kod = 5) and ( HOUR(personel_giriscikis.giris_saat) > 7 and MINUTE(personel_giriscikis.giris_saat) > 35)", tarih1.ToString("yyyy-MM-dd"), tarih2.ToString("yyyy-MM-dd"));
                var adapter = new MySqlDataAdapter(com);
                adapter.Fill(dset.personel_geckalan);
                con.Close();
            }
            var data =
                    dset.personel_geckalan
                        .Select(c => new {
                            adsoyad = c.PersonelAdSoyad,
                            giris =c.GirisSaati.ToString(@"hh\:mm"),
                            geckalma =c.GecKalma});
            return Json(data, JsonRequestBehavior.AllowGet);
        }
    }
}