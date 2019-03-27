using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Web.Management;
using System.Web.Mvc;
using ik.Models;
using ik.Models.DataClasslari;
using Microsoft.Ajax.Utilities;
using MySql.Data.MySqlClient;

namespace ik.Controllers
{
    [FilterConfig.CustomActionFilter]
    [Authorize(Users = @"KENTKONUT\noskay,KENTKONUT\derya.aslan")]
    public class IzinController : Controller
    {
        private readonly ikEntities db = new ikEntities();

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
        // GET: Izin
        public ActionResult Index()
        {
            var liste = db.Izins.Where(c => c.izintip == 1).Take(25).OrderByDescending(c => c.baslangictarih).ToList();
            return View(liste);
        }

        public ActionResult YillikIzin()
        {
            ViewBag.personelListe = new SelectList(db.Personels.OrderBy(c => c.adsoyad), "id", "adsoyad");
            return View();
        }

        public ActionResult PersonelYıllıkIzin(int personelid = 0)
        {
            //2425
            using (ikEntities db = new ikEntities())
            {
                var personel = db.Personels.SingleOrDefault(c => c.id == 2425);
                var giriş = personel.giristarihi;
                var devirizin = personel.PersonelDevir.izinDevir;
                var devirkıdem = personel.PersonelDevir.kidemTarih;
                var kıdemyıl = 0;
                while (devirkıdem.Year <= DateTime.Now.Year)
                {
                    kıdemyıl++;
                    var hak = 0;
                    if (kıdemyıl < 16)
                    {
                        hak = 25;
                    }
                    else if (kıdemyıl < 11)
                    {
                        hak = 20;
                    }
                    else if (kıdemyıl < 6)
                    {
                        hak = 14;
                    }

                    devirkıdem = devirkıdem.AddYears(1);

                    //if(devirkıdem>giriş)


                    Console.WriteLine(devirkıdem.ToShortDateString());
                }
            }
            return null;
        }

        public ActionResult PersonelIzinDurum(int personelid)
        {
            var q = db.Izins.Where(c => c.personelid == personelid & c.izintip == 1);
            var list = q.GroupBy(a => a.yil).Select(g => new PersonelIzinVM
            {
                PersonelAd = g.FirstOrDefault().Personel.adsoyad,
                IzinYıl = g.Key,
                ToplamIzin = g.Sum(f => f.gun)
            });
            ViewBag.adSoyad = q.FirstOrDefault().Personel.adsoyad;
            ViewBag.personelID = personelid;
            return View(list);
        }

        public JsonResult PersonelIzınDetay(int personelid, int izinyil)
        {
            var liste = db.Izins.Where(c => c.personelid == personelid & c.yil == izinyil).Select(d =>
                new { d.baslangictarih, bitistarih = d.bitistarihi, d.gun });
            return Json(liste, JsonRequestBehavior.AllowGet);
        }

        public JsonResult PersonelYillikIzinDurum(int personelid)
        {
            if (personelid == 2406)
            {
                
            }
            var personel = db.Personels.SingleOrDefault(c => c.id == personelid);





            
            var kidem = new List<Kidem>();
            var kidembaslangic = personel.giristarihi.Value;
            var kidembitis = personel.giristarihi.Value;
            var kidemyil = 1;

            if (personel.PersonelDevir != null)
            {

                kidembaslangic=new DateTime(personel.giristarihi.Value.Year-1, personel.PersonelDevir.kidemTarih.Month,personel.PersonelDevir.kidemTarih.Day);
                if (kidembaslangic.AddYears(1) <= personel.giristarihi.Value)
                {
                    kidembaslangic = kidembaslangic.AddYears(1);
                }
                //kıdem başlangıç gün ay geçen yıl
                //kıdem bitiş gun ay bu yil
                kidembitis = kidembaslangic;
                kidemyil = personel.giristarihi.Value.Year- personel.PersonelDevir.kidemTarih.Year;
                var hakedilen = personel.PersonelDevir.izinDevir;
                var kullanılan = personel.Izins.Where(c => c.yil == kidembaslangic.Year).Sum(c => c.gun);
                //kidemyil = kidembitis.Year - personel.PersonelDevir.kidemTarih.Year;
                kidem.Add(new Kidem
                {
                    baslangic = personel.PersonelDevir.kidemTarih,
                    bitis = kidembitis,
                    yil = kidembaslangic.Year,
                    hakedilenizin = hakedilen,
                    kullanilan = kullanılan,
                    kalan = hakedilen - kullanılan
                });
                //kullanılanları düş
                
            }


            while (kidembitis.Year < DateTime.Now.Year)
            {
                kidembitis = kidembaslangic.AddYears(1);
                var ücretsiz =
                    personel.Izins.Where(c => c.izintip == 3)
                        .Where(d => d.baslangictarih >= kidembaslangic && d.baslangictarih <= kidembitis)
                        .ToList();
                if (ücretsiz.Count > 0)
                {
                    foreach (var uizin in ücretsiz)
                    {
                        var fark = uizin.bitistarihi.Subtract(uizin.baslangictarih);
                        kidembitis = kidembitis.AddDays(fark.Days);
                    }
                }

          
                var yas = kidembitis.Year - personel.dogumtarihi.Value.Year;
                var hakedilen = 0;
                var kullanılan = 0;
                var yil = kidembitis.Year;
                if (kidemyil < 6)
                {
                    hakedilen = 14;
                    if (yas > 49)
                        hakedilen = 20;
                }
                else
                {
                    hakedilen = 20;
                }
                kullanılan = personel.Izins.Where(c => c.yil == yil & c.izintip == 1).Sum(c => c.gun);
                var kanuni = personel.Izins.Where(c => c.yil == yil & c.izintip == 1).Any(c => c.gun >= 10);
                kidem.Add(new Kidem
                {
                    yil = yil,
                    baslangic = kidembaslangic,
                    bitis = kidembitis,
                    hakedilenizin = hakedilen,
                    kullanilan = kullanılan,
                    kalan = hakedilen - kullanılan,
                    Kanuni = kanuni
                });
                kidembaslangic = kidembitis;
                kidemyil++;
            }

            

            var ceptel = "";
            var kıdem = "";
            using (var kent = new KENTEntities())
            {
                try
                {
                    var pers = kent.PERSONELLERs.SingleOrDefault(c => c.per_Guid == personel.mikroid);
               
                ceptel = pers.per_tel_cepno;
                kıdem = pers.per_Kidem_Tarih.Value==new DateTime(1899,12,31)?pers.per_giris_tar.Value.ToShortDateString() : pers.per_Kidem_Tarih.Value.ToShortDateString();
                }
                catch (Exception XX)
                {

                    throw;
                }
            }
            return Json(new { Data = kidem, Kıdem=kıdem, Sicil = personel.sicilno + '-' + ceptel }, JsonRequestBehavior.AllowGet);
        }

        public ActionResult Create()
        {
            //if (User.Identity.Name != @"KENTKONUT\noskay")
            //    return RedirectToAction("Index");
            ViewBag.personelListe = new SelectList(db.Personels.OrderBy(c => c.adsoyad), "id", "adsoyad");
            ViewBag.izintipListe = new SelectList(db.IzinTips, "id", "ad", 1);
            return View();
        }

        [HttpPost]
        public ActionResult Create(Izin izin)
        {
            if (ModelState.IsValid)
            {
                db.Izins.Add(izin);
                //db.ImzaTakips.Add(new ImzaTakip
                //{
                //    personelID = izin.personelid,
                //    Tarih = DateTime.Now,
                //    Aciklama =
                //        string.Format("{0}-{1} arası izin defteri ve formu imza",
                //            izin.baslangictarih.ToShortDateString(), izin.bitistarihi.ToShortDateString())
                //});
                db.SaveChanges();
                return RedirectToAction("Create");
            }
            return View(izin);
        }

        public JsonResult PersonelMikroIzin(int personelid)
        {
            var personel = db.Personels.SingleOrDefault(c => c.id == personelid);

            using (KENTEntities ke = new KENTEntities())
            {
                object liste;
                var kod = ke.PERSONELLERs.SingleOrDefault(c => c.per_Guid == personel.mikroid.Value);
                if (kod == null)
                {
                    liste = new
                    {
                        Success = false,
                        Data = 0
                    };
                }
                else
                {
                    liste = new
                    {
                        Success = true,
                        Data =
                        ke.PERSONEL_IZINLERI.Where(c => c.pz_pers_kod == kod.per_kod)
                            .OrderByDescending(c => c.pz_Guid)
                            .Select(c => new
                            {
                                ID = c.pz_Guid,
                                Aciklama = c.pz_izin_aciklama,
                                Baslangic = c.pz_baslangictarih.Value,
                                Bitis = c.pz_gerceklesen_donus_tarihi.Value,
                                Gun = c.pz_gun_sayisi
                            }).ToList()
                    }
                ;
                }


                var list = db.Izins.Where(c => c.personelid == personel.id).OrderByDescending(c => c.id).Select(c => new
                {

                    Aciklama = c.aciklama,
                    Baslangic = c.baslangictarih,
                    Bitis = c.bitistarihi,
                    Gun = c.gun
                }).ToList();


                return Json(new { mikro = liste, pdks = new { Success = true, Data = list } }, JsonRequestBehavior.AllowGet);
            }
            //return Json(0);
        }

        public JsonResult MikrodanPdksGir(Guid mikroid, int pdksid)
        {using (KENTEntities ke = new KENTEntities())
            {

                var mikro = ke.PERSONEL_IZINLERI.SingleOrDefault(c => c.pz_Guid == mikroid);

                var mevcut =
                    db.Izins.SingleOrDefault(
                        c =>
                            c.personelid == pdksid & c.baslangictarih == mikro.pz_baslangictarih.Value &
                            c.gun == mikro.pz_gun_sayisi);
                if (mevcut != null)
                {
                    return Json(new { Success = false, Data = 0 }, JsonRequestBehavior.AllowGet);
                }
                var izin = new Izin
                {
                    personelid = pdksid,
                    izintip = 1,
                    baslangictarih = mikro.pz_baslangictarih.Value,
                    bitistarihi = mikro.pz_gerceklesen_donus_tarihi.Value,
                    aciklama = mikro.pz_izin_aciklama,
                    gun = mikro.pz_gun_sayisi.Value,
                    yil = int.Parse(Regex.Match(mikro.pz_izin_aciklama, @"\b\d{4}\b").Value)
                };
                db.Izins.Add(izin);
                db.SaveChanges();
                //db.ImzaTakips.Add(new ImzaTakip
                //{
                //    personelID = izin.personelid,
                //    Tarih = DateTime.Now,
                //    Aciklama =
                //       string.Format("{0}-{1} arası izin defteri ve formu imza",
                //           izin.baslangictarih.ToShortDateString(), izin.bitistarihi.ToShortDateString())
                //});

                db.SaveChanges();


                var list = db.Izins.Where(c => c.personelid == pdksid).OrderByDescending(c => c.id).Select(c => new
                {
                    Aciklama = c.aciklama,
                    Baslangic = c.baslangictarih,
                    Bitis = c.bitistarihi,
                    Gun = c.gun
                }).ToList();





                return Json(new { Success = true, Data = list }, JsonRequestBehavior.AllowGet);
            }
        }

        public ActionResult PdksEksikIzinler()
        {
            //mikroda olmayan son girilen izinleri kontrol et 2017 sonrası
            throw new NotImplementedException();
        }

        [HttpPost]
        public JsonResult PdksdenIzinGir(Guid mikroid, int izinyil, DateTime baslangic, DateTime bitis, string aciklama, int gun)
        {
            var personel = db.Personels.SingleOrDefault(c => c.mikroid == mikroid);
            try
            {
                if (personel.Izins.Any(c => c.yil == izinyil & c.baslangictarih == baslangic))
                    return Json(new { Success = true }, JsonRequestBehavior.AllowGet);
                personel.Izins.Add(new Izin
                {
                    aciklama = aciklama,
                    baslangictarih = baslangic,
                    bitistarihi = bitis,
                    gun = gun,
                    izintip = 1,
                    yil = izinyil
                });
                db.SaveChanges();
            }
            catch (Exception x)
            {
                return Json(new { Success = false }, JsonRequestBehavior.AllowGet);
            }
            return Json(new { Success = true }, JsonRequestBehavior.AllowGet);
        }

        /// <summary>
        /// izin durumu sayfasında izin yılına tıklayınca o yıla ait izin detayları
        /// </summary>
        /// <param name="id">personel id'si</param>
        /// <param name="yil">detayı getirilecek izin yılı</param>
        /// <returns>izin detay tablosu partial view olarak</returns>
        public ActionResult _PersonelIzinYilDetay(int id, int yil)
        {
            var izinler = db.Izins.Where(c => c.personelid == id && c.yil == yil).Select(c => new PersonelIzinYilDetayVM
            {
                id = c.id,
                Başlangıç = c.baslangictarih,
                Bitiş = c.bitistarihi,
                Gün = c.gun
            });

            return PartialView(izinler.ToList());
        }

        public JsonResult YarimIzinler(int id)
        {
            var yarım = db.Yizins.Where(c => c.personelid == id & c.mikrokayit == false);
            if (yarım.Any())
            {
                var liste = yarım.Select(c => new
                {
                    ID = c.id,
                    PID = c.personelid,
                    Yıl = c.yil,
                    Detay = c.YizinDetays.Select(d => new
                    {
                        d.tarih,
                        d.belgesayi,
                        baslangic = d.baslangic.Value.ToString(),
                        bitis = d.bitis.ToString()
                    }).ToList()
                }).ToList();
                return Json(new { Success = true, data = liste }, JsonRequestBehavior.AllowGet);
            }
            return Json(new { Success = false }, JsonRequestBehavior.AllowGet);
        }
        public ActionResult _YarimIzin(int id)
        {
            ViewBag.Yil = new SelectList(db.Yizins.Where(c => c.personelid == id && c.mikrokayit == false), "id", "yil");
            return PartialView();
        }

        public ActionResult YarimYillikİzin()
        {
            ViewBag.personelListe = new SelectList(db.Personels.OrderBy(c => c.adsoyad), "id", "adsoyad");
            return View();
        }

        public JsonResult _yarimizinkaydet(int izinyil,
            string belgeno,
            DateTime tarih,
            TimeSpan baslangic,
            TimeSpan bitis,
            int personelid, int yid, bool yeni)
        {
            try
            {
                Yizin yizin;

                if (yeni)
                {
                    yizin = new Yizin
                    {
                        personelid = personelid,
                        yil = izinyil
                    };
                    db.Yizins.Add(yizin);
                }
                else
                {
                    yizin = db.Yizins.FirstOrDefault(c => c.id == yid & c.mikrokayit == false);
                    if (yizin == null)
                    {
                        yizin = new Yizin
                        {
                            personelid = personelid,
                            yil = izinyil
                        };
                        db.Yizins.Add(yizin);
                    }
                    else
                    {
                        yizin.mikrokayit = true;
                    }
                }

                //var yizin = (yeni ? new Yizin
                //{
                //    personelid = personelid,
                //    yil = izinyil
                //} : db.Yizins.FirstOrDefault(c => c.id==yid & c.mikrokayit == false)) ?? new Yizin
                //{
                //    personelid = personelid,
                //    yil = izinyil
                //};

                yizin.YizinDetays.Add(new YizinDetay
                {
                    belgesayi = belgeno,
                    tarih = tarih,
                    baslangic = baslangic,
                    bitis = bitis
                });
                //db.Yizins.Add(yizin);

                try
                {
                    db.SaveChanges();
                }
                catch (Exception x)
                {
                    return Json(new { Success = false, Error = x.InnerException }, JsonRequestBehavior.AllowGet);
                }

                return Json(new { Success = true }, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                return Json(new { Success = false, Error = ex.InnerException }, JsonRequestBehavior.AllowGet);
            }



        }

        public ActionResult _YarimIzinEkle(int id, int izinid = 0)
        {
            YarimIzinEkleVM izin;
            if (izinid < 1)
            {
                izin = new YarimIzinEkleVM
                {
                    personelID = id
                };
            }
            else
            {
                var yizin = db.Yizins.SingleOrDefault(c => c.id == izinid);
                izin = new YarimIzinEkleVM
                {
                    personelID = id,
                    izinID = izinid,
                    yil = yizin.yil
                };
            }

            return PartialView(izin);
        }
        [HttpPost]
        public JsonResult _YarimIzinEkle(int id, YarimIzinEkleVM izin, int izinid = 0)
        {

            StringBuilder cons = new StringBuilder();
            var personel = db.Personels.SingleOrDefault(c => c.id == izin.personelID);
            try
            {
                Yizin yi;
                if (izin.izinID == -1) //yeni izin
                {
                    yi = new Yizin
                    {
                        personelid = izin.personelID,
                        yil = izin.yil
                    };
                    yi.YizinDetays.Add(new YizinDetay
                    {
                        belgesayi = izin.belgeNo,
                        tarih = izin.tarih,
                        baslangic = izin.baslangic,
                        bitis = izin.bitiş
                    });
                    db.Yizins.Add(yi);
                    db.SaveChanges();

                   YarimizniPdksMazeretGir(personel.pdksid.Value, izin.tarih, izin.baslangic, izin.bitiş, izin.yil);
                   return Json(new { success = true, Data = yi, console = "_YarimIzinEkle" }, JsonRequestBehavior.AllowGet);
                }
                else
                {

                    yi = db.Yizins.FirstOrDefault(c => c.id == izin.izinID);
                    yi.YizinDetays.Add(new YizinDetay
                    {
                        belgesayi = izin.belgeNo,
                        tarih = izin.tarih,
                        baslangic = izin.baslangic,
                        bitis = izin.bitiş
                    });
                    yi.mikrokayit = true;
                    yi.YizinDetays.ForEach(c => cons.AppendLine(c.belgesayi));
                    db.SaveChanges();

                    //YarimizniPdksMazeretGir(personel.pdksid.Value,izin.tarih, izin.baslangic, izin.bitiş, izin.yil);
                    //pdks ye yarım izni mazeret izni olarak gir
                    return Json(new { success = true, Data = yi, console = "_YarimIzinEkle" }, JsonRequestBehavior.AllowGet);
                }

                return Json(new { success = false }, JsonRequestBehavior.AllowGet);
            }
            catch (Exception x)
            {
                return Json(new { success = false },JsonRequestBehavior.AllowGet);
            }

        }

        private void YarimizniPdksMazeretGir(int pdksid,DateTime tarih,TimeSpan gidis,TimeSpan gelis,int izinyil)
        {
            using (var db = new MySqlConnection("Server=172.41.40.85;Database=perkotek;Uid=root;Pwd=max;AllowZeroDateTime=True;Charset=latin5"))
            {
                var com = new MySqlCommand("", db);
                if (db.State != ConnectionState.Open)
                    db.Open();
                com.CommandText = string.Format(
                   "insert into personel_izin (personel_id,tatil_id,tarih,gidis_saat,gelis_saat,saatlik,aciklama,otoizin)" +
                    " values({0},{1},'{2}','{3}','{4}',{5},'{6}',{7})", pdksid,9,tarih.ToString("yyyy-M-d"),gidis,gelis,1,string.Format("{0} IZNINDEN YARIM GUN",izinyil),0);
               var reader = com.ExecuteNonQuery();
                db.Close();
               
            }
        }

        public ActionResult _PersonelYarimİzinListele(int id)
        {
            var liste = db.Yizins.Where(c => c.personelid == id & c.mikrokayit == false);
            var list = new List<YarimIzinEkleVM>();
            foreach (var izin in liste)
            {
                list.AddRange(izin.YizinDetays.Select(yarim => new YarimIzinEkleVM
                {
                    yil = izin.yil,
                    tarih = yarim.tarih,
                    belgeNo = yarim.belgesayi,
                    baslangic = yarim.baslangic.Value,
                    bitiş = yarim.bitis,
                    personelID = izin.personelid,
                    izinID = izin.id
                }));
            }



            //burada yarım gün izinleri göstermek için partial view oluşturulacak
            return PartialView(list);
        }

        public ActionResult PersonelYarimİzinListe()
        {
            var liste = db.YizinDetays.OrderByDescending(c => c.id).Take(25).ToList();
            return View(liste);
        }
    }
}