using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace VeternaryProject.Models.ViewModel
{
    public class AppointmentModel
    {
        [Key]
        [Required(ErrorMessage = "First name is mandatory")]
        [Display(Name = "First Name")]
        public string Owner_FirstName { get; set; }

        [Required(ErrorMessage = "Last name is mandatory")]
        [Display(Name = "Last Name")]
        public string Owner_LastName { get; set; }

        [Required(ErrorMessage = "Mobile number is mandatory")]
        [Display(Name = "Mobile number")]
        public string MobileNumber { get; set; }

        [Required(ErrorMessage = "Address Lane 1 is mandatory")]
        [Display(Name = "Address Lane1")]
        public string AddressLane1 { get; set; }

        [Display(Name = "Address Lane2")]
        public string AdressLane2 { get; set; }

        [Required(ErrorMessage = "City is mandatory")]
        [Display(Name = "City")]
        public string City { get; set; }

        [Required(ErrorMessage = "Pet name is mandatory")]
        [Display(Name = "Pet Name")]
        public string PetName { get; set; }

        [Required(ErrorMessage = "Breed name is mandatory")]
        [Display(Name = "Breed Name")]
        public string BreedName { get; set; }

        public Nullable<bool> Pedegree { get; set; }

        [Display(Name = "Date of Birth")]
        [DataType(DataType.Date)]
        public System.DateTime DateOfBirth { get; set; }

        [Required(ErrorMessage = "Treatment date is mandatory")]
        [Display(Name = "Treatment Date")]
        [DataType(DataType.Date)]
        public System.DateTime TreatementDate { get; set; }

        [Required(ErrorMessage = "Treatment cost is mandatory")]
        [Display(Name = "Treatment Cost")]
        public decimal TreatementCost { get; set; }

        public string Notes { get; set; }
    }
}