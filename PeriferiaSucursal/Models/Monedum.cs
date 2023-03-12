using System;
using System.Collections.Generic;

#nullable disable

namespace PeriferiaSucursal.Models
{
    public partial class Monedum
    {
        public Monedum()
        {
            Sucursales = new HashSet<Sucursale>();
        }

        public int Id { get; set; }
        public string Codigo { get; set; }
        public string Moneda { get; set; }
        public bool? Enable { get; set; }

        public virtual ICollection<Sucursale> Sucursales { get; set; }
    }
}
