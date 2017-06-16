using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Praksa.Models
{
    [Table("poduzeca")]
    public class Poduzeca
    {
        [Key]
        [Display(Name = "ID")]
        public int id_poduzeca { get; set; }
        [Display(Name = "Naziv Poduzeća")]
        public string nazivPoduzeca { get; set; }
        [Display(Name = "Adresa")]
        public string adresa { get; set; }
        [Display(Name = "e-Mail")]
        public string mail { get; set; }
        [Display(Name = "URL")]
        public string url { get; set; }
        [Display(Name = "Telefon")]
        public string telefon { get; set; }
        [Display(Name = "Faks")]
        public string faks { get; set; }
        [Display(Name = "Odgovorna osoba")]
        public string odgovornaOsoba { get; set; }
        [Display(Name = "Kratki opis")]
        public string opisPoduzeca { get; set; }
        [Display(Name = "Broj Studenata")]
        public int brojStudenata { get; set; }
        [Display(Name = "Aktivno")]
        public bool aktivno { get; set; }
    }
}