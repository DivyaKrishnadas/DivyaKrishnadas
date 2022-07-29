using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace ClinicManagementAPI.Models
{
    public class AppointmentClass
    {
        #region "GetAppointmentData"

        //get parameters for Appointment


        [Required]
        public int @Appointment_id { get; set; }
        [Required]
        public DateTime Appointment_Date { get; set; }
        [Required]
        public DateTime NewAppointment_Date { get; set; }
        [Required]
        public DateTime NewAppointment_Time { get; set; }
        [Required]
        public int Patient_Id { get; set; }
        [Required]
        public int Doctor_Id { get; set; }
        [Required]
        public string User_Type { get; set; }



        #endregion
    }
}
