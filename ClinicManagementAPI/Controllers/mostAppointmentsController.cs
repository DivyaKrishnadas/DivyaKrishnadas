using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using ClinicManagementAPI.Models;

namespace ClinicManagementAPI.Controllers
{
    public class mostAppointmentsAPIController : ApiController
    {
        CLINICEntities conn = new CLINICEntities();

        #region "ViewMostAppointments"

        //Requirement: Clinic Admins must be able to see which doctors have the most appointments in a given day
        //             (Bonus) viewing a sorted list of doctors who are

        //to see which doctors have the most appointments in a given day and return a sorted list of the same

        [HttpPost]
        public IHttpActionResult mostappointment(MostAppointmentsClass mostapmt)
        {
            var viewresults = conn.sp_MaxDocAppointments(mostapmt.Date, mostapmt.User_Type).ToList();
            return Ok(viewresults);
        }

        #endregion
    }
}
