using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Carro
    {

        public int id { get; set; }

        [Required]
        [StringLength(30)]
        public string placa { get; set; }
        [Required]
        public string dueño { get; set; }

        [Required]
        [StringLength(50)]
        public string marca { get; set; }

    }
}
