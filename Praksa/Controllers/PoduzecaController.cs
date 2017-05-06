using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Praksa.Models;


namespace Praksa.Controllers
{
    public class PoduzecaController : Controller
    {
        PoduzecaDB poduzeca = new PoduzecaDB();

        // GET: Poduzeca
        public ActionResult Index()
        {
            PoduzecaDB p = new PoduzecaDB();
            return View(p.vratiPoduzeca());
        }

        public ActionResult Predlozi()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Predlozi([Bind(Include = "nazivPoduzeca,adresa,mail,url,telefon,faks,odgovornaOsoba,kratkiOpisPoduzeca")] Poduzeca p)
        {
            poduzeca.dodaj(p);
            return RedirectToAction("Index");
        }
    }
}