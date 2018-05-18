using System;
using System.Collections.Generic;
using System.DirectoryServices.AccountManagement;
using System.Linq;
using System.Web.Mvc;
using ik.Models;

namespace ik.Controllers
{
    [FilterConfig.CustomActionFilter]
    [Authorize(Users = @"KENTKONUT\noskay")]
    public class YillikIznimController : Controller
    {
        private readonly ikEntities db = new ikEntities();

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }

        // GET: YillikIznim
        public ActionResult Index()
        {
            var user = UserPrincipalExtended.FindByIdentity(
                new PrincipalContext(ContextType.Domain), User.Identity.Name);
            var id = int.Parse(user.Pager);
            var personel = db.Personels.SingleOrDefault(c => c.id == id);
            ViewBag.personelAd = personel.adsoyad;
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

                #region ücretsiz izin var sa kıdem tarihini ötele

                if (ücretsiz.Count > 0)
                {
                    foreach (var uizin in ücretsiz)
                    {
                        var fark = uizin.bitistarihi.Subtract(uizin.baslangictarih);
                        kidembitis = kidembitis.AddDays(fark.Days);
                    }
                }

                #endregion

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
                kidem.Add(new Kidem
                {
                    yil = yil,
                    baslangic = kidembaslangic,
                    bitis = kidembitis,
                    hakedilenizin = hakedilen,
                    kullanilan = kullanılan,
                    kalan = hakedilen - kullanılan
                });
                kidembaslangic = kidembitis;
                kidemyil++;
            }


            return PartialView(kidem);
        }
    }
}