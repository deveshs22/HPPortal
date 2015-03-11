using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace HPPortal.Data.Models.Mapping
{
    public class PlacementTargetMap : EntityTypeConfiguration<PlacementTarget>
    {
        public PlacementTargetMap()
        {
            // Primary Key
            this.HasKey(t => t.PlacementTargetId);

            // Properties

            this.Ignore(t => t.PlacementProductDescription);

            this.Property(t => t.QuarterYear)
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("PlacementTarget");
            this.Property(t => t.PlacementTargetId).HasColumnName("PlacementTargetId");
            this.Property(t => t.Stores).HasColumnName("Stores");
            this.Property(t => t.Units).HasColumnName("Units");
            this.Property(t => t.PlacementProductId).HasColumnName("PlacementProductId");
            this.Property(t => t.PartnerId).HasColumnName("PartnerId");
            this.Property(t => t.QuarterYear).HasColumnName("QuarterYear");
            this.Property(t => t.CreatedDate).HasColumnName("CreatedDate");
            this.Property(t => t.CreatedUser).HasColumnName("CreatedUser");
            this.Property(t => t.ModifiedDate).HasColumnName("ModifiedDate");
            this.Property(t => t.ModifiedUser).HasColumnName("ModifiedUser");

            // Relationships
            this.HasRequired(t => t.Partner)
                .WithMany(t => t.PlacementTargets)
                .HasForeignKey(d => d.PartnerId);
            this.HasRequired(t => t.PlacementProduct)
                .WithMany(t => t.PlacementTargets)
                .HasForeignKey(d => d.PlacementProductId);

        }
    }
}
