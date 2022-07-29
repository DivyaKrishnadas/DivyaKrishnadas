using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace ClinicManagementAPI.Models
{
    public class SessionDataClass
    {
        #region "GetSessionData"

        //get parameters for Session table from frontend
        //for now it is hardcoded in the database

        [Required]
        public int Session_id { get; set; }
       
        public int Session_AccountId { get; set; }

        public string Session_AppId { get; set; }
     
        public string Session_UserName { get; set; }

        public DateTime Session_StartTime { get; set; }

        public DateTime Session_LastActivityTime { get; set; }

        public bool Session_IsTerminated { get; set; }
        
        public bool Session_IsKilled { get; set; }

        public string Session_IPAddress { get; set; }

        public string Session_HostName { get; set; }

        public int Session_VersionNo { get; set; }

        public string Session_TransactionId { get; set; }

        public string Session_CreatedBy { get; set; }

        public DateTime Session_CreatedTime { get; set; }

        public string Session_LastUpdatedBy { get; set; }

        public DateTime Session_LastUpdatedTime { get; set; }

        public int Outputpara { get; set; }

        [Required]
        public string Username { get; set; }

        [Required]
        public string Password { get; set; }


        #endregion
    }
}