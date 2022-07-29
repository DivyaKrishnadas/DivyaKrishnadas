using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using ClinicManagementAPI.Models;

namespace ClinicManagementAPI.Controllers
{
    public class ApmtDataController : ApiController
    {
        CLINICEntities conn = new CLINICEntities();

        #region "ViewAppointmentTable"

        //get all records of Appointment table
        [HttpGet]
        public IHttpActionResult ViewApmtTab()
        {
            var viewresults = conn.sp_ViewApmtTab().ToList();
            return Ok(viewresults);
        }

        #endregion

        #region "ViewAppointmentById"

        //get details of an Appointment by id
        [HttpGet]
        public IHttpActionResult ViewApmtById(int id)
        {
            var viewapmtresults = conn.sp_ViewApmtById(id).ToList();
            return Ok(viewapmtresults);
        }

        #endregion

        #region "InsertAppointment"

        //insert data into Appointment table
        [HttpPost]
        public IHttpActionResult InsertApmt(ApmtDataClass insapmt)
        {
            var insresults = conn.sp_InsApmt(insapmt.Appointment_Date, insapmt.Appointment_Time,insapmt.Appointment_Duration,
                insapmt.Appointment_Status, insapmt.Appointment_PatientId, insapmt.Appointment_DoctorId,
                insapmt.Appointment_CreatedBy, insapmt.Appointment_CreatedTime);
            conn.SaveChanges();
            return Ok(insresults);
        }

        #endregion

        #region "UpdateAppointment"

        //update record of Appointment table
        [HttpPut]
        public IHttpActionResult UpdateApmt(ApmtDataClass updapmt)
        {
            var updresults = conn.sp_UpdApmt(updapmt.Appointment_id, updapmt.Appointment_Date, updapmt.Appointment_Time,
                updapmt.Appointment_Duration,
                updapmt.Appointment_Status, updapmt.Appointment_PatientId, updapmt.Appointment_DoctorId,
                updapmt.Appointment_CreatedBy, updapmt.Appointment_CreatedTime);
            conn.SaveChanges();
            return Ok(updresults);
        }

        #endregion

        #region "DeleteAppointment"

        //delete record of Appointment table
        [HttpDelete]
        public IHttpActionResult DeleteApmt(ApmtDataClass delapmt)
        {
            var delresults = conn.sp_DelApmt(delapmt.Appointment_id);
            conn.SaveChanges();
            return Ok(delresults);
        }

        #endregion
    }
}
