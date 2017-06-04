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
        public int idpraksa { get; set; }
        public string MBRStudenta { get; set; }
        public int id_poduzeca { get; set; }
        public bool zavrseno { get; set; }
        public bool zakljucano { get; set; }
        public int godina { get; set; }
    }
}