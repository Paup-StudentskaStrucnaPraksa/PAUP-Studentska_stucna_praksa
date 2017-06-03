using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Praksa.Models;
using Praksa.Reports;
using System.IO;

namespace Praksa.Controllers
{
    [Authorize]
    public class PoduzecaController : Controller
    {
        private PraksaDbContext db = new PraksaDbContext();

        // GET: Poduzeca
        
        public ActionResult Index()
        {
            return View(db.poduzeca.ToList());
        }



        public ActionResult Prijavi(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Poduzeca poduzeca = db.poduzeca.Find(id);
            if (poduzeca == null)
            {
                return HttpNotFound();
            }
            return View(poduzeca);
        }

        [HttpPost]
        public ActionResult Prijavi()
        {
            return RedirectToAction("Index");
        }

        // GET: Poduzeca/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Poduzeca/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "nazivPoduzeca,adresa,mail,url,telefon,faks,odgovornaOsoba,opisPoduzeca")] Poduzeca poduzeca)
        {
            if (ModelState.IsValid)
            {
                db.poduzeca.Add(poduzeca);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(poduzeca);
        }
        [Authorize(Roles = ("admin"))]
        // GET: Poduzeca/Edit/5
        public ActionResult Edit(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Poduzeca poduzeca = db.poduzeca.Find(id);
            if (poduzeca == null)
            {
                return HttpNotFound();
            }
            return View(poduzeca);
        }

        // POST: Poduzeca/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [Authorize(Roles = ("admin"))]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "nazivPoduzeca,adresa,mail,url,telefon,faks,odgovornaOsoba,opisPoduzeca")] Poduzeca poduzeca)
        {
            if (ModelState.IsValid)
            {
                db.Entry(poduzeca).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(poduzeca);
        }

        // GET: Poduzeca/Delete/5
        [Authorize(Roles = ("admin"))]
        public ActionResult Delete(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Poduzeca poduzeca = db.poduzeca.Find(id);
            if (poduzeca == null)
            {
                return HttpNotFound();
            }
            return View(poduzeca);
        }

        // POST: Poduzeca/Delete/5
        [HttpPost, ActionName("Delete")]
        [Authorize(Roles = ("admin"))]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(string id)
        {
            Poduzeca poduzeca = db.poduzeca.Find(id);
            db.poduzeca.Remove(poduzeca);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        public FileStreamResult Ispisi()
        {
            // EF - lista sa filtriranjem
            var popis = from s in db.poduzeca select s;

            //ToList() je bitan ako želimo izbjeći deferred execution i lazy loading mehanizme EF-a
            AdministracijaReport r = new AdministracijaReport(popis.ToList());
            return new FileStreamResult(new MemoryStream(r.Podaci), "application/pdf");

            // ovako odmah ide download
            // return File(path, "application/pdf", "Popis_studenata.pdf");

            // ovako se otvara unutar preglednika
            // return File(path, "application/pdf");
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
