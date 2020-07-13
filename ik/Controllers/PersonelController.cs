using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Validation;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using System.Web.Mvc;
using ik;
using ik.Controllers;
using ik.Models;
using ik.Models.DataClasslari;
using Microsoft.Ajax.Utilities;
using MySql.Data.MySqlClient;
using PtakipDAL;
using Excel = Microsoft.Office.Interop.Excel;


namespace ik.Controllers
{

    [FilterConfig.CustomActionFilter]
    [Authorize(Users = @"KENTKONUT\noskay,KENTKONUT\derya.aslan")]
    public class PersonelController : Controller
    {
        readonly log4net.ILog logger = log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);


        private readonly ikEntities db = new ikEntities();
        private ik.Models.KENTEntities ke = new KENTEntities();

        protected override void Dispose(bool disposing)
        {
            ke.Dispose();
            db.Dispose();
            base.Dispose(disposing);
        }

        public ActionResult CalismaBelge()
        {
            return View();
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

        public ActionResult Gelecekaynealirim()
        {
            return View();
        }
        public JsonResult PersonelListe()
        {
            var personelListe = db.Personels.OrderBy(c => c.adsoyad).Select(c => new { c.id, c.adsoyad });
            var mikro = ke.PERSONELLERs.Where(c => c.per_cikis_tar == new DateTime(1899, 12, 31)).Select(c => new { id = c.per_Guid, adsoyad = c.per_adi + " " + c.per_soyadi }).OrderBy(c => c.adsoyad);
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

        public JsonResult MikroDetay(Guid id)
        {
            var mikro = ke.PERSONELLERs.SingleOrDefault(c => c.per_Guid == id);
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
                        //personel.calismadonem = pid.id;
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
                //Firma = c.PersonelIhaleDonemleri.PersonelIhale.Firma.firmaad
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
                //Firma = c.PersonelIhaleDonemleri.PersonelIhale.Firma.firmaad,
                Kadro = c.Kadro1.ad

            });
            return View(liste.ToList());
        }


        //[HttpPost]
        //public ActionResult _MeslekEkle(string ad)
        //{
        //    try
        //    {
        //        var meslek = new Meslek()
        //        {
        //            ad = ad
        //        };
        //        db.Mesleks.Add(meslek);
        //        db.SaveChanges();
        //        var liste = db.Mesleks.OrderBy(c => c.ad).Select(c => new
        //        {
        //            Text = c.ad,
        //            Value = c.id
        //        }).ToList();

        //        return Json(new { Success = true, Selected = meslek.id, Data = liste }, JsonRequestBehavior.AllowGet);
        //    }
        //    catch (Exception)
        //    {
        //        return Json(new { Success = false }, JsonRequestBehavior.AllowGet);
        //    }
        //}


        //[HttpPost]
        //public JsonResult _GorevEkle(string ad)
        //{
        //    try
        //    {
        //        var gorev = new Gorev()
        //        {
        //            ad = ad
        //        };
        //        db.Gorevs.Add(gorev);
        //        db.SaveChanges();
        //        var liste = db.Gorevs.OrderBy(c => c.ad).Select(c => new
        //        {
        //            Text = c.ad,
        //            Value = c.id
        //        }).ToList();

        //        return Json(new { Success = true, Selected = gorev.id, Data = liste }, JsonRequestBehavior.AllowGet);
        //    }
        //    catch (Exception)
        //    {
        //        return Json(new { Success = false }, JsonRequestBehavior.AllowGet);
        //    }
        //}

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
                //liste = liste.Where(c => c.PersonelIhaleDonemleri.PersonelIhale.firmaid == firma);
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
                    //firma = c.PersonelIhaleDonemleri.PersonelIhale.Firma.firmaad,
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
            var pers = db.Personels.Where(c => c.birimid == id & c.cikistarihi == null)
                .Select(d => new
                {
                    Text = d.adsoyad,
                    Value = d.pdksid
                });

            return Json(new { Success = true, Data = pers }, JsonRequestBehavior.AllowGet);
        }

        public ActionResult _PersonelListesi()
        {
            var pers = db.Personels.Where(c => c.cikistarihi == null)
                .Select(d => new
                {
                    Text = d.adsoyad,
                    Value = d.id
                });

            return Json(new { Success = true, Data = pers.OrderBy(c => c.Text) }, JsonRequestBehavior.AllowGet);
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
            var liste = db.Personels.Where(c => c.cikistarihi == null && c.kadro < 3).OrderBy(c => c.adsoyad).Select(c => new
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



        //public ActionResult _SelectList()
        //{
        //    var liste = db.Personels.Where(c => c.cikistarihi == null && c.kadro < 3).OrderBy(c => c.adsoyad).Select(c => new
        //    {
        //        Text = c.adsoyad,
        //        Value = c.id,
        //        Thumb = c.PersonelDetay.thumb
        //    }).ToList();
        //    return Json(liste, JsonRequestBehavior.AllowGet);
        //}

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

        public ActionResult _AvansDuzenle(int id,int tutar)
        {
            var vm = new AvansDuzenleVM { ID = id, Tutar = tutar };
            return PartialView(vm);
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult _AvansDuzenle(int id, int tutar,AvansDuzenleVM model)
        {
            if (ModelState.IsValid)
            {
                db.Avanslars.FirstOrDefault(c => c.id == id).tutar = model.Tutar;
                db.SaveChanges();
                return Json(new { Success = true,Data=tutar }, JsonRequestBehavior.AllowGet);
            }
            return PartialView(model);
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
                    if (av.tarih.Value < new DateTime(bugun.Year, bugun.Month, 1))
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
                    
                   ID=avans.First().id,
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
                id = 0
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
                id = 0
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
            var mikro = ke.PERSONELLERs.FirstOrDefault(c => c.per_Guid == mikroid.mikroid);
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
            var mikropersonel = ke.PERSONELLERs.FirstOrDefault(c => c.per_Guid == personel.mikroid);
            var personeltahakkuk = ke.PERSONEL_TAHAKKUKLARI.Where(c => c.pt_pkod == mikropersonel.per_kod).OrderByDescending(c => c.pt_maliyil).ThenByDescending(c => c.pt_tah_ay).FirstOrDefault();
            var net = new MikroController().NetMaas(
                maliyil: 2018,
                brütmaaş: (decimal)mikropersonel.per_ucret, brütyemek: 350m, kümülatifgvm: (decimal)personeltahakkuk.pt_gvmatrah);
            return Json(net, JsonRequestBehavior.AllowGet);
        }

        public JsonResult _Birimler()
        {
            var liste = db.birims.Select(c => new
            {
                Text = c.fullad,
                Value = c.id
            }).ToList();
            return Json(new { Data = liste }, JsonRequestBehavior.AllowGet);
        }


        public ActionResult PersonelBilgiDuzenle(int id)
        {
            var personel = db.Personels.FirstOrDefault(c => c.id == id);
            if (personel != null)
            {
                if (personel.PersonelDetay == null)
                    personel.PersonelDetay = new PersonelDetay();
            }

            ViewBag.GorevListe = new SelectList(db.Gorevs.ToList(), "id", "ad", personel.PersonelDetay.gorev);
            ViewBag.LokasyonListe = new SelectList(db.Lokasyons.ToList(), "id", "ad", personel.PersonelDetay.lokasyon);
            ViewBag.TahsilListe = new SelectList(db.Tahsils.ToList(), "id", "ad", personel.PersonelDetay.tahsili);
            ViewBag.BirimListe = new SelectList(db.birims.ToList(), "id", "fullad", personel.birimid);
            ViewBag.CinsiyetListe = new SelectList(
                new List<SelectListItem>() { new SelectListItem { Text = "Kadın", Value = "1" }, new SelectListItem { Text = "Erkek", Value = "0" } },
                "Value",
                "Text",
                personel.PersonelDetay.cinsiyeti == true ? 1 : 0);
            var data = new PersonelBilgiDuzenleVM
            {
                id = personel.id,
                lokasyon = personel.PersonelDetay.lokasyon,
                adsoyad = personel.adsoyad
            };
            if (personel.PersonelDetay.gorev.HasValue)
            {
                data.gorev = personel.PersonelDetay.gorev.Value;
            }
            if (personel.PersonelDetay.cinsiyeti.HasValue)
            {
                data.cinsiyet = personel.PersonelDetay.cinsiyeti.Value ? 1 : 0;
            }
            if (personel.birimid.HasValue)
            {
                data.birim = personel.birimid.Value;
            }
            if (personel.PersonelDetay.tahsili.HasValue)
                data.tahsil = personel.PersonelDetay.tahsili.Value;

            return PartialView(data);
        }

        [HttpPost]
        public ActionResult PersonelBilgiDuzenle(int id, PersonelBilgiDuzenleVM data)
        {
            var personel = db.Personels.FirstOrDefault(c => c.id == id);
            if (personel != null)
            {
                if (personel.PersonelDetay == null)
                    personel.PersonelDetay = new PersonelDetay();
                personel.PersonelDetay.cinsiyeti = (data.cinsiyet == 1 ? true : false);
                personel.birimid = data.birim;
                personel.PersonelDetay.tahsili = data.tahsil;
                personel.PersonelDetay.lokasyon = data.lokasyon;
                personel.PersonelDetay.gorev = data.gorev;

                db.SaveChanges();
                return Json(new { Success = true, Lokasyon = personel.PersonelDetay.Lokasyon1.ad, Gorev = personel.PersonelDetay.Gorev1.ad, Tahsil = personel.PersonelDetay.Tahsil.ad }, JsonRequestBehavior.AllowGet);

            }
            ViewBag.GorevListe = new SelectList(db.Gorevs.ToList(), "id", "ad", personel.PersonelDetay.gorev);
            ViewBag.LokasyonListe = new SelectList(db.Lokasyons.ToList(), "id", "ad", personel.PersonelDetay.lokasyon);
            ViewBag.TahsilListe = new SelectList(db.Tahsils.ToList(), "id", "ad", personel.PersonelDetay.tahsili);
            ViewBag.BirimListe = new SelectList(db.birims.ToList(), "id", "fullad", personel.birimid);
            ViewBag.CinsiyetListe = new SelectList(
              new List<SelectListItem>() { new SelectListItem { Text = "Kadın", Value = "1" }, new SelectListItem { Text = "Erkek", Value = "0" } },
              "Value",
              "Text",
              personel.PersonelDetay.cinsiyeti);
            return PartialView(data);
        }

        public ActionResult PersonelGecKalma(int id)//pdksid
        {
            var personel = db.Personels.FirstOrDefault(c => c.pdksid == id);
            PerkotekContext pdb = new PerkotekContext();
            pdb.PuantajHazirla(new DateTime(DateTime.Now.Year, DateTime.Now.Month, 1).Date, DateTime.Now.Date, id, true);
            var p = pdb.personel.FirstOrDefault().PTarihs.OrderBy(c => c.Tarih).Where(f => !f.Izins.Any(g => g.Saatlik && g.Gidis == new TimeSpan(8, 30, 0))).Select(d => new GecKalanlarVM()
            {
                AdSoyad = personel.adsoyad,
                Tarih = d.Tarih.ToShortDateString(),
                Giris = d.Giris,
                Fark = 0
            });

            return PartialView(p);
        }

        public FileResult _MerkezAvansları(int kadro)
        {
            var bas = new DateTime(DateTime.Now.Year, DateTime.Now.Month, 1);
            var son = new DateTime(DateTime.Now.Year, DateTime.Now.Month, 1);
            son = son.AddMonths(1).AddDays(-1);
            var avanslar = db.Avanslars.Where(c => c.tarih >= bas && c.tarih <= son).Select(c => new AvansExcelVM
            {
                AdSoyad = c.Personel.adsoyad,
                IBAN = c.Personel.iban,
                Tutar = c.tutar,
                Kadro = c.Personel.kadro.Value
            });

            try
            {
                string DosyaYolu =
                  //HttpContext.Server.MapPath(
                  //      @Url.Content(string.Format("~/Content/Report/Avans/{0}", kadro == 1 ? "merkez.xls" : "khk.xls")));

                  HttpContext.Server.MapPath(@Url.Content(string.Format("~/Content/Report/Avans/{0}", kadro == 1 ? "merkez.xls" : "khk.xls")));

                Excel.Application xlApp = new Excel.Application();
                Excel.Workbook xlWorkbook = xlApp.Workbooks.Open(DosyaYolu, 0, true, 5, "", "", true,
                    Microsoft.Office.Interop.Excel.XlPlatform.xlWindows, "\t", false, false, 0, true, 1, 0);
                Excel._Worksheet worksheet = (Excel.Worksheet)xlWorkbook.Worksheets.get_Item(1);
                Excel.Range xlRange = worksheet.UsedRange;
                int rowCount = xlRange.Rows.Count;
                int colCount = xlRange.Columns.Count;
                int row = 11;
                // foreach (var avans in avanslar.Where(c => c.Kadro == kadro))
                foreach (var avans in avanslar)
                {
                    (xlRange.Cells[row, 1] as Excel.Range).Value2 = avans.AdSoyad;
                    (xlRange.Cells[row, 2] as Excel.Range).Value2 = avans.IBAN.Remove(0, 9);
                    (xlRange.Cells[row, 4] as Excel.Range).Value2 = avans.Tutar;
                    (xlRange.Cells[row, 5] as Excel.Range).Value2 = avans.IBAN;
                    row++;
                }

                (xlRange.Cells[4, 3] as Excel.Range).Value2 = DateTime.Now.ToShortDateString();
                (xlRange.Cells[7, 3] as Excel.Range).Value2 = DateTime.Now.Month;

                //Response.ContentType = "application/vnd.ms-excel";
                var filename =
                    Server.MapPath(@Url.Content(string.Format("~/Content/Report/Avans/__{0}.xls", Guid.NewGuid())));


                xlWorkbook.SaveAs(filename); xlWorkbook.Close(true, null, null);
                xlApp.Quit();

                byte[] fileByteArray = System.IO.File.ReadAllBytes(filename);

                System.IO.File.Delete(filename);

                //return File(fileByteArray, System.Net.Mime.MediaTypeNames.Application.Octet,
                //    kadro == 1 ? "merkez.xls" : "khk.xls");
                return File(fileByteArray, "application/vnd.ms-excel", kadro == 1 ? "merkez.xls" : "khk.xls");

                //Response.Clear();
                //MemoryStream ms = new MemoryStream(fileByteArray);
                //Response.ContentType = "application/xls";
                //Response.AddHeader("content-disposition", "attachment;filename=avans.xls");
                //Response.Buffer = true;
                //ms.WriteTo(Response.OutputStream);
                //Response.End();




            }
            catch (Exception hata)
            {
                logger.Error(hata.Message);
            }


            return null;

        }

        //public ActionResult Sicil(int id)
        //{
        //    ViewBag.gorevListe = new SelectList(db.Gorevs.OrderBy(c => c.ad), "id", "ad");
        //    ViewBag.birimListe = new SelectList(db.birims.OrderBy(c => c.fullad), "id", "fullad");
        //    ViewBag.tahsilListe = new SelectList(db.Tahsils.OrderBy(c => c.ad), "id", "ad");
        //    ViewBag.lokasyonListe = new SelectList(db.Lokasyons.OrderBy(c => c.ad), "id", "ad");
        //    ViewBag.meslekListe = new SelectList(db.Mesleks.OrderBy(c => c.ad), "id", "ad");
        //    ViewBag.sgkdosyaListe = new SelectList(db.SgkDosyas, "id", "ad");
        //    var personel = db.Personels.SingleOrDefault(c => c.id == id);
        //    if (personel == null)
        //        return new EmptyResult();
        //    var sicil = new SicilVM();
        //    if (personel.PersonelDetay != null)
        //    {
        //        sicil.gorevID = personel.PersonelDetay.gorev;
        //        sicil.tahsilID = personel.PersonelDetay.tahsili;
        //        sicil.lokasyonID = personel.PersonelDetay.lokasyon;
        //        sicil.meslekID = personel.PersonelDetay.meslek;
        //        sicil.sgkDosya = personel.PersonelDetay.sgkdosya;
        //    }
        //    sicil.birimID = personel.birimid;
        //    sicil.ikID = personel.id;

        //    return PartialView(sicil);
        //}



        //public JsonResult _PersonelDetayKaydet(int id, int gorev = 0, int birim = 0, int tahsil = 0, int lokasyon = 0, int meslek = 0, int sgkdosya = 0)
        //{
        //    try
        //    {
        //        var personel = db.Personels.SingleOrDefault(c => c.id == id);
        //        if (personel.PersonelDetay == null)
        //        {
        //            personel.PersonelDetay = new PersonelDetay();
        //        }
        //        if (gorev > 0)
        //        {
        //            personel.PersonelDetay.gorev = gorev;
        //        }
        //        if (tahsil > 0)
        //        {
        //            personel.PersonelDetay.tahsili = tahsil;
        //        }
        //        if (lokasyon > 0)
        //        {
        //            personel.PersonelDetay.lokasyon = lokasyon;
        //        }
        //        if (birim > 0)
        //        {
        //            personel.birimid = birim;
        //        }

        //        if (meslek > 0)
        //        {
        //            personel.PersonelDetay.meslek = meslek;
        //        }
        //        if (sgkdosya > 0)
        //        {
        //            personel.PersonelDetay.sgkdosya = sgkdosya;
        //        }


        //        db.SaveChanges();

        //        return Json(true, JsonRequestBehavior.AllowGet);
        //    }
        //    catch (Exception ex)
        //    {
        //        return Json(false, JsonRequestBehavior.AllowGet);
        //    }
        //}
        public ActionResult _BirimDetaylar()
        {
            var liste = db.birims;
            return View(liste);
        }
        public ActionResult _GörevYerleri()
        {
            var liste = db.Lokasyons.Where(c => c.PersonelDetays.Any(d => d.Personel.cikistarihi == null));
            return View(liste);
        }
        public ActionResult _GenelTahsilDurumu()
        {
            var liste = db.Tahsils.Where(c => c.PersonelDetays.Any(d => d.Personel.cikistarihi == null));
            return View(liste);
        }

        public ActionResult _GenelMeslekDurumu()
        {
            var liste = db.Mesleks.Where(c => c.PersonelDetays.Any(d => d.Personel.cikistarihi == null));
            return View(liste);
        }

        public ActionResult _GenelSgkDosyaDurumu()
        {
            var liste = db.SgkDosyas.Where(c => c.PersonelDetays.Any(d => d.Personel.cikistarihi == null));
            return View(liste);
        }


        public ActionResult _BirimPersonelleri(string ad)
        {
            var pers = db.Personels.Where(c => c.birim.fullad == ad & c.cikistarihi == null & c.kadro < 3);
            return PartialView("_PersonelGrup", pers);
        }
        public ActionResult _LokasyonPersonelleri(string ad)
        {
            var pers = db.Personels.Where(c => c.PersonelDetay.Lokasyon1.ad == ad & c.cikistarihi == null & c.kadro < 3);
            return PartialView("_PersonelGrup", pers);
        }


        public ActionResult _PersonelTahsilleri(string ad)
        {
            var pers = db.Personels.Where(c => c.PersonelDetay.Tahsil.ad == ad & c.cikistarihi == null & c.kadro < 3);
            return PartialView("_PersonelGrup", pers);
        }


        public ActionResult _PersonelMeslekleri(string ad)
        {
            var pers = db.Personels.Where(c => c.PersonelDetay.Meslek1.ad == ad & c.cikistarihi == null & c.kadro < 3);
            return PartialView("_PersonelGrup", pers);
        }


        public ActionResult _SgkDosyaPersonelleri(string ad)
        {
            var pers = db.Personels.Where(c => c.PersonelDetay.SgkDosya1.Ad == ad & c.cikistarihi == null & c.kadro < 3);
            return PartialView("_PersonelGrup", pers);
        }


        public ActionResult PersonelGorevlendirme(int id)
        {
            var gorevler = db.Personels.FirstOrDefault(c => c.id == id).OzlukGorevlendirmes.ToList();
            return PartialView(gorevler);
        }

        public ActionResult GorevlendirmeEkle(int id)
        {
            var görevlendirme = new OzlukGorevlendirme { personelID = id, tarih = DateTime.Now };
            return PartialView(görevlendirme);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult GorevlendirmeEkle(int id, OzlukGorevlendirme gorev)
        {
            if (ModelState.IsValid)
            {
                db.OzlukGorevlendirmes.Add(gorev);
                db.SaveChanges();
                return Json(new { success = true }, JsonRequestBehavior.AllowGet);
            }
            return PartialView();
        }

        public ActionResult PersonelDosyaYukle(int id, int kayitid = 0)
        {
            ViewBag.EvrakListe = new SelectList(db.EvrakListes, "id", "ad");
            ViewBag.PersonelID = id;
            ViewBag.KayitID = kayitid;
            return PartialView();
        }

        public ActionResult IbranameForm()
        {
            return View();
        }

        //personel için ibraname formu hazırlamakta kullanılacak kıdem vs bilgileri
        public ActionResult _PersonelIbranameBilgi(int id)
        {
            var pers = db.Personels.FirstOrDefault(c => c.id == id);
            var mikro = ke.PERSONELLERs.FirstOrDefault(c => c.per_Guid == pers.mikroid);

            var bilgi = new
            {
                AdSoyad = mikro.per_adi + ' ' + mikro.per_soyadi,
                SGKSicilno = mikro.Per_TcKimlikNo,
                İşeGirişTarihi = mikro.per_giris_tar,
                KıdemTarihi = mikro.per_Kidem_Tarih,
                İştenÇıkışTarihi = mikro.per_cikis_tar,
                PersonelÇıkışDetay = mikro.per_cikis_neden,
                PersonelÇıkışKod = mikro.per_CikisSebebiSecimli,
                PersonelFirma = mikro.per_kim_SGK_kod


            };
            return View();
        }


        public ActionResult IseGirisEvrak(int pid)
        {
            var persevrak = db.Personels.FirstOrDefault(c => c.id == pid);
            ViewBag.personelID = pid;
            return PartialView(persevrak.Ozluk_IseGirisEvrak.ToList());
        }


        public ActionResult EkleGirisEvrak(int id)
        {
            var mevcut = db.Ozluk_IseGirisEvrak.Where(c => c.personelid == id).Select(d => d.Ozluk_IseGirisGerekEvrakTip).ToList();
            var list = db.Ozluk_IseGirisGerekEvrakTip.ToList();
            var fark = list.Except(mevcut);

            ViewBag.evrakListe = new SelectList(fark, "id", "ad");


            var evr = new Ozluk_IseGirisEvrak()
            {
                personelid = id
            };
            return PartialView(evr);
        }

        public ActionResult _SelectList()
        {
            var liste = db.Personels.Where(c => c.cikistarihi == null && c.kadro < 3).OrderBy(c => c.adsoyad).Select(c => new
            {
                Text = c.adsoyad,
                Value = c.id,
                Thumb = c.PersonelDetay.thumb
            }).ToList();
            return Json(liste, JsonRequestBehavior.AllowGet);
        }


        [HttpPost]
        public ActionResult EkleGirisEvrak(int id, Ozluk_IseGirisEvrak evrak)
        {
            var mevcut = db.Ozluk_IseGirisEvrak.Where(c => c.personelid == id).Select(d => d.Ozluk_IseGirisGerekEvrakTip).ToList();
            var list = db.Ozluk_IseGirisGerekEvrakTip.ToList();
            var fark = list.Except(mevcut);
            if (ModelState.IsValid)
            {
                evrak.mevcut = true;
                db.Ozluk_IseGirisEvrak.Add(evrak);
                try
                {
                    evrak.tarih = DateTime.Now;
                    db.SaveChanges();
                }
                catch (DbEntityValidationException e)
                {
                    foreach (var eve in e.EntityValidationErrors)
                    {
                        Console.WriteLine("Entity of type \"{0}\" in state \"{1}\" has the following validation errors:",
                            eve.Entry.Entity.GetType().Name, eve.Entry.State);
                        foreach (var ve in eve.ValidationErrors)
                        {
                            Console.WriteLine("- Property: \"{0}\", Error: \"{1}\"",
                                ve.PropertyName, ve.ErrorMessage);
                        }
                    }
                    throw;
                }
                return Json(new { success = true });
            }
            ViewBag.evrakListe = new SelectList(fark, "id", "ad");
            return PartialView(evrak);
        }

        public ActionResult Durum()
        {
            return View();
        }

        public ActionResult MaaşDurum(int id)
        {
            return PartialView();
        }

        public ActionResult _CalismaBelge(int id)
        {
            using (var db = new ikEntities())
            {
                var personel = db.Personels.FirstOrDefault(c => c.id == id);
                using (var mikro = new KENTEntities())
                {
                    var mikroper = mikro.PERSONELLERs.FirstOrDefault(c => c.per_Guid == personel.mikroid);
                    var adsoyad = mikroper.per_adi + " " + mikroper.per_soyadi;
                    var dogumyeryil = mikroper.per_nuf_dogum_yer + " / " + mikroper.per_nuf_dogum_tarih.Value.ToShortDateString();
                    var tcno = mikroper.Per_TcKimlikNo;

                    var unvan = "KENT KONUT İNŞ. SAN. ve TİC. A.Ş.";
                    var adres = "Körfez Mahallesi, Hafiz Binbaşı Cad. No:3 Kat:1-2 İZMİT/KOCAELİ";
                    var yapılanis = "İNŞAAT";
                    var meslekkod = mikroper.per_meslek_kodu;
                    var gorev = personel.PersonelDetay.Gorev1.ad;
                    var baslamatarih = mikroper.per_giris_tar.Value.ToShortDateString();
                    var sicil = personel.PersonelDetay.SgkDosya1.SgkNo;
                    return Json(new
                    {
                        adsoyad,
                        dogumyeryil,
                        tcno,
                        unvan,
                        adres,
                        yapılanis,
                        meslekkod,
                        gorev,
                        baslamatarih,
                        sicil

                    }, JsonRequestBehavior.AllowGet)
;
                }
            }


            return null;
        }

        public ActionResult PersonelSayi()
        {
            return View();
        }

        public JsonResult _PersonelSayi(string tarih)
        {
            var ta = tarih.Split(new[] { "-" }, StringSplitOptions.RemoveEmptyEntries);
            int yil = int.Parse(ta[0]);
            int ay = int.Parse(ta[1]);
            var date = new DateTime(yil, ay, 1).AddMonths(1);
            using (var mikro = new KENTEntities())
            {
                var q = (from pt in mikro.PERSONEL_TAHAKKUKLARI
                         join p in mikro.PERSONELLERs on pt.pt_pkod equals p.per_kod
                         where
                             pt.pt_maliyil.Value == yil & pt.pt_tah_ay.Value == ay & !p.per_kod.StartsWith("HZ") &
                             !p.per_kod.StartsWith("Dr")
                         orderby p.Per_TcKimlikNo ascending
                         select new
                         {
                             PersonalAdSoyad = p.per_adi,
                             TC = p.Per_TcKimlikNo,
                             Cikis = p.per_cikis_tar.Value,
                             CikisKod = p.per_CikisSebebiSecimli.Value
                         }).ToList().Where(c => c.Cikis < new DateTime(yil, ay, 1) | c.Cikis >= date & c.CikisKod != 16).OrderBy(c => c.Cikis);
                //;

                return Json(q, JsonRequestBehavior.AllowGet);
            }

        }



        //public ActionResult _PersonelResimYukle(int id)
        //{
        //    var personel = db.Personels.FirstOrDefault(c => c.id == id);
        //    if (personel != null)
        //    {
        //        var url = personel.PersonelDetay.thumb;
        //        if (url != null)
        //            return Json(new { Success = true, Url = url }, JsonRequestBehavior.AllowGet);
        //        return Json(new { Success = false, Url = Url.Content("~/Content/unknown.png") }, JsonRequestBehavior.AllowGet);
        //    }
        //    return Json(new { Success = false, Url = Url.Content("~/Content/unknown.png") }, JsonRequestBehavior.AllowGet);
        //}

        //[HttpPost]
        //public ActionResult _PersonelResimGuncelle(int id, string data)
        //{
        //    var personel = db.Personels.FirstOrDefault(c => c.id == id);
        //    if (personel != null)
        //    {
        //        personel.PersonelDetay.thumb = string.IsNullOrEmpty(data) ? null : data;
        //        db.SaveChanges();
        //        return Json(true, JsonRequestBehavior.AllowGet);
        //    }
        //    return Json(false, JsonRequestBehavior.AllowGet);
        //}

        public ActionResult _SgkMikroKontrolet(string sgkno)
        {
            var adet = 0;
            using (var mikro = new KENTEntities())
            {
                var sgklar = mikro.PERSONEL_SSK_TANIMLARI.Where(c => sgkno.Contains(c.ssk_sskno_SiraNo));
                //.ssk_Sira_No;
               
                var cikistarih = new DateTime(1899, 12, 31);
                foreach (var sgk in sgklar)
                {
                    adet += mikro.PERSONELLERs.Count(c => c.per_ucr_PSSK_sube == sgk.ssk_Sira_No & c.per_cikis_tar.Value== cikistarih & c.per_bolge_kodu!="HZR");
                }                

            }
            return Json(new { Success = true ,Data=adet}, JsonRequestBehavior.AllowGet);
        }
    }

    public class SicilVM
    {
        public int ikID { get; set; }
        public int? gorevID { get; set; }
        public int? birimID { get; set; }
        public int? tahsilID { get; set; }
        public int? lokasyonID { get; set; }
        public int? meslekID { get; set; }
        public int? sgkDosya { get; set; }
    }

    public class AvansExcelVM
    {
        public string AdSoyad { get; set; }

        public decimal Tutar { get; set; }
        public string IBAN { get; set; }
        public int Kadro { get; set; }
    }

    public class PersonelBilgiDuzenleVM
    {
        public string adsoyad { get; set; }
        public int id { get; set; }
        public int lokasyon { get; set; }
        public int cinsiyet { get; set; }
        public int tahsil { get; set; }
        public int birim { get; set; }
        public int gorev { get; set; }
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