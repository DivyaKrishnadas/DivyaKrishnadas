using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using ClinicManagementAPI.Models;

namespace ClinicManagementAPI.Controllers
{
    public class PatDataController : ApiController
    {
        CLINICEntities conn = new CLINICEntities();

        #region "ViewPatientTable"

        //get all records of Patient table
        [HttpGet]
        public IHttpActionResult ViewPatTab()
        {
            var viewresults = conn.sp_ViewPatTab().ToList();
            return Ok(viewresults);
        }

        #endregion

        #region "ViewPatientById"

        //get details of a Patient by id
        [HttpGet]
        public IHttpActionResult ViewPatById(int id)
        {
            var viewpatresults = conn.sp_ViewPatById(id).ToList();
            return Ok(viewpatresults);
        }

        #endregion

        #region "InsertPatient"

        //insert data into Patient table
        [HttpPost]
        public IHttpActionResult InsertPat(PatDataClass inspat)
        {
            var insresults = conn.sp_InsPat(inspat.Patient_FirstName, inspat.Patient_LastName,
                inspat.Patient_Gender, inspat.Patient_Mobile, inspat.Patient_Email, inspat.Patient_Address);
            conn.SaveChanges();
            return Ok(insresults);
        }

        #endregion

        #region "UpdatePatient"

        //update record of Patient table
        [HttpPut]
        public IHttpActionResult UpdatePat(PatDataClass updpat)
        {
            var updresults = conn.sp_UpdPat(updpat.Patient_id, updpat.Patient_FirstName, updpat.Patient_LastName,
                updpat.Patient_Gender, updpat.Patient_Mobile, updpat.Patient_Email, updpat.Patient_Address);
            conn.SaveChanges();
            return Ok(updresults);
        }

        #endregion

        #region "DeletePatient"

        //delete record of Patient table
        [HttpDelete]
        public IHttpActionResult DeletePat(PatDataClass delpat)
        {
            var delresults = conn.sp_DelPat(delpat.Patient_id);
            conn.SaveChanges();
            return Ok(delresults);
        }

        #endregion
    }
}
