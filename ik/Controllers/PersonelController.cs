using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Globalization;
using System.Linq;
using System.Web.Mvc;
using ik.Models;
using ik.Models.DataClasslari;
using Microsoft.Ajax.Utilities;
using MySql.Data.MySqlClient;

namespace ik.Controllers
{
    [FilterConfig.CustomActionFilter]
    [Authorize(Users = @"KENTKONUT\noskay,KENTKONUT\derya.aslan")]
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
            var liste = db.Personels.Where(c => c.cikistarihi == null);
            return View(liste.ToList());
        }

        public ActionResult PersonelGorev()
        {
            return View();
        }

        [HttpPost]
        public JsonResult PersonelGorev(int personelid)
        {
            var personel = db.Personels.SingleOrDefault(c => c.id == personelid);
            var Birim = personel.birimid;
            var sod = db.PersonelFirmas.SingleOrDefault(c => c.personelid == personelid);
            var Firma = (sod == null ? -1 : sod.firmaid);
            var Kadro = personel.kadro;
            //var Gorev = personel.Gorev == null ? -1 : personel.Gorev.id;

            return Json(
                new
                {
                    Success = true,
                    Data = new
                    {
                        Birim,
                        Firma,
                        Kadro
                        //,Gorev
                    }
                }, JsonRequestBehavior.AllowGet);
        }
        public JsonResult PersonelListe()
        {
            var personelListe = db.Personels.OrderBy(c => c.adsoyad).Select(c => new { c.id, c.adsoyad });
            var mikro = ke.PERSONELLERs.Where(c => c.per_cikis_tar == new DateTime(1899, 12, 31)).Select(c => new { id = c.per_RECno, adsoyad = c.per_adi + " " + c.per_soyadi }).OrderBy(c => c.adsoyad);
            var birim = db.birims.Select(c => new { c.id, c.birimad });
            var pdks = new ArrayList();
            using (var con = new MySqlConnection(
                        "Server=172.41.40.85;Database=perkotek;Uid=root;Pwd=max;AllowZeroDateTime=True;Charset=latin5"))
            {
                var com = new MySqlCommand("select id, concat(adi,' ',soyadi) as adsoyad from personel_kartlari", con);
                if (con.State != ConnectionState.Open)
                    con.Open();
                var reader = com.ExecuteReader();
                while (reader.Read())
                {
                    pdks.Add(new { id = (int)((uint)reader["id"]), adsoyad = reader["adsoyad"].ToString() });
                }
                con.Close();
            }




            return Json(new { personelListe, mikro, birim, pdks }, JsonRequestBehavior.AllowGet);
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
                mikroid = id,
                tcno = mikro.Per_TcKimlikNo,
                sira = 1
            };
            return Json(personel, JsonRequestBehavior.AllowGet);
        }

        public ActionResult AvansForm()
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

            return Json(yazi, JsonRequestBehavior.AllowGet);
        }

        public ActionResult MesaiOnayBelge()
        {
            return View();
        }

        public ActionResult _PersonelAdSec()
        {
            return PartialView();
        }

        public JsonResult _PersonelSicil(int personelid)
        {
            var personel = db.Personels.SingleOrDefault(c => c.id == personelid) ?? new Personel();
            return Json(new { personel.adsoyad, personel.tcno, personel.sicilno }, JsonRequestBehavior.AllowGet);
        }

        public ActionResult Avanslar()
        {
            return View();
        }

        [HttpPost]
        public JsonResult _PersonelAvans(int personelid, int tutar)
        {
            try
            {
                db.Avanslars.Add(new Avanslar { personelId = personelid, tutar = tutar, tarih = DateTime.Now });
                db.SaveChanges();
            }
            catch (Exception ex)
            {

                return Json(new { Success = false, Message = ex.Message }, JsonRequestBehavior.AllowGet);
            }
            return Json(new { Success = true }, JsonRequestBehavior.AllowGet);

        }

        public ActionResult PersonelEksik()
        {
            ViewBag.personelListe = new SelectList(db.Personels.OrderBy(c => c.adsoyad), "id", "adsoyad");
            return View();
        }
        public ActionResult Create()
        {
            ViewBag.birimListe = new SelectList(db.birims, "id", "fullad");

            return View();
        }
        [HttpPost]
        public ActionResult Create(Personel personel)
        {
            if (ModelState.IsValid)
            {
                db.Personels.Add(personel);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.birimListe = new SelectList(db.birims, "id", "fullad");
            return View(personel);
        }
        public JsonResult AdSoyadKontrol(string adsoyad)
        {

            if (db.Personels.SingleOrDefault(c => c.adsoyad == adsoyad) == null)
                return Json(true, JsonRequestBehavior.AllowGet);

            string suggestedUID = String.Format(CultureInfo.InvariantCulture,
               "{0} Kullanıcısı zaten kayıtlı.", adsoyad);
            return Json(suggestedUID, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public JsonResult AvansListe(string tarih1, string tarih2)
        {
            var date1 = DateTime.ParseExact(tarih1, "yyyy-MM-dd", null);
            var date2 = DateTime.ParseExact(tarih2, "yyyy-MM-dd", null);
            var avanslar = db.Avanslars.Where(c => c.tarih >= date1 && c.tarih <= date2).Select(c => new { ID = c.id, AdSoyad = c.Personel.adsoyad, Tutar = c.tutar });



            return Json(avanslar, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public JsonResult AvansEkle(int personelid, int tutar)
        {
            try
            {
                var avans = new Avanslar
                {
                    personelId = personelid,
                    tutar = tutar,
                    tarih = DateTime.Now
                };
                db.Avanslars.Add(avans);
                db.SaveChanges();
                return Json(new { Success = true }, JsonRequestBehavior.AllowGet);
            }
            catch (Exception)
            {
                return Json(new { Success = false }, JsonRequestBehavior.AllowGet);
            }

        }

        public JsonResult Gorevler()
        {
            var BirimListe = db.birims.Select(c => new SelectListItem()
            {
                Text = c.birimad,
                Value = c.id.ToString()
            });
            var FirmaListe = db.Firmas.Select(c => new SelectListItem()
            {
                Text = c.firmaad,
                Value = c.id.ToString()
            });
            var KadroListe = db.Kadroes.Select(c => new SelectListItem()
            {
                Text = c.ad,
                Value = c.id.ToString()
            });
            var GorevListe = db.Gorevs.Select(c => new SelectListItem()
            {
                Text = c.ad,
                Value = c.id.ToString()
            });
            return Json(new { BirimListe, FirmaListe, KadroListe, GorevListe }, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public JsonResult GorevGuncelle(int personelid, int birim, int firma, int gorev, int kadro)
        {
            try
            {
                var personel = db.Personels.SingleOrDefault(c => c.id == personelid);
                if (personel == null) throw new Exception();
                if (birim > 0)
                {
                    personel.birimid = birim;
                }
            }
            catch (Exception)
            {

                return Json(new { Success = false }, JsonRequestBehavior.AllowGet);
            }

            return Json(new { Success = true }, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public JsonResult _AvansSil(int id)
        {
            try
            {
                var avans = db.Avanslars.SingleOrDefault(c => c.id == id);
                db.Avanslars.Remove(avans);
                db.SaveChanges();
            }
            catch (Exception x)
            {
                return Json(new { Success = false, x.Message }, JsonRequestBehavior.AllowGet);
            }
            return Json(new { Success = true, Message = "Kayıt Silindi" }, JsonRequestBehavior.AllowGet);
        }

        public ActionResult PersonelFirma()
        {
            ViewBag.PersonelListe = new SelectList(db.Personels.Where(c => c.cikistarihi == null).OrderBy(c => c.adsoyad), "id", "adsoyad");
            ViewBag.FirmaListe = new SelectList(db.Firmas, "id", "firmaad");
            ViewBag.IhaleListe = new SelectList(new List<PersonelFirmaVM>(), "id", "IhaleDonem");
            ViewBag.BirimListe = new SelectList(db.birims, "id", "birimad");
            ViewBag.KadroListe = new SelectList(db.Kadroes, "id", "ad");
            ViewBag.LokasyonListe = new SelectList(db.Lokasyons, "id", "ad");
            ViewBag.GorevListe = new SelectList(db.Gorevs, "id", "ad");
            ViewBag.TahsilListe = new SelectList(db.Tahsils, "id", "ad");
            ViewData["Success"] = false;

            return View();
        }

        [HttpPost]
        public ActionResult PersonelFirma(PersonelFirmaVM firmaVm)
        {
            ViewBag.PersonelListe = new SelectList(db.Personels.Where(c => c.cikistarihi == null).OrderBy(c => c.adsoyad), "id", "adsoyad");
            ViewBag.FirmaListe = new SelectList(db.Firmas, "id", "firmaad");
            ViewBag.IhaleListe = new SelectList(db.PersonelFirmas.Where(c => c.firmaid == firmaVm.FirmaId), "id", "IhaleDonem");
            ViewBag.BirimListe = new SelectList(db.birims, "id", "birimad");
            ViewBag.KadroListe = new SelectList(db.Kadroes, "id", "ad");
            ViewBag.LokasyonListe = new SelectList(db.Lokasyons, "id", "ad");
            ViewBag.GorevListe = new SelectList(db.Gorevs, "id", "ad");
            ViewBag.TahsilListe = new SelectList(db.Tahsils, "id", "ad");

            if (ModelState.IsValid)
            {
                try
                {
                    var personel = db.Personels.SingleOrDefault(c => c.id == firmaVm.PersonelID);

                    if (personel.PersonelIhaleDonemleris.Any(c => c.ihaleid == firmaVm.IhaleDonem))
                    {
                        ViewData["Message"] = "Aynı döneme ait kayıt mevcut";
                        //return View(firmaVm);
                        //return RedirectToAction("PersonelFirma");
                    }
                    else
                    {
                        var pid = new PersonelIhaleDonemleri()
                        {
                            ihaleid = firmaVm.IhaleDonem,
                            personelid = firmaVm.PersonelID

                        };
                        personel.PersonelIhaleDonemleris.Add(pid);
                        db.SaveChanges();
                        personel.calismadonem = pid.id;
                    }

                    personel.birimid = firmaVm.Birimi;
                    personel.kadro = firmaVm.KadroTipi;

                    if (personel.PersonelDetay == null)
                        personel.PersonelDetay = new PersonelDetay();
                    personel.PersonelDetay.lokasyon = firmaVm.Lokasyon;
                    personel.PersonelDetay.gorev = firmaVm.Gorevi;
                    personel.PersonelDetay.tahsili = firmaVm.Tahsili;


                    db.SaveChanges();
                }
                catch (Exception saklamahatası)
                {

                }
                ViewData["Success"] = true;
                return View(firmaVm);
                //RedirectToAction("PersonelFirma");
            }

            return View(firmaVm);
        }


        [HttpPost]
        public JsonResult _FirmaIhale(int id)
        {
            try
            {

                var donem = db.PersonelIhales.Where(c => c.firmaid == id).Select(c =>
                    new
                    {
                        Tarih1 = c.baslangic,
                        Tarih2 = c.bitis,
                        Value = c.id
                    }).ToList();
                return Json(new { Success = true, Data = donem }, JsonRequestBehavior.AllowGet);
            }
            catch (Exception x)
            {

                return Json(new { Success = false }, JsonRequestBehavior.AllowGet);
            }
        }

        public JsonResult _PersonelIhale(int personelid)
        {
            try
            {
                //personel tablosundan çalışma dönemini getir.
                var personel = db.Personels.SingleOrDefault(c => c.id == personelid);
                var firmaid = personel.PersonelIhaleDonemleri.PersonelIhale.firmaid;
                var kadrotipi = personel.kadro;
                var birimi = personel.birimid;
                var donemler = personel.PersonelIhaleDonemleri.PersonelIhale.Firma.PersonelIhales.Select(c =>
                    new
                    {
                        Tarih1 = c.baslangic,
                        Tarih2 = c.bitis,
                        Value = c.id
                    }).ToList(); ;
                var secilidonem = personel.PersonelIhaleDonemleri.ihaleid;
                return Json(new
                {
                    Success = true,
                    firmaid,
                    donemler,
                    secilidonem,
                    kadrotipi,
                    birimi,
                    lokasyon = (personel.PersonelDetay.Lokasyon1 == null ? 0 : personel.PersonelDetay.Lokasyon1.id),
                    gorevi = personel.PersonelDetay.gorev,
                    tahsili = personel.PersonelDetay.tahsili
                }, JsonRequestBehavior.AllowGet);
            }
            catch (Exception hata)
            {
                return Json(new { Success = false, hata.Message }, JsonRequestBehavior.AllowGet);
            }

            //kayıtla ilişkili firma id sini döndür
            //firma id ile ilişkili ihale kayıtlarını ve seçili ihale kaydını getir


        }

        public ActionResult TumPersonel()
        {
            ViewBag.FirmaListe = new SelectList(db.Firmas, "id", "firmaad");
            ViewBag.BirimListe = new SelectList(db.birims, "id", "birimad");
            ViewBag.KadroListe = new SelectList(db.Kadroes, "id", "ad");
            ViewBag.LokasyonListe = new SelectList(db.Lokasyons, "id", "ad");
            ViewBag.GorevListe = new SelectList(db.Gorevs, "id", "ad");
            ViewBag.CinsiyetListe = new SelectListItem[]
            {
                new SelectListItem()
                {
                    Text="Kadın",Value ="0"
                },
                 new SelectListItem()
                {
                    Text="Erkek",Value ="1"
                }
            };



            return View();
        }

        public ActionResult PersonelKadroListe(int? id = -1)
        {
            if (id < 1) return RedirectToAction("TumPersonel");

            var liste = db.Personels.Where(c => c.kadro == id && c.cikistarihi == null).Select(c => new PersonelKadroListeVM()
            {
                ID = c.id,
                AdSoyad = c.adsoyad,
                Firma = c.PersonelIhaleDonemleri.PersonelIhale.Firma.firmaad
            });
            return View(liste.OrderBy(c => c.Firma));

        }

        public ActionResult PersonelIzin(int id)
        {
            var personel = db.Personels.SingleOrDefault(c => c.id == id);
            int kidem = 0;
            DateTime devirtarih;
            int devirizin;
            DateTime giristarih;
            int yas;

            if (personel.PersonelDevir != null)
            {
                devirtarih = personel.PersonelDevir.kidemTarih;
                devirizin = personel.PersonelDevir.izinDevir;
            }
            giristarih = personel.giristarihi.Value;


            //personel devri varsa devir yılı izni olarak devir izni eklenecek


            return View();
        }

        public ActionResult TumPersonelListe()
        {
            var liste = db.Personels.Where(c => c.cikistarihi == null).Select(c => new PersonelListeVM
            {
                ID = c.id,
                AdSoyad = c.adsoyad,
                Birimi = c.birim.fullad,
                Firma = c.PersonelIhaleDonemleri.PersonelIhale.Firma.firmaad,
                Kadro = c.Kadro1.ad

            });
            return View(liste.ToList());
        }

        public ActionResult TumPersonelSayi()
        {
            var liste = db.Personels.Where(c => c.cikistarihi == null).GroupBy(c => c.PersonelIhaleDonemleri.PersonelIhale.Firma.firmaad).Select(c => new PersonelListeSayıVM
            {
                FirmaID = c.FirstOrDefault().PersonelIhaleDonemleri.PersonelIhale.Firma.id,
                Firma = c.Key,
                Sayı = c.Count()
            }).ToList();
            return View(liste);
        }

        public ActionResult PersonelsByFirma(int id)
        {
            ViewBag.Firma = db.Firmas.FirstOrDefault(c => c.id == id).firmaad;
            var liste = db.Personels.OrderBy(c => c.adsoyad).Where(c => c.cikistarihi == null && c.PersonelIhaleDonemleri.PersonelIhale.firmaid == id).Select(c => new PersonelsByFirmasVM
            {
                ID = c.id,
                AdSoyad = c.adsoyad,
                Görevi = c.PersonelDetay.Gorev1.ad

            }).ToList();
            return View(liste);
        }

        [HttpPost]
        public JsonResult _GorevEkle(string ad)
        {
            try
            {
                var gorev = new Gorev()
                {
                    ad = ad
                };
                db.Gorevs.Add(gorev);
                db.SaveChanges();
                var liste = db.Gorevs.OrderBy(c => c.ad).Select(c => new
                {
                    Text = c.ad,
                    Value = c.id
                }).ToList();

                return Json(new { Success = true, Selected = gorev.id, Data = liste }, JsonRequestBehavior.AllowGet);
            }
            catch (Exception)
            {

                return Json(new { Success = false }, JsonRequestBehavior.AllowGet);
            }
        }

        [HttpPost]
        public JsonResult _TumPersonelFiltre(int birim, int kadro, int firma, int lokasyon, int gorev, int cinsiyet)
        {
            var liste = from c in db.Personels select c;
            if (birim > 0)
            {
                liste = liste.Where(c => c.birimid == birim);
            }
            if (kadro > 0)
            {
                liste = liste.Where(c => c.kadro == kadro);
            }
            if (firma > 0)
            {
                liste = liste.Where(c => c.PersonelIhaleDonemleri.PersonelIhale.firmaid == firma);
            }
            if (lokasyon > 0)
            {
                liste = liste.Where(c => c.PersonelDetay.lokasyon == lokasyon);
            }
            if (gorev > 0)
            {
                liste = liste.Where(c => c.PersonelDetay.gorev == gorev);
            }
            if (cinsiyet > -1)
            {
                liste = liste.Where(c => c.PersonelDetay.cinsiyeti == (cinsiyet != 0));
            }

            return Json(new
            {
                Success = true,
                Data = liste.Where(c => c.cikistarihi == null).Select(c => new
                {
                    c.adsoyad,
                    kadrotipi = c.Kadro1.ad,
                    firma = c.PersonelIhaleDonemleri.PersonelIhale.Firma.firmaad,
                    lokasyon = c.PersonelDetay.Lokasyon1.ad,
                    gorev = c.PersonelDetay.Gorev1.ad
                }).ToList()
            }, JsonRequestBehavior.AllowGet);
        }

        public JsonResult _PersonelListbyDepartman(int id)
        {
            var liste = db.Personels.Where(c => c.cikistarihi == null && c.birimid == id).Select(c => new
            {
                Value = c.id,
                Text = c.adsoyad
            });
            return Json(new { Success = true, Data = liste }, JsonRequestBehavior.AllowGet);
        }

        public ActionResult PersonelByBirim(int birimid)
        {
            var birim = db.birims.SingleOrDefault(c => c.id == birimid);
            if (birim == null)
                return Json(new { Success = false }, JsonRequestBehavior.AllowGet);
            var liste = birim.Personels.Where(c => c.cikistarihi == null).Select(c => new
            {
                c.id,
                c.birimid,
                c.adsoyad
            }).ToList();

            return Json(new { Success = true, Data = liste }, JsonRequestBehavior.AllowGet);
        }

        public ActionResult _Departmanlar()
        {
            var dept = db.birims.Select(c => new
            {
                Text = c.birimad,
                Value = c.id
            });
            return Json(new { Success = true, Data = dept }, JsonRequestBehavior.AllowGet);

        }

        public ActionResult _PersonelByDepartman(int id = 0)
        {
            var pers = db.Personels.Where(c => c.birimid == id)
                .Select(d => new
                {
                    Text = d.adsoyad,
                    Value = d.pdksid
                });

            return Json(new { Success = true, Data = pers }, JsonRequestBehavior.AllowGet);
        }

        public ActionResult SaglikRapor()
        {
            var liste = db.Rapors.ToList();
            return View(liste);
        }

        public ActionResult SaglikRaporEkle()
        {
            ViewBag.personelListe = new SelectList(db.Personels.Where(c => c.cikistarihi == null).ToList(), "id", "adsoyad");
            ViewBag.raporhastaliktipListe = new SelectList(db.Rapor_HastalikTip.ToList(), "id", "ad");
            ViewBag.raportipListe = new SelectList(db.Rapor_RaporTip.ToList(), "id", "ad");
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult SaglikRaporEkle(Rapor rapor)
        {
            if (ModelState.IsValid)
            {
                var pers = db.Personels.SingleOrDefault(c => c.id == rapor.id);
                db.Rapors.Add(rapor);
                // db.SaveChanges();

                return RedirectToAction("_RaporEkle", "Pdks", new
                {
                    pers.pdksid,
                    rapor.baslangic,
                    rapor.bitis
                });
            }
            ViewBag.personelListe = new SelectList(db.Personels.Where(c => c.cikistarihi == null).ToList(), "id", "adsoyad");
            ViewBag.raporhastaliktipListe = new SelectList(db.Rapor_HastalikTip.ToList(), "id", "ad");
            ViewBag.raportipListe = new SelectList(db.Rapor_RaporTip.ToList(), "id", "ad");
            return View(rapor);
        }


        public JsonResult _PersonelWithThums()
        {
            var liste = db.Personels.Where(c => c.cikistarihi == null).OrderBy(c => c.adsoyad).Select(c => new
            {
                value = c.id,
                text = c.adsoyad,
                imageSrc = c.PersonelDetay.thumb
            }).ToList();
            return Json(liste, JsonRequestBehavior.AllowGet);
        }

        public ActionResult PersonelDetay()
        {
            return View();

        }

        public ActionResult _SelectList()
        {
            var liste = db.Personels.Where(c => c.cikistarihi == null).OrderBy(c => c.adsoyad).Select(c => new
            {
                Text = c.adsoyad,
                Value = c.id,
                Thumb = c.PersonelDetay.thumb
            }).ToList();
            return Json(liste, JsonRequestBehavior.AllowGet);
        }

        public ActionResult _PersonelResimleri()
        {
            return PartialView();
        }

        public ActionResult _PersonelResimEkle(int id, string thumb)
        {
            var personel = db.Personels.SingleOrDefault(c => c.id == id);
            if (personel != null)
            {
                personel.PersonelDetay.thumb = thumb;
                db.SaveChanges();
                return Json(true, JsonRequestBehavior.AllowGet);
            }
            return Json(false, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public ActionResult _DepartmanEkle(int id, string ad)
        {
            try
            {
                var birim = new birim { birimad = ad, fullad = ad };
                db.birims.Add(birim);
                db.SaveChanges();
                var lastid = birim.id;
                var data = db.birims.Select(c => new
                {
                    Value = c.id,
                    Text = c.birimad
                });
                return Json(new { Success = true, Data = data, Selected = lastid }, JsonRequestBehavior.AllowGet);
            }
            catch (Exception hata)
            {

            }


            return Json(new { Success = false }, JsonRequestBehavior.AllowGet);
        }

        public JsonResult _PersonelListe()
        {
            var data = db.Personels.Where(c => c.cikistarihi == null).OrderBy(c => c.adsoyad).Select(c => new
            {
                Value = c.id,
                Text = c.adsoyad
            });
            return Json(new { Success = true, Data = data }, JsonRequestBehavior.AllowGet);
        }

        public JsonResult _imzatakippersonelliste()
        {
            try
            {

                var liste = db.Personels.Where(c => c.cikistarihi == null).GroupBy(e => e.birim.birimad).Select(d => new
                {
                    Birim = d.Key,
                    Personeller = d.Select(f => new
                    {
                        f.adsoyad,
                        f.id,
                        f.mikroid,
                    })

                    //d.birim.birimad
                }).ToList();
                return Json(new { Success = true, Data = liste }, JsonRequestBehavior.AllowGet);
            }
            catch (Exception x)
            {
                return Json(new { Success = false, Data = x.InnerException }, JsonRequestBehavior.AllowGet);
            }
        }

        public JsonResult _AvansKontrol()
        {
            var p = db.Personels.FirstOrDefault();
            //geçen ay alanlar ve tutarlar
            //bu ay alanlar ve tutarlar
            var bugun = DateTime.Now;
            var buay1 = new DateTime(bugun.Year, bugun.Month, 1);
            var buay2 = buay1.AddMonths(1).AddDays(-1);
            var gecenay2 = buay1.AddDays(-1);
            var gecenay1 = new DateTime(gecenay2.Year, gecenay2.Month, 1);
            ArrayList liste = new ArrayList(); var avanslar =
                 db.Avanslars.Where(
                     c => (c.tarih >= gecenay1 & c.tarih <= gecenay2) || (c.tarih >= buay1 & c.tarih <= buay2));
            foreach (var avans in avanslar.GroupBy(c => c.Personel.adsoyad))
            {
                var tutar1 = 0;
                var tutar2 = 0;
                foreach (var av in avans)
                {
                    if (av.tarih.Value.Month < bugun.Month)
                    {
                        tutar1 = av.tutar;
                    }
                    else
                    {
                        tutar2 = av.tutar;
                    }
                }
                liste.Add(new
                {
                    AdSoyad = avans.Key,
                    GeçenAyTutar = tutar1,
                    BuAyTutar = tutar2
                });
            }
            //ad soyad
            //tutar
            // bu ay tutar yoksa 0
            return Json(new { Success = true, Data = liste }, JsonRequestBehavior.AllowGet);
        }

        public ActionResult Edit(int id)
        {
            var personel = db.Personels.Include("PersonelDetay").FirstOrDefault(c => c.id == id);

            ViewBag.birimListe = new SelectList(db.birims.ToList(), "id", "birimad");
            var pers = ke.PERSONELLERs.Where(c => c.per_cikis_tar == new DateTime(1899, 12, 31)).Select(c => new MikroAdSoyad
            {
                ad = c.per_adi + " " + c.per_soyadi,
                id = c.per_RECno
            });
            ViewBag.mikroListe = new SelectList(pers.OrderBy(c => c.ad).ToList(), "id", "ad");
            ViewBag.pdksListe = new SelectList(PdksPersonelAdSoyad(), "id", "ad");
            ViewBag.lokasyonListe = new SelectList(db.Lokasyons, "id", "ad");

            ViewBag.cinsiyetListe = new SelectList(new List<SelectListItem>()
            {
                new SelectListItem{Text = "Kadın",Value = "1"},
                 new SelectListItem{Text = "Erkek",Value = "0"}
            }.ToList(), "Value", "Text");
            return View(personel);
        }

        [HttpPost]
        public ActionResult Edit(int id, Personel personel, int lokasyon, int cinsiyeti)
        {
            if (ModelState.IsValid)
            {
                if (personel.PersonelDetay == null)
                    personel.PersonelDetay = new PersonelDetay();
                personel.PersonelDetay.personelid = personel.id;
                personel.PersonelDetay.cinsiyeti = cinsiyeti != 0;
                personel.PersonelDetay.lokasyon = lokasyon;
                db.Entry(personel).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.birimListe = new SelectList(db.birims.ToList(), "id", "birimad");
            var pers = ke.PERSONELLERs.Where(c => c.per_cikis_tar == new DateTime(1899, 12, 31)).Select(c => new MikroAdSoyad
            {
                ad = c.per_adi + " " + c.per_soyadi,
                id = c.per_RECno
            });
            ViewBag.mikroListe = new SelectList(pers.OrderBy(c => c.ad).ToList(), "id", "ad");
            ViewBag.pdksListe = new SelectList(PdksPersonelAdSoyad(), "id", "ad");
            ViewBag.lokasyonListe = new SelectList(db.Lokasyons, "id", "ad");
            ViewBag.cinsiyetListe = new SelectList(new List<SelectListItem>()
            {
                new SelectListItem{Text = "Kadın",Value = "1"},
                 new SelectListItem{Text = "Erkek",Value = "0"}
            }.ToList(), "Value", "Text");



            return View(personel);
        }

        private void CinsiyetListe()
        {
            List<SelectListItem> liste = new List<SelectListItem>();

            liste.Add(new SelectListItem
            {
                Text = "Kadın",
                Value = "1"
            });
            liste.Add(new SelectListItem
            {
                Text = "Erkek",
                Value = "0"
            });

            ViewBag.cinsiyetListe = liste;
        }
        private List<MikroAdSoyad> PdksPersonelAdSoyad()
        {
            var pdks = new List<MikroAdSoyad>();
            using (var con = new MySqlConnection(
                       "Server=172.41.40.85;Database=perkotek;Uid=root;Pwd=max;AllowZeroDateTime=True;Charset=latin5"))
            {
                var com = new MySqlCommand("select id, concat(adi,' ',soyadi) as adsoyad from personel_kartlari order by adsoyad", con);
                if (con.State != ConnectionState.Open)
                    con.Open();
                var reader = com.ExecuteReader();
                while (reader.Read())
                {
                    pdks.Add(new MikroAdSoyad { id = (int)((uint)reader["id"]), ad = reader["adsoyad"].ToString() });
                }
                con.Close();
            }
            return pdks;
        }


        public ActionResult _PersonelSelectList()
        {
            var pers = db.Personels.Where(c => c.cikistarihi == null)
               .Select(d => new
               {
                   Text = d.adsoyad,
                   Value = d.pdksid
               });

            return Json(new { Success = true, Data = pers }, JsonRequestBehavior.AllowGet);
        }

        public JsonResult _AvansTutar(int id)
        {
            var mikroid = db.Personels.FirstOrDefault(c => c.id == id);
            var mikro = ke.PERSONELLERs.FirstOrDefault(c => c.per_RECid_RECno == mikroid.mikroid);
            var liste = ke.PERSONEL_TAHAKKUKLARI.Where(c => c.pt_pkod == mikro.per_kod).OrderByDescending(c => c.pt_maliyil).ThenByDescending(c => c.pt_tah_ay).FirstOrDefault();
            var net = (int)(liste.pt_net + liste.pt_ozksnt + liste.pt_otobes_tutari) / 2;
            return Json(new { Success = true, Tutar = net }, JsonRequestBehavior.AllowGet);

        }

        public ActionResult Maas()
        {
            return View();
        }

        public ActionResult _MaasHesapla(int id)
        {
            var personel = db.Personels.FirstOrDefault(c => c.id == id);
            var mikropersonel = ke.PERSONELLERs.FirstOrDefault(c => c.per_RECno == personel.mikroid);
            var personeltahakkuk = ke.PERSONEL_TAHAKKUKLARI.Where(c => c.pt_pkod == mikropersonel.per_kod).OrderByDescending(c=>c.pt_maliyil).ThenByDescending(c=>c.pt_tah_ay).FirstOrDefault();
            var net=new MikroController().NetMaas(
                maliyil:2018,
                brütmaaş:(decimal)mikropersonel.per_ucret,brütyemek:350m,kümülatifgvm:(decimal)personeltahakkuk.pt_gvmatrah);
            return Json(net, JsonRequestBehavior.AllowGet);
        }
    }

    public class MikroAdSoyad
    {
        public int id { get; set; }
        public string ad { get; set; }
    }
    public class PersonelListeSayıVM
    {
        public string Firma { get; set; }
        public int Sayı { get; set; }
        public int FirmaID { get; set; }
    }

    public class PersonelsByFirmasVM
    {
        public int ID { get; set; }
        public string AdSoyad { get; set; }
        public string Görevi { get; set; }
    }
    public class PersonelListeVM
    {
        public int ID { get; set; }
        public string AdSoyad { get; set; }
        public string Birimi { get; set; }
        public string Firma { get; set; }
        public string Kadro { get; set; }

    }
}