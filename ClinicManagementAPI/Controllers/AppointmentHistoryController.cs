using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using ClinicManagementAPI.Models;

namespace ClinicManagementAPI.Controllers
{
    public class apmtHistoryAPIController : ApiController
    {

        CLINICEntities conn = new CLINICEntities();

        #region "ViewDoctorSchedule"

        //get schedule of a doctor
        [HttpPost]
        public IHttpActionResult apmtHistory(ApppointmentHistoryClass viewhist)
        {
            var viewresults = conn.sp_ApmtHistory(viewhist.Patient_id, viewhist.User_Type).ToList();
            return Ok(viewresults);
        }

        #endregion
    }
}
