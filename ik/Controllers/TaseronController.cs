using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web.Mvc;
using ik.Models;
using MySql.Data.MySqlClient;

namespace ik.Controllers
{
    [FilterConfig.CustomActionFilter]
    [Authorize(Users = @"KENTKONUT\noskay,KENTKONUT\derya.aslan")]
    public class TaseronController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        public JsonResult PersonelListe()
        {
            var table = new ArrayList();
            using (
                var con =
                    new MySqlConnection(
                        "Server=172.41.40.85;Database=perkotek;Uid=root;Pwd=max;AllowZeroDateTime=True;Charset=latin5"))
            {
                var com =
                    new MySqlCommand("SELECT id,adi,soyadi,sirket_kod from personel_kartlari where sirket_kod <> 8", con);
                if (con.State != ConnectionState.Open)
                    con.Open();
                var reader = com.ExecuteReader();
                while (reader.Read()){
                    table.Add(new{Value = (int)(uint) reader["id"], Text= reader["adi"].ToString()+" "+reader["soyadi"].ToString()
                    });
                }
                con.Close();
            }
            return Json(table, JsonRequestBehavior.AllowGet);
        }
        
        //    var q =
        //        db.Personels.Where(
        //            c => !db.ImzaTakips.Where(g => g.imzaID == imzaid).Select(b => b.personelID).Contains(c.id))
        //            .Select(c => new { Value = c.id, Text = c.adsoyad })
        //            .ToList();
        //    ;
        //    return Json(q, JsonRequestBehavior.AllowGet);


        public ActionResult IzinFormu()
        {
            return View();
        }
    }
}