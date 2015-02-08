using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using HPPortal.Data.Models.Mapping;

namespace HPPortal.Data.Models
{
    public partial class HPSiteDBContext : DbContext
    {
        static HPSiteDBContext()
        {
            Database.SetInitializer<HPSiteDBContext>(null);
        }

        public HPSiteDBContext()
            : base("Name=HPSiteDBContext")
        {
        }

        public DbSet<City> Cities { get; set; }
        public DbSet<Partner> Partners { get; set; }
        public DbSet<PartnerCategory> PartnerCategories { get; set; }
        public DbSet<Role> Roles { get; set; }
        public DbSet<User> Users { get; set; }
        //public DbSet<UserCity> UserCities { get; set; }
        //public DbSet<UserPartnerCategory> UserPartnerCategories { get; set; }
        public DbSet<Zone> Zones { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Configurations.Add(new CityMap());
            modelBuilder.Configurations.Add(new PartnerMap());
            modelBuilder.Configurations.Add(new PartnerCategoryMap());
            modelBuilder.Configurations.Add(new RoleMap());
            modelBuilder.Configurations.Add(new UserMap());
            //modelBuilder.Configurations.Add(new UserCityMap());
            // modelBuilder.Configurations.Add(new UserPartnerCategoryMap());
            modelBuilder.Configurations.Add(new ZoneMap());
        }
    }
}
