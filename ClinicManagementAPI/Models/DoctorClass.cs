using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace ClinicManagementAPI.Models
{
    public class DoctorClass
    {
        #region "GetDoctorDetails"

        //get parameters for viewing doctor 
       
        [Required]
        public int Doctor_id { get; set; }

        [Required]
        public DateTime Appointment_Date { get; set; }

        [Required]
        public string User_Type { get; set; }


        #endregion
    }
}