using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using LogicaNegocios;
using Entidades;
namespace UI.Controllers
{
    public class ServicesController : Controller
    {
        // GET: Services
        public ActionResult Index()
        {
            //sirve para servicios
            //LavacContext s = new LavacContext();
            //List<Servicios> li = new List<Servicios>();
            //li = LN.ConsultarServicios();

            //return View(li.ToList());


            LavacContext s = new LavacContext();
            List<VehiculoxServicio> list = new List<VehiculoxServicio>();
            list= LN.ConsultarServiciosxVehiculos();

            return View(list.ToList());




        }
    }
}