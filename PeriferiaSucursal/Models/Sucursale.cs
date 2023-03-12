using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

#nullable disable

namespace PeriferiaSucursal.Models
{
    public partial class Sucursale
    {
        public int Id { get; set; }
        [Required]
        public int Codigo { get; set; }
        [Required]
        public string Descripcion { get; set; }
        [Required]
        public string Direccion { get; set; }
        [Required]
        public string Identificacion { get; set; }
        [CustomValidation(typeof(ValidarFecha),
        nameof(ValidarFecha.ValidarFechas))]
        public DateTime FechasCreación { get; set; }
        public int IdMoneda { get; set; }

        public virtual Monedum IdMonedaNavigation { get; set; }
    }
}
