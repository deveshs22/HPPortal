using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;
namespace HPPortal.Data.Models.Mapping
{
    public class CompetitorMap : EntityTypeConfiguration<Competitor>
    {
        public CompetitorMap()
        {
            // Primary Key
            this.HasKey(c => c.CategoryId);

            // Properties
            this.Property(c => c.CategoryName)
                .HasMaxLength(50);

            this.Property(c => c.CompetitorName)
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("Competitor");
            this.Property(c => c.CategoryId).HasColumnName("CategoryId");
            this.Property(c => c.CategoryName).HasColumnName("CategoryName");
            this.Property(c => c.CompetitorName).HasColumnName("CompetitorName");
            this.Property(c => c.SortBy).HasColumnName("SortBy");
        }
    }
}
