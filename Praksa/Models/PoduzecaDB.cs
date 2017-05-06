using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Praksa.Models
{
    public class PoduzecaDB
    {
        private static List<Poduzeca> lista = new List<Poduzeca>();
        private static bool provjera = false;
        public PoduzecaDB()
        {
            if (provjera == false)
            {
                provjera = true;
                lista.Add(new Poduzeca
                {
                    nazivPoduzeca = "Poduzece 1",
                    adresa = "adresa poduzeca 1",
                    mail = "poduzece1@mail.hr",
                    url = "www.poduzece1.hr",
                    telefon = "012345",
                    faks = "1902874",
                    odgovornaOsoba = "ImeODgovorneOsobe",
                    kratkiOpisPoduzeca = "Opis poduzeca"
                });

                lista.Add(new Poduzeca
                {
                    nazivPoduzeca = "Poduzece 2",
                    adresa = "adresa poduzeca 2",
                    mail = "poduzece2@mail.hr",
                    url = "www.poduzece2.hr",
                    telefon = "01212356",
                    faks = "190512",
                    odgovornaOsoba = "ImeODgovorneOsobe",
                    kratkiOpisPoduzeca = "Opis poduzeca"
                });

                lista.Add(new Poduzeca
                {
                    nazivPoduzeca = "Poduzece 3",
                    adresa = "adresa poduzeca 3",
                    mail = "poduzece3@mail.hr",
                    url = "www.poduzece3.hr",
                    telefon = "0122348",
                    faks = "1902874234",
                    odgovornaOsoba = "ImeODgovorneOsobe",
                    kratkiOpisPoduzeca = "Opis poduzeca"
                });
            }
        }

        public List<Poduzeca> vratiPoduzeca() {
            return lista;
        }

        public void dodaj(Poduzeca p) {
            lista.Add(p);
        }

    }
}