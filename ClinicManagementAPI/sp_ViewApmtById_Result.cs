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
    
    public partial class sp_ViewApmtById_Result
    {
        public int Appointment_id { get; set; }
        public System.DateTime Appointment_Date { get; set; }
        public System.DateTime Appointment_Time { get; set; }
        public int Appointment_Duration { get; set; }
        public string Appointment_Status { get; set; }
        public int Appointment_PatientId { get; set; }
        public int Appointment_DoctorId { get; set; }
        public string Appointment_CreatedBy { get; set; }
        public Nullable<System.DateTime> Appointment_CreatedTime { get; set; }
    }
}
