using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace HPPortal.Data.Models.Mapping
{
    public class OutletMap : EntityTypeConfiguration<Outlet>
    {
        public OutletMap()
        {
            // Primary Key
            this.HasKey(t => t.OutletId);

            // Properties
            this.Property(t => t.OutletName)
                .IsRequired()
                .HasMaxLength(50);

            this.Property(t => t.ContactPerson)
                .IsRequired()
                .HasMaxLength(50);

            this.Property(t => t.Email)
                .HasMaxLength(50);

            this.Property(t => t.Phone)
                .IsRequired()
                .HasMaxLength(50);

            this.Property(t => t.Mobile)
                .HasMaxLength(50);

            this.Property(t => t.Address)
                .IsRequired()
                .HasMaxLength(100);

            this.Property(t => t.CustomerSegmentsAddressed)
                .HasMaxLength(500);

            this.Property(t => t.CoreBusiness)
                .HasMaxLength(50);

            this.Property(t => t.CurrentBrands)
                .HasMaxLength(150);

            this.Property(t => t.MainCompetitors)
                .HasMaxLength(500);

            this.Property(t => t.FrequencyOfEngagement)
                .HasMaxLength(50);

            this.Property(t => t.RelationshipStatus)
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("Outlet");
            this.Property(t => t.OutletId).HasColumnName("OutletId");
            this.Property(t => t.OutletName).HasColumnName("OutletName");
            this.Property(t => t.ContactPerson).HasColumnName("ContactPerson");
            this.Property(t => t.Email).HasColumnName("Email");
            this.Property(t => t.Phone).HasColumnName("Phone");
            this.Property(t => t.Mobile).HasColumnName("Mobile");
            this.Property(t => t.Address).HasColumnName("Address");
            this.Property(t => t.CustomerSegmentsAddressed).HasColumnName("CustomerSegmentsAddressed");
            this.Property(t => t.CoreBusiness).HasColumnName("CoreBusiness");
            this.Property(t => t.CurrentBrands).HasColumnName("CurrentBrands");
            this.Property(t => t.MainCompetitors).HasColumnName("MainCompetitors");
            this.Property(t => t.StaffCount).HasColumnName("StaffCount");
            this.Property(t => t.OutletCategoryId).HasColumnName("OutletCategoryId");
            this.Property(t => t.CityId).HasColumnName("CityId");
            this.Property(t => t.AssociatedUserId).HasColumnName("AssociatedUserId");
            this.Property(t => t.FrequencyOfEngagement).HasColumnName("FrequencyOfEngagement");
            this.Property(t => t.RelationshipStatus).HasColumnName("RelationshipStatus");
            this.Property(t => t.Active).HasColumnName("Active");

            // Relationships
            this.HasRequired(t => t.City)
                .WithMany(t => t.Outlets)
                .HasForeignKey(d => d.CityId);
            this.HasRequired(t => t.OutletCategory)
                .WithMany(t => t.Outlets)
                .HasForeignKey(d => d.OutletCategoryId);
            this.HasRequired(t => t.User)
                .WithMany(t => t.Outlets)
                .HasForeignKey(d => d.AssociatedUserId);

        }
    }
}
