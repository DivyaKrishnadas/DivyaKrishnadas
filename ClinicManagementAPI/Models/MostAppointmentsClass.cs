using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace ClinicManagementAPI.Models
{
    public class MostAppointmentsClass
    {
        #region "MostAppointmantsInADay"

        //get all parameters for viewing most appointments in a day
        
        [Required]
        public DateTime Date { get; set; }
        [Required]
        public string User_Type { get; set; }

        #endregion
    }
}