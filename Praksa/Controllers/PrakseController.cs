using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Praksa.Models;

namespace Praksa.Controllers
{
    public class PrakseController : Controller
    {
        private PraksaDbContext db = new PraksaDbContext();

        // GET: Prakse
        public ActionResult Index()
        {
            List <PraksePomocna> lista = new List<PraksePomocna>();

            foreach (Prakse p in db.prakse.ToList())
            {
                Student s = db.studenti.Find(p.MBRStudenta);
                Poduzeca pod = db.poduzeca.Find(p.id_poduzeca);
                PraksePomocna pp = new PraksePomocna
                {
                    mbr = s.maticniBroj,
                    ime = s.ime,
                    prezime = s.prezime,
                    nazivPoduzeca = pod.nazivPoduzeca,
                    godina = p.godina
                };
                lista.Add(pp);
            }
            return View(lista);
        }

     
        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
