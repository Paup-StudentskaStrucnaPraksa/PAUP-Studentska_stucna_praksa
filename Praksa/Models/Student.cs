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
        [Required(ErrorMessage = "{0} je obavezan podatak")]
        [StringLength(13, MinimumLength = 11, ErrorMessage = "{0} treba imati {1} znamenki")]
        public string maticniBroj { get; set; }
        [Required(ErrorMessage = "{0} je obavezan podatak")]
        [Display(Name = "Ime")]
        public string ime { get; set; }
        [Required(ErrorMessage = "{0} je obavezan podatak")]
        [Display(Name = "Prezime")]
        public string prezime { get; set; }
        [Display(Name = "Adresa stanovanja")]
        public string adresaStanovanja { get; set; }
        [Display(Name = "E-mail")]
        [Required(ErrorMessage = "{0} je obavezan podatak")]
        public string mail { get; set; }
        [Display(Name = "Telefon")]
        public string telefon { get; set; }
        [Display(Name = "Smjer studija")]
        [Required(ErrorMessage = "{0} je obavezan podatak")]
        public string smjerStudija { get; set; }
        [Required(ErrorMessage = "{0} je obavezan podatak")]
        [Display(Name = "Godina studija")]
        public int godinaStudija { get; set; }
        [Display(Name = "Lozinka")]
        [Required(ErrorMessage = "{0} je obavezan podatak")]
        public string lozinka { get; set; }
        public bool prijavljen { get; set; }

    }
}