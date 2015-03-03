using System;
using System.Collections.Generic;

namespace HPPortal.Data.Models
{
    public partial class Product
    {
        public Product()
        {
            this.Sales = new List<Sale>();
            this.Targets = new List<Target>();
        }

        public int ProductId { get; set; }
        public string ProductDescription { get; set; }
        public string ProductCategory { get; set; }
        public string Type { get; set; }
        public int SortOrder { get; set; }
        public virtual ICollection<Sale> Sales { get; set; }
        public virtual ICollection<Target> Targets { get; set; }
    }
}
