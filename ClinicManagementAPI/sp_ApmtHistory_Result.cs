//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ClinicManagementAPI
{
    using System;
    
    public partial class sp_ApmtHistory_Result
    {
        public System.DateTime Appointment_Date { get; set; }
        public System.DateTime Appointment_Time { get; set; }
        public int Appointment_Duration { get; set; }
        public string Appointment_Status { get; set; }
        public string DOCTOR_FIRSTNAME { get; set; }
        public string DOCTOR_LASTNAME { get; set; }
        public string DOCTOR_GENDER { get; set; }
        public string DOCTOR_SPECIALIZATION { get; set; }
        public string PATIENT_FIRSTNAME { get; set; }
        public string PATIENT_LASTNAME { get; set; }
        public string PATIENT_GENDER { get; set; }
        public string PATIENT_MOBILE { get; set; }
    }
}
