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
        [Display (Name ="Matični broj")]
        public string maticniBroj { get; set; }
        [Display(Name = "Ime")]
        public string ime { get; set; }
        [Display(Name = "Prezime")]
        public string prezime { get; set; }
        [Display(Name = "Adresa stanovanja")]
        public string adresaStanovanja { get; set; }
        [Display(Name = "E-mail")]
        public string mail { get; set; }
        [Display(Name = "Telefon")]
        public string telefon { get; set; }
        [Display(Name = "Smjer studija")]
        public string smjerStudija { get; set; }
        [Display(Name = "Godina studija")]
        public int godinaStudija { get; set; }
        [Display(Name = "Korisničko ime")]
        public string korisnickoIme { get; set; }
        [Display(Name = "Lozinka")]
        public string lozinka { get; set; }

    }
}