using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using ClinicManagementAPI.Models;

namespace ClinicManagementAPI.Controllers
{
    public class loginAPIController : ApiController
    {
        CLINICEntities conn = new CLINICEntities();

        #region "LoginRegisteredUser"

        //Requiremnet:  Each account must be authenticated to be able to use the app

        //get logged in to the app and create session (insert into session table) if user is registered already

        [HttpPost]
        public IHttpActionResult login(SessionDataClass inssess)
        {
            try
            {
                
                var insresults = conn.sp_InsSession(inssess.Session_AppId,
                    inssess.Session_UserName, inssess.Session_StartTime, inssess.Session_LastActivityTime, inssess.Session_IsTerminated,
                    inssess.Session_IsKilled, inssess.Session_IPAddress, inssess.Session_HostName, inssess.Session_VersionNo,
                    inssess.Session_TransactionId, inssess.Session_CreatedBy, inssess.Session_CreatedTime, inssess.Session_LastUpdatedBy,
                    inssess.Session_LastUpdatedTime, inssess.Username, inssess.Password);
                conn.SaveChanges();
                //return Ok(insresults);
                return Ok<string>("Session Created");
            }
            catch (Exception ex)
            {
                throw ex;
            }
            }
        #endregion

    }
}
