using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Praksa.Models;
using System.IO;
using System.Web.Hosting;

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

        [Authorize(Roles = "student")]
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

        [Authorize (Roles = "student")]
        public ActionResult Zabiljeska(int? idpr) {
            Prakse p = db.prakse.Find(idpr);
            if(DateTime.Now.Date < p.datumPocetka || DateTime.Now.Date > p.datumKraja)
            {
                return Content("Zabilješke se mogu upisivati samo tokom trajanja prakse.");
            }
            Dnevnik d = null;
            try
            {
                DateTime n = DateTime.Now.Date;
                d = db.dnevnik.Single(x => x.idpraksa == idpr && x.datum == n);
            }
            catch
            {
                d = new Dnevnik()
                {
                    idpraksa = (int)idpr,
                    zabiljeska = "",
                    datum = DateTime.Now.Date
                };
                db.dnevnik.Add(d);
                db.SaveChanges();
            }
            return View(d);
        }

        [ValidateAntiForgeryToken]
        [HttpPost]
        public ActionResult Zabiljeska([Bind(Include = "iddnevnik,zabiljeska")] Dnevnik d)
        {
            Dnevnik n = db.dnevnik.Find(d.iddnevnik);
            n.zabiljeska = d.zabiljeska;
            db.Entry(n).State = EntityState.Modified;
            db.SaveChanges();
            return RedirectToAction("Edit");
        }

        [Authorize (Roles ="admin")]
        public ActionResult Biljeske(int? id)
        {
            Prakse p = db.prakse.Find(id);
            if (p == null)
            {
                return Content("Praksa nije pronađena.");
            }
            List<Dnevnik> lista = new List<Dnevnik>();
            foreach(Dnevnik d in db.dnevnik)
            {
                if (p.idpraksa == d.idpraksa)
                    lista.Add(d);
            }

            return View(lista);
        }

        public ActionResult Dokumenti(int? id) {
            Prakse p = db.prakse.Find(id);
            if (p == null)
            {
                return Content("Praksa nije pronađena.");
            }
            ViewBag.id = id;

            List<Dokument> lista = new List<Dokument>();
            foreach(Dokument d in db.dokumenti)
            {
                if(p.idpraksa == d.idprakse)
                {
                    lista.Add(d);
                }
            }
            return View(lista);
        }

        [HttpPost]
        public ActionResult Dokumenti(HttpPostedFileBase file,int id)
        {
            if (file.ContentLength > 0)
            {
                int godina = DateTime.Now.Year;
                var path = HostingEnvironment.ApplicationPhysicalPath + @"\Dokumenti\";
                if(DateTime.Now.Date<new DateTime(DateTime.Now.Year, 10, 1))
                {
                    if(!Directory.Exists(path + "godina_" + (godina - 1) + "_" + godina))
                        Directory.CreateDirectory(path + "godina_" + (godina - 1) + "_" + godina);
                    path += "godina_" + (godina - 1) + "_" + godina+"\\";

                }
                else if(DateTime.Now.Date > new DateTime(DateTime.Now.Year, 10, 1))
                {
                    if(!Directory.Exists(path + "godina_" + (godina + 1) + "_" + godina))
                        Directory.CreateDirectory(path + "godina_" + (godina + 1) + "_" + godina);
                    path += path + "godina_" + (godina + 1) + "_" + godina+"\\";
                }
            

                int x = db.dokumenti.Count(y => y.idprakse == id);
                x++;

                Dokument d = new Dokument();
                var fileName = Path.GetFileName(file.FileName);
                var fileEx = Path.GetExtension(file.FileName);
                d.dokument = fileName;
                path += "Dok_" + x + fileEx;
                file.SaveAs(path);
                d.put = path;
                d.idprakse = id;
                
                db.dokumenti.Add(d);
                db.SaveChanges();
            }
            return RedirectToAction("Dokumenti");
        }

        public FileResult Preuzmi(string put, string file) {
            FileInfo f = new FileInfo(put);
            return File(put, f.Extension, file);
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
