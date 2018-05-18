using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MySql.Data.MySqlClient;

namespace ik.Controllers
{
    [FilterConfig.CustomActionFilter]
    [Authorize(Users = @"KENTKONUT\noskay,KENTKONUT\agokalp")]
    public class DahililerController : Controller
    {
        // GET: Dahililer
        public ActionResult Index()
        {
            return View();
        }

        public JsonResult PersonelListe(string term)
        {
            var liste = new ArrayList();
            using (
               var con =
                   new MySqlConnection(
                       "Server=172.41.40.85;Database=perkotek;Uid=root;Pwd=max;AllowZeroDateTime=True;Charset=latin5"))
            {
                var com =
                    new MySqlCommand(string.Format("select id , concat(adi,' ',soyadi) as adsoyad from personel_kartlari where adi like '{0}%'",term.ToUpper()), con);
                if (con.State != ConnectionState.Open)
                    con.Open();
                var reader = com.ExecuteReader();
                while (reader.Read())
                {
                    liste.Add(new {label = reader["adsoyad"].ToString(), val = int.Parse(reader["id"].ToString())});
                }
                con.Close();
            }

            return Json(liste,JsonRequestBehavior.AllowGet);
        }

        public JsonResult PersonelTelefon(int personelid)
        {
            var tel = new ArrayList();
            using (
               var con =
                   new MySqlConnection(
                       "Server=172.41.40.85;Database=perkotek;Uid=root;Pwd=max;AllowZeroDateTime=True;Charset=latin5"))
            {
                var com =
                    new MySqlCommand(string.Format("select ev_telefon,cep_telefon from personel_kartlari where id={0}", personelid), con);
                if (con.State != ConnectionState.Open)
                    con.Open();
                var reader = com.ExecuteReader();
                while (reader.Read())
                {
                    tel.Add(new { Telefon1 = reader["ev_telefon"].ToString(), Telefon2 = reader["cep_telefon"].ToString() });
                }
                con.Close();
                return Json(tel, JsonRequestBehavior.AllowGet);
            }
            //return Json(0);
        }
    }
}