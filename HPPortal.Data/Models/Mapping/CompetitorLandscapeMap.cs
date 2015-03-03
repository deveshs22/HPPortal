using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace HPPortal.Data.Models.Mapping
{
    public class CompetitorLandscapeMap : EntityTypeConfiguration<CompetitorLandscape>
    {
        public CompetitorLandscapeMap()
        {
            // Primary Key
            this.HasKey(c => c.CompetitorId);

            this.Property(c => c.QuarterYear)
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("CompetitorLandscape");
            this.Property(c => c.CompetitorId).HasColumnName("CompetitorId");
            this.Property(c => c.Share).HasColumnName("Share");
            this.Property(c => c.BrandPresenc).HasColumnName("BrandPresenc");
            this.Property(c => c.PriceStrategy).HasColumnName("PriceStrategy");
            this.Property(c => c.StoreInvestment).HasColumnName("StoreInvestment");
            this.Property(c => c.AdditionalComment).HasColumnName("AdditionalComment");
            this.Property(c => c.CategoryId).HasColumnName("CategoryId");
            this.Property(c => c.PartnerId).HasColumnName("PartnerId");
            this.Property(c => c.QuarterYear).HasColumnName("QuarterYear");

            // Relationships
            this.HasRequired(t => t.Partner)
                .WithMany(t => t.CompetitorLandscapes)
                .HasForeignKey(d => d.PartnerId);
            this.HasRequired(t => t.Competitor)
                .WithMany(t => t.CompetitorLandscape)
                .HasForeignKey(d => d.CategoryId);
        }
    }
}
