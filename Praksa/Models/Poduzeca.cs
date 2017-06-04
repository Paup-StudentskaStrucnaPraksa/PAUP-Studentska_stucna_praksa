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
        public int id_poduzeca { get; set; }
        public string nazivPoduzeca { get; set; }
        public string adresa { get; set; }
        public string mail { get; set; }
        public string url { get; set; }
        public string telefon { get; set; }
        public string faks { get; set; }
        public string odgovornaOsoba { get; set; }
        public string opisPoduzeca { get; set; }
        public int brojStudenata { get; set; }
        public bool aktivno { get; set; }
    }
}