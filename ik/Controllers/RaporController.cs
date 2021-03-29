using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Linq.Expressions;
using System.Web.Mvc;
using ik.Models;
using PtakipDAL;


namespace ik.Controllers
{
    [FilterConfig.CustomActionFilter]
    [Authorize(Users = @"KENTKONUT\yyazici,KENTKONUT\bkalay,KENTKONUT\noskay,KENTKONUT\derya.aslan")]
    public class RaporController : Controller
    {
        readonly log4net.ILog logger = log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
        PtakipDAL.PerkotekContext pdb = new PerkotekContext();
        ikEntities db = new ikEntities();
        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
        [Authorize(Users = @"KENTKONUT\noskay,KENTKONUT\derya.aslan")]
        public ActionResult PersonelGunlukDurum()
        {
            ViewBag.PersonelListe = new SelectList(db.Personels.Where(c => c.cikistarihi == null).OrderBy(c => c.adsoyad), "id", "adsoyad");
            ViewBag.DepartmanListe = new SelectList(db.birims.OrderBy(c => c.birimad), "id", "birimad");
            //boş sayfa iki tarih seçme 
            return View();
        }



        public ActionResult GecKalmaDurum()
        {
            ViewBag.ayListe = new SelectList(new List<SelectListItem>()
            {
                new SelectListItem {Text="Ocak", Value = "1"},
                new SelectListItem {Text="Şubat", Value = "2"},
                new SelectListItem {Text="Mart", Value = "3"},
                new SelectListItem {Text="Nisan", Value = "4"},
                new SelectListItem {Text="Mayıs", Value = "5"},
                new SelectListItem {Text="Haziran", Value = "6"},
                new SelectListItem {Text="Temmuz", Value = "7"},
                new SelectListItem {Text="Ağustos", Value = "8"},
                new SelectListItem {Text="Eylül", Value = "9"},
                new SelectListItem {Text="Ekim", Value = "10"},
                new SelectListItem {Text="Kasım", Value = "11"},
                new SelectListItem {Text="Aralık", Value = "12"},
            }, "Value", "Text");
            return PartialView();
        }

        public JsonResult _Personelikitariharasıgiriscikis(int personelid, DateTime tarih1, DateTime tarih2, bool haftatatili = false, bool resmitatil = false, bool tumu = false)
        {
            var personel = db.Personels.SingleOrDefault(c => c.id == personelid);
            try
            {
                pdb.PuantajHazirla(tarih1, tarih2, personel.pdksid.Value);
                List<PersonelGunlukDurumVM> person = new List<PersonelGunlukDurumVM>();

                var per = pdb.personel.FirstOrDefault(c => c.ID == personel.pdksid);

                if (per == null)
                {
                    return Json(new { Success = false }, JsonRequestBehavior.AllowGet);
                }
                //iki tarih arası tüm günleri kontrol et
                for (DateTime t1 = tarih1; t1 <= tarih2; t1 = t1.AddDays(1))
                {


                    var exist = per.PTarihs.FirstOrDefault(c => c.Tarih == t1.Date);
                    if (exist != null)//tarih kaydı varsa
                    {

                        var hareket = exist.Harekets;
                        if (hareket.Any())
                        {
                            if (tumu)
                            {
                                if (exist.Giris != exist.Cikis)
                                {
                                    person.Add(new PersonelGunlukDurumVM
                                    {
                                        Giris = exist.Giris.ToString(),
                                        Cikis = exist.Cikis.ToString(),
                                        Gün = DateTimeFormatInfo.CurrentInfo.GetDayName(exist.Tarih.DayOfWeek),
                                        Tarih = exist.Tarih,
                                        Durum = ""
                                    });
                                }
                            }


                            if (exist.Giris == exist.Cikis)
                            {
                                person.Add(new PersonelGunlukDurumVM
                                {
                                    Giris = exist.Giris.ToString(),
                                    Cikis = exist.Giris == exist.Cikis ? "" : exist.Cikis.ToString(),
                                    Gün = DateTimeFormatInfo.CurrentInfo.GetDayName(exist.Tarih.DayOfWeek),
                                    Tarih = exist.Tarih,
                                    Durum = ""
                                });
                            }


                        }
                        else //hareket yok izin var
                        {
                            var izinler = exist.Izins;
                            if (izinler.Any())
                            {
                                var gunluk = izinler.FirstOrDefault(c => c.Saatlik == false);
                                if (gunluk != null)
                                {
                                    person.Add(new PersonelGunlukDurumVM
                                    {
                                        Giris = "",
                                        Cikis = "",
                                        Gün = DateTimeFormatInfo.CurrentInfo.GetDayName(exist.Tarih.DayOfWeek),
                                        Tarih = exist.Tarih,
                                        Durum = gunluk.Aciklama
                                    });
                                }
                            }
                        }
                    }
                    else//tarih kaydı yoksa haftasonumu, yoksa resmi tatilmi
                    {
                        if (resmitatil)
                        {
                            var resmi = db.ResmiTatils.SingleOrDefault(c => c.tarih == t1);
                            if (resmi != null)
                            {
                                person.Add(new PersonelGunlukDurumVM
                                {
                                    Giris = "",
                                    Cikis = "",
                                    Gün = DateTimeFormatInfo.CurrentInfo.GetDayName(t1.DayOfWeek),
                                    Tarih = t1,
                                    Durum = resmi.aciklama
                                });
                            }
                        }
                        if (haftatatili)
                        {

                            if (t1.DayOfWeek == DayOfWeek.Saturday || t1.DayOfWeek == DayOfWeek.Sunday)
                            {
                                person.Add(new PersonelGunlukDurumVM
                                {
                                    Giris = "",
                                    Cikis = "",
                                    Gün = DateTimeFormatInfo.CurrentInfo.GetDayName(t1.DayOfWeek),
                                    Tarih = t1,
                                    Durum = "Hafta Sonu"
                                });
                            }
                        }
                    }
                }




                return Json(new { Success = true, Data = person.OrderBy(c => c.Tarih).ToList() }, JsonRequestBehavior.AllowGet);

            }
            catch (Exception ex)
            {
                return Json(new { Success = false }, JsonRequestBehavior.AllowGet);
            }
        }
        [Authorize(Users = @"KENTKONUT\noskay,KENTKONUT\derya.aslan")]
        public ActionResult DepartmanGunlukDurum()
        {
            ViewBag.BirimList = db.birims.ToList();
            return View();
        }
        [Authorize(Users = @"KENTKONUT\noskay,KENTKONUT\derya.aslan")]
        public class PersonelGunlukDurumVM
        {
            public DateTime Tarih { get; set; }
            public string Gün { get; set; }
            public string Giris { get; set; }
            public string Cikis { get; set; }
            public string Durum { get; set; }
        }


        [Authorize(Users = @"KENTKONUT\yyazici,KENTKONUT\bkalay,KENTKONUT\noskay,KENTKONUT\derya.aslan,KENTKONUT\Oyildiz")]
        public ActionResult PersonelDurum()
        {
            return View();
        }

        [Authorize(Users = @"KENTKONUT\yyazici,KENTKONUT\bkalay,KENTKONUT\noskay,KENTKONUT\derya.aslan")]
        public JsonResult PersonelKriterler()
        {
            var kriterler = new
            {
                birimler = db.birims.Select(c => new { Text = c.birimad, Value = c.id }),
                lokasyon = db.Lokasyons.Select(c => new { Text = c.ad, Value = c.id }),
                kadro = db.Kadroes.Select(c => new { Text = c.ad, Value = c.id }),
                tahsil = db.Tahsils.Select(c => new { Text = c.ad, Value = c.id })
            };
            return Json(new { Success = true, Data = kriterler }, JsonRequestBehavior.AllowGet);
        }

        [Authorize]

        public ActionResult PersonelListeGetir(int[] birimlist, int[] lokasyonlist, int[] cinsiyetlist, int[] kadrolist, int[] tahsillist)
        {
            var liste = from p in db.Personels where p.cikistarihi == null select p;

            var predicate = PredicateExtensions.Begin<Personel>();
            if (birimlist != null)
            {
                foreach (var brm in birimlist)
                {
                    predicate = predicate.Or(c => c.birimid == brm);
                }
                liste = liste.Where(predicate);
            }


            if (lokasyonlist != null)
            {
                predicate = PredicateExtensions.Begin<Personel>();
                foreach (var lksyn in lokasyonlist)
                {
                    predicate = predicate.Or(c => c.PersonelDetay.lokasyon == lksyn);
                }
                liste = liste.Where(predicate);
            }


            if (cinsiyetlist != null)
            {
                predicate = PredicateExtensions.Begin<Personel>();
                foreach (var lksyn in cinsiyetlist)
                {
                    predicate = predicate.Or(c => c.PersonelDetay.cinsiyeti == (lksyn == 1));
                }
                liste = liste.Where(predicate);
            }

            if (kadrolist != null)
            {
                predicate = PredicateExtensions.Begin<Personel>();
                foreach (var lksyn in kadrolist)
                {
                    predicate = predicate.Or(c => c.kadro == lksyn);
                }
                liste = liste.Where(predicate);
            }
            if (tahsillist != null)
            {
                predicate = PredicateExtensions.Begin<Personel>();
                foreach (var lksyn in tahsillist)
                {
                    predicate = predicate.Or(c => c.PersonelDetay.tahsili == lksyn);
                }
                liste = liste.Where(predicate);
            }

            try
            {
                var data = liste.Select(c => new
                {
                    SicilNo = c.sicilno,
                    AdSoyad = c.adsoyad,
                    //Firma = c.PersonelIhaleDonemleri.PersonelIhale.Firma.firmaad,
                    Foto = c.PersonelDetay.thumb,
                    GorevYer = c.PersonelDetay.Lokasyon1.ad,
                    Kadro = c.Kadro1.ad,
                    Gorev = c.PersonelDetay.Gorev1.ad,
                    Egitim = c.PersonelDetay.Tahsil.ad
                }).ToList();

                var datam = liste.Select(c => new PersonelListesiGetirVM
                {
                    ID = c.id,
                    SicilNo = c.sicilno,
                    AdSoyad = c.adsoyad,
                    Foto = c.PersonelDetay.thumb,
                    EgitimDurum = c.PersonelDetay.Tahsil.ad,
                    Gorev = c.PersonelDetay.Gorev1.ad,
                    GorevYeri = c.PersonelDetay.Lokasyon1.ad
                });



                //return Json(new
                //{
                //    Success = true,
                //    Data = data
                //}, JsonRequestBehavior.AllowGet);
                return PartialView("PersonelListeGetir", datam);
            }
            catch (Exception ee)
            {

            }


            return Json(null, JsonRequestBehavior.AllowGet);
        }

        [Authorize(Users = @"KENTKONUT\noskay,KENTKONUT\derya.aslan")]
        public ActionResult SaglikRapor()
        {
            return View();
        }

        public JsonResult _PersonelSaglikRapor(int id)
        {
            var raporlar = db.Rapors.Where(c => c.personelid == id);
            if (raporlar.Any())
            {
                try
                {
                    var rp = raporlar.Select(c => new
                    {
                        RaporTip = c.Rapor_RaporTip.ad,
                        HastalikTip = c.Rapor_HastalikTip.ad,
                        Baslangic = c.baslangic,
                        Bitis = c.bitis,
                        Aciklama = c.aciklama
                    }).ToList();
                    return Json(new { Success = true, Data = rp }, JsonRequestBehavior.AllowGet);
                }
                catch (Exception xx)
                {
                }
            }
            return Json(new { Success = false }, JsonRequestBehavior.AllowGet);
        }

        [Authorize(Users = @"KENTKONUT\noskay,KENTKONUT\derya.aslan")]
        public ActionResult Raporlar()
        {
            return View();
        }

        [Authorize(Users = @"KENTKONUT\noskay,KENTKONUT\derya.aslan")]

        public ActionResult PersonelDurumRapor(bool birim = false, bool lokasyon = false, bool tahsil = false, bool gorev = false, bool meslek = false, bool isegiris = false
            , bool kidem = false)
        {
            var data = db.Personels.Where(c => c.cikistarihi == null & (c.kadro == 1 || c.kadro == 2)).Select(d => new MaasNet
            {
                Personel = d.adsoyad,
                TC = d.mikroid.Value,
                Brüt = 0,
                Net = 0
            }).ToList();

            try
            {
                using (var kent = new KENTEntities())
                {
                    foreach (var d in data)
                    {
                        d.Brüt = (int)kent.PERSONELLERs.FirstOrDefault(c => c.per_Guid == d.TC)
                                .per_ucret.Value;
                        d.Net = (int)MaasHesap(d.Brüt, 0, 0, 0).Net;
                        // logger.Error(d.Personel);
                    }

                }

            }
            catch (Exception ex)
            {
            }


            return View(data);
        }
        [Authorize(Users = @"KENTKONUT\noskay,KENTKONUT\derya.aslan")]
        public Hesap MaasHesap(
            double brütmaaş,
            double yemek,
            double avans,
            double bes,
            double devgelvermatrah = 0,
            double agi = 0,
            int sgkgun = 30,
            double mesai = 0)
        {

            if (sgkgun == 0)
            {
                return new Hesap
                {
                    Net = 0,
                    DamgaVer = 0,
                    GelirVergisi = 0,
                    SGKPay = 0,
                    İşsizlikPay = 0
                };
            }
            var yemekistisna = 4.05;

            var dilim = db.vergi_dilim.FirstOrDefault(c => c.yil == 2018).vergi_dilim_detay.ToList();
            brütmaaş = ((brütmaaş / 30) * sgkgun);// 4307.32m;
            double brütyemek = 0;//Math.Round(sgkgun < 22 ? (350.0 / 22.0) * sgkgun : 350);





            var yemekistisnatutar = yemekistisna * 22;
            var sgkmatrah = Math.Round(brütmaaş + brütyemek - yemekistisnatutar + mesai, 2);
            sgkmatrah = sgkmatrah > 15221.4 ? 15221.4 : sgkmatrah;

            var sgkprim = Math.Round(sgkmatrah * 0.14, 2);
            var işsizlikprim = Math.Round(sgkmatrah * 0.01, 2);
            var damga = Math.Round((brütmaaş + brütyemek + mesai) * 0.00759, 2);
            var gelirvergimatrah = Math.Round(brütmaaş + brütyemek + mesai - sgkprim - işsizlikprim, 2);
            var kümülatif = Math.Round((decimal)(devgelvermatrah + gelirvergimatrah), 2);
            var gelirvergisi = 0m;

            var devgbmatrah = (decimal)devgelvermatrah;
            for (int i = 0; i < dilim.Count; i++)
            {
                if (devgbmatrah > dilim[i].ust)
                {

                }
                else
                {
                    if (kümülatif > dilim[i].ust)
                    {
                        var üdilim = (double)(kümülatif - dilim[i].ust);
                        var üst = (üdilim * dilim[i + 1].oran) / 100;
                        var alt = ((gelirvergimatrah - üdilim) * dilim[i].oran) / 100;
                        gelirvergisi = (decimal)(alt + üst);
                        gelirvergisi = Math.Round(gelirvergisi, 2);
                        break;
                        //iki dilim
                    }
                    else
                    {
                        //tek dilim
                        gelirvergisi += (decimal)(gelirvergimatrah * dilim[i].oran) / 100;

                        gelirvergisi = Math.Round(gelirvergisi, 2);
                        break;
                    }
                }
            }
            //gelirvergisi hesapla
            gelirvergisi -= (decimal)agi;

            var net = brütmaaş + brütyemek - sgkprim - ((double)gelirvergisi) - damga - işsizlikprim;
            return new Hesap
            {
                Net = Math.Round(net, 2),
                DamgaVer = damga,
                GelirVergisi = (double)gelirvergisi,
                SGKPay = sgkprim,
                İşsizlikPay = işsizlikprim
            };
        }


        public ActionResult GünlükRapor()
        {


            return View();
        }

        public ActionResult Izinler()
        {
            return View();
        }


       

        [Authorize(Users = @"KENTKONUT\noskay,KENTKONUT\derya.aslan")]
        [HttpPost]
        public ActionResult IzinleriHesapla(string[] personeller)
        {

            var list = new List<IzinRapor>();
            foreach (var personell in personeller)
            {

                var pid = int.Parse(personell);
                var personel = db.Personels.SingleOrDefault(c => c.pdksid == pid);
                var kidem = new List<Kidem>();
                var izinrapor = new IzinRapor { AdSoyad = personel.adsoyad };
                var kidembaslangic = personel.giristarihi.Value;
                var kidembitis = personel.giristarihi.Value;
                var kidemyil = 1;


                if (personel.PersonelDevir != null)
                {

                    kidembaslangic = new DateTime(personel.giristarihi.Value.Year - 1, personel.PersonelDevir.kidemTarih.Month, personel.PersonelDevir.kidemTarih.Day);
                    if (kidembaslangic.AddYears(1) <= personel.giristarihi.Value)
                    {
                        kidembaslangic = kidembaslangic.AddYears(1);
                    }
                    //kıdem başlangıç gün ay geçen yıl
                    //kıdem bitiş gun ay bu yil
                    kidembitis = kidembaslangic;
                    kidemyil = personel.giristarihi.Value.Year - personel.PersonelDevir.kidemTarih.Year;
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
                    else if (kidemyil >= 6 & kidemyil < 15)
                    {
                        hakedilen = 20;
                    }
                    else
                    {
                        hakedilen = 26;
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


                int kalan = 0;

                foreach (var kdm in kidem)
                {
                    if (kdm.yil < DateTime.Now.Year)
                    {
                        kalan += (int)(kdm.hakedilenizin - kdm.kullanilan);
                    }
                    else
                    {
                        var tarih = personel.kidemtarihi ?? personel.giristarihi;
                        var kdmtarih = new DateTime(kdm.yil, tarih.Value.Month, tarih.Value.Day);
                        if (DateTime.Now.Date < kdmtarih)
                        {
                            // 
                            izinrapor.HakedilecekIzin = kdm.hakedilenizin;
                            izinrapor.HakedilecekTrih = kdmtarih.ToShortDateString();
                            izinrapor.KalanIzin = kalan;

                            //list.Add(new IzinRapor { AdSoyad = personel.adsoyad, KalanIzin = kalan ,HakedilecekIzin = kdm.hakedilenizin,HakedilecekTrih =kdmtarih.Value.ToShortDateString()});
                        }
                        else
                        {
                            kalan += (int)(kdm.hakedilenizin - kdm.kullanilan);
                        }
                        izinrapor.KalanIzin = kalan;
                    }
                }
                list.Add(izinrapor);
            }


            return Json(list, JsonRequestBehavior.AllowGet);


        }
    }

    public class IzinRapor
    {
        public string AdSoyad { get; set; }
        public int KalanIzin { get; set; }
        public string HakedilecekTrih { get; set; }
        public int HakedilecekIzin { get; set; }
    }

    public class MaasNet
    {
        public string Personel { get; set; }
        public Guid TC { get; set; }
        public int Brüt { get; set; }
        public int Net { get; set; }
    }


    public class PersonelListesiGetirVM
    {
        public int ID { get; set; }
        public string SicilNo { get; set; }
        public string Foto { get; set; }
        public string AdSoyad { get; set; }
        public string GorevYeri { get; set; }
        public string Gorev { get; set; }
        public string EgitimDurum { get; set; }
    }
}




