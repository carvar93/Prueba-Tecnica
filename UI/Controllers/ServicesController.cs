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
           
            LavacContext s = new LavacContext();
            List<VehiculoxServicio> list = new List<VehiculoxServicio>();
            list= LN.ConsultarServiciosxVehiculos();
            return View(list.ToList());
            
        }
    }
}