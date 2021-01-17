using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using LogicaNegocios;
namespace UI.Controllers
{
    public class ServicesController : Controller
    {
        // GET: Services
        public ActionResult Index()
        {

            LavacContext s = new LavacContext();
            List<Servicios> li = new List<Servicios>();
            li = LN.ConsultarServicios();

            //IEnumerable<Servicios> _Book_IE = li as IEnumerable<Servicios>;


           








            return View(li.ToList());
        }
    }
}