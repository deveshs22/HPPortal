using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace HPPortal.Data.Models.Mapping
{
    public class UserCityMap : EntityTypeConfiguration<UserCity>
    {
        public UserCityMap()
        {
            // Primary Key
            this.HasKey(t => new { t.UserId, t.CityId });

            // Properties
            this.Property(t => t.UserId)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.CityId)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            // Table & Column Mappings
            this.ToTable("UserCity");
            this.Property(t => t.UserId).HasColumnName("UserId");
            this.Property(t => t.CityId).HasColumnName("CityId");
            this.Property(t => t.ZoneId).HasColumnName("ZoneId");

            // Relationships
            this.HasRequired(t => t.City)
                .WithMany(t => t.UserCities)
                .HasForeignKey(d => d.CityId);
            this.HasRequired(t => t.User)
                .WithMany(t => t.UserCities)
                .HasForeignKey(d => d.UserId);
            this.HasRequired(t => t.UserCity2)
                .WithOptional(t => t.UserCity1);

        }
    }
}
