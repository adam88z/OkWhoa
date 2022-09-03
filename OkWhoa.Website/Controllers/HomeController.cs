using OkWhoa.Website.Models;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using OkWhoa.Data;

namespace OkWhoa.Website.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public ActionResult DeleteUser(int id)
        {
            using (OkWhoaSQLEntities okWhoaSQLEntities = new OkWhoaSQLEntities())
            {
                var userToDelete = okWhoaSQLEntities.Users.Where(x => x.ID == id).FirstOrDefault();

                okWhoaSQLEntities.Users.Attach(userToDelete);
                okWhoaSQLEntities.Users.Remove(userToDelete);
                okWhoaSQLEntities.SaveChanges();
            }

            return View();
        }

        // Main menu (#navmenu) buttons are defined here --------------------------------------
        public ActionResult Design()
        {
            ViewBag.Message = "Your Design page.";

            return PartialView("_Design");
        }
        public ActionResult Experience()
        {
            ViewBag.Message = "Your Experience page.";

            return PartialView("_Experience");
        }
        public ActionResult AboutMe()
        {
            ViewBag.Message = "Your AboutMe page.";

            return PartialView("_AboutMe");
        }
        public ActionResult Photography()
        {
            ViewBag.Message = "Photography page.";

            return PartialView("_Photography");
        }
        public ActionResult Login()
        {
            ViewBag.Message = "Login page.";

            LoginVM model = new LoginVM();
            using (OkWhoaSQLEntities okWhoaSQLEntities = new OkWhoaSQLEntities())
            {
                var users = okWhoaSQLEntities.Users;

                foreach (var item in users)
                {
                    OkWhoa.Website.Models.User user = new OkWhoa.Website.Models.User();
                    user.ID = item.ID;
                    user.FirstName = item.FirstName;
                    user.LastName = item.LastName;
                    user.Email = item.Email;
                    model.Users.Add(user);

                }
            }
            return PartialView("_Login", model);
        }

        [HttpPost]
        public ActionResult Login(LoginVM model)
        {
            using (OkWhoaSQLEntities okWhoaSQLEntities = new OkWhoaSQLEntities())
            {

                OkWhoa.Data.User user = new OkWhoa.Data.User();

                user.FirstName = model.FirstName;
                user.LastName = model.LastName;
                user.Email = model.Email;

                okWhoaSQLEntities.Users.Add(user);
                okWhoaSQLEntities.SaveChanges();
            }

            return View(model);
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        // AboutMe submenu buttons are defined here --------------------------------------

        public ActionResult MilitaryService()
        {
            ViewBag.Message = "MilitaryService page.";

            return PartialView("_MilitaryService");
        }


        public ActionResult AboutMeCats()
        {
            ViewBag.Message = "Cats";

            return PartialView("_AboutMeCats");
        }
        public ActionResult Music()
        {
            ViewBag.Message = "Music page.";

            return PartialView("_Music");
        }
        public ActionResult Video()
        {
            ViewBag.Message = "Video page.";

            return PartialView("_Video");
        }
        public ActionResult HomeImprovement()
        {
            ViewBag.Message = "HomeImprovement page.";

            return PartialView("_HomeImprovement");
        }
        public ActionResult MyBackyard()
        {
            ViewBag.Message = "MyBackyard page.";

            return PartialView("_MyBackyard");
        }
        public ActionResult Trees()
        {
            ViewBag.Message = "Trees page.";

            return PartialView("_Trees");
        }
        public ActionResult Yoink()
        {
            ViewBag.Message = "Yoink page.";

            return PartialView("_Yoink");
        }


        // Design submenu buttons are defined here --------------------------------------

        public ActionResult DesignPrint()
        {
            ViewBag.Message = "Print Design";

            return PartialView("_DesignPrint");
        }
        public ActionResult DesignBanners()
        {
            ViewBag.Message = "Banner Design";

            return PartialView("_DesignBanners");
        }
        public ActionResult DesignWebsites()
        {
            ViewBag.Message = "Website Design";

            return PartialView("_DesignWebsites");
        }


        // Experience submenu buttons are defined here -------------------------------------------


        public ActionResult ExperienceRollsRoyce()
        {
            ViewBag.Message = "ExperienceRollsRoyce";

            return PartialView("_ExperienceRollsRoyce");
        }

        public ActionResult ExperienceASCE()
        {
            ViewBag.Message = "ExperienceASCE";

            return PartialView("_ExperienceASCE");
        }

        public ActionResult ExperienceKeystone()
        {
            ViewBag.Message = "ExperienceKeystone";

            return PartialView("_ExperienceKeystone");
        }

        public ActionResult ExperienceBHP()
        {
            ViewBag.Message = "ExperienceBHP";

            return PartialView("_ExperienceBHP");
        }

        public ActionResult ExperienceAlcoa()
        {
            ViewBag.Message = "ExperienceAlcoa";

            return PartialView("_ExperienceAlcoa");
        }

        public ActionResult ExperienceUPMC()
        {
            ViewBag.Message = "ExperienceUPMC";

            return PartialView("_ExperienceUPMC");
        }

        public ActionResult ExperiencePitt()
        {
            ViewBag.Message = "ExperiencePitt";

            return PartialView("_ExperiencePitt");
        }

        public ActionResult ExperienceHTA()
        {
            ViewBag.Message = "ExperienceHTA";

            return PartialView("_ExperienceHTA");
        }

        public ActionResult ExperienceUnison()
        {
            ViewBag.Message = "ExperienceUnison";

            return PartialView("_ExperienceUnison");
        }

        public ActionResult ExperienceInterior()
        {
            ViewBag.Message = "ExperienceInterior";

            return PartialView("_ExperienceInterior");
        }

        public ActionResult ExperienceUSAF()
        {
            ViewBag.Message = "ExperienceUSAF";

            return PartialView("_ExperienceUSAF");
        }




    }
}