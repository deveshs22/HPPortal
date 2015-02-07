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
/****** Object:  Table [dbo].[UserOutletCategory]    Script Date: 02/07/2015 18:02:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserOutletCategory](
	[UserId] [int] NOT NULL,
	[OutletCategoryId] [int] NOT NULL,
 CONSTRAINT [PK_UserOutletCategory_1] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[OutletCategoryId] ASC
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
/****** Object:  Table [dbo].[OutletCategory]    Script Date: 02/07/2015 18:02:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OutletCategory](
	[OutletCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](50) NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_OutletCategory] PRIMARY KEY CLUSTERED 
(
	[OutletCategoryId] ASC
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
	[ZoneId] [int] NOT NULL,
 CONSTRAINT [PK_UserCity_1] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[CityId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Outlet]    Script Date: 02/07/2015 18:02:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Outlet](
	[OutletId] [int] IDENTITY(1,1) NOT NULL,
	[OutletName] [varchar](50) NOT NULL,
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
	[OutletCategoryId] [int] NOT NULL,
	[CityId] [int] NOT NULL,
	[AssociatedUserId] [int] NOT NULL,
	[FrequencyOfEngagement] [varchar](50) NULL,
	[RelationshipStatus] [varchar](50) NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_Outlet] PRIMARY KEY CLUSTERED 
(
	[OutletId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[GetOutletData]    Script Date: 02/07/2015 18:02:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetOutletData]
	-- Add the parameters for the stored procedure here
	@OutletId int 
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT [Id]
      ,[Name]
      ,[ContactPerson]
      ,[Email]
      ,[Phone]
      ,[Mobile]
      ,[Address]
      ,[OutletCategoryId]
      ,[CityId]
      ,[AssociatedUserId]
      ,[Active]
  FROM [HPSiteDB].[dbo].[Outlet]
  where Id = @OutletId
END
GO
/****** Object:  Default [DF_Zone_Active]    Script Date: 02/07/2015 18:02:04 ******/
ALTER TABLE [dbo].[Zone] ADD  CONSTRAINT [DF_Zone_Active]  DEFAULT ((1)) FOR [Active]
GO
/****** Object:  Default [DF_Role_Active]    Script Date: 02/07/2015 18:02:04 ******/
ALTER TABLE [dbo].[Role] ADD  CONSTRAINT [DF_Role_Active]  DEFAULT ((1)) FOR [Active]
GO
/****** Object:  Default [DF_OutletCategory_Active]    Script Date: 02/07/2015 18:02:04 ******/
ALTER TABLE [dbo].[OutletCategory] ADD  CONSTRAINT [DF_OutletCategory_Active]  DEFAULT ((1)) FOR [Active]
GO
/****** Object:  Default [DF_User_Active]    Script Date: 02/07/2015 18:02:04 ******/
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_Active]  DEFAULT ((1)) FOR [Active]
GO
/****** Object:  Default [DF_City_Active]    Script Date: 02/07/2015 18:02:04 ******/
ALTER TABLE [dbo].[City] ADD  CONSTRAINT [DF_City_Active]  DEFAULT ((1)) FOR [Active]
GO
/****** Object:  Default [DF_Outlet_Active]    Script Date: 02/07/2015 18:02:04 ******/
ALTER TABLE [dbo].[Outlet] ADD  CONSTRAINT [DF_Outlet_Active]  DEFAULT ((1)) FOR [Active]
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
/****** Object:  ForeignKey [FK_Outlet_City]    Script Date: 02/07/2015 18:02:04 ******/
ALTER TABLE [dbo].[Outlet]  WITH CHECK ADD  CONSTRAINT [FK_Outlet_City] FOREIGN KEY([CityId])
REFERENCES [dbo].[City] ([CityId])
GO
ALTER TABLE [dbo].[Outlet] CHECK CONSTRAINT [FK_Outlet_City]
GO
/****** Object:  ForeignKey [FK_Outlet_OutletCategory]    Script Date: 02/07/2015 18:02:04 ******/
ALTER TABLE [dbo].[Outlet]  WITH CHECK ADD  CONSTRAINT [FK_Outlet_OutletCategory] FOREIGN KEY([OutletCategoryId])
REFERENCES [dbo].[OutletCategory] ([OutletCategoryId])
GO
ALTER TABLE [dbo].[Outlet] CHECK CONSTRAINT [FK_Outlet_OutletCategory]
GO
/****** Object:  ForeignKey [FK_Outlet_User]    Script Date: 02/07/2015 18:02:04 ******/
ALTER TABLE [dbo].[Outlet]  WITH CHECK ADD  CONSTRAINT [FK_Outlet_User] FOREIGN KEY([AssociatedUserId])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[Outlet] CHECK CONSTRAINT [FK_Outlet_User]
GO
