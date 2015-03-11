using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace HPPortal.Data.Models.Mapping
{
    public class PlacementProductMap : EntityTypeConfiguration<PlacementProduct>
    {
        public PlacementProductMap()
        {
            // Primary Key
            this.HasKey(t => t.PlacementProductId);

            // Properties
            this.Property(t => t.PlacementProductDescription)
                .HasMaxLength(200);

            
            // Table & Column Mappings
            this.ToTable("PlacementProduct");
            this.Property(t => t.PlacementProductId).HasColumnName("PlacementProductId");
            this.Property(t => t.PlacementProductDescription).HasColumnName("PlacementProductDescription");
            this.Property(t => t.Active).HasColumnName("Active");
        }
    }
}
