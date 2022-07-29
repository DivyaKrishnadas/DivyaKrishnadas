using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using ClinicManagementAPI.Models;

namespace ClinicManagementAPI.Controllers
{
    public class doctorExceedHourAPIController : ApiController
    {
        CLINICEntities conn = new CLINICEntities();

        #region "ViewDoctorExceedHour"

        //Requirement: Clinic Admins must be able to view which doctors have total appointments in a day exceeding 6 hours.
        
        //get details of doctors having appointments exceeding 6 hours in a day

        [HttpPost]
        public IHttpActionResult docexceedhour(DoctorExceedHourClass docexceed)
        {
            var viewresults = conn.sp_DocExceed6Hour(docexceed.Date, docexceed.User_Type).ToList();
            return Ok(viewresults);
        }

        #endregion
    }
}
