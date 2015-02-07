using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace HPPortal.Data.Models.Mapping
{
    public class OutletCategoryMap : EntityTypeConfiguration<OutletCategory>
    {
        public OutletCategoryMap()
        {
            // Primary Key
            this.HasKey(t => t.OutletCategoryId);

            // Properties
            this.Property(t => t.Description)
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("OutletCategory");
            this.Property(t => t.OutletCategoryId).HasColumnName("OutletCategoryId");
            this.Property(t => t.Description).HasColumnName("Description");
            this.Property(t => t.Active).HasColumnName("Active");
        }
    }
}
