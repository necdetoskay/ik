﻿using ik.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ik.Areas.Admin.Data;

namespace ik.Areas.Admin.Controllers
{
    [FilterConfig.CustomActionFilter]
    [Authorize(Users = @"KENTKONUT\noskay,KENTKONUT\derya.aslan")]
    public class PersonelController : Controller
    {
        private readonly ikEntities db = new ikEntities();
        private ik.Models.KENTEntities ke = new KENTEntities();
        // GET: Admin/Personel
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult _personelMikroBilgi(Guid guid)
        {
            var a = ke.PERSONELLERs.FirstOrDefault(c => c.per_cikis_tar.Value == new DateTime(1899, 12, 31) & c.per_Guid == guid);
            if (a == null)
                return Json(new { Success = false }, JsonRequestBehavior.AllowGet);
            return Json(new
            {
                Success = true,
                Data = new
                {
                    Cins = a.per_nuf_cinsiyet.Value,
                    Dogumtarih = a.per_nuf_dogum_tarih.Value.ToString("yyyy-MM-dd"),
                    CepTel = a.per_tel_cepno,
                    TC = a.Per_TcKimlikNo,
                    Kod = a.per_kod,
                    IBAN = a.per_ucr_hesapno,
                    IseGiris = a.per_giris_tar.Value.ToString("yyyy-MM-dd")
                }
            }, JsonRequestBehavior.AllowGet);
        }

        public ActionResult YeniPersonel()
        {
            ViewBag.birimListe = new SelectList(db.birims, "id", "fullad");



            //pdks isim listesi
            ViewBag.lokasyonListe = new SelectList(db.Lokasyons, "id", "ad");
            ViewBag.gorevListe = new SelectList(db.Gorevs, "id", "ad");
            ViewBag.cinsiyetListe = new List<SelectListItem>
            {
                new SelectListItem {Text = "Kadın", Value = "1"},
                new SelectListItem {Text = "Erkek", Value = "0"}
            };


            ViewBag.tahsilListe = new SelectList(db.Tahsils, "id", "ad");
            ViewBag.sgkdosyaListe = new SelectList(db.SgkDosyas, "id", "ad");

            var mikroper = ke.PERSONELLERs.Where(c => c.per_cikis_tar.Value == new DateTime(1899, 12, 31)).Select(c => new
            {
                Value = c.per_adi + " " + c.per_soyadi,
                Text = c.per_Guid
            }).OrderBy(c => c.Value);


            ViewBag.mikroListe = new SelectList(mikroper, "Text", "Value");
            return PartialView();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        [ActionName("YeniPersonel")]
        public ActionResult YeniPersonelPost(YeniPersonelVM model)
        {
            model.cinsiyet = bool.Parse(model.cinsiyet.ToString());
            ModelState.Remove("cinsiyet");
            if (ModelState.IsValid)
            {
                var personel = new Personel
                {
                    adsoyad = model.adsoyad,
                    birimid = model.birimid,
                    dogumtarihi = model.dogumtarih,
                    giristarihi = model.isegiris,
                    pdksid = int.Parse(model.pdksid),
                    mikroid = model.mikroid,
                    puantaj = model.puantaj,
                    kadro = 1,
                    iban = model.iban,
                    sicilno = model.Kod,
                    tcno = model.tcno
                };
                personel.PersonelDetay = new PersonelDetay
                {
                    cinsiyeti = model.cinsiyet,
                    lokasyon = model.lokasyon,
                    gorev = model.gorev,
                    tahsili = model.tahsil,
                    sgkdosya = model.sgkdosya
                };
                db.Personels.Add(personel);
                db.SaveChanges();

                return Json(new { Success = true }, JsonRequestBehavior.AllowGet);
            }
            var mikroper = ke.PERSONELLERs.Where(c => c.per_cikis_tar.Value == new DateTime(1899, 12, 31)).Select(c => new
            {
                Value = c.per_adi + " " + c.per_soyadi,
                Text = c.per_Guid
            }).OrderBy(c => c.Value);
            ViewBag.mikroListe = new SelectList(mikroper, "Text", "Value");
            ViewBag.birimListe = new SelectList(db.birims, "id", "fullad");
            ViewBag.cinsiyetListe = new List<SelectListItem>
            {
                new SelectListItem {Text = "Kadın", Value = "1"},
                new SelectListItem {Text = "Erkek", Value = "0"}
            };
            //pdks isim listesi
            ViewBag.lokasyonListe = new SelectList(db.Lokasyons, "id", "ad");
            ViewBag.gorevListe = new SelectList(db.Gorevs, "id", "ad");
            ViewBag.cinsiyetListe = new List<SelectListItem>
            {
                new SelectListItem {Text = "Kadın", Value = "1"},
                new SelectListItem {Text = "Erkek", Value = "0"}
            };


            ViewBag.tahsilListe = new SelectList(db.Tahsils, "id", "ad");
            ViewBag.sgkdosyaListe = new SelectList(db.SgkDosyas, "id", "ad");
            return PartialView(model);
        }




        public ActionResult Sicil(int id)
        {
            ViewBag.gorevListe = new SelectList(db.Gorevs.OrderBy(c => c.ad), "id", "ad");
            ViewBag.birimListe = new SelectList(db.birims.OrderBy(c => c.fullad), "id", "fullad");
            ViewBag.tahsilListe = new SelectList(db.Tahsils.OrderBy(c => c.ad), "id", "ad");
            ViewBag.lokasyonListe = new SelectList(db.Lokasyons.OrderBy(c => c.ad), "id", "ad");
            ViewBag.meslekListe = new SelectList(db.Mesleks.OrderBy(c => c.ad), "id", "ad");
            ViewBag.sgkdosyaListe = new SelectList(db.SgkDosyas, "id", "ad");
            var personel = db.Personels.SingleOrDefault(c => c.id == id);
            if (personel == null)
                return new EmptyResult();
            var sicil = new ik.Controllers.SicilVM();
            if (personel.PersonelDetay != null)
            {
                sicil.gorevID = personel.PersonelDetay.gorev;
                sicil.tahsilID = personel.PersonelDetay.tahsili;
                sicil.lokasyonID = personel.PersonelDetay.lokasyon;
                sicil.meslekID = personel.PersonelDetay.meslek;
                sicil.sgkDosya = personel.PersonelDetay.sgkdosya;

            }
            sicil.birimID = personel.birimid;
            sicil.ikID = personel.id;
            sicil.mikroID = personel.mikroid.Value;

            return PartialView(sicil);
        }

        public JsonResult _PersonelDetayKaydet(int id, int gorev = 0, int birim = 0, int tahsil = 0, int lokasyon = 0, int meslek = 0, int sgkdosya = 0)
        {
            try
            {
                var personel = db.Personels.SingleOrDefault(c => c.id == id);
                if (personel.PersonelDetay == null)
                {
                    personel.PersonelDetay = new PersonelDetay();
                }
                if (gorev > 0)
                {
                    personel.PersonelDetay.gorev = gorev;
                }
                if (tahsil > 0)
                {
                    personel.PersonelDetay.tahsili = tahsil;
                }
                if (lokasyon > 0)
                {
                    personel.PersonelDetay.lokasyon = lokasyon;
                }
                if (birim > 0)
                {
                    personel.birimid = birim;
                }

                if (meslek > 0)
                {
                    personel.PersonelDetay.meslek = meslek;
                }
                if (sgkdosya > 0)
                {
                    personel.PersonelDetay.sgkdosya = sgkdosya;
                }


                db.SaveChanges();

                return Json(true, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                return Json(false, JsonRequestBehavior.AllowGet);
            }
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
        public ActionResult PersonelSgkDosyaKontrolEt(int id)
        {
            var personel = db.Personels.FirstOrDefault(c => c.id == id);
            if (personel == null) return Json(new { Success = false }, JsonRequestBehavior.AllowGet);
            var mevcutsube = personel.PersonelDetay.SgkDosya1.Ad;
            var skgno = personel.PersonelDetay.SgkDosya1.SgkNo;
            var mikropersonel = ke.PERSONELLERs.FirstOrDefault(c => c.per_Guid == personel.mikroid);
            if (mikropersonel == null) return Json(new { Success = false }, JsonRequestBehavior.AllowGet);
            var sgksube = mikropersonel.per_ucr_PSSK_sube;
            var sube = ke.PERSONEL_SSK_TANIMLARI.FirstOrDefault(c => c.ssk_Sira_No == sgksube).ssk_sskno_SiraNo;
            var success = skgno.Contains(sube);
            if (!success)
            {
                mevcutsube = db.SgkDosyas.FirstOrDefault(c => c.SgkNo.Contains(sube)).Ad;
            }


            //foreach(var pid in id)
            //{
            //    var personel = db.Personels.FirstOrDefault(c => c.id == pid);
            //    if (personel == null) return Json(new { Success = false }, JsonRequestBehavior.AllowGet);
            //    var mevcutsube = personel.PersonelDetay.SgkDosya1.Ad;
            //    var skgno = personel.PersonelDetay.SgkDosya1.SgkNo;
            //    var mikropersonel = ke.PERSONELLERs.FirstOrDefault(c => c.per_Guid == personel.mikroid);
            //    if (mikropersonel == null) return Json(new { Success = false }, JsonRequestBehavior.AllowGet);
            //    var sgksube = mikropersonel.per_ucr_PSSK_sube;
            //    var sube = ke.PERSONEL_SSK_TANIMLARI.FirstOrDefault(c => c.ssk_Sira_No == sgksube).ssk_sskno_SiraNo;
            //    var success = skgno.Contains(sube);
            //    if (!success)
            //    {
            //        mevcutsube = db.SgkDosyas.FirstOrDefault(c => c.SgkNo.Contains(sube)).Ad;
            //    }
            //}

            return Json(new { Success = success, Data = mevcutsube }, JsonRequestBehavior.AllowGet);
        }

        [AllowAnonymous]
        public ActionResult _SelectList()
        {
            var liste = db.Personels.Where(c =>  c.kadro < 3).OrderBy(c => c.adsoyad).Select(c => new
            {
                Text = c.adsoyad,
                Value = c.id,
                Thumb = c.PersonelDetay.thumb
            }).ToList();
          
            return Json(liste, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public ActionResult _PersonelResimGuncelle(int id, string data)
        {
            var personel = db.Personels.FirstOrDefault(c => c.id == id);
            if (personel != null)
            {
                personel.PersonelDetay.thumb = string.IsNullOrEmpty(data) ? null : data;
                db.SaveChanges();
                return Json(true, JsonRequestBehavior.AllowGet);
            }
            return Json(false, JsonRequestBehavior.AllowGet);
        }
        [HttpPost]
        public ActionResult _MeslekEkle(string ad)
        {
            try
            {
                var meslek = new Meslek()
                {
                    ad = ad
                };
                db.Mesleks.Add(meslek);
                db.SaveChanges();
                var liste = db.Mesleks.OrderBy(c => c.ad).Select(c => new
                {
                    Text = c.ad,
                    Value = c.id
                }).ToList();

                return Json(new { Success = true, Selected = meslek.id, Data = liste }, JsonRequestBehavior.AllowGet);
            }
            catch (Exception)
            {
                return Json(new { Success = false }, JsonRequestBehavior.AllowGet);
            }
        }
        public ActionResult _PersonelResimYukle(int id)
        {
            var personel = db.Personels.FirstOrDefault(c => c.id == id);
            if (personel != null)
            {
                var url = personel.PersonelDetay.thumb;
                if (url != null)
                    return Json(new { Success = true, Url = url }, JsonRequestBehavior.AllowGet);
                return Json(new { Success = false, Url = "/Content/unknown.png" }, JsonRequestBehavior.AllowGet);
            }
            return Json(new { Success = false, Url = "/Content/unknown.png" }, JsonRequestBehavior.AllowGet);
        }
    }
}