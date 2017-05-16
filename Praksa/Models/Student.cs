using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Praksa.Models
{
    [Table("student")]
    public class Student
    {
        [Key]
        public int maticniBroj { get; set; }
        public string ime { get; set; }
        public string prezime { get; set; }
        public string adresaStanovanja { get; set; }
        public string mail { get; set; }
        public string telefon { get; set; }
        public string smjerStudija { get; set; }
        public int godinaStudija { get; set; }
        public string korisnickoIme { get; set; }
        public string lozinka { get; set; }

    }
}