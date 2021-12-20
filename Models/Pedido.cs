using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace RecodeAir.Models
{
    public class Pedido
    {
        [Key]
        public int IdPedido { get; set; }

        [ForeignKey("IdDestino")]
        public virtual int Destino { get; set; }
        [ForeignKey("IdCliente")]
        public virtual int Cliente { get; set; }

        public DateTime DataViagem { get; set; }
    }
}


