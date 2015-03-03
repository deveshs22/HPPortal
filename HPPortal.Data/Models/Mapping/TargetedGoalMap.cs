using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace HPPortal.Data.Models.Mapping
{
    public class TargetedGoalMap : EntityTypeConfiguration<TargetedGoal>
    {
        public TargetedGoalMap()
        {
         // Primary Key
            this.HasKey(t => t.TargetedGoalId);

            // Properties
            this.Property(t => t.TargetedGoalId);

            this.Property(t => t.QuarterYear)
                .HasMaxLength(50);

            this.Property(t => t.TargetedGoalName)
                .HasMaxLength(50);

            this.Property(t => t.TargetGoal)
                .HasMaxLength(500);


            // Table & Column Mappings
            this.ToTable("TargetedGoal");
            this.Property(t => t.TargetedGoalId).HasColumnName("TargetedGoalId");
            this.Property(t => t.TargetGoal).HasColumnName("TargetGoal");
            this.Property(t => t.TargetedGoalName).HasColumnName("TargetedGoalName");
            this.Property(t => t.QuarterPlan).HasColumnName("QuarterPlan");
            this.Property(t => t.PreviousQuarter).HasColumnName("PreviousQuarter");
            this.Property(t => t.QuarterYear).HasColumnName("QuarterYear");            
            this.Property(t => t.PartnerId).HasColumnName("PartnerId");
            this.Property(t => t.CreatedDate).HasColumnName("CreatedDate");
            this.Property(t => t.CreatedUser).HasColumnName("CreatedUser");
            this.Property(t => t.ModifiedDate).HasColumnName("ModifiedDate");
            this.Property(t => t.ModifiedUser).HasColumnName("ModifiedUser");

            this.HasOptional(t => t.Partner)
                .WithMany(t => t.TargetedGoals)
                .HasForeignKey(d => d.PartnerId);
           
        }
    }
}
