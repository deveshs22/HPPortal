Create Database HPSiteDB
go 
USE [HPSiteDB]
GO
/****** Object:  Table [dbo].[Zone]    Script Date: 02/07/2015 18:02:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Zone](
	[ZoneId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](50) NOT NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_Zone] PRIMARY KEY CLUSTERED 
(
	[ZoneId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserPartnerCategory]    Script Date: 02/07/2015 18:02:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserPartnerCategory](
	[UserId] [int] NOT NULL,
	[PartnerCategoryId] [int] NOT NULL,
 CONSTRAINT [PK_UserPartnerCategory_1] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[PartnerCategoryId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 02/07/2015 18:02:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Role](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](50) NOT NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PartnerCategory]    Script Date: 02/07/2015 18:02:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PartnerCategory](
	[PartnerCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](50) NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_PartnerCategory] PRIMARY KEY CLUSTERED 
(
	[PartnerCategoryId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[User]    Script Date: 02/07/2015 18:02:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
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
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[City]    Script Date: 02/07/2015 18:02:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
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
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserCity]    Script Date: 02/07/2015 18:02:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserCity](
	[UserId] [int] NOT NULL,
	[CityId] [int] NOT NULL,
 CONSTRAINT [PK_UserCity_1] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[CityId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Partner]    Script Date: 02/07/2015 18:02:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
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

GO
/****** Object:  Default [DF_Zone_Active]    Script Date: 02/07/2015 18:02:04 ******/
ALTER TABLE [dbo].[Zone] ADD  CONSTRAINT [DF_Zone_Active]  DEFAULT ((1)) FOR [Active]
GO
/****** Object:  Default [DF_Role_Active]    Script Date: 02/07/2015 18:02:04 ******/
ALTER TABLE [dbo].[Role] ADD  CONSTRAINT [DF_Role_Active]  DEFAULT ((1)) FOR [Active]
GO
/****** Object:  Default [DF_PartnerCategory_Active]    Script Date: 02/07/2015 18:02:04 ******/
ALTER TABLE [dbo].[PartnerCategory] ADD  CONSTRAINT [DF_PartnerCategory_Active]  DEFAULT ((1)) FOR [Active]
GO
/****** Object:  Default [DF_User_Active]    Script Date: 02/07/2015 18:02:04 ******/
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_Active]  DEFAULT ((1)) FOR [Active]
GO
/****** Object:  Default [DF_City_Active]    Script Date: 02/07/2015 18:02:04 ******/
ALTER TABLE [dbo].[City] ADD  CONSTRAINT [DF_City_Active]  DEFAULT ((1)) FOR [Active]
GO
/****** Object:  Default [DF_Partner_Active]    Script Date: 02/07/2015 18:02:04 ******/
ALTER TABLE [dbo].[Partner] ADD  CONSTRAINT [DF_Partner_Active]  DEFAULT ((1)) FOR [Active]
GO
/****** Object:  ForeignKey [FK_User_Role]    Script Date: 02/07/2015 18:02:04 ******/
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([RoleId])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
/****** Object:  ForeignKey [FK_User_User1]    Script Date: 02/07/2015 18:02:04 ******/
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_User1] FOREIGN KEY([ReportingId])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_User1]
GO
/****** Object:  ForeignKey [FK_City_Zone]    Script Date: 02/07/2015 18:02:04 ******/
ALTER TABLE [dbo].[City]  WITH CHECK ADD  CONSTRAINT [FK_City_Zone] FOREIGN KEY([ZoneId])
REFERENCES [dbo].[Zone] ([ZoneId])
GO
ALTER TABLE [dbo].[City] CHECK CONSTRAINT [FK_City_Zone]
GO
/****** Object:  ForeignKey [FK_UserCity_City]    Script Date: 02/07/2015 18:02:04 ******/
ALTER TABLE [dbo].[UserCity]  WITH CHECK ADD  CONSTRAINT [FK_UserCity_City] FOREIGN KEY([CityId])
REFERENCES [dbo].[City] ([CityId])
GO
ALTER TABLE [dbo].[UserCity] CHECK CONSTRAINT [FK_UserCity_City]
GO
/****** Object:  ForeignKey [FK_UserCity_User]    Script Date: 02/07/2015 18:02:04 ******/
ALTER TABLE [dbo].[UserCity]  WITH CHECK ADD  CONSTRAINT [FK_UserCity_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[UserCity] CHECK CONSTRAINT [FK_UserCity_User]
GO
/****** Object:  ForeignKey [FK_UserCity_UserCity]    Script Date: 02/07/2015 18:02:04 ******/
ALTER TABLE [dbo].[UserCity]  WITH CHECK ADD  CONSTRAINT [FK_UserCity_UserCity] FOREIGN KEY([UserId], [CityId])
REFERENCES [dbo].[UserCity] ([UserId], [CityId])
GO
ALTER TABLE [dbo].[UserCity] CHECK CONSTRAINT [FK_UserCity_UserCity]
GO
/****** Object:  ForeignKey [FK_Partner_City]    Script Date: 02/07/2015 18:02:04 ******/
ALTER TABLE [dbo].[Partner]  WITH CHECK ADD  CONSTRAINT [FK_Partner_City] FOREIGN KEY([CityId])
REFERENCES [dbo].[City] ([CityId])
GO
ALTER TABLE [dbo].[Partner] CHECK CONSTRAINT [FK_Partner_City]
GO
/****** Object:  ForeignKey [FK_Partner_PartnerCategory]    Script Date: 02/07/2015 18:02:04 ******/
ALTER TABLE [dbo].[Partner]  WITH CHECK ADD  CONSTRAINT [FK_Partner_PartnerCategory] FOREIGN KEY([PartnerCategoryId])
REFERENCES [dbo].[PartnerCategory] ([PartnerCategoryId])
GO
ALTER TABLE [dbo].[Partner] CHECK CONSTRAINT [FK_Partner_PartnerCategory]
GO
/****** Object:  ForeignKey [FK_Partner_User]    Script Date: 02/07/2015 18:02:04 ******/
ALTER TABLE [dbo].[Partner]  WITH CHECK ADD  CONSTRAINT [FK_Partner_User] FOREIGN KEY([AssociatedUserId])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[Partner] CHECK CONSTRAINT [FK_Partner_User]
GO
