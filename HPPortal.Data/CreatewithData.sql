CREATE DATABASE [HPSiteDBNew1];
GO
USE [HPSiteDBNew1]
GO
GO
/****** Object:  Table [dbo].[Role]   added  Script Date: 02/19/2015 00:08:45  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Role]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Role](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](50) NOT NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON
INSERT [dbo].[Role] ([RoleId], [Description], [Active]) VALUES (1, N'NSM', 1)
INSERT [dbo].[Role] ([RoleId], [Description], [Active]) VALUES (2, N'ZSM', 1)
INSERT [dbo].[Role] ([RoleId], [Description], [Active]) VALUES (3, N'RSM', 1)
INSERT [dbo].[Role] ([RoleId], [Description], [Active]) VALUES (4, N'ASM', 1)
INSERT [dbo].[Role] ([RoleId], [Description], [Active]) VALUES (5, N'Admin', 1)
SET IDENTITY_INSERT [dbo].[Role] OFF
/****** Object:  Table [dbo].[Product]    Script Date: 02/19/2015 00:08:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Product]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Product](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductDescription] [varchar](50) NULL,
	[ProductCategory] [varchar](50) NULL,
	[Type] [varchar](50) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON
INSERT [dbo].[Product] ([ProductId], [ProductDescription], [ProductCategory], [Type]) VALUES (1, N'NoteBook', N'SellThru($ K)', N'Amount')
INSERT [dbo].[Product] ([ProductId], [ProductDescription], [ProductCategory], [Type]) VALUES (2, N'NoteBook', N'SellThru (Units)', N'Unit')
INSERT [dbo].[Product] ([ProductId], [ProductDescription], [ProductCategory], [Type]) VALUES (3, N'NoteBook', N' SoW (%)', N'Wallet')
INSERT [dbo].[Product] ([ProductId], [ProductDescription], [ProductCategory], [Type]) VALUES (4, N'Desktop', N'SellThru($ K)', N'Amount')
INSERT [dbo].[Product] ([ProductId], [ProductDescription], [ProductCategory], [Type]) VALUES (5, N'Desktop', N'SellThru (Units)', N'Unit')
INSERT [dbo].[Product] ([ProductId], [ProductDescription], [ProductCategory], [Type]) VALUES (6, N'Desktop', N' SoW (%)', N'Wallet')
INSERT [dbo].[Product] ([ProductId], [ProductDescription], [ProductCategory], [Type]) VALUES (7, N'Print Hardware', N'SellThru($ K)', N'Amount')
INSERT [dbo].[Product] ([ProductId], [ProductDescription], [ProductCategory], [Type]) VALUES (8, N'Print Hardware', N'SellThru (Units)', N'Unit')
INSERT [dbo].[Product] ([ProductId], [ProductDescription], [ProductCategory], [Type]) VALUES (9, N'Print Hardware', N' SoW (%)', N'Wallet')
INSERT [dbo].[Product] ([ProductId], [ProductDescription], [ProductCategory], [Type]) VALUES (10, N'Tablet', N'SellThru($ K)', N'Amount')
SET IDENTITY_INSERT [dbo].[Product] OFF
/****** Object:  Table [dbo].[PartnerCategory]    Script Date: 02/19/2015 00:08:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PartnerCategory]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PartnerCategory](
	[PartnerCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](50) NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_PartnerCategory] PRIMARY KEY CLUSTERED 
(
	[PartnerCategoryId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[PartnerCategory] ON
INSERT [dbo].[PartnerCategory] ([PartnerCategoryId], [Description], [Active]) VALUES (1, N'MBO', 1)
INSERT [dbo].[PartnerCategory] ([PartnerCategoryId], [Description], [Active]) VALUES (2, N'LFR', 1)
INSERT [dbo].[PartnerCategory] ([PartnerCategoryId], [Description], [Active]) VALUES (3, N'HPW', 1)
SET IDENTITY_INSERT [dbo].[PartnerCategory] OFF
/****** Object:  Table [dbo].[Zone]    Script Date: 02/19/2015 00:08:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Zone]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Zone](
	[ZoneId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](50) NOT NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_Zone] PRIMARY KEY CLUSTERED 
(
	[ZoneId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Zone] ON
INSERT [dbo].[Zone] ([ZoneId], [Description], [Active]) VALUES (1, N'North', 1)
INSERT [dbo].[Zone] ([ZoneId], [Description], [Active]) VALUES (2, N'South', 1)
SET IDENTITY_INSERT [dbo].[Zone] OFF
/****** Object:  Table [dbo].[UserPartnerCategory]    Script Date: 02/19/2015 00:08:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserPartnerCategory]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UserPartnerCategory](
	[UserId] [int] NOT NULL,
	[PartnerCategoryId] [int] NOT NULL,
 CONSTRAINT [PK_UserPartnerCategory_1] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[PartnerCategoryId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[City]    Script Date: 02/19/2015 00:08:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[City]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[City](
	[CityId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](50) NOT NULL,
	[ZoneId] [int] NOT NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[CityId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[City] ON
INSERT [dbo].[City] ([CityId], [Description], [ZoneId], [Active]) VALUES (1, N'Delhi', 1, 1)
INSERT [dbo].[City] ([CityId], [Description], [ZoneId], [Active]) VALUES (2, N'Noida', 1, 1)
INSERT [dbo].[City] ([CityId], [Description], [ZoneId], [Active]) VALUES (3, N'Bangalore', 2, 1)
INSERT [dbo].[City] ([CityId], [Description], [ZoneId], [Active]) VALUES (4, N'Chennai', 2, 1)
INSERT [dbo].[City] ([CityId], [Description], [ZoneId], [Active]) VALUES (6, N'Ghaziabad', 1, 1)
INSERT [dbo].[City] ([CityId], [Description], [ZoneId], [Active]) VALUES (7, N'Gurgaon', 1, 1)
SET IDENTITY_INSERT [dbo].[City] OFF
/****** Object:  Table [dbo].[User]    Script Date: 02/19/2015 00:08:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[User](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[EmailId] [varchar](50) NOT NULL,
	[Pwd] [varchar](50) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[RoleId] [int] NOT NULL,
	[ReportingId] [int] NULL,
	[Active] [bit] NULL,
	[Mobile] [varchar](50) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON
INSERT [dbo].[User] ([UserId], [EmailId], [Pwd], [Name], [RoleId], [ReportingId], [Active], [Mobile]) VALUES (2, N'anurag@hp.com', N'M+QJcPYSkn4=', N'Anurag Mishra', 1, 7, 1, N'9953825792')
INSERT [dbo].[User] ([UserId], [EmailId], [Pwd], [Name], [RoleId], [ReportingId], [Active], [Mobile]) VALUES (4, N'umesh@hp.com', N'5Ndqp728+p8=', N'Umesh', 2, 2, 1, N'9935898000')
INSERT [dbo].[User] ([UserId], [EmailId], [Pwd], [Name], [RoleId], [ReportingId], [Active], [Mobile]) VALUES (7, N'dev.sinha22@gmail.com', N'de', N'Admin', 5, 4, 0, N'9953825792')
SET IDENTITY_INSERT [dbo].[User] OFF
/****** Object:  Table [dbo].[Partner]    Script Date: 02/19/2015 00:08:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Partner]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Partner](
	[PartnerId] [int] IDENTITY(1,1) NOT NULL,
	[PartnerName] [varchar](50) NOT NULL,
	[ContactPerson] [varchar](50) NOT NULL,
	[Email] [varchar](50) NULL,
	[Phone] [varchar](50) NOT NULL,
	[Mobile] [varchar](50) NULL,
	[Address] [varchar](100) NOT NULL,
	[CustomerSegmentsAddressed] [nvarchar](500) NULL,
	[CoreBusiness] [varchar](50) NULL,
	[CurrentBrands] [varchar](150) NULL,
	[MainCompetitors] [nvarchar](500) NULL,
	[StaffCount] [int] NOT NULL,
	[PartnerCategoryId] [int] NOT NULL,
	[CityId] [int] NOT NULL,
	[AssociatedUserId] [int] NOT NULL,
	[FrequencyOfEngagement] [varchar](50) NULL,
	[RelationshipStatus] [varchar](50) NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_Partner] PRIMARY KEY CLUSTERED 
(
	[PartnerId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Partner] ON
INSERT [dbo].[Partner] ([PartnerId], [PartnerName], [ContactPerson], [Email], [Phone], [Mobile], [Address], [CustomerSegmentsAddressed], [CoreBusiness], [CurrentBrands], [MainCompetitors], [StaffCount], [PartnerCategoryId], [CityId], [AssociatedUserId], [FrequencyOfEngagement], [RelationshipStatus], [Active]) VALUES (1, N'IT World', N'Amit', N'amit@test.com', N'9953', N'9953825792', N'CP', N'End Customer', N'IT', N'HP', N'LFR', 10, 1, 1, 2, N'2', N'Positive', 1)
SET IDENTITY_INSERT [dbo].[Partner] OFF
/****** Object:  Table [dbo].[UserCity]    Script Date: 02/19/2015 00:08:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserCity]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UserCity](
	[UserId] [int] NOT NULL,
	[CityId] [int] NOT NULL,
 CONSTRAINT [PK_UserCity_1] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[CityId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (2, 1)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (2, 2)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (2, 6)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (2, 7)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (4, 1)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (4, 2)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (7, 1)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (7, 2)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (7, 3)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (7, 4)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (7, 6)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (7, 7)
/****** Object:  Table [dbo].[Target]    Script Date: 02/19/2015 00:08:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Target]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Target](
	[TargetId] [int] IDENTITY(1,1) NOT NULL,
	[M1] [int] NOT NULL,
	[M2] [int] NOT NULL,
	[M3] [int] NOT NULL,
	[ProductId] [int] NULL,
	[PartnerId] [int] NULL,
	[QuarterYear] [varchar](50) NULL,
 CONSTRAINT [PK_Target] PRIMARY KEY CLUSTERED 
(
	[TargetId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Target] ON
INSERT [dbo].[Target] ([TargetId], [M1], [M2], [M3], [ProductId], [PartnerId], [QuarterYear]) VALUES (1, 150, 100, 150, 1, 1, N'Q1 2015')
INSERT [dbo].[Target] ([TargetId], [M1], [M2], [M3], [ProductId], [PartnerId], [QuarterYear]) VALUES (2, 100, 100, 20, 2, 1, N'Q1 2015')
INSERT [dbo].[Target] ([TargetId], [M1], [M2], [M3], [ProductId], [PartnerId], [QuarterYear]) VALUES (3, 122, 12, 11, 3, 1, N'Q1 2015')
INSERT [dbo].[Target] ([TargetId], [M1], [M2], [M3], [ProductId], [PartnerId], [QuarterYear]) VALUES (4, 0, 0, 0, 4, 1, N'Q1 2015')
INSERT [dbo].[Target] ([TargetId], [M1], [M2], [M3], [ProductId], [PartnerId], [QuarterYear]) VALUES (5, 66, 22, 11, 5, 1, N'Q1 2015')
INSERT [dbo].[Target] ([TargetId], [M1], [M2], [M3], [ProductId], [PartnerId], [QuarterYear]) VALUES (6, 0, 0, 0, 6, 1, N'Q1 2015')
INSERT [dbo].[Target] ([TargetId], [M1], [M2], [M3], [ProductId], [PartnerId], [QuarterYear]) VALUES (7, 0, 0, 0, 7, 1, N'Q1 2015')
INSERT [dbo].[Target] ([TargetId], [M1], [M2], [M3], [ProductId], [PartnerId], [QuarterYear]) VALUES (8, 0, 0, 0, 8, 1, N'Q1 2015')
INSERT [dbo].[Target] ([TargetId], [M1], [M2], [M3], [ProductId], [PartnerId], [QuarterYear]) VALUES (9, 0, 0, 0, 9, 1, N'Q1 2015')
INSERT [dbo].[Target] ([TargetId], [M1], [M2], [M3], [ProductId], [PartnerId], [QuarterYear]) VALUES (10, 0, 0, 0, 10, 1, N'Q1 2015')
SET IDENTITY_INSERT [dbo].[Target] OFF
/****** Object:  Table [dbo].[StrategicPlan]    Script Date: 02/19/2015 00:08:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[StrategicPlan]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[StrategicPlan](
	[StrategicPlanId] [int] IDENTITY(1,1) NOT NULL,
	[BusinessObjective] [varchar](max) NULL,
	[Strategies] [varchar](max) NULL,
	[Metrics] [varchar](max) NULL,
	[QuarterYear] [varchar](50) NULL,
	[AssignedUserId] [int] NULL,
	[CreatedDate] [date] NULL,
	[CreatedUser] [int] NULL,
	[ModifiedDate] [date] NULL,
	[ModifiedUser] [int] NULL,
	[Comments] [varchar](max) NULL,
	[CheckpointState] [varchar](50) NULL,
	[PartnerId] [int] NULL,
 CONSTRAINT [PK_StrategicPlan] PRIMARY KEY CLUSTERED 
(
	[StrategicPlanId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[StrategicPlan] ON
INSERT [dbo].[StrategicPlan] ([StrategicPlanId], [BusinessObjective], [Strategies], [Metrics], [QuarterYear], [AssignedUserId], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser], [Comments], [CheckpointState], [PartnerId]) VALUES (1, N'new objective added 
testing objective', N'strategies added
testing strategies', N'new metrics added
new metric row', N'Q1 2015', 2, CAST(0x9E390B00 AS Date), 2, NULL, NULL, NULL, N'Average', 1)
INSERT [dbo].[StrategicPlan] ([StrategicPlanId], [BusinessObjective], [Strategies], [Metrics], [QuarterYear], [AssignedUserId], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser], [Comments], [CheckpointState], [PartnerId]) VALUES (2, N'identify new business locations', N'meet dealers', N'5 new location details shared', N'Q1 2015', NULL, CAST(0x9E390B00 AS Date), 2, NULL, NULL, NULL, N'Average', 1)
SET IDENTITY_INSERT [dbo].[StrategicPlan] OFF
/****** Object:  Table [dbo].[Sale]    Script Date: 02/19/2015 00:08:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Sale]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Sale](
	[SaleId] [int] IDENTITY(1,1) NOT NULL,
	[M1] [int] NOT NULL,
	[M2] [int] NOT NULL,
	[M3] [int] NOT NULL,
	[ProductId] [int] NULL,
	[PartnerId] [int] NULL,
	[QuarterYear] [varchar](50) NULL,
 CONSTRAINT [PK_Sale] PRIMARY KEY CLUSTERED 
(
	[SaleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Sale] ON
INSERT [dbo].[Sale] ([SaleId], [M1], [M2], [M3], [ProductId], [PartnerId], [QuarterYear]) VALUES (1, 100, 150, 200, 1, 1, N'Q1 2015')
SET IDENTITY_INSERT [dbo].[Sale] OFF
/****** Object:  Table [dbo].[OverviewPlan]    Script Date: 02/19/2015 00:08:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OverviewPlan]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OverviewPlan](
	[OverviewPlanId] [int] IDENTITY(1,1) NOT NULL,
	[Strength] [varchar](max) NULL,
	[Weakness] [varchar](max) NULL,
	[Opportunity] [varchar](max) NULL,
	[SupportReqd] [varchar](max) NULL,
	[CreatedDate] [date] NULL,
	[CreatedUser] [int] NULL,
	[ModifiedDate] [date] NULL,
	[ModifiedUser] [int] NULL,
	[Comments] [varchar](max) NULL,
	[Quarter] [varchar](50) NULL,
	[PartnerId] [int] NOT NULL,
 CONSTRAINT [PK_OverviewPlan] PRIMARY KEY CLUSTERED 
(
	[OverviewPlanId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[OverviewPlan] ON
INSERT [dbo].[OverviewPlan] ([OverviewPlanId], [Strength], [Weakness], [Opportunity], [SupportReqd], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser], [Comments], [Quarter], [PartnerId]) VALUES (1, N'new strength', N'new weakness', N'opportunity', N'support2', CAST(0x9E390B00 AS Date), 2, CAST(0x9E390B00 AS Date), 2, NULL, N'Q1 2015', 1)
SET IDENTITY_INSERT [dbo].[OverviewPlan] OFF
/****** Object:  Default [DF_City_Active]    Script Date: 02/19/2015 00:08:45 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_City_Active]') AND parent_object_id = OBJECT_ID(N'[dbo].[City]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_City_Active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[City] ADD  CONSTRAINT [DF_City_Active]  DEFAULT ((1)) FOR [Active]
END


End
GO
/****** Object:  Default [DF_Partner_Active]    Script Date: 02/19/2015 00:08:45 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Partner_Active]') AND parent_object_id = OBJECT_ID(N'[dbo].[Partner]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Partner_Active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Partner] ADD  CONSTRAINT [DF_Partner_Active]  DEFAULT ((1)) FOR [Active]
END


End
GO
/****** Object:  Default [DF_PartnerCategory_Active]    Script Date: 02/19/2015 00:08:45 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_PartnerCategory_Active]') AND parent_object_id = OBJECT_ID(N'[dbo].[PartnerCategory]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_PartnerCategory_Active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PartnerCategory] ADD  CONSTRAINT [DF_PartnerCategory_Active]  DEFAULT ((1)) FOR [Active]
END


End
GO
/****** Object:  Default [DF_Role_Active]    Script Date: 02/19/2015 00:08:45 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Role_Active]') AND parent_object_id = OBJECT_ID(N'[dbo].[Role]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Role_Active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Role] ADD  CONSTRAINT [DF_Role_Active]  DEFAULT ((1)) FOR [Active]
END


End
GO
/****** Object:  Default [DF_Sale_M2]    Script Date: 02/19/2015 00:08:45 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Sale_M2]') AND parent_object_id = OBJECT_ID(N'[dbo].[Sale]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Sale_M2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Sale] ADD  CONSTRAINT [DF_Sale_M2]  DEFAULT ((0)) FOR [M2]
END


End
GO
/****** Object:  Default [DF_Target_M2]    Script Date: 02/19/2015 00:08:45 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Target_M2]') AND parent_object_id = OBJECT_ID(N'[dbo].[Target]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Target_M2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Target] ADD  CONSTRAINT [DF_Target_M2]  DEFAULT ((0)) FOR [M2]
END


End
GO
/****** Object:  Default [DF_User_Active]    Script Date: 02/19/2015 00:08:45 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_User_Active]') AND parent_object_id = OBJECT_ID(N'[dbo].[User]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_User_Active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_Active]  DEFAULT ((1)) FOR [Active]
END


End
GO
/****** Object:  Default [DF_Zone_Active]    Script Date: 02/19/2015 00:08:45 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Zone_Active]') AND parent_object_id = OBJECT_ID(N'[dbo].[Zone]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Zone_Active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Zone] ADD  CONSTRAINT [DF_Zone_Active]  DEFAULT ((1)) FOR [Active]
END


End
GO
/****** Object:  ForeignKey [FK_City_Zone]    Script Date: 02/19/2015 00:08:45 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_City_Zone]') AND parent_object_id = OBJECT_ID(N'[dbo].[City]'))
ALTER TABLE [dbo].[City]  WITH CHECK ADD  CONSTRAINT [FK_City_Zone] FOREIGN KEY([ZoneId])
REFERENCES [dbo].[Zone] ([ZoneId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_City_Zone]') AND parent_object_id = OBJECT_ID(N'[dbo].[City]'))
ALTER TABLE [dbo].[City] CHECK CONSTRAINT [FK_City_Zone]
GO
/****** Object:  ForeignKey [FK_OverviewPlan_Partner]    Script Date: 02/19/2015 00:08:45 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OverviewPlan_Partner]') AND parent_object_id = OBJECT_ID(N'[dbo].[OverviewPlan]'))
ALTER TABLE [dbo].[OverviewPlan]  WITH CHECK ADD  CONSTRAINT [FK_OverviewPlan_Partner] FOREIGN KEY([PartnerId])
REFERENCES [dbo].[Partner] ([PartnerId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OverviewPlan_Partner]') AND parent_object_id = OBJECT_ID(N'[dbo].[OverviewPlan]'))
ALTER TABLE [dbo].[OverviewPlan] CHECK CONSTRAINT [FK_OverviewPlan_Partner]
GO
/****** Object:  ForeignKey [FK_Partner_City]    Script Date: 02/19/2015 00:08:45 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Partner_City]') AND parent_object_id = OBJECT_ID(N'[dbo].[Partner]'))
ALTER TABLE [dbo].[Partner]  WITH CHECK ADD  CONSTRAINT [FK_Partner_City] FOREIGN KEY([CityId])
REFERENCES [dbo].[City] ([CityId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Partner_City]') AND parent_object_id = OBJECT_ID(N'[dbo].[Partner]'))
ALTER TABLE [dbo].[Partner] CHECK CONSTRAINT [FK_Partner_City]
GO
/****** Object:  ForeignKey [FK_Partner_PartnerCategory]    Script Date: 02/19/2015 00:08:45 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Partner_PartnerCategory]') AND parent_object_id = OBJECT_ID(N'[dbo].[Partner]'))
ALTER TABLE [dbo].[Partner]  WITH CHECK ADD  CONSTRAINT [FK_Partner_PartnerCategory] FOREIGN KEY([PartnerCategoryId])
REFERENCES [dbo].[PartnerCategory] ([PartnerCategoryId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Partner_PartnerCategory]') AND parent_object_id = OBJECT_ID(N'[dbo].[Partner]'))
ALTER TABLE [dbo].[Partner] CHECK CONSTRAINT [FK_Partner_PartnerCategory]
GO
/****** Object:  ForeignKey [FK_Partner_User]    Script Date: 02/19/2015 00:08:45 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Partner_User]') AND parent_object_id = OBJECT_ID(N'[dbo].[Partner]'))
ALTER TABLE [dbo].[Partner]  WITH CHECK ADD  CONSTRAINT [FK_Partner_User] FOREIGN KEY([AssociatedUserId])
REFERENCES [dbo].[User] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Partner_User]') AND parent_object_id = OBJECT_ID(N'[dbo].[Partner]'))
ALTER TABLE [dbo].[Partner] CHECK CONSTRAINT [FK_Partner_User]
GO
/****** Object:  ForeignKey [FK_Sale_Partner]    Script Date: 02/19/2015 00:08:45 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Sale_Partner]') AND parent_object_id = OBJECT_ID(N'[dbo].[Sale]'))
ALTER TABLE [dbo].[Sale]  WITH CHECK ADD  CONSTRAINT [FK_Sale_Partner] FOREIGN KEY([PartnerId])
REFERENCES [dbo].[Partner] ([PartnerId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Sale_Partner]') AND parent_object_id = OBJECT_ID(N'[dbo].[Sale]'))
ALTER TABLE [dbo].[Sale] CHECK CONSTRAINT [FK_Sale_Partner]
GO
/****** Object:  ForeignKey [FK_Sale_Product]    Script Date: 02/19/2015 00:08:45 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Sale_Product]') AND parent_object_id = OBJECT_ID(N'[dbo].[Sale]'))
ALTER TABLE [dbo].[Sale]  WITH CHECK ADD  CONSTRAINT [FK_Sale_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([ProductId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Sale_Product]') AND parent_object_id = OBJECT_ID(N'[dbo].[Sale]'))
ALTER TABLE [dbo].[Sale] CHECK CONSTRAINT [FK_Sale_Product]
GO
/****** Object:  ForeignKey [FK_StrategicPlan_Partner]    Script Date: 02/19/2015 00:08:45 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_StrategicPlan_Partner]') AND parent_object_id = OBJECT_ID(N'[dbo].[StrategicPlan]'))
ALTER TABLE [dbo].[StrategicPlan]  WITH CHECK ADD  CONSTRAINT [FK_StrategicPlan_Partner] FOREIGN KEY([PartnerId])
REFERENCES [dbo].[Partner] ([PartnerId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_StrategicPlan_Partner]') AND parent_object_id = OBJECT_ID(N'[dbo].[StrategicPlan]'))
ALTER TABLE [dbo].[StrategicPlan] CHECK CONSTRAINT [FK_StrategicPlan_Partner]
GO
/****** Object:  ForeignKey [FK_StrategicPlan_User]    Script Date: 02/19/2015 00:08:45 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_StrategicPlan_User]') AND parent_object_id = OBJECT_ID(N'[dbo].[StrategicPlan]'))
ALTER TABLE [dbo].[StrategicPlan]  WITH CHECK ADD  CONSTRAINT [FK_StrategicPlan_User] FOREIGN KEY([AssignedUserId])
REFERENCES [dbo].[User] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_StrategicPlan_User]') AND parent_object_id = OBJECT_ID(N'[dbo].[StrategicPlan]'))
ALTER TABLE [dbo].[StrategicPlan] CHECK CONSTRAINT [FK_StrategicPlan_User]
GO
/****** Object:  ForeignKey [FK_Target_Partner]    Script Date: 02/19/2015 00:08:45 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Target_Partner]') AND parent_object_id = OBJECT_ID(N'[dbo].[Target]'))
ALTER TABLE [dbo].[Target]  WITH CHECK ADD  CONSTRAINT [FK_Target_Partner] FOREIGN KEY([PartnerId])
REFERENCES [dbo].[Partner] ([PartnerId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Target_Partner]') AND parent_object_id = OBJECT_ID(N'[dbo].[Target]'))
ALTER TABLE [dbo].[Target] CHECK CONSTRAINT [FK_Target_Partner]
GO
/****** Object:  ForeignKey [FK_Target_Product]    Script Date: 02/19/2015 00:08:45 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Target_Product]') AND parent_object_id = OBJECT_ID(N'[dbo].[Target]'))
ALTER TABLE [dbo].[Target]  WITH CHECK ADD  CONSTRAINT [FK_Target_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([ProductId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Target_Product]') AND parent_object_id = OBJECT_ID(N'[dbo].[Target]'))
ALTER TABLE [dbo].[Target] CHECK CONSTRAINT [FK_Target_Product]
GO
/****** Object:  ForeignKey [FK_User_Role]    Script Date: 02/19/2015 00:08:45 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_User_Role]') AND parent_object_id = OBJECT_ID(N'[dbo].[User]'))
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([RoleId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_User_Role]') AND parent_object_id = OBJECT_ID(N'[dbo].[User]'))
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
/****** Object:  ForeignKey [FK_User_User1]    Script Date: 02/19/2015 00:08:45 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_User_User1]') AND parent_object_id = OBJECT_ID(N'[dbo].[User]'))
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_User1] FOREIGN KEY([ReportingId])
REFERENCES [dbo].[User] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_User_User1]') AND parent_object_id = OBJECT_ID(N'[dbo].[User]'))
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_User1]
GO
/****** Object:  ForeignKey [FK_UserCity_City]    Script Date: 02/19/2015 00:08:45 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserCity_City]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserCity]'))
ALTER TABLE [dbo].[UserCity]  WITH CHECK ADD  CONSTRAINT [FK_UserCity_City] FOREIGN KEY([CityId])
REFERENCES [dbo].[City] ([CityId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserCity_City]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserCity]'))
ALTER TABLE [dbo].[UserCity] CHECK CONSTRAINT [FK_UserCity_City]
GO
/****** Object:  ForeignKey [FK_UserCity_User]    Script Date: 02/19/2015 00:08:45 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserCity_User]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserCity]'))
ALTER TABLE [dbo].[UserCity]  WITH CHECK ADD  CONSTRAINT [FK_UserCity_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserCity_User]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserCity]'))
ALTER TABLE [dbo].[UserCity] CHECK CONSTRAINT [FK_UserCity_User]
GO
/****** Object:  ForeignKey [FK_UserCity_UserCity]    Script Date: 02/19/2015 00:08:45 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserCity_UserCity]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserCity]'))
ALTER TABLE [dbo].[UserCity]  WITH CHECK ADD  CONSTRAINT [FK_UserCity_UserCity] FOREIGN KEY([UserId], [CityId])
REFERENCES [dbo].[UserCity] ([UserId], [CityId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserCity_UserCity]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserCity]'))
ALTER TABLE [dbo].[UserCity] CHECK CONSTRAINT [FK_UserCity_UserCity]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TargetedGoal]') AND type in (N'U'))
BEGIN

CREATE TABLE [dbo].[TargetedGoal]
(
	[TargetedGoalId]  INT IDENTITY (1, 1) NOT NULL, 
    [TargetedGoalName] VARCHAR(50) NOT NULL, 
    [QuarterPlan] VARCHAR(MAX) NOT NULL,
	[PreviousQuarter] VARCHAR(MAX) NOT NULL, 
    [QuarterYear] VARCHAR(50) NOT NULL, 
    [TargetGoal] VARCHAR(500) NOT NULL,
	[CreatedDate]       DATE          NULL,
    [CreatedUser]       INT           NULL,
    [ModifiedDate]      DATE          NULL,
    [ModifiedUser]      INT           NULL,
	[PartnerId]         INT           NULL,
    CONSTRAINT [PK_TargetedGoal] PRIMARY KEY CLUSTERED ([TargetedGoalId] ASC),
    CONSTRAINT [FK_TargetedGoal_Partner] FOREIGN KEY ([PartnerId]) REFERENCES [dbo].[Partner] ([PartnerId]) )
END
GO
SET ANSI_PADDING OFF
GO

