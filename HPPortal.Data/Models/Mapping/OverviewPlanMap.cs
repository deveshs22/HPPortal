using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace HPPortal.Data.Models.Mapping
{
    public class OverviewPlanMap : EntityTypeConfiguration<OverviewPlan>
    {
        public OverviewPlanMap()
        {
            // Primary Key
            this.HasKey(t => t.OverviewPlanId);

            // Properties
            this.Property(t => t.OverviewPlanId)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.Quarter)
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("OverviewPlan");
            this.Property(t => t.OverviewPlanId).HasColumnName("OverviewPlanId");
            this.Property(t => t.Strength).HasColumnName("Strength");
            this.Property(t => t.Weakness).HasColumnName("Weakness");
            this.Property(t => t.Opportunity).HasColumnName("Opportunity");
            this.Property(t => t.SupportReqd).HasColumnName("SupportReqd");
            this.Property(t => t.CreatedDate).HasColumnName("CreatedDate");
            this.Property(t => t.CreatedUser).HasColumnName("CreatedUser");
            this.Property(t => t.ModifiedDate).HasColumnName("ModifiedDate");
            this.Property(t => t.ModifiedUser).HasColumnName("ModifiedUser");
            this.Property(t => t.Comments).HasColumnName("Comments");
            this.Property(t => t.Quarter).HasColumnName("Quarter");
        }
    }
}
