using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;
using ik.Models;
using PagedList;

namespace ik.Controllers
{
    [FilterConfig.CustomActionFilter]
    [Authorize(Users = @"KENTKONUT\noskay,KENTKONUT\derya.aslan")]
    public class TakipController : Controller
    {
        private readonly ikEntities db = new ikEntities();

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }

        // GET: Takip
        public ActionResult Index(int? SayfaNo)
        {
            int _sayfaNo = SayfaNo ?? 1;
            var takip = db.Takips.OrderByDescending(m => m.tamamlanma==null).ToPagedList<Takip>(_sayfaNo, 10);

            if (Request.IsAjaxRequest())
            {
                return PartialView("_PagedIndex", takip);
            }

            return View(takip);
            //var liste = db.Takips.Where(c => c.tamamlanma != null).OrderByDescending(c => c.sontarih).ToList();
            //return View(liste);
        }

        public ActionResult AltCreate(int? parentid)
        {
            var gorev = new Takip
            {
               parentid= parentid
            };
            return PartialView(gorev);
        }
        [HttpPost]
        public ActionResult AltCreate(Takip model, int? parentid)

        {
            if (ModelState.IsValid)
            {
                try
                {
                    model.sontarih = db.Takips.FirstOrDefault(d => d.id == parentid).sontarih;
                    model.ekleme=DateTime.Now;
                    db.Takips.Add(model);
                    db.SaveChanges();
                  

                    return Json(new { success = true, data = new { id = model.id, parentid = model.parentid, ad = model.aciklama } });
                }
                catch (Exception xx)
                {

                }
            }
            return PartialView(model);
        }


        private void RemoveTakipRecords(Takip takip)
        {
            if (takip.Takip1.Count <1)
            {
                db.Takips.Remove(takip);
                db.SaveChanges();}
            else
            {
                while (takip.Takip1.Any())
                {
                    RemoveTakipRecords(takip.Takip1.First());
                }
                //foreach (var t1 in takip.Takip1.ToList())
                //{
                    
                //}
            }
        }
        public ActionResult GorevSil(int id)
        {
            try
            {
                //alt kayıt yoksa sil
                //alt kayıt varsa kendini çağır
                var gorev = db.Takips.FirstOrDefault(c => c.id == id);
                RemoveTakipRecords(gorev);//db.Takips.Remove(gorev);
                //db.SaveChanges();
                return Json(new { Success = true, data = new { id } }, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                return Json(new { Success = false, Message = ex.Message }, JsonRequestBehavior.AllowGet);
            }
        }

        // GET: Takip/Create
        public ActionResult Create()
        {
            //if (User.Identity.Name != @"KENTKONUT\noskay")
            //    return RedirectToAction("Index");
            ViewBag.GorevListe = new SelectList(db.Gorev_Detay.Where(c => c.parentID == null), "id", "ad");

            return PartialView();
        }



        private void GorevRecursive(Gorev_Detay gorev,Takip takip)
        {
            if (gorev.Gorev_Detay1.Any())
            {
                foreach (var got in gorev.Gorev_Detay1)
                {
                   
                    var tak = new Takip
                    {
                        aciklama = got.ad,
                        ekleme = DateTime.Now,
                        gostermegunu = takip.gostermegunu,
                        sontarih = takip.sontarih,
                        sira = takip.sira
                       
                    };
                    takip.Takip1.Add(tak);
                    GorevRecursive(got, tak);
                }
            }
            else
            {
                
            }
        }

        // POST: Takip/Create
        [HttpPost]
        public ActionResult Create(Takip takip)
        {
            try
            {
                takip.ekleme = DateTime.Now;
                takip.gostermegunu = 3;
                if (ModelState.IsValid)
                {
                    db.Takips.Add(takip);
                    if (takip.GorevListe != null)
                    {
                        var liste = db.Gorev_Detay.FirstOrDefault(c => c.id == takip.GorevListe);
                        if (liste != null)
                        {
                            GorevRecursive(liste,takip);
                        }
                        //tüm alt görevleri ekle
                    }
                   
                    db.SaveChanges();
                    return Json(new { success = true }, JsonRequestBehavior.AllowGet);
                }
                return PartialView(takip);
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                return PartialView(takip);
            }
        }

        // GET: Takip/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: Takip/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Takip/Delete/5
        public ActionResult Delete(int id)
        {
            var item = db.Takips.SingleOrDefault(c => c.id == id);
            return View(item);
        }

        // POST: Takip/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, Takip takip)
        {
            try
            {
                var t = db.Takips.SingleOrDefault(c => c.id == id);
                db.Takips.Remove(t);
                db.SaveChanges();
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View(takip);
            }
        }

        public ActionResult Tamamla(int id)
        {
            var takip = db.Takips.SingleOrDefault(c => c.id == id);
            if (takip != null)
            {
                takip.tamamlanma = DateTime.Now;
                db.SaveChanges();
            }

            return RedirectToAction("Index");
        }

        private void GorevTamamla(Takip takip)
        {
            if (takip.Takip1.Any())
            {
                
                foreach (var t in takip.Takip1)
                {
                    GorevTamamla(t);
                }
                takip.tamamlanma = DateTime.Now;
                db.SaveChanges();
            }
            else
            {
                takip.tamamlanma = DateTime.Now;
                db.SaveChanges();
            }
        }
        public JsonResult _Tamamla(int id)
        {
            var takip = db.Takips.SingleOrDefault(c => c.id == id);
            if (takip != null)
            {
                GorevTamamla(takip);
                return Json(true, JsonRequestBehavior.AllowGet);
            }

            return Json(false, JsonRequestBehavior.AllowGet);
        }



        public JsonResult _RutinOzet(int limit)
        {
            var date = DateTime.Now.Date.AddDays(10);
            var liste =
                db.Takips.Where(c => c.sontarih < date & c.tamamlanma == null).OrderBy(c => c.sontarih).Take(limit);
            return Json(liste, JsonRequestBehavior.AllowGet);
        }


        //private bool RecursiveRutin(Takip t)
        //{
        //    if (t.Takip1.Any())
        //    {
        //        foreach (var t1 in t.Takip1.ToList())
        //        {
        //            RecursiveRutin(t1);
        //        }
        //    }
        //    if (t.tamamlanma != null) return true;

        //}

        public ActionResult RutinOzet(int limit)
        {
            //var date = DateTime.Now.Date.AddDays(10);
            var liste =
                db.Takips.Where(c => c.tamamlanma == null).OrderBy(c => c.sontarih);//.Take(limit);
           


            return PartialView(liste);
        }

        public ActionResult RutinTamamla(int id)
        {
            var takip = db.Takips.SingleOrDefault(c => c.id == id);
            if (takip != null)
            {
                takip.tamamlanma = DateTime.Now;
                db.SaveChanges();
            }
            var liste =
             db.Takips.Where(c => c.tamamlanma == null).OrderBy(c => c.sontarih);//.Take(limit);

            return PartialView("RutinOzet", liste);
        }

        public ActionResult RutinEkle()
        {
            return View();
        }

        public ActionResult RutinListe()
        {
            var liste = db.Takips.ToList();
            return View(liste);
        }


        private void RecursiveSil(Takip takip)
        {
            if (takip.Takip1.Any())
            {
                foreach (var t in takip.Takip1.ToList())
                {
                    RecursiveSil(t);
                 
                }
                db.Takips.Remove(takip);

            }
            else
            {
                db.Takips.Remove(takip);
            }
        }

        public ActionResult _RutinSil(int id)
        {
            var kayıt = db.Takips.FirstOrDefault(c => c.id == id);
            if (kayıt != null)
            {
                RecursiveSil(kayıt);
               // db.Takips.Remove(kayıt);
                try
                {
                    db.SaveChanges();
                    return Json(new { Success = true, Message = kayıt.aciklama + "  kaydı Silindi." }, JsonRequestBehavior.AllowGet);
                }
                catch (Exception ex)
                {
                    return Json(new { Success = false, Message = ex.Message }, JsonRequestBehavior.AllowGet);
                }
            }
            return Json(new { Success = false, Message = "Kayıt Bulunamadı" }, JsonRequestBehavior.AllowGet);
        }

       

        public ActionResult AltGorevler(int id)
        {
            var liste = db.Takips.Where(c => c.parentid == id).ToList();
            ViewBag.parentID = id;
            return View(liste);
        }

        public void CheckForParentTamam(Takip takip)
        {
            var parent = db.Takips.FirstOrDefault(c => c.id == takip.parentid);
            if (parent != null && parent.Takip1.Any(d => d.tamamlanma != null))
            {
                parent.tamamlanma = DateTime.Now;
                db.SaveChanges();
                CheckForParentTamam(parent);
            }
        }
        public void CheckForParentIptal(Takip takip)
        {
            var parent = db.Takips.FirstOrDefault(c => c.id == takip.parentid);
            if (parent != null && parent.Takip1.Any(d => d.tamamlanma == null))
            {
                parent.tamamlanma = null;
                db.SaveChanges();
                CheckForParentIptal(parent);
            }
        }

        public JsonResult _TakipSil(int id)
        {
            var firstOrDefault = db.Takips.FirstOrDefault(c => c.id == id);
            if (firstOrDefault != null)
            {
                db.Takips.Remove(firstOrDefault);
                db.SaveChanges();
                return Json(new { Success = true },
                    JsonRequestBehavior.AllowGet);
            }
            else
            {
                return Json(new { Success = false },
                    JsonRequestBehavior.AllowGet);
            }
        }
        public JsonResult _TakipTamamla(int id, int parentid)
        {
            try
            {
                var takip = db.Takips.FirstOrDefault(c => c.id == id);
                takip.tamamlanma = DateTime.Now;
                db.SaveChanges();
                CheckForParentTamam(takip);
                return Json(new { Success = true },
                    JsonRequestBehavior.AllowGet);
            }
            catch (Exception)
            {
                return Json(new { Success = false },
                  JsonRequestBehavior.AllowGet);
            }

        }

        public JsonResult _TakipIptal(int id, int parentid)
        {
            try
            {
                var takip = db.Takips.FirstOrDefault(c => c.id == id);
                takip.tamamlanma = null;
                db.SaveChanges();
                CheckForParentIptal(takip);
                return Json(new { Success = true },
                    JsonRequestBehavior.AllowGet);
            }
            catch (Exception)
            {
                return Json(new { Success = false },
                  JsonRequestBehavior.AllowGet);
            }
        }




        public ActionResult GorevEkle(int parentid )
        {
            var takip = new Takip {parentid = parentid,sontarih = DateTime.Now,gostermegunu = 3};
            foreach (var takipp in db.Takips.Where(c=>c.parentid==parentid))
            {
                //tümünü döngüye sok

            }


            //ViewBag.IsListe =
           return PartialView(takip);
        }
        [HttpPost]
        public ActionResult GorevEkle(int parentid,Takip takip)
        {
            takip.ekleme=DateTime.Now;
            if (ModelState.IsValid)
            {
                try
                {
                    db.Takips.Add(takip);
                    db.SaveChanges();
                    return Json(new { success = true });
                }
                catch (Exception xx)
                {
                    return Json(new { success = false });
                }
            }

            return Json(new { success = false });

        }

        public JsonResult GorevTamamla(int parentid)
        {
            var takip = db.Takips.SingleOrDefault(c => c.id == parentid);
            TamamlaRecursive(takip);
           //alt görevlerin hepsini tamamla
            db.SaveChanges();
            return Json(new {Success=true},JsonRequestBehavior.AllowGet);
        }

        private void TamamlaRecursive(Takip takip)
        {
            if (takip.Takip1.Any())
            {
                foreach (var t in takip.Takip1)
                {
                    TamamlaRecursive(t);
                    if(t.tamamlanma==null)
                        t.tamamlanma=DateTime.Now;
                }
                if (takip.tamamlanma == null)
                    takip.tamamlanma = DateTime.Now;
            }
            else
            {
                if(takip.tamamlanma==null)
                    takip.tamamlanma=DateTime.Now;
            }
        }

        public ActionResult TekrarliGorevEkle()
        {
            return View();
        }
    }
}