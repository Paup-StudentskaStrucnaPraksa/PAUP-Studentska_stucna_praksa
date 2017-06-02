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
    public class PoduzecaController : Controller
    {
        private PraksaDbContext db = new PraksaDbContext();

        // GET: Poduzeca
        public ActionResult Index()
        {
            return View(db.poduzeca.ToList());
        }

        // GET: Poduzeca/Details/5
        public ActionResult Details(string id)
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
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(string id)
        {
            Poduzeca poduzeca = db.poduzeca.Find(id);
            db.poduzeca.Remove(poduzeca);
            db.SaveChanges();
            return RedirectToAction("Index");
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
