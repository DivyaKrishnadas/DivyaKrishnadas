using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using ClinicManagementAPI.Models;

namespace ClinicManagementAPI.Controllers
{

    public class DocDataController : ApiController
    {
        CLINICEntities conn = new CLINICEntities();

        #region "ViewDoctorTable"

        //get all records of doctor table
        [HttpGet]
        public IHttpActionResult ViewDocTab()
        {
            var viewresults = conn.sp_ViewDocTab().ToList();
            return Ok(viewresults);
        }

        #endregion

        #region "ViewDoctorById"

        //get details of a doctor by id
        [HttpGet]
        public IHttpActionResult ViewDocById(int id)
        {
            var viewdocresults = conn.sp_ViewDocById(id).ToList();
            return Ok(viewdocresults);
        }

        #endregion

        #region "InsertDoctor"

        //insert data into doctor table
        [HttpPost]
        public IHttpActionResult InsertDoc(DocDataClass insdoc)
        {
            var insresults = conn.sp_InsDoc(insdoc.Doctor_FirstName, insdoc.Doctor_LastName,
                insdoc.Doctor_Gender, insdoc.Doctor_Specialization, insdoc.Doctor_Mobile, insdoc.Doctor_Email, insdoc.Doctor_Address);
            conn.SaveChanges();
            return Ok(insresults);
        }

        #endregion

        #region "UpdateDoctor"

        //update record of doctor table
        [HttpPut]
        public IHttpActionResult UpdateDoc(DocDataClass upddoc)
        {
            var updresults = conn.sp_UpdDoc(upddoc.Doctor_id,upddoc.Doctor_FirstName, upddoc.Doctor_LastName,
                upddoc.Doctor_Gender, upddoc.Doctor_Specialization, upddoc.Doctor_Mobile, upddoc.Doctor_Email, upddoc.Doctor_Address);
            conn.SaveChanges();
            return Ok(updresults);
        }

        #endregion

        #region "DeleteDoctor"

        //delete record of doctor table
        [HttpDelete]
        public IHttpActionResult DeleteDoc(DocDataClass deldoc)
        {
            var delresults = conn.sp_DelDoc(deldoc.Doctor_id);
            conn.SaveChanges();
            return Ok(delresults);
        }

        #endregion


    }
}
