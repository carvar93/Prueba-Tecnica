using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Entidades;
using LogicaNegocios;
namespace UI.Controllers
{
    public class HomeController : Controller
    {
        private int idSeleccionado;

        public ActionResult Index()
        {
            
            List<Servicios> ls = new List<Servicios>();
            ls = LN.cargarDropList();

            List<SelectListItem> items = ls.ConvertAll(d =>
            {
                return new SelectListItem()
                {
                    Text = d.Descripción.ToString(),
                    Value = d.ID_Servicio.ToString(),
                    Selected = false

                };
            });

            ViewBag.items = items;
          return View();
        }


        [HttpPost]
        public ActionResult create(string placa, string dueño, string marca, FormCollection form)
        {

            string p, d, m;
            p = placa;
            d = dueño;
            m = marca;


            var optionsValue = form["datos"];
            idSeleccionado = Int32.Parse(optionsValue);

            //TODO:
           // return RedirectToAction("Drop");
            //return View();
            //return Content("hola");

            return RedirectToAction("Index/");

        }




        [HttpPost]
        public ActionResult createServicio(string nombre, string monto)
        {
            LogicaNegocios.LN.AgregarServicios(nombre, Int32.Parse(monto));
            return RedirectToAction("About/");
           
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