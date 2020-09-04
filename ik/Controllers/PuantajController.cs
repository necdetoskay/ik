using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ik.Models;

namespace ik.Controllers
{
    [FilterConfig.CustomActionFilter]
    [Authorize(Users = @"KENTKONUT\noskay,KENTKONUT\derya.aslan")]
    public class PuantajController : Controller
    {
        private readonly ikEntities db = new ikEntities();
        private ik.Models.KENTEntities ke = new KENTEntities();
        // GET: Puantaj
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Puantajlar()
        {
            return View();
        }

        public MassKontrolVM PersonelBilgi(Guid kod, int yil, int ay)
        {
            var temp = new DateTime(yil, ay, 1);
            var yil1 = temp.Year;
            var ay1 = temp.Month;
            var query = (from p in ke.PERSONELLERs
                         join pt in ke.PERSONEL_TAHAKKUKLARI on p.per_kod equals pt.pt_pkod
                         where p.per_cikis_tar == new DateTime(1899, 12, 31) & (pt.pt_maliyil == yil1 & pt.pt_tah_ay == ay1) & p.per_Guid==kod
                         select new MassKontrolVM
                         {
                             sicilno = p.per_kod,
                             adsoyad = p.per_adi + " " + p.per_soyadi,
                             yil = pt.pt_maliyil.Value,
                             ay = pt.pt_tah_ay.Value,
                             bes = pt.pt_otobes_tutari.Value,
                             fm1 = Math.Round(pt.pt_ekkazanc2_tktutar.Value, 2),
                             fm2 = Math.Round(pt.pt_ekkazanc1_tktutar.Value, 2),
                             avans = pt.pt_ozksnt5.Value,
                             icra = pt.pt_ozksnt3.Value,
                             sgkgun = pt.pt_sskgunu.Value,
                             net = Math.Round(pt.pt_net.Value, 2),
                             agi = pt.pt_asgarigecimindirimi.Value,
                             devgelvermatrah = Math.Round(pt.pt_devgvmatrah.Value, 2),
                             gvmatrah = Math.Round(pt.pt_gvmatrah.Value, 2),
                             brüt = Math.Round(pt.pt_brutucret.Value, 2),
                             yemek = Math.Round(pt.pt_sosyrdm.Value, 2)
                         });



            return query.ToList()[0];
        }


        [HandleError]
        public ActionResult MaasKontrol(int yil, int ay)
        {
            ViewBag.HesaplananAy = AyAdi(ay);
            ViewBag.GeçenAy = AyAdi(ay < 1 ? 1 : ay - 1);
            var temp=new DateTime(yil,ay,1);
            var yil1 = temp.Year;
            var ay1 = temp.Month;
            temp = temp.AddMonths(-1);
            var yil2 = temp.Year;
            var ay2 = temp.Month;

            var query = (from p in ke.PERSONELLERs
                         join pt in ke.PERSONEL_TAHAKKUKLARI on p.per_kod equals pt.pt_pkod
                         where p.per_cikis_tar == new DateTime(1899, 12, 31) & (pt.pt_maliyil == yil1 & pt.pt_tah_ay == ay1) || (pt.pt_maliyil == yil2 & pt.pt_tah_ay == ay2) & p.per_bolge_kodu!="HZR" & p.per_bolge_kodu!="DR"
                         select new MassKontrolVM
                         {
                             sicilno = p.per_kod,
                             adsoyad = p.per_adi + " " + p.per_soyadi,
                             yil = pt.pt_maliyil.Value,
                             ay = pt.pt_tah_ay.Value,
                             bes = pt.pt_otobes_tutari.Value,
                             fm1 = Math.Round(pt.pt_ekkazanc2_tktutar.Value, 2),
                             fm2 = Math.Round(pt.pt_ekkazanc1_tktutar.Value, 2),
                             avans = pt.pt_ozksnt5.Value,
                             icra = pt.pt_ozksnt3.Value,
                             sgkgun = pt.pt_sskgunu.Value,
                             net = Math.Round(pt.pt_net.Value, 2),
                             agi = pt.pt_asgarigecimindirimi.Value,
                             devgelvermatrah = Math.Round(pt.pt_devgvmatrah.Value, 2),
                             gvmatrah = Math.Round(pt.pt_gvmatrah.Value, 2),
                             brüt = Math.Round(pt.pt_brutucret.Value, 2),
                             yemek = Math.Round(pt.pt_sosyrdm.Value,2)

                         });
            var liste = new List<MaasVM>();
            int tip = 0;
            double vergiindirim = 0;
            foreach (var pers in query.GroupBy(c => c.sicilno))
            {
                vergiindirim = 0;
                if (pers.Key == "0450")
                {
                    vergiindirim = 350;
                }
                tip = 0;
                if (pers.Key == "1375")
                {
                    tip = 1;
                }
                try
                {
                    var p = pers.OrderBy(d => d.ay).ToList();
                    var gan = p[0].net + p[0].icra + p[0].avans + p[0].bes;
                    var ban = p[1].net + p[1].icra + p[1].avans + p[1].bes;
                    var ayson = pers.FirstOrDefault(f => f.ay == ay1);

                    var hesap = MaasHesap(ayson.brüt, ayson.yemek, ayson.avans, ayson.bes, ayson.devgelvermatrah,
                    ayson.agi, ayson.sgkgun, ayson.fm1, ayson.fm2,tip,vergiindirim);
                    hesap.Avans = ayson.avans;
                    var maasvm = new MaasVM
                    {
                        AdSoyad = p[0].adsoyad,
                        GecenAyNet = gan,
                        GecenAyGun = p[0].sgkgun,
                        BuAyGun = p[1].sgkgun,
                        BuAyNet = p[1].net,
                        Fark = Math.Round(hesap.Net - ban, 2),
                        Hesaplana = hesap.Net,
                        Mesai = ayson.fm1 + ayson.fm2,
                        Bes = ayson.bes,
                        hesap = hesap
                    };
                    liste.Add(maasvm);
                }
                catch (Exception xx) { }
            }

            return View(liste.ToList());
        }

        private string AyAdi(int ay)
        {
            switch (ay)
            {
                case 1:
                    return "OCAK";
                case 2:
                    return "ŞUBAT";
                case 3:
                    return "MART";
                case 4:
                    return "NİSAN";
                case 5:
                    return "MAYIS";
                case 6:
                    return "HAZİRAN";
                case 7:
                    return "TEMMUZ";
                case 8:
                    return "AĞUSTOS";
                case 9:
                    return "EYLÜL";

                case 10:
                    return "EKİM";
                case 11:
                    return "KASIM";
                default:
                    return "ARALIK";

            }
        }
        public ActionResult MaasHesapla()
        {
            return View();
        }

        public Hesap MaasHesap(
            double brütmaaş,
            double yemek,
            double avans,
            double bes,
            double devgelvermatrah = 0,
            double agi = 0,
            int sgkgun = 30,
            double mesai = 0, double mesai2 = 0, int tip = 0,double vergiindirim=0)
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
            var yemekistisna = 5.89;

            var dilim = db.vergi_dilim.FirstOrDefault(c => c.yil == 2020).vergi_dilim_detay.ToList();
            brütmaaş = ((brütmaaş / 30) * sgkgun);// 4307.32m;
            double brütyemek = yemek;//Math.Round(sgkgun < 22 ? (yemek / 22.0) * sgkgun : yemek);




            var yemekistisnatutar = 129;//Math.Round(yemekistisna * 22,2);
            var sgkmatrah = Math.Round(brütmaaş + brütyemek - yemekistisnatutar + mesai + mesai2, 2);
            sgkmatrah = sgkmatrah > 22072.5 ? 22072.5 : sgkmatrah;
            double işsizlikprim = 0;
            double sgkprim = 0;
            if (tip == 1)
            {
                sgkprim = Math.Round(sgkmatrah * 0.075, 2);
                işsizlikprim = 0;
            }
            else if (tip == 0)
            {
                sgkprim = Math.Round(sgkmatrah * 0.14, 2);
                işsizlikprim = Math.Round(sgkmatrah * 0.01, 2);
            }

            var damga = Math.Round((brütmaaş + brütyemek + mesai + mesai2) * 0.00759, 2);
            var gelirvergimatrah = Math.Round(brütmaaş + brütyemek + mesai + mesai2 - sgkprim - işsizlikprim, 2)-vergiindirim;
            
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
                        gelirvergisi = (decimal)(alt + üst); gelirvergisi = Math.Round(gelirvergisi, 2);
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

            var net = brütmaaş + brütyemek + mesai + mesai2 - sgkprim - ((double)gelirvergisi) - damga - işsizlikprim;
            return new Hesap
            {
                Net = Math.Round(net, 2),
                DamgaVer = damga,
                GelirVergisi = (double)gelirvergisi,
                SGKPay = sgkprim,
                İşsizlikPay = işsizlikprim};
        }

        //public JsonResult _PersonelMaasHesap(int id, double devgelvermatrah = 0, double agi = 0, int sgkgun = 30, double mesai = 0)
        //{
        //    var yemekistisna = 4.05;

        //    var pers = db.Personels.FirstOrDefault(c => c.id == id);
        //    var mikroper = ke.PERSONELLERs.FirstOrDefault(c => c.per_Guid == pers.mikroid);
        //    var dilim = db.vergi_dilim.FirstOrDefault(c => c.yil == 2018).vergi_dilim_detay.ToList();
        //    var brütmaaş = Math.Round(((mikroper.per_ucret.Value / 30) * sgkgun), 2) + mesai;// 4307.32m;
        //    double brütyemek = Math.Round(sgkgun < 22 ? (350.0 / 22.0) * sgkgun : 350);




        //    var yemekistisnatutar = yemekistisna * 22;
        //    var sgkmatrah = Math.Round(brütmaaş + brütyemek - yemekistisnatutar, 2);


        //    var sgkprim = Math.Round(sgkmatrah * 0.14, 2);
        //    var işsizlikprim = Math.Round(sgkmatrah * 0.01, 2);
        //    var damga = Math.Round((brütmaaş + brütyemek) * 0.00759, 2);
        //    var gelirvergimatrah = Math.Round(brütmaaş + brütyemek - sgkprim - işsizlikprim, 2);
        //    var kümülatif = Math.Round((decimal)(devgelvermatrah + gelirvergimatrah), 2);
        //    var gelirvergisi = 0m;
        //    var devgbmatrah = (decimal)devgelvermatrah;
        //    for (int i = 0; i < dilim.Count; i++)
        //    {
        //        if (devgbmatrah > dilim[i].ust)
        //        {

        //        }
        //        else
        //        {
        //            if (kümülatif > dilim[i].ust)
        //            {
        //                var üdilim = (double)(kümülatif - dilim[i].ust);
        //                var üst = (üdilim * dilim[i + 1].oran) / 100;
        //                var alt = ((gelirvergimatrah - üdilim) * dilim[i].oran) / 100;
        //                gelirvergisi = (decimal)(alt + üst);
        //                gelirvergisi = Math.Round(gelirvergisi, 2);
        //                break;
        //                //iki dilim
        //            }
        //            else
        //            {
        //                //tek dilim
        //                gelirvergisi += (decimal)(gelirvergimatrah * dilim[i].oran) / 100;

        //                gelirvergisi = Math.Round(gelirvergisi, 2);
        //                break;
        //            }
        //        }
        //    }
        //    //gelirvergisi hesapla
        //    gelirvergisi -= (decimal)agi;

        //    var net = brütmaaş + brütyemek - sgkprim - ((double)gelirvergisi) - damga - işsizlikprim;


        //    return Json(new
        //    {
        //        Success = true,
        //        Net = Math.Round(net, 2),
        //        sgkmatrah,
        //        sgkprim,
        //        işsizlikprim,
        //        damga,
        //        gelirvergimatrah,
        //        kümülatif,
        //        gelirvergisi

        //    }, JsonRequestBehavior.AllowGet);
        //}

        /// <summary>
        /// yüzde kaç zam aldım neden maaşım düştü diyen personel için hazırlanan
        /// personelin maaşını kesintilerini göstermek için hazırlanıyor.
        /// </summary>
        /// <returns></returns>
        public ActionResult _MaasHesap()
        {
            //ilk önce personel seçtir

            return View();
        }

        /// <summary>
        /// parametere alınan yıla ait bekar agisini geri döndürür
        /// </summary>
        /// <returns></returns>
        public JsonResult _Agi(int yil)
        {
            var fod = db.kanunparametres.FirstOrDefault(c => c.yil == yil);
            var agi = fod == null ? 0 : fod.agi;

            return Json(agi == null ? 0 : agi, JsonRequestBehavior.AllowGet);
        }

        /// <summary>
        /// seçili personel için girilen bilgilere göre maaş hesapla
        /// </summary>
        /// <param name="id">personel ik id</param>
        /// <param name="yil">hesaplama yılı</param>
        /// <param name="agi">hesaplamada kullanılan agi tutarı</param>
        /// <param name="dkgvm">varsa devreden kümülatif gelir vergisi matrahı</param>
        /// <param name="baslangic">başlangıç ayı</param>
        /// <param name="bitis">bitis ayı</param>
        /// <returns></returns>
        public ActionResult _MaaşHesapla(int id, int yil, decimal agi, decimal dkgvm, int baslangic, int bitis)
        {
            var asgariücret = db.kanunparametres.FirstOrDefault(c => c.yil == yil).brutasgari;
            var istisnagun = db.kanunparametres.FirstOrDefault(c => c.yil == yil).yemekistisnagun;
            var brütyemek = db.kanunparametres.FirstOrDefault(c => c.yil == yil).brutyemek;
            //asgari ücretten yemek istisna bul
            //personel brüt ücretini bul yoksa mikrodan çek ve kaydı oluştur
            //personel brüt yemek ücretini bul

            //tüm hesaplam işlemleri burada yapılacak
            throw new NotImplementedException();
        }
    }

    public class MAAS
    {
        public void NetHesapla(decimal brüt, bool yemek = false)
        {

        }
        //net hesapla
    }

    public class MassHesapDetay
    {
        //brut,skg,işsizlik,gelirvergisi,agi,toplam kesinti,net,yemek istisna
    }

    public class MaasVM
    {
        public string AdSoyad { get; set; }
        public double GecenAyNet { get; set; }
        public int GecenAyGun { get; set; }
        public double BuAyNet { get; set; }
        public int BuAyGun { get; set; }
        public double Hesaplana { get; set; }
        public double Fark { get; set; }
        public double Mesai { get; set; }
        public double Bes { get; set; }
        public Hesap hesap { get; set; }


    }

    public class Hesap
    {
        public double SGKPay { get; set; }
        public double İşsizlikPay { get; set; }
        public double DamgaVer { get; set; }
        public double GelirVergisi { get; set; }
        public double Net { get; set; }
        public double Avans { get; set; }
    }

    public class MassKontrolVM
    {
        public double brüt { get; set; }
        public string sicilno { get; set; }
        public string adsoyad { get; set; }
        public int yil { get; set; }
        public int ay { get; set; }
        public double bes { get; set; }
        public double fm1 { get; set; }
        public double fm2 { get; set; }
        public double avans { get; set; }
        public double icra { get; set; }
        public int sgkgun { get; set; }
        public double net { get; set; }
        public double agi { get; set; }
        public double devgelvermatrah { get; set; }
        public double gvmatrah { get; set; }
        public double yemek { get; set; }
    }
}