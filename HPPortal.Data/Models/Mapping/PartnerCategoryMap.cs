using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace HPPortal.Data.Models.Mapping
{
    public class PartnerCategoryMap : EntityTypeConfiguration<PartnerCategory>
    {
        public PartnerCategoryMap()
        {
            // Primary Key
            this.HasKey(t => t.PartnerCategoryId);

            // Properties
            this.Property(t => t.Description)
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("PartnerCategory");
            this.Property(t => t.PartnerCategoryId).HasColumnName("PartnerCategoryId");
            this.Property(t => t.Description).HasColumnName("Description");
            this.Property(t => t.Active).HasColumnName("Active");
        }
    }
}
