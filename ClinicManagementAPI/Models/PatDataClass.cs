using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace ClinicManagementAPI.Models
{
    public class PatDataClass
    {

        #region "GetPatientData"

        //get parameters for Patient table

        public int Patient_id { get; set; }
        [Required]
        public string Patient_FirstName { get; set; }
        [Required]
        public string Patient_LastName { get; set; }
        [Required]
        public string Patient_Gender { get; set; }
        [Required]
        public string Patient_Mobile { get; set; }
        [Required]
        public string Patient_Email { get; set; }
        public string Patient_Address { get; set; }
        

        #endregion
    }
}