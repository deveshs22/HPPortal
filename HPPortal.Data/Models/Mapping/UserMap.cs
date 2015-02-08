using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace HPPortal.Data.Models.Mapping
{
    public class UserMap : EntityTypeConfiguration<User>
    {
        public UserMap()
        {
            // Primary Key
            this.HasKey(t => t.UserId);

            // Properties
            this.Property(t => t.EmailId)
                .IsRequired()
                .HasMaxLength(50);

            this.Property(t => t.Pwd)
                .IsRequired()
                .HasMaxLength(50);

            this.Property(t => t.Name)
                .IsRequired()
                .HasMaxLength(50);

            this.Property(t => t.Mobile)
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("User");
            this.Property(t => t.UserId).HasColumnName("UserId");
            this.Property(t => t.EmailId).HasColumnName("EmailId");
            this.Property(t => t.Pwd).HasColumnName("Pwd");
            this.Property(t => t.Name).HasColumnName("Name");
            this.Property(t => t.RoleId).HasColumnName("RoleId");
            this.Property(t => t.ReportingId).HasColumnName("ReportingId");
            this.Property(t => t.Active).HasColumnName("Active");
            this.Property(t => t.Mobile).HasColumnName("Mobile");

            // Relationships
            this.HasRequired(t => t.Role)
                .WithMany(t => t.Users)
                .HasForeignKey(d => d.RoleId);
            this.HasOptional(t => t.User2)
                .WithMany(t => t.User1)
                .HasForeignKey(d => d.ReportingId);

            this.HasMany(t => t.Cities);

        }
    }
}
