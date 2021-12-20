using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace RecodeAir.Models
{
    public class Destino
    {
        [Key]
        public int IdDestino { get; set; }
        public string NomeDestino { get; set; }
        public string Descricao { get; set; }
        public decimal Preco { get; set; }
        public string Imagem { get; set; }

        public virtual ICollection<Pedido> Pedidos { get; set; }
    }
}
