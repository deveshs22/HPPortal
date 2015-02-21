using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace HPPortal.Data.Models.Mapping
{
    public class OpenHouseMap : EntityTypeConfiguration<OpenHouse>
    {
        public OpenHouseMap()
        {
            // Primary Key
            this.HasKey(t => t.OpenHouseId);

            this.Property(t => t.Quarter)
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("OpenHouse");
            this.Property(t => t.OpenHouseId).HasColumnName("OpenHouseId");
            this.Property(t => t.Description).HasColumnName("Description");
            this.Property(t => t.CreatedDate).HasColumnName("CreatedDate");
            this.Property(t => t.CreatedUser).HasColumnName("CreatedUser");
            this.Property(t => t.ModifiedDate).HasColumnName("ModifiedDate");
            this.Property(t => t.ModifiedUser).HasColumnName("ModifiedUser");
            this.Property(t => t.Quarter).HasColumnName("Quarter");
        }
    }
}
