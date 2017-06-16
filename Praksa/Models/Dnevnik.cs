using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Praksa.Models
{
    [Table("dnevnik")]
    public class Dnevnik
    {
        [Key]
        public int iddnevnik { get; set; }
        public int idpraksa { get; set; }
        [DataType(DataType.MultilineText)]
        public string zabiljeska { get; set; }
        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:yyyy-MM-dd}", ApplyFormatInEditMode = true)]
        public DateTime datum { get; set; }
    }
}