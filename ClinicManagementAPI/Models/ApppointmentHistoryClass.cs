using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace ClinicManagementAPI.Models
{
    public class ApppointmentHistoryClass
    {
        #region "GetAppointmentHistory"

        //get appointment history of a patient

        [Required]
        public int Patient_id { get; set; }

        [Required]
        public string User_Type { get; set; }


        #endregion
    }
}