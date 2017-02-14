using System;
using System.Collections;
using System.Data;
using System.Linq;
using System.Web.Mvc;
using ik.Models;
using MySql.Data.MySqlClient;

namespace ik.Controllers
{
    [Authorize(Users = @"KENTKONUT\noskay,KENTKONUT\agokalp")]
    public class PersonelController : Controller
    {
        private readonly ikEntities db = new ikEntities();
        private ik.Models.KENTEntities ke = new KENTEntities();

        protected override void Dispose(bool disposing)
        {
            ke.Dispose();
            db.Dispose();
            base.Dispose(disposing);
        }

        // GET: Personel
        public ActionResult Index()
        {
            return View();
        }

        public JsonResult PersonelListe()
        {
            var personelListe = db.Personels.OrderBy(c => c.adsoyad).Select(c => new {c.id, c.adsoyad});
            var mikro=ke.PERSONELLERs.Where(c => c.per_cikis_tar == new DateTime(1899, 12, 31)).Select(c=>new {id=c.per_RECno,adsoyad=c.per_adi+" "+c.per_soyadi});
            var birim = db.birims.Select(c => new {c.id, c.birimad});
            var pdks=new ArrayList();
            using (var con =new MySqlConnection(
                        "Server=172.41.40.85;Database=perkotek;Uid=root;Pwd=max;AllowZeroDateTime=True;Charset=latin5"))
            {
                var com =new MySqlCommand("select id, concat(adi,' ',soyadi) as adsoyad from personel_kartlari", con);
                if (con.State != ConnectionState.Open)
                    con.Open();
                var reader = com.ExecuteReader();
                while (reader.Read())
                {
                    pdks.Add(new {id = (int)((uint)reader["id"]), adsoyad = reader["adsoyad"].ToString()});
                }
                con.Close();
            }




            return Json(new {personelListe,mikro,birim,pdks}, JsonRequestBehavior.AllowGet);
        }

        public JsonResult MikroDetay(int id)
        {
            var mikro = ke.PERSONELLERs.SingleOrDefault(c => c.per_RECno == id);
            var personel = new Personel
            {
                adsoyad = mikro.per_adi + " " + mikro.per_soyadi,
                birimid = 1,
                dogumtarihi = mikro.per_nuf_dogum_tarih,
                giristarihi = mikro.per_giris_tar,
                mikroid = id,tcno = mikro.Per_TcKimlikNo,
                sira = 1
            };
            return Json(personel,JsonRequestBehavior.AllowGet);
        }

        public ActionResult Avans()
        {
            return View();
        }

        [HttpPost]
        public JsonResult PersonelAra(string term)
        {
            var queryable = from p in (from p in db.Personels
                                       where p.adsoyad.StartsWith(term)
                                       select p).Take(10)
                            select new { label = p.adsoyad, val = p.id };
            return Json(queryable.ToList());
        }

        public JsonResult yaziyaCevir(decimal tutar)
        {
            string sTutar = tutar.ToString("F2").Replace('.', ','); // Replace('.',',') ondalık ayracının . olma durumu için            
            string lira = sTutar.Substring(0, sTutar.IndexOf(',')); //tutarın tam kısmı
            string kurus = sTutar.Substring(sTutar.IndexOf(',') + 1, 2);
            string yazi = "";

            string[] birler = { "", "BİR", "İKİ", "Üç", "DÖRT", "BEŞ", "ALTI", "YEDİ", "SEKİZ", "DOKUZ" };
            string[] onlar = { "", "ON", "YİRMİ", "OTUZ", "KIRK", "ELLİ", "ALTMIŞ", "YETMİŞ", "SEKSEN", "DOKSAN" };
            string[] binler = { "KATRİLYON", "TRİLYON", "MİLYAR", "MİLYON", "BİN", "" }; //KATRİLYON'un önüne ekleme yapılarak artırabilir.

            int grupSayisi = 6; //sayıdaki 3'lü grup sayısı. katrilyon içi 6. (1.234,00 daki grup sayısı 2'dir.)
                                //KATRİLYON'un başına ekleyeceğiniz her değer için grup sayısını artırınız.

            lira = lira.PadLeft(grupSayisi * 3, '0'); //sayının soluna '0' eklenerek sayı 'grup sayısı x 3' basakmaklı yapılıyor.            

            string grupDegeri;

            for (int i = 0; i < grupSayisi * 3; i += 3) //sayı 3'erli gruplar halinde ele alınıyor.
            {
                grupDegeri = "";

                if (lira.Substring(i, 1) != "0")
                    grupDegeri += birler[Convert.ToInt32(lira.Substring(i, 1))] + "YÜZ"; //yüzler                

                if (grupDegeri == "BİRYÜZ") //biryüz düzeltiliyor.
                    grupDegeri = "YÜZ";

                grupDegeri += onlar[Convert.ToInt32(lira.Substring(i + 1, 1))]; //onlar

                grupDegeri += birler[Convert.ToInt32(lira.Substring(i + 2, 1))]; //birler                

                if (grupDegeri != "") //binler
                    grupDegeri += binler[i / 3];

                if (grupDegeri == "BİRBİN") //birbin düzeltiliyor.
                    grupDegeri = "BİN";

                yazi += grupDegeri;
            }

            if (yazi != "")
                yazi += " TL ";

            int yaziUzunlugu = yazi.Length;

            if (kurus.Substring(0, 1) != "0") //kuruş onlar
                yazi += onlar[Convert.ToInt32(kurus.Substring(0, 1))];

            if (kurus.Substring(1, 1) != "0") //kuruş birler
                yazi += birler[Convert.ToInt32(kurus.Substring(1, 1))];

            if (yazi.Length > yaziUzunlugu)
                yazi += " Kr.";
            //else
            //    yazi += "SIFIR Kr.";

            return Json(yazi,JsonRequestBehavior.AllowGet);
        }

    }
}