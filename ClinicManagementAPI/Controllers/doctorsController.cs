using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using ClinicManagementAPI.Models;

namespace ClinicManagementAPI.Controllers
{
    public class doctorsAPIController : ApiController
    {
        CLINICEntities conn = new CLINICEntities();

        #region "ViewDoctorTable"

        //get all records of doctor table
        [HttpGet]
        public IHttpActionResult doctors()
        {
            var viewresults = conn.sp_ViewDocTab().ToList();
            return Ok(viewresults);
        }

        #endregion

        #region "ViewAvailSlotByDoctorId"

        //Requirement: Patients and doctors are able to see the doctors' available slots

        //get details of available slots for a given doctor id

        [HttpGet]
        public IHttpActionResult slots(int id)
        {
            List<sp_DocAvailableSlotsById_Result> availableslots = new List<sp_DocAvailableSlotsById_Result>();
            List<sp_DocAvailableSlotsById_Result> viewresults = conn.sp_DocAvailableSlotsById(id).ToList();

            #region "AvailSlotsLogicWithAppointments"
            if (viewresults.Count > 0)
            {

                for (int i = 0; i < viewresults.Count; i++)
                {
                    sp_DocAvailableSlotsById_Result obj1 = new sp_DocAvailableSlotsById_Result();
                    obj1.DOCTOR_FIRSTNAME = viewresults[i].DOCTOR_FIRSTNAME;
                    obj1.DOCTOR_GENDER = viewresults[i].DOCTOR_GENDER;
                    obj1.DOCTOR_LASTNAME = viewresults[i].DOCTOR_LASTNAME;
                    obj1.DOCTOR_SPECIALIZATION = viewresults[i].DOCTOR_SPECIALIZATION;
                    obj1.Appointment_Date = viewresults[i].Appointment_Date;
                    obj1.Appointment_Status = "free";

                    DateTime AppoinmentEnd = viewresults[i].Appointment_Time.AddMinutes(viewresults[i].Appointment_Duration);

                    int nextindex = i + 1;

                    if (nextindex < viewresults.Count)
                    {
                        int newDuration = (int)(viewresults[nextindex].Appointment_Time - AppoinmentEnd).TotalMinutes;
                        if (newDuration >= 15)
                        {
                            obj1.Appointment_Time = AppoinmentEnd;
                            obj1.Appointment_Duration = newDuration;
                        }
                    }
                    else if (nextindex == viewresults.Count)
                    {
                        obj1.Appointment_Duration = 15;
                        obj1.Appointment_Time = AppoinmentEnd;
                    }
                    availableslots.Add(obj1);
                }
            }
            #endregion

            #region "AvailSlotsLogicWithNoBooking"

            else if (viewresults.Count==0)
            {
                
                List<sp_ViewDocById_Result> viewdocresults = conn.sp_ViewDocById(id).ToList();
                sp_DocAvailableSlotsById_Result obj1 = new sp_DocAvailableSlotsById_Result();
                obj1.DOCTOR_FIRSTNAME = viewdocresults[0].Doctor_FirstName;
                obj1.DOCTOR_GENDER = viewdocresults[0].Doctor_Gender;
                obj1.DOCTOR_LASTNAME = viewdocresults[0].Doctor_LastName;
                obj1.DOCTOR_SPECIALIZATION = viewdocresults[0].Doctor_Specialization;
                obj1.Appointment_Date = DateTime.Today;
                obj1.Appointment_Time = new DateTime(DateTime.Now.Year, DateTime.Now.Month, DateTime.Now.Day, 10, 00, 000); ;      //to be edited
                obj1.Appointment_Duration = 480;
                obj1.Appointment_Status = "free";
                availableslots.Add(obj1);
            }
            #endregion

            return Ok(availableslots);
        }

        #endregion

        #region "ViewDoctorById"

        //get details of a doctor by doctorid

        [HttpGet]
        public IHttpActionResult doctors(int id)
        {
            var viewdocresults = conn.sp_ViewDocById(id).ToList();
            return Ok(viewdocresults);
        }

        #endregion

        #region "ViewDoctorSchedule"

        //Requirement:  Patients and Doctors and Clinic Admins are Able to see any given doctors schedule.
        //              Patient info must be hidden to Patient users but shown to doctors and Clinic Admins

        //get schedule of a doctor for a particular day

        [HttpPost]
        public IHttpActionResult docschedule(DoctorClass viewsched)
        {
            var viewresults = conn.sp_DoctorSchedule(viewsched.Doctor_id, viewsched.Appointment_Date, viewsched.User_Type).ToList();
            return Ok(viewresults);
        }

        #endregion
    }
}
