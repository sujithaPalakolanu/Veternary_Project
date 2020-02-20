using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using VeternaryProject.Models.EntityManager;
using VeternaryProject.Models.ViewModel;

namespace VeternaryProject.Controllers
{
    public class AppointmentController : Controller
    {
        // GET: Registration
        public ActionResult AppointmentRegistration()
        {
            return View();
        }

        [HttpPost]
        public ActionResult AppointmentRegistration(AppointmentModel appointment)
        {
            if(ModelState.IsValid)
            {
                AppointmentManager manager = new AppointmentManager();
                manager.addAppointmentDetails(appointment);
                //ModelState.ToString("Registered sucessfully");
                return RedirectToAction("Index","Home");
            }

            return View();
        }
    }
}