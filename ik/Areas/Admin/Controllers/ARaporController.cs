using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Web;
using System.Web.Mvc;
using ik.Models;

namespace ik.Areas.Admin.Controllers
{
    [FilterConfig.CustomActionFilter]
    [Authorize(Users = @"KENTKONUT\noskay,KENTKONUT\derya.aslan")]
    public class ARaporController : Controller
    {
        private readonly ikEntities ik = new ikEntities();
        private ik.Models.KENTEntities ke = new KENTEntities();

        // GET: Admin/ARapor
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult TopluTcKontrol()
        {
            return View();
        }
        [HttpPost]

        public ActionResult _TopluTcSorgula(string[] array)
        {
            var a = ke.PERSONELLERs.Where(c => array.Contains(c.Per_TcKimlikNo) && c.per_cikis_tar == new DateTime(1899, 12, 31)).Select(d => new { TCNo = d.Per_TcKimlikNo, Ad = d.per_adi, Soyad = d.per_soyadi }).ToList();
            return Json(new { Data = a }, JsonRequestBehavior.AllowGet);
        }

        public ActionResult Ibraname()
        {
            return View();
        }

        public ActionResult _IbranameBilgi(Guid id)
        {
            var mikroper = ke.PERSONELLERs.FirstOrDefault(c => c.per_Guid == id);
            var personel = ik.Personels.FirstOrDefault(c => c.mikroid == id);
            var kidem = __PersonelIzin(personel, mikroper.per_giris_tar.Value);
            var kalan = kidem.Sum(c => c.hakedilenizin) - kidem.Sum(d => d.kullanilan);
            var cikis = mikroper.per_cikis_tar == new DateTime(1899, 12, 30)
                ? DateTime.Now.Date
                : mikroper.per_cikis_tar;
            var pertahakkuk = ke.PERSONEL_TAHAKKUKLARI.Where(c => c.pt_pkod == mikroper.per_kod).ToList().Last();
            var kgvm=Math.Round(pertahakkuk.pt_gvmatrah.Value,2);
            var yemek = Math.Round(pertahakkuk.pt_sosyrdm.Value, 2);

            var data = new
            {
                Giris = mikroper.per_giris_tar,
                Cikis =cikis ,
                Brut = mikroper.per_ucret,
                Izin=kalan,
                GelirVergisiMatrah=kgvm,
                Yemek=yemek
            };
            return Json(new { Data = data }, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public JsonResult PersonelAra(string term)
        {

            var queryable = from p in (from p in ke.PERSONELLERs
                                       where p.per_adi.Contains(term)
                                       select p)
                            select new { label = p.per_adi + " " + p.per_soyadi, val = p.per_Guid };
            return Json(queryable.ToList());
        }

        private List<Kidem> __PersonelIzin(Personel personel,DateTime isegiris)
        {
            var kidembaslangic = isegiris;
            var kidembitis = isegiris;
            var kidemyil = 1;
            var kidem = new List<Kidem>();

            if (personel.PersonelDevir != null)
            {

                kidembaslangic = new DateTime(isegiris.Year - 1, personel.PersonelDevir.kidemTarih.Month, personel.PersonelDevir.kidemTarih.Day);
                if (kidembaslangic.AddYears(1) <= isegiris)
                {
                    kidembaslangic = kidembaslangic.AddYears(1);
                }
                kidembitis = kidembaslangic;
                kidemyil = isegiris.Year - personel.PersonelDevir.kidemTarih.Year;
                var hakedilen = personel.PersonelDevir.izinDevir;
                var kullanılan = personel.Izins.Where(c => c.yil == kidembaslangic.Year).Sum(c => c.gun);
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


                var yas = kidembitis.Year - isegiris.Year;
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

            return kidem;
        }



    }
}
