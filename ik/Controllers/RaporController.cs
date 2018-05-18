using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Linq.Expressions;
using System.Web.Mvc;
using DevExpress.Data.Helpers;
using ik.Models;
using PtakipDAL;

namespace ik.Controllers
{
    public class RaporController : Controller
    {
        PerkotekContext pdb = new PerkotekContext();
        ikEntities db = new ikEntities();
        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }

        public ActionResult PersonelGunlukDurum()
        {
            ViewBag.PersonelListe = new SelectList(db.Personels.Where(c => c.cikistarihi == null).OrderBy(c => c.adsoyad), "id", "adsoyad");
            ViewBag.DepartmanListe = new SelectList(db.birims.OrderBy(c => c.birimad), "id", "birimad");
            //boş sayfa iki tarih seçme 
            return View();
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
        public ActionResult DepartmanGunlukDurum()
        {
            ViewBag.BirimList = db.birims.ToList();
            return View();
        }
        public class PersonelGunlukDurumVM
        {
            public DateTime Tarih { get; set; }
            public string Gün { get; set; }
            public string Giris { get; set; }
            public string Cikis { get; set; }
            public string Durum { get; set; }
        }


        public ActionResult PersonelDurum()
        {

            return View();
        }

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

      
        public JsonResult PersonelListeGetir(int[] birimlist, int[] lokasyonlist, int[] cinsiyetlist, int[] kadrolist, int[] tahsillist)
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
              var  data = liste.Select(c => new
                {
                  SicilNo=c.sicilno,
                    AdSoyad = c.adsoyad,
                    Firma=c.PersonelIhaleDonemleri.PersonelIhale.Firma.firmaad,
                  Foto = c.PersonelDetay.thumb,
                  GorevYer = c.PersonelDetay.Lokasyon1.ad,
                  Kadro = c.Kadro1.ad,
                  Gorev = c.PersonelDetay.Gorev1.ad,
                  Egitim = c.PersonelDetay.Tahsil.ad
              }).ToList();
                return Json(new
                {
                    Success = true,
                    Data = data
                }, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ee)
            {
                
            }
           

            return Json(null, JsonRequestBehavior.AllowGet);
        }

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
            return Json(new {Success=false}, JsonRequestBehavior.AllowGet);
        }
    }
}




