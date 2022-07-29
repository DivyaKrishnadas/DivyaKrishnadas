using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace ClinicManagementAPI.Models
{
    public class DoctorAvailabilityClass
    {
        #region "GetDoctorAvailabilityDetails"

        //get parameters for viewing doctor availability for a day

        public int Doctor_id { get; set; }

        public DateTime Start_Time { get; set; }

        public DateTime End_Time { get; set; }

        [Required]
        public DateTime Date { get; set; }

        [Required]
        public string User_Type { get; set; }

        [Required]
        public string Availability_Condition { get; set; }


        #endregion
    }
}