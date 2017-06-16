using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;


namespace Praksa.Models
{
    [Table("praksa")]
    public class Prakse
    {
        [Key]
        [Display(Name = "ID")]
        public int idpraksa { get; set; }
        [Display(Name = "Matični broj studenta")]
        public string MBRStudenta { get; set; }
        [Display(Name = "ID poduzeća")]
        public int id_poduzeca { get; set; }
        [Display(Name = "Završeno")]
        public bool zavrseno { get; set; }
        [Display(Name = "Zaključano")]
        public bool zakljucano { get; set; }
        [Display(Name = "Godina")]
        public int godina { get; set; }
        [Display(Name = "Datum početka")]
        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:yyyy-MM-dd}", ApplyFormatInEditMode = true)]
        public DateTime datumPocetka { get; set; }
        [Display(Name = "Datum završetka")]
        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:yyyy-MM-dd}", ApplyFormatInEditMode = true)]
        public DateTime datumKraja { get; set; }
    }
}