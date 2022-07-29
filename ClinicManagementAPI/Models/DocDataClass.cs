using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace ClinicManagementAPI.Models
{
    public class DocDataClass
    {
        #region "GetDoctorData"

        //get parameters for Doctor table

        public int Doctor_id { get; set; }
        [Required]
        public string Doctor_FirstName { get; set; }
        [Required]
        public string Doctor_LastName { get; set; }
        [Required]
        public string Doctor_Gender { get; set; }
        public string Doctor_Specialization { get; set; }
        [Required]
        public string Doctor_Mobile { get; set; }
        [Required]
        public string Doctor_Email { get; set; }
        public string Doctor_Address { get; set; }


        #endregion
    }
}