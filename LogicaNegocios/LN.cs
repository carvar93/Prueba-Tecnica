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
