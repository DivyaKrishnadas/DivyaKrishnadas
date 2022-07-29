using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using ClinicManagementAPI.Models;

namespace ClinicManagementAPI.Controllers
{
    public class appointmentAPIController : ApiController
    {
        CLINICEntities conn = new CLINICEntities();

        #region "ViewAppointments"

        //get all records of Appointment table
        [HttpGet]
        public IHttpActionResult appointments()
        {
            var viewresults = conn.sp_ViewApmtTab().ToList();
            return Ok(viewresults);
        }

        #endregion

        #region "ViewAppointmentHistory"

        //Requirement: Patients must be able to see a history of their previous appointments
        //             Doctors must also be able to see the patient's appointment history

        //get appointment history of a particular patient 

        [HttpPost]
        public IHttpActionResult apmtHistory(AppointmentClass viewhist)
        {
            var viewresults = conn.sp_ApmtHistory(viewhist.Patient_Id, viewhist.User_Type).ToList();
            return Ok(viewresults);
        }

        #endregion

        #region "ViewAppointmentDetailsByDocOrPatId"

        //Requirement: Doctors must be able to see the appointment details
        //             the patient who booked the appointment is also able to see the appointment details

        //get appointment details of a particular doctor or patient by passing corresponding ids

        [HttpPost]
        public IHttpActionResult apmtDetailsById(AppointmentClass viewapmtdet)
        {
            var viewresults = conn.sp_ApmtDetails(viewapmtdet.Doctor_Id, viewapmtdet.Patient_Id, viewapmtdet.Appointment_Date,
                viewapmtdet.User_Type).ToList();
            return Ok(viewresults);
        }

        #endregion

        #region "BookAppointmentByPatient"

        //Requirement:Patients must be able to book an appointment with a doctor
        //              a doctor can have a maximum of 12 appointments
        //              a doctor can have a maximum total appointments time of 8 hours in a day

                //insert data into Appointment table
                [HttpPost]
        public IHttpActionResult book(AppointmentClass bookapmt)
        {
            var insresults = conn.sp_InsApmtByPat(bookapmt.Doctor_Id,bookapmt.NewAppointment_Date, bookapmt.NewAppointment_Time,
                 bookapmt.Patient_Id);
            conn.SaveChanges();
            string responsemsg = string.Empty;
            string results = insresults.ElementAt(0).ToString();
            if (results == "1") { responsemsg = "Current Slot is Booked, Please choose a different Slot"; }
            if (results == "2") { responsemsg = "Maximum Number of Appoinments Reached for this Doctor, Please choose a Different Date or Doctor"; }
            if (results == "3") { responsemsg = "Maximum Duration per Day Reached for this Doctor, Please choose a Different Date or Doctor"; }
            if (results == "4") { responsemsg = "Appointment Booked"; }


            return Ok(responsemsg);
        }

        #endregion

        #region "CancelAppointment"

        //Requirement: Doctors and Clinic admins can cancel appointments

        //cancel an appointment by passing the appointment id

        [HttpPost]
        public IHttpActionResult CancelApmt(AppointmentClass cancelapmt)
        {
            var updresults = conn.sp_CancelApmt(cancelapmt.Appointment_id,cancelapmt.User_Type);
            conn.SaveChanges();
            //return Ok(updresults);
            return Ok<string>("Appointment Cancelled");
        }
        #endregion
    }
}
