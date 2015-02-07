using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace HPPortal.Data.Models.Mapping
{
    public class UserOutletCategoryMap : EntityTypeConfiguration<UserOutletCategory>
    {
        public UserOutletCategoryMap()
        {
            // Primary Key
            this.HasKey(t => new { t.UserId, t.OutletCategoryId });

            // Properties
            this.Property(t => t.UserId)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.OutletCategoryId)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            // Table & Column Mappings
            this.ToTable("UserOutletCategory");
            this.Property(t => t.UserId).HasColumnName("UserId");
            this.Property(t => t.OutletCategoryId).HasColumnName("OutletCategoryId");
        }
    }
}
