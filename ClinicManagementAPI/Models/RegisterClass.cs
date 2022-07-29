using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace ClinicManagementAPI.Models
{
    public class RegisterClass
    {
        #region "RegisterNewUser"

        //registration of all new users

        [Required]
        public int Account_id { get; set; }
        [Required]
        public string Account_Username { get; set; }
        [Required]
        public string Account_Password { get; set; }
        [Required]
        public string Account_Email { get; set; }
        public string Account_Mobile { get; set; }
        [Required]
        public string Account_Type { get; set; }
        public DateTime Account_CreatedAt { get; set; }
        [Required]
        public string Account_Status { get; set; }


        #endregion
    }
}