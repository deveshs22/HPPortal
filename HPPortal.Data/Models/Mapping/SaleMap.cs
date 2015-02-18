using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace HPPortal.Data.Models.Mapping
{
    public class SaleMap : EntityTypeConfiguration<Sale>
    {
        public SaleMap()
        {
            // Primary Key
            this.HasKey(t => new { t.SaleId, t.M1, t.M2, t.M3 });

            // Properties
            this.Property(t => t.SaleId)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity);

            this.Property(t => t.M1)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.M2)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.M3)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.QuarterYear)
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("Sale");
            this.Property(t => t.SaleId).HasColumnName("SaleId");
            this.Property(t => t.M1).HasColumnName("M1");
            this.Property(t => t.M2).HasColumnName("M2");
            this.Property(t => t.M3).HasColumnName("M3");
            this.Property(t => t.ProductId).HasColumnName("ProductId");
            this.Property(t => t.PartnerId).HasColumnName("PartnerId");
            this.Property(t => t.QuarterYear).HasColumnName("QuarterYear");

            // Relationships
            this.HasRequired(t => t.Partner)
                .WithMany(t => t.Sales)
                .HasForeignKey(d => d.PartnerId);
            this.HasRequired(t => t.Product)
                .WithMany(t => t.Sales)
                .HasForeignKey(d => d.ProductId);

        }
    }
}
