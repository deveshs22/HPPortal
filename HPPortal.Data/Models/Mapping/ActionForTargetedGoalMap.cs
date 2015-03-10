using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;


namespace HPPortal.Data.Models.Mapping
{
    public partial class ActionForTargetedGoalMap : EntityTypeConfiguration<ActionForTargetedGoal>
    {
        public ActionForTargetedGoalMap()
        {
            // Primary Key
            this.HasKey(t => t.ActionId);

            // Properties
            this.Property(t => t.ActionId);

            this.Property(t => t.QuarterYear)
                .HasMaxLength(50);

            this.Property(t => t.GoalName)
                .HasMaxLength(500);

            // Table & Column Mappings
            this.ToTable("ActionForTargetedGoal");
            this.Property(t => t.ActionId).HasColumnName("ActionId");
            this.Property(t => t.ActionRequired).HasColumnName("ActionRequired");
            this.Property(t => t.GoalName).HasColumnName("GoalName");
            this.Property(t => t.QuarterPlan).HasColumnName("QuarterPlan");
            this.Property(t => t.PreviousQuarter).HasColumnName("PreviousQuarter");
            this.Property(t => t.QuarterYear).HasColumnName("QuarterYear");
            this.Property(t => t.PartnerId).HasColumnName("PartnerId");
            this.Property(t => t.CreatedDate).HasColumnName("CreatedDate");
            this.Property(t => t.CreatedUser).HasColumnName("CreatedUser");
            this.Property(t => t.ModifiedDate).HasColumnName("ModifiedDate");
            this.Property(t => t.ModifiedUser).HasColumnName("ModifiedUser");
            this.Property(t => t.AssignedUserId).HasColumnName("AssignedUserId");

            this.HasRequired(t => t.Partner)
                .WithMany(t => t.ActionForTargetedGoals)
                .HasForeignKey(d => d.PartnerId);

            this.HasOptional(t => t.User)
                .WithMany(t => t.ActionForTargetedGoals)
                .HasForeignKey(d => d.AssignedUserId);

        }
    }
}
