using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using ClinicManagementAPI.Models;

namespace ClinicManagementAPI.Controllers
{
    public class registerAPIController : ApiController
    {
        CLINICEntities conn = new CLINICEntities();


        #region "AccountRegistration"

        //Requirement:  Each account must be able to register

        //Register a new user account

        [HttpPost]
        public IHttpActionResult register(AcctDataClass insacct)
        {
            
            var insresults = conn.sp_registerAcct(insacct.Account_Username, insacct.Account_Password,
                insacct.Account_Email, insacct.Account_Mobile, insacct.Account_Type);
            conn.SaveChanges();
            //return Ok(insresults);
            return Ok<string>("Account Registered");
        }

        #endregion

    }
}
