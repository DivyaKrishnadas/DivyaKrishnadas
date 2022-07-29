using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace ClinicManagementAPI.Models
{
    public class ApmtDataClass
    {
        #region "GetAppointmentData"

        //get parameters for Appointment table

        [Required]
        public int Appointment_id { get; set; }
        [Required]
        public DateTime Appointment_Date { get; set; }
        [Required]
        public DateTime Appointment_Time { get; set; }
        public int Appointment_Duration { get; set; }
        [Required]
        public string Appointment_Status { get; set; }
        [Required]
        public int Appointment_PatientId { get; set; }
        [Required]
        public int Appointment_DoctorId { get; set; }

        public string Appointment_CreatedBy { get; set; }

        public DateTime Appointment_CreatedTime { get; set; }



        #endregion
    }   
}