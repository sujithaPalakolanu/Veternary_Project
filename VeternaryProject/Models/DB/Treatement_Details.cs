//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace VeternaryProject.Models.DB
{
    using System;
    using System.Collections.Generic;
    
    public partial class Treatement_Details
    {
        public int ID { get; set; }
        public int PetID { get; set; }
        public System.DateTime TreatementDate { get; set; }
        public decimal TreatementCost { get; set; }
        public string Notes { get; set; }
    
        public virtual Pet_Details Pet_Details { get; set; }
    }
}