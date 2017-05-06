using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Praksa.Models
{
    public class Student
    {
        public int maticniBroj { get; set; }
        public string ime { get; set; }
        public string prezime { get; set; }
        public string adresaStanovanja { get; set; }
        public string mail { get; set; }
        public int telefon { get; set; }
        public SmjerStudija smjerStudija { get; set; }
        public int? godinaStudija { get; set; }
        public string korisnickoIme { get; set; }
        public string lozinka { get; set; }

    }
}