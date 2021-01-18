using System;
using System.Collections.Generic;
using System.Data;
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
        


        public static List<VehiculoxServicio> ConsultarServiciosxVehiculos()
        {
             LavacContext s = new LavacContext();
            List<VehiculoxServicio> listavehiculoxServicio = new List<VehiculoxServicio>();
            List<object> milista = new List<object>();
           //t1 servicios  a
            //t2 vxs        h
            //t3  vehi      c
            var result = from t1 in s.Servicios
                  join t2 in s.Vehiculo_Servicio on t1.ID_Servicio equals t2.ID_Servicio
                  join t3 in s.Vehiculo on t2.ID_Vehiculo equals t3.ID_Vehiculo  
                  select new
                  {
                      t1.ID_Servicio,
                      t1.Descripción,
                      t1.Monto,
                      t3.Placa
                  };
            
            foreach (var dto in result)
            {
                VehiculoxServicio vxs = new VehiculoxServicio();
                vxs.IdServicio = dto.ID_Servicio;
                vxs.Descripción = dto.Descripción;
                vxs.Monto = dto.Monto;
                vxs.Placa = dto.Placa;

                listavehiculoxServicio.Add(vxs);
            }
            
            return listavehiculoxServicio;
           
        }



        public static Carro ConsultarVehiculo(string placa)
        {
            try
            {
                LavacContext s = new LavacContext();
                List<Vehiculo> vehiculo = new List<Vehiculo>();
                List<Carro> c = new List<Carro>();

                Carro carrito = new Carro();
                Vehiculo v = new Vehiculo();
                vehiculo = s.Vehiculo.Where(a => a.Placa == placa).ToList();


                foreach (var dto in vehiculo)
                {
                    carrito.id = dto.ID_Vehiculo;
                }

                
                return carrito;

            }

            catch (Exception e)
            {
                throw e;
            }


        }


        public static void asociarVehiculoServicio(int idServicio,int idVehiculo) {
            Vehiculo_Servicio vs = new Vehiculo_Servicio();
            vs.ID_Servicio = idServicio;
            vs.ID_Vehiculo = idVehiculo;
           
            try
            {
                using (var s = new LavacContext())
                {
                    s.Vehiculo_Servicio.Add(vs);
                    s.SaveChanges();
                }
            }
            catch (Exception)
            {

                throw;
            }

        }



        public static List<Servicios> cargarDropList()
        {

            
            LavacContext s = new LavacContext();
            List<Servicios> li = new List<Servicios>();
           
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


        public static void AgregarVehiculo(Carro carro)
        {

            Vehiculo vehiculo = new Vehiculo();
            vehiculo.Placa = carro.placa;
            vehiculo.Dueño = carro.dueño;
            vehiculo.Marca = carro.marca;
            
            try
            {
                using (var s = new LavacContext())
                {
                    s.Vehiculo.Add(vehiculo);
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
