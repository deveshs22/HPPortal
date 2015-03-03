using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace HPPortal.Data.Models.Mapping
{
    public class ActivityLogMap : EntityTypeConfiguration<ActivityLog>
    {
        public ActivityLogMap()
        {
            // Primary Key
            this.HasKey(t => t.LogId);

            // Properties
            this.Property(t => t.Module)
                .HasMaxLength(50);

            this.Property(t => t.QuarterYear)
                .HasMaxLength(30);

            // Table & Column Mappings
            this.ToTable("ActivityLog");
            this.Property(t => t.LogId).HasColumnName("LogId");
            this.Property(t => t.Module).HasColumnName("Module");
            this.Property(t => t.UserId).HasColumnName("UserId");
            this.Property(t => t.PartnerId).HasColumnName("PartnerId");
            this.Property(t => t.QuarterYear).HasColumnName("QuarterYear");
            this.Property(t => t.LogDate).HasColumnName("LogDate");

            // Relationships
            this.HasRequired(t => t.Partner)
                .WithMany(t => t.ActivityLogs)
                .HasForeignKey(d => d.PartnerId);
            this.HasRequired(t => t.User)
                .WithMany(t => t.ActivityLogs)
                .HasForeignKey(d => d.UserId);

        }
    }
}
