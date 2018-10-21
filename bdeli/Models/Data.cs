using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace bdeli.Models
{
    public class HomeMaster
    {
        public IQueryable<bD_Slide> slide { get; set; }
        public List<bD_Images> image { get; set; }

        public IQueryable<bD_Video> video { get; set; }
    }
}