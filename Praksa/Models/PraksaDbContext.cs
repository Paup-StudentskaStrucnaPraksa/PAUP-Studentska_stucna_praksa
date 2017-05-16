using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace Praksa.Models
{
    public class PraksaDbContext : DbContext
    {
        public DbSet<Poduzeca> poduzeca { get; set; }
        public DbSet<Student> studenti { get; set; }
    }
}