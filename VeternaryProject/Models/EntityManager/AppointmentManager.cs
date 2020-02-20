using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using VeternaryProject.Models.ViewModel;
using VeternaryProject.Models.DB;

namespace VeternaryProject.Models.EntityManager
{
    public class AppointmentManager
    {
        public void addAppointmentDetails(AppointmentModel appointmentModel)
        {
            var registeredOwnerID = GetRegistredOwnerId(appointmentModel.Owner_FirstName, appointmentModel.Owner_LastName, appointmentModel.MobileNumber);
            var registeredPetID = GetRegisterdPetID(appointmentModel.PetName, appointmentModel.BreedName, registeredOwnerID);

            using (VetDBEntities db = new VetDBEntities())
            {
                if(registeredOwnerID == 0)
                {
                    Communication_Address address = new Communication_Address();
                    address.AddressLane1 = appointmentModel.AddressLane1;
                    address.AdressLane2 = appointmentModel.AdressLane2;
                    address.City = appointmentModel.City;

                    db.Communication_Address.Add(address);
                    db.SaveChanges();
                    int addressID = address.ID;

                    Owner owner = new Owner();
                    owner.FirstName = appointmentModel.Owner_FirstName;
                    owner.LastName = appointmentModel.Owner_LastName;
                    owner.MobileNumber = appointmentModel.MobileNumber;
                    owner.AddressID = addressID;

                    db.Owners.Add(owner);
                    db.SaveChanges();
                    registeredOwnerID = owner.ID;
                }
               
                if(registeredPetID == 0)
                {
                    Pet_Details pet = new Pet_Details();
                    pet.PetName = appointmentModel.PetName;
                    pet.BreedName = appointmentModel.BreedName;
                    pet.DateOfBirth = appointmentModel.DateOfBirth;
                    pet.Pedegree = appointmentModel.Pedegree;

                    db.Pet_Details.Add(pet);
                    db.SaveChanges();
                    registeredPetID = pet.ID;
                }
                

                Treatement_Details treatment = new Treatement_Details();
                treatment.TreatementDate = appointmentModel.TreatementDate;
                treatment.TreatementCost = appointmentModel.TreatementCost;
                treatment.Notes = appointmentModel.Notes;
                treatment.PetID = registeredPetID;

                db.Treatement_Details.Add(treatment);
                db.SaveChanges();

                Pet_Owner petOwner = new Pet_Owner();
                petOwner.OwnerID = registeredOwnerID;
                petOwner.PetID = registeredPetID;

                db.Pet_Owner.Add(petOwner);
                db.SaveChanges();

            }
        }

        public int GetRegistredOwnerId(string FirstName, string lastName, string MobileNumber)
        {
            using (VetDBEntities db = new VetDBEntities())
            {
                var owner = db.Owners.Where(o => (o.FirstName.Equals(FirstName)) && (o.LastName.Equals(lastName)) && (o.MobileNumber.Equals(MobileNumber))).FirstOrDefault();
                if (owner != null)
                    return owner.ID;
                else
                    return 0;
            }
        }

        public int GetRegisterdPetID(string petName, string breed, int ownerId)
        {
            using (VetDBEntities db = new VetDBEntities())
            {
                if (ownerId != 0)
                {
                    var pet = db.Pet_Details.Where(p => (p.PetName.Equals(petName)) && (p.BreedName.Equals(breed))).FirstOrDefault();
                    if (pet != null)
                        return pet.ID;
                }
                return 0;
            }
        }
    }
}