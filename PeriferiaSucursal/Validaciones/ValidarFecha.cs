using System;
using System.ComponentModel.DataAnnotations;

namespace PeriferiaSucursal.Models
{
    public class ValidarFecha
    {
        public static ValidationResult ValidarFechas(DateTime date)
        {
           
                return date <= DateTime.Now 
                ? new ValidationResult("Fecha menor a la Actual")
                : ValidationResult.Success;
        }
    }
}