using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Praksa.Models;

namespace Praksa.Controllers
{
    public class AdministracijaController : Controller
    {
        // GET: Administracija
        public ActionResult Popis()
        {
            var popis = new StudentDB();
            return View(popis.VratiListu());
        }
    }
}