using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace HPPortal.Data.Models.Mapping
{
    public class StrategicPlanMap : EntityTypeConfiguration<StrategicPlan>
    {
        public StrategicPlanMap()
        {
            // Primary Key
            this.HasKey(t => t.StrategicPlanId);

            // Properties
            this.Property(t => t.StrategicPlanId);

            this.Property(t => t.QuarterYear)
                .HasMaxLength(50);

            this.Property(t => t.CheckpointState)
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("StrategicPlan");
            this.Property(t => t.StrategicPlanId).HasColumnName("StrategicPlanId");
            this.Property(t => t.BusinessObjective).HasColumnName("BusinessObjective");
            this.Property(t => t.Strategies).HasColumnName("Strategies");
            this.Property(t => t.Metrics).HasColumnName("Metrics");
            this.Property(t => t.QuarterYear).HasColumnName("QuarterYear");
           // this.Property(t => t.AssignedUserId).HasColumnName("AssignedUserId");
            this.Property(t => t.PartnerId).HasColumnName("PartnerId");
            this.Property(t => t.CreatedDate).HasColumnName("CreatedDate");
            this.Property(t => t.CreatedUser).HasColumnName("CreatedUser");
            this.Property(t => t.ModifiedDate).HasColumnName("ModifiedDate");
            this.Property(t => t.ModifiedUser).HasColumnName("ModifiedUser");
            this.Property(t => t.Comments).HasColumnName("Comments");
            this.Property(t => t.CheckpointState).HasColumnName("CheckpointState");

            // Relationships
            // Many to many relationship with User
            this.HasMany(t => t.Users)
                .WithMany(t => t.StrategicPlans)
                .Map(m =>
                {
                    m.ToTable("StrategicPlanAssignedUser");
                    m.MapLeftKey("StrategicPlanId");
                    m.MapRightKey("UserId");
                });

            this.HasRequired(t => t.Partner)
                .WithMany(t => t.StrategicPlans)
                .HasForeignKey(d => d.PartnerId);

        }
    }
}
