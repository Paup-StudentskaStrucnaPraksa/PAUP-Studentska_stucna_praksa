using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Praksa.Models
{
    [Table("dokumenti")]
    public class Dokument
    {
        [Key]
        [Display(Name = "ID")]
        public int iddokumenti { get; set; }
        [Display(Name = "Dokument")]
        public string dokument { get; set; }
        [Display(Name = "ID prakse")]
        public int idprakse { get; set; }
        public string put { get; set; }
    }
}