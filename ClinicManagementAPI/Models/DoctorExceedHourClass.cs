using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace ClinicManagementAPI.Models
{
    public class DoctorExceedHourClass
    {
        #region "GetDoctorExceed6Hour"

        //get parameters for viewing doctors exceeding 6 hours

        
        [Required]
        public DateTime Date { get; set; }
        [Required]
        public string User_Type { get; set; }

        #endregion

    }
}