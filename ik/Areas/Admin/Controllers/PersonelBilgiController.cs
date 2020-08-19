using ik.Areas.Admin.Data;
using ik.Models;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ik.Areas.Admin.Controllers
{
    [FilterConfig.CustomActionFilter]
    [Authorize(Users = @"KENTKONUT\noskay,KENTKONUT\derya.aslan")]
    public class PersonelBilgiController : Controller
    {
        private readonly ikEntities db = new ikEntities();
        private ik.Models.KENTEntities ke = new KENTEntities();
        // GET: Admin/PersonelBilgi
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult PersonelIKBilgi(int id)
        {
            var ik = db.Personels.FirstOrDefault(c => c.id == id);
            var ikbilgi = new PersonelIKBilgi
            {
                ID = ik.id,
                MikroID = ik.mikroid.Value,
                PdksID = ik.pdksid.Value
            };
            return PartialView(ikbilgi);
        }
        public ActionResult PersonelMikroBilgi(int id)
        {
            var ik = db.Personels.FirstOrDefault(c => c.id == id);
            var ikbilgi = new PersonelMikroBilgi
            {
                ID = ik.mikroid.Value
            };
            return PartialView(ikbilgi);
        }








        public JsonResult _ikmikroidkontrol(int id, Guid guid)
        {
            var personel = db.Personels.FirstOrDefault(c => c.id == id);
            var gud = ke.PERSONELLERs.FirstOrDefault(c => c.Per_TcKimlikNo == personel.tcno & c.per_cikis_tar.Value == new DateTime(1899, 12, 31)).per_Guid;
            var guidfark = guid == gud;
            if (!guidfark)
            {
                personel.mikroid = gud;
                db.SaveChanges();
            }
            return Json(new { Success = true, Data = gud }, JsonRequestBehavior.AllowGet);
        }

        public ActionResult YillikIzinler(int id)
        {
            var personel = db.Personels.FirstOrDefault(c => c.id == id);
            var izinler = personel.Izins.ToList();
            var kidem = personel.giristarihi;
            var list = new List<YillikIzinVM>();
            var kidematla = false;
            DateTime öncekihaketmetarih = kidem.Value;
            DateTime haketmetarih = öncekihaketmetarih;
            var kdm = 0;
            foreach (var izin in izinler.OrderBy(c => c.yil).GroupBy(c => c.yil))
            {
                if (!kidematla)
                {
                    öncekihaketmetarih = haketmetarih;
                    haketmetarih = öncekihaketmetarih.AddYears(1);
                    kdm++;
                }

                foreach (var iz in izin.OrderBy(c => c.baslangictarih))
                {
                    if (iz.yil == 2016)
                    {

                    }

                    if (iz.izintip == 3)
                    {
                        haketmetarih = haketmetarih.AddDays(iz.gun);
                        kidematla = true;
                    }
                    else
                    {
                        list.Add(new YillikIzinVM
                        {
                            baslangic = iz.baslangictarih,
                            bitis = iz.bitistarihi,
                            izinsuresi = iz.gun,
                            yil = iz.yil,
                            yolizni = 0,
                            kidem = kdm,
                            haketmetarihi = haketmetarih,
                            öncekihaketmetarihi = öncekihaketmetarih
                        });
                        kidematla = false;
                    }
                }
                //kidematla = false;

            }

            var sirali = list.OrderBy(c => c.yil).ThenBy(c => c.baslangic).ToList();
            sirali.ForEach(c => Debug.WriteLine(string.Format("{0} {1} {2} {3} {4} {5}", c.yil, c.baslangic, c.bitis, c.öncekihaketmetarihi.ToShortDateString(), c.haketmetarihi.ToShortDateString(),c.kidem)));
            return PartialView(sirali);
        }
    }
}