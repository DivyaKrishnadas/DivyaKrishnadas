using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using ClinicManagementAPI.Models;

namespace ClinicManagementAPI.Controllers
{
    public class doctorScheduleAPIController : ApiController
    {
        CLINICEntities conn = new CLINICEntities();


        #region "ViewDoctorSchedule"

        //get schedule of a doctor
        [HttpPost]
        public IHttpActionResult docschedule(DoctorClass viewsched)
        {
            var viewresults = conn.sp_DoctorSchedule(viewsched.Doctor_id,viewsched.Appointment_Date,viewsched.User_Type).ToList();
            return Ok(viewresults);
        }

        #endregion

    }
}
