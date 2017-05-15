using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Praksa.Models
{
    public class Administracija
    {
        // osnovni podaci o administraciji 
        public int MaticniBroj { get; set; }
        public string Ime { get; set; }
        public string Prezime { get; set; }
        public string AdresaStanovanja { get; set; }
        public string Mail { get; set; }
        public int Telefon { get; set; }
        public SmjerStudija SmjerStudija { get; set; }
        public int? GodinaStudija { get; set; }
        // korisničko ime i lozinka ???? neznam kaj s tim


    }
}