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
        public DbSet<StrategicPlan> StrategicPlans { get; set; }
        public DbSet<OverviewPlan> OverviewPlans { get; set; }
        public DbSet<Product> Products { get; set; }
        public DbSet<Sale> Sales { get; set; }
        public DbSet<Target> Targets { get; set; }
        public DbSet<OpenHouse> OpenHouses { get; set; }
        public DbSet<Permission> Permissions { get; set; }
        public DbSet<TargetedGoal> TargetedGoals { get; set; }
        public DbSet<Competitor> Competitors { get; set; }
        public DbSet<CompetitorLandscape> CompetitorLandscapes { get; set; }
        public DbSet<ActivityLog> ActivityLogs { get; set; }
        public DbSet<ActionForTargetedGoal> ActionForTargetedGoals { get; set; }
        public DbSet<PlacementProduct> PlacementProducts { get; set; }
        public DbSet<PlacementTarget> PlacementTargets { get; set; }

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
            modelBuilder.Configurations.Add(new StrategicPlanMap());
            modelBuilder.Configurations.Add(new OverviewPlanMap());
            modelBuilder.Configurations.Add(new TargetMap());
            modelBuilder.Configurations.Add(new SaleMap());
            modelBuilder.Configurations.Add(new ProductMap());
            modelBuilder.Configurations.Add(new OpenHouseMap());
            modelBuilder.Configurations.Add(new TargetedGoalMap());
            modelBuilder.Configurations.Add(new CompetitorMap());
            modelBuilder.Configurations.Add(new CompetitorLandscapeMap());
            modelBuilder.Configurations.Add(new PermissionMap());
            modelBuilder.Configurations.Add(new ActivityLogMap());
            modelBuilder.Configurations.Add(new ActionForTargetedGoalMap());
            modelBuilder.Configurations.Add(new PlacementProductMap());
            modelBuilder.Configurations.Add(new PlacementTargetMap());
        }
    }
}
