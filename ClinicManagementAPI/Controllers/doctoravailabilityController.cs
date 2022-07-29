using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using ClinicManagementAPI.Models;

namespace ClinicManagementAPI.Controllers
{
    public class doctoravailabilityAPIController : ApiController
    {
        CLINICEntities conn = new CLINICEntities();

        #region "ViewDoctorAvailability"

        //Requirement: Clinic Admins must able to view the the availability of ALL doctors in the clinic
        //             Patients are able to see the list of all available doctors

        //get availability details of doctors in a particular day according to a Availability_Condition para 
        //Availability_Condition takes 2 values 'current' and 'slot'
        //'current' => checks availability of current date and time
        //'slot' => checks availibility within a given StartTime and EndTime

        [HttpPost]
        public IHttpActionResult docavaiability(DoctorAvailabilityClass docavail)
        {
            var viewresults = conn.sp_DocAvailability(docavail.Doctor_id,docavail.Start_Time, docavail.End_Time, docavail.Date,
                docavail.User_Type,docavail.Availability_Condition).ToList();
            return Ok(viewresults);
        }

        #endregion
    }
}
