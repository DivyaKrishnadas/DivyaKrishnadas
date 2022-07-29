using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using ClinicManagementAPI.Models;

namespace ClinicManagementAPI.Controllers
{
    public class AcctDataController : ApiController
    {
        CLINICEntities conn = new CLINICEntities();

        #region "ViewAccountTable"

        //get all records of Account table
        [HttpGet]
        public IHttpActionResult ViewAcctTab()
        {
            var viewresults = conn.sp_ViewAcctTab().ToList();
            return Ok(viewresults);
        }

        #endregion

        #region "ViewAccountById"

        //get details of an Account by id
        [HttpGet]
        public IHttpActionResult ViewAcctById(int id)
        {
            var viewacctresults = conn.sp_ViewAcctById(id).ToList();
            return Ok(viewacctresults);
        }

        #endregion
        #region "InsertAccount"

        //insert data into Account table
        [HttpPost]
        public IHttpActionResult InsertAcct(AcctDataClass insacct)
        {
            var insresults = conn.sp_InsAcct(insacct.Account_Username, insacct.Account_Password,
                insacct.Account_Email, insacct.Account_Mobile, insacct.Account_Type,insacct.Account_Status);
            conn.SaveChanges();
            return Ok(insresults);
        }

        #endregion

        #region "UpdateAccount"

        //update record of Account table
        [HttpPut]
        public IHttpActionResult UpdateAcct(AcctDataClass updacct)
        {
            var updresults = conn.sp_UpdAcct(updacct.Account_id, updacct.Account_Username, updacct.Account_Password,
                updacct.Account_Email, updacct.Account_Mobile, updacct.Account_Type, updacct.Account_CreatedAt,updacct.Account_Status);
            conn.SaveChanges();
            return Ok(updresults);
        }

        #endregion

        #region "DeleteAccount"

        //delete record of Account table
        [HttpDelete]
        public IHttpActionResult DeleteAcct(AcctDataClass delacct)
        {
            var delresults = conn.sp_DelAcct(delacct.Account_id);
            conn.SaveChanges();
            return Ok(delresults);
        }

        #endregion
    }
}
