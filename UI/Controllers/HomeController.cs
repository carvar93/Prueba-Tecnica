using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace UI.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public void create(string placa, string dueño, string marca)
        {

            string p, d, m;
            p = placa;
            d = dueño;
            m = marca;
            //return View();
            //return Content("hola");
        }




        [HttpPost]
        public ActionResult createServicio(string nombre, string monto)
        {

            string p, d, m;
            p = nombre;
            d = monto;
            return Redirect("About/");
            //return View();
            //return Content("hola");
        }








        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}