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
        private int servicioSeleccionado;
        private string placaR;

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

            
            int idVehiculo;
            Carro carro = new Carro();
            carro.placa = placa;
            carro.dueño = dueño;
            carro.marca = marca;

            LN.AgregarVehiculo(carro);

            placaR = carro.placa;
            var optionsValue = form["datos"];
            servicioSeleccionado = Int32.Parse(optionsValue);
            idVehiculo = obtenerIdVehiculoRegistrado();
            LN.asociarVehiculoServicio(servicioSeleccionado, idVehiculo);
            return RedirectToAction("Index/");

        }

        public int obtenerIdVehiculoRegistrado()
        {
            int plaquita = 0;
            Carro carro = new Carro();
            carro = LN.ConsultarVehiculo(placaR);
            plaquita = carro.id;
            return plaquita;
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