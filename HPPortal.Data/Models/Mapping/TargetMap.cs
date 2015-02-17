using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace HPPortal.Data.Models.Mapping
{
    public class TargetMap : EntityTypeConfiguration<Target>
    {
        public TargetMap()
        {
            // Primary Key
            this.HasKey(t => t.TargetId);

            // Properties
            

            this.Property(t => t.QuarterYear)
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("Target");
            this.Property(t => t.TargetId).HasColumnName("TargetId");
            this.Property(t => t.M1).HasColumnName("M1");
            this.Property(t => t.M2).HasColumnName("M2");
            this.Property(t => t.M3).HasColumnName("M3");
            this.Property(t => t.ProductId).HasColumnName("ProductId");
            this.Property(t => t.PartnerId).HasColumnName("PartnerId");
            this.Property(t => t.QuarterYear).HasColumnName("QuarterYear");

            // Relationships
            this.HasRequired(t => t.Partner)
                .WithMany(t => t.Targets)
                .HasForeignKey(d => d.PartnerId);
            this.HasRequired(t => t.Product)
                .WithMany(t => t.Targets)
                .HasForeignKey(d => d.ProductId);

        }
    }
}
