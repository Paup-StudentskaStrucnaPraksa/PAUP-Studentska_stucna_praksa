using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Praksa.Models
{
    public class PraksePomocna
    {
        public int id { get; set; }
        [Display(Name = "Matični broj")]
        public string mbr { get; set; }
        [Display(Name = "Ime")]
        public string ime { get; set; }
        [Display(Name = "Prezime")]
        public string prezime { get; set; }
        [Display(Name = "Naziv poduzeća")]
        public string nazivPoduzeca { get; set; }
        [Display(Name = "Godina")]
        public int godina { get; set; }
        [Display(Name = "Datum početka")]
        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:yyyy-MM-dd}", ApplyFormatInEditMode = true)]
        public DateTime pocetak { get; set; }
        [Display(Name = "Datum završetka")]
        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:yyyy-MM-dd}", ApplyFormatInEditMode = true)]
        public DateTime kraj { get; set; }
        [Display(Name = "Zaključano")]
        public bool zakljucano { get; set; }
        [Display(Name = "Završeno")]
        public bool zavrseno { get; set; }
    }
}