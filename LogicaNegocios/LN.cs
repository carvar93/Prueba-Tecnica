using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AccesoDatos;
using Entidades;

namespace LogicaNegocios
{
    public class LN
    {

        public static List<Servicios> ConsultarServicios()
        {

            try
            {
                LavacContext s = new LavacContext();
                List<Servicios> li = new List<Servicios>();
                //s.Servicios.ToList();

                ////si es una lista List<Servicios> ConsultarServicios()
                //List<Servicios> li = s.Servicios.ToList();
                //return li;



               
                foreach (var item in s.Servicios)
                {
                    li.Add(item);
                }
                return li;





            }

            catch (Exception e)
            {
                throw e;
            }


        }


        public static List<Servicios> cargarDropList()
        {



            //List<Servicios> ls = new List<Servicios>();

            //using (var s = new LavacContext())
            //{
            //    ls = (from d in s.Servicios select new Servicios { ID_Servicio = d.ID_Servicio, Descripción = d.Descripción }).ToList();
            //}
            //return ls;


            LavacContext s = new LavacContext();
            List<Servicios> li = new List<Servicios>();
            //s.Servicios.ToList();

            ////si es una lista List<Servicios> ConsultarServicios()
            //List<Servicios> li = s.Servicios.ToList();
            //return li;




            foreach (var item in s.Servicios)
            {
                li.Add(item);
            }
            return li;


        }


        public static void AgregarServicios(string descripcion,int monto)
        {

            Servicios se = new Servicios();

            se.Descripción = descripcion;
            se.Monto = monto;


           

            try
            {
                using (var s = new LavacContext()) {
                    s.Servicios.Add(se);
                    s.SaveChanges();
                }
            }
            catch (Exception)
            {

                throw;
            }
            
         
        }


        }
}
