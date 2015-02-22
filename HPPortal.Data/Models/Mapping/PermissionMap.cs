using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace HPPortal.Data.Models.Mapping
{
    public class PermissionMap : EntityTypeConfiguration<Permission>
    {
        public PermissionMap()
        {
            // Primary Key
            this.HasKey(t => t.PermissionId);

                        
            this.Property(t => t.ModuleName)
                .IsRequired()
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("Permission");
            this.Property(t => t.PermissionId).HasColumnName("PermissionId");
            this.Property(t => t.ModuleName).HasColumnName("ModuleName");
            this.Property(t => t.RoleId).HasColumnName("RoleId");
            this.Property(t => t.CanView).HasColumnName("CanView");
            this.Property(t => t.CanAdd).HasColumnName("CanAdd");
            this.Property(t => t.CanEdit).HasColumnName("CanEdit");
            this.Property(t => t.CanDelete).HasColumnName("CanDelete");

            // Relationships
            this.HasRequired(t => t.Role)
                .WithMany(t => t.Permissions)
                .HasForeignKey(d => d.RoleId);

        }
    }
}
