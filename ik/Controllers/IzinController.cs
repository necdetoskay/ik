using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;
using ik.Models;

namespace ik.Controllers
{
    [Authorize(Users = @"KENTKONUT\noskay,KENTKONUT\agokalp")]
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

        public ActionResult PersonelIzinDurum(int personelid)
        {
            var q = db.Izins.Where(c => c.personelid == personelid);
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
            var personel = db.Personels.SingleOrDefault(c => c.id == personelid);
            if (personel.Izins.Count == 0)
                return Json("", JsonRequestBehavior.AllowGet);
            var kidem = new List<Kidem>();

            var kidembaslangic = personel.giristarihi.Value;
            var kidembitis = personel.giristarihi.Value;
            var kidemyil = 1;

            if (personel.PersonelDevir != null)
            {
                var hakedilen = personel.PersonelDevir.izinDevir;
                var kullanılan = personel.Izins.Where(c => c.yil == personel.giristarihi.Value.Year).Sum(c => c.gun);

                kidem.Add(new Kidem
                {
                    baslangic = personel.PersonelDevir.kidemTarih,
                    bitis = personel.giristarihi.Value,
                    yil = personel.giristarihi.Value.Year,
                    hakedilenizin = hakedilen,
                    kullanilan = kullanılan,
                    kalan = hakedilen - kullanılan
                });
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

                //varsa ücretsiz izin kullanımı burada kıdemi değiştir.
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
                kullanılan = personel.Izins.Where(c => c.yil == yil).Sum(c => c.gun);
                var kanuni = personel.Izins.Where(c=>c.yil==yil).Any(c => c.gun >=10);
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


            return Json(kidem, JsonRequestBehavior.AllowGet);
        }

        public ActionResult Create()
        {
            if (User.Identity.Name != @"KENTKONUT\noskay")
                return RedirectToAction("Index");
            ViewBag.personelListe = new SelectList(db.Personels, "id", "adsoyad");
            ViewBag.izintipListe = new SelectList(db.IzinTips, "id", "ad", 1);
            return View();
        }

        [HttpPost]
        public ActionResult Create(Izin izin)
        {
            if (ModelState.IsValid)
            {
                db.Izins.Add(izin);
                db.ImzaTakips.Add(new ImzaTakip
                {
                    personelID = izin.personelid,
                    Tarih = DateTime.Now,
                    Aciklama =
                        string.Format("{0}-{1} arası izin defteri ve formu imza",
                            izin.baslangictarih.ToShortDateString(), izin.bitistarihi.ToShortDateString())
                });
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(izin);
        }

        public JsonResult PersonelMikroIzin(int personelid)
        {
            var mikroid = db.Personels.SingleOrDefault(c => c.id == personelid).mikroid;

            using (KENTEntities ke = new KENTEntities())
            {
                var kod = ke.PERSONELLERs.SingleOrDefault(c => c.per_RECno == mikroid);
                var liste = ke.PERSONEL_IZINLERI.Where(c => c.pz_pers_kod == kod.per_kod).OrderByDescending(c => c.pz_RECno).Select(c => new
                {
                    Aciklama = c.pz_izin_aciklama,
                    Baslangic = c.pz_baslangictarih.Value,
                    Bitis = c.pz_gerceklesen_donus_tarihi.Value,
                    Gun = c.pz_gun_sayisi
                }).ToList();
                return Json(liste, JsonRequestBehavior.AllowGet);
            }
            return Json(0);
        }
    }
}