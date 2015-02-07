using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace HPPortal.Data.Models.Mapping
{
    public class CityMap : EntityTypeConfiguration<City>
    {
        public CityMap()
        {
            // Primary Key
            this.HasKey(t => t.CityId);

            // Properties
            this.Property(t => t.Description)
                .IsRequired()
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("City");
            this.Property(t => t.CityId).HasColumnName("CityId");
            this.Property(t => t.Description).HasColumnName("Description");
            this.Property(t => t.ZoneId).HasColumnName("ZoneId");
            this.Property(t => t.Active).HasColumnName("Active");

            // Relationships
            this.HasRequired(t => t.Zone)
                .WithMany(t => t.Cities)
                .HasForeignKey(d => d.ZoneId);

        }
    }
}
