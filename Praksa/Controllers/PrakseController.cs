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
    [Authorize]
    public class PrakseController : Controller
    {
        private PraksaDbContext db = new PraksaDbContext();

        // GET: Prakse
        [Authorize(Roles = "admin")]
        public ActionResult Index()
        {
            List <PraksePomocna> lista = new List<PraksePomocna>();

            foreach (Prakse p in db.prakse.ToList())
            {
                Student s = db.studenti.Find(p.MBRStudenta);
                Poduzeca pod = db.poduzeca.Find(p.id_poduzeca);
                PraksePomocna pp = new PraksePomocna
                {
                    id = p.idpraksa,
                    mbr = s.maticniBroj,
                    ime = s.ime,
                    prezime = s.prezime,
                    nazivPoduzeca = pod.nazivPoduzeca,
                    godina = p.godina,
                    pocetak = p.datumPocetka,
                    kraj = p.datumKraja,
                    zakljucano = p.zakljucano,
                    zavrseno = p.zavrseno   
                };
                lista.Add(pp);
            }
            return View(lista);
        }

        [Authorize (Roles = "admin")]
        public ActionResult Zakljucaj(int? id)
        {
            Prakse p = db.prakse.Find(id);
            if (p == null)
                return HttpNotFound();
            if (p.zakljucano)
                p.zakljucano = false;
            else
                p.zakljucano = true;
            db.Entry(p).State = EntityState.Modified;
            db.SaveChanges();

            return RedirectToAction("Index");
        }

        [Authorize (Roles = "student")]
        public ActionResult Edit()
        {
            Student s = db.studenti.Single(x => x.mail==User.Identity.Name.ToString());
            Prakse p;
            try { db.prakse.Single(x => x.MBRStudenta == s.maticniBroj && x.godina == DateTime.Now.Year); } catch
            {
                return RedirectToAction("NemaPrakse");
            }
            p = db.prakse.Single(x => x.MBRStudenta == s.maticniBroj && x.godina == DateTime.Now.Year);
            if (p == null)
                return HttpNotFound();
            Poduzeca pod = db.poduzeca.Find(p.id_poduzeca);
            PraksePomocna pp = new PraksePomocna
            {
                id = p.idpraksa,
                mbr = s.maticniBroj,
                ime = s.ime,
                prezime = s.prezime,
                nazivPoduzeca = pod.nazivPoduzeca,
                godina = p.godina,
                pocetak = p.datumPocetka,
                kraj = p.datumKraja,
                zakljucano = p.zakljucano,
                zavrseno = p.zavrseno
            };
            return View(pp);
        }

        [ValidateAntiForgeryToken]
        [HttpPost]
        public ActionResult Edit([Bind(Include = "id,pocetak,kraj")] PraksePomocna praksa)
        {
            Prakse p = db.prakse.Find(praksa.id);
            p.datumPocetka = praksa.pocetak;
            p.datumKraja = praksa.kraj;
            if (ModelState.IsValid)
            {
                db.Entry(p).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Edit");
            }
            return View(praksa);
        }

        public ActionResult Odjavi(int? id)
        {
            Prakse p = db.prakse.Find(id);
            db.prakse.Remove(p);
            db.SaveChanges();

            return RedirectToAction("Edit");
        }

        public ActionResult NemaPrakse() {
            return View();
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
