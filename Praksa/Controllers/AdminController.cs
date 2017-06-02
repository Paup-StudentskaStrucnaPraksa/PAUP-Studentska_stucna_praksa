using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Praksa.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
namespace Praksa.Controllers
{
    public class AdminController : Controller
    {
        // GET: Admin
        public ContentResult Index()
        {
            if (User.Identity.IsAuthenticated)
            {
                return Content("Dobrodosli " + User.Identity.Name);
            }
            else
            {
                return Content("Dobrodosli gost");
            }
        }

        public ContentResult DodajRolu(string id)
        {
            //rucno dodamo novu rolu
            using (ApplicationDbContext context = new ApplicationDbContext())
            {
                var manager = new RoleManager<IdentityRole>(
                    new RoleStore<IdentityRole>(context));
                var result = manager.Create(new IdentityRole(id));
                if (result.Succeeded)
                    return Content("Rola dodana");
                else
                    return Content("Greska prilikom kreiranja");
            }

        }

        public ContentResult PridruziRolu(string rola, string korisnik)
        {
            using (ApplicationDbContext context = new ApplicationDbContext())
            {
                var store = new UserStore<ApplicationUser>(context);
                var manager = new UserManager<ApplicationUser>(store);
                string userid = context.Users.FirstOrDefault(s => s.UserName == korisnik).Id;
                var result = manager.AddToRole(userid, rola);
                if (result.Succeeded)
                    return Content("Rola " + rola + " dodana " + korisnik);
                else
                    return Content("Greska prilikom dodjeljivanja role");
            }
        }
    }
}