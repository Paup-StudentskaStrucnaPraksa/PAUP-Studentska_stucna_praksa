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
        public int iddokumenti { get; set; }
        public string dokument { get; set; }
        public int idprakse { get; set; }
        public string put { get; set; }
    }
}