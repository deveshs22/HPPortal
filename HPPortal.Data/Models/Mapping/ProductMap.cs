using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace HPPortal.Data.Models.Mapping
{
    public class ProductMap : EntityTypeConfiguration<Product>
    {
        public ProductMap()
        {
            // Primary Key
            this.HasKey(t => t.ProductId);

            // Properties
            this.Property(t => t.ProductDescription)
                .HasMaxLength(50);

            this.Property(t => t.ProductCategory)
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("Product");
            this.Property(t => t.ProductId).HasColumnName("ProductId");
            this.Property(t => t.ProductDescription).HasColumnName("ProductDescription");
            this.Property(t => t.ProductCategory).HasColumnName("ProductCategory");
        }
    }
}
