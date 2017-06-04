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
    [Authorize(Roles = "admin")]
    public class AdministracijaController : Controller
    {
        private PraksaDbContext db = new PraksaDbContext();

        // GET: Administracija
        public ActionResult Index()
        {
            return View(db.studenti.ToList());
        }


        // GET: Administracija/Edit/5
        public ActionResult Edit(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Student student = db.studenti.Find(id);
            if (student == null)
            {
                return HttpNotFound();
            }
            return View(student);
        }

        // POST: Administracija/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "maticniBroj,ime,prezime,adresaStanovanja,mail,telefon,smjerStudija,godinaStudija,korisnickoIme,lozinka")] Student student)
        {
            if (ModelState.IsValid)
            {
                db.Entry(student).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(student);
        }

        public ActionResult Delete(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Student student = db.studenti.Find(id);
            if (student == null)
            {
                return HttpNotFound();
            }
            return View(student);
        }

        // POST: Students/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(string id)
        {
            Student student = db.studenti.Find(id);
            db.studenti.Remove(student);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        public FileStreamResult Ispisi()
        {
            // EF - lista sa filtriranjem
            var popis = from s in db.studenti select s;

            //ToList() je bitan ako želimo izbjeći deferred execution i lazy loading mehanizme EF-a
            StudentiReport r = new StudentiReport(popis.ToList());
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