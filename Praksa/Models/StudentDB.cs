using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Praksa.Models
{
    public class StudentDB
    {
       List<Student> lista = new List<Student>();
        private static bool inicijaliziranaLista = false;

        public StudentDB() {
            if (inicijaliziranaLista == false) {
                //inicijaliziranaLista = true;
                lista.Add(new Student
                {
                    maticniBroj = 00000000000000,
                    ime = "Jura",
                    prezime = "Jurić",
                    adresaStanovanja = "adresa stanovanja1",
                    mail="jura.juric@mail.com",
                    telefon="000000003",
                    //smjerStudija = SmjerStudija.Računarstvo,
                    //godinaStudija = 2,
                    korisnickoIme="Asdf",
                    lozinka="apw947et8"
                });
                lista.Add(new Student
                {
                    maticniBroj = 00000000000001,
                    ime = "Marko",
                    prezime = "Markić",
                    adresaStanovanja = "adresa stanovanja2",
                    mail = "marko.markic@mail.com",
                    telefon = "000000004",
                    //smjerStudija = SmjerStudija.Računarstvo,
                    //godinaStudija = 2,
                    korisnickoIme = "Fdsa",
                    lozinka = "se0h4t9ws"
                });
                lista.Add(new Student
                {
                    maticniBroj = 00000000000002,
                    ime = "Ana",
                    prezime = "Anić",
                    adresaStanovanja = "adresa stanovanja3",
                    mail = "ana.anic@mail.com",
                    telefon = "000000005",
                    //smjerStudija = SmjerStudija.Računarstvo,
                    //godinaStudija = 2,
                    korisnickoIme = "Sdfa",
                    lozinka = "qwve239"
                });
            }
        }

        public List<Student> VratiListu() {
            return lista;
        }


    }
}