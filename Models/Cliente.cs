using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace RecodeAir.Models
{
    public class Cliente
    {
        [Key]
        public int IdCliente { get; set; }
        public string Nome { get; set; }
        public string Telefone { get; set; }
        public string Email { get; set; }
        public string Cpf { get; set; }

        public virtual ICollection<Pedido> Pedidos { get; set; }
    }
}
