--USE [HPSiteDBNew]
GO
/****** Object:  Table [dbo].[States]    Script Date: 03/09/2015 18:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[States](
	[StateId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](30) NOT NULL,
	[ZoneId] [int] NOT NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_States] PRIMARY KEY CLUSTERED 
(
	[ZoneId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[States] ON
INSERT [dbo].[States] ([StateId], [Description], [ZoneId], [Active]) VALUES (1, N'Andhra Pradesh', 1, 1)
INSERT [dbo].[States] ([StateId], [Description], [ZoneId], [Active]) VALUES (2, N'Madha Pradesh', 2, 1)
INSERT [dbo].[States] ([StateId], [Description], [ZoneId], [Active]) VALUES (3, N'Delhi', 3, 1)
INSERT [dbo].[States] ([StateId], [Description], [ZoneId], [Active]) VALUES (4, N'Chandigarh', 4, 1)
INSERT [dbo].[States] ([StateId], [Description], [ZoneId], [Active]) VALUES (5, N'Karnataka', 5, 1)
INSERT [dbo].[States] ([StateId], [Description], [ZoneId], [Active]) VALUES (7, N'Tamilnadu', 6, 1)
INSERT [dbo].[States] ([StateId], [Description], [ZoneId], [Active]) VALUES (8, N'Maharasthra', 7, 1)
INSERT [dbo].[States] ([StateId], [Description], [ZoneId], [Active]) VALUES (9, N'West Bengal', 8, 1)
SET IDENTITY_INSERT [dbo].[States] OFF
/****** Object:  Table [dbo].[Zone]    Script Date: 03/09/2015 18:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Zone](
	[ZoneId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](30) NOT NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_Zone] PRIMARY KEY CLUSTERED 
(
	[ZoneId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Zone] ON
INSERT [dbo].[Zone] ([ZoneId], [Description], [Active]) VALUES (1, N'AP', 1)
INSERT [dbo].[Zone] ([ZoneId], [Description], [Active]) VALUES (2, N'Central', 1)
INSERT [dbo].[Zone] ([ZoneId], [Description], [Active]) VALUES (3, N'North 1', 1)
INSERT [dbo].[Zone] ([ZoneId], [Description], [Active]) VALUES (4, N'North 2', 1)
INSERT [dbo].[Zone] ([ZoneId], [Description], [Active]) VALUES (5, N'South 1', 1)
INSERT [dbo].[Zone] ([ZoneId], [Description], [Active]) VALUES (6, N'TN', 1)
INSERT [dbo].[Zone] ([ZoneId], [Description], [Active]) VALUES (7, N'West 1', 1)
INSERT [dbo].[Zone] ([ZoneId], [Description], [Active]) VALUES (8, N'East', 1)
SET IDENTITY_INSERT [dbo].[Zone] OFF
/****** Object:  Table [dbo].[UserPartnerCategory]    Script Date: 03/09/2015 18:18:18 ******/
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
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (2, 1)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (2, 2)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (2, 3)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (2, 4)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (4, 1)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (4, 2)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (4, 3)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (4, 4)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (8, 1)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (9, 3)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (10, 1)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (10, 2)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (10, 3)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (10, 4)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (11, 1)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (11, 2)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (11, 3)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (11, 4)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (12, 1)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (12, 2)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (12, 3)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (12, 4)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (13, 1)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (13, 2)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (13, 3)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (13, 4)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (14, 1)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (14, 2)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (14, 3)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (14, 4)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (15, 1)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (15, 2)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (15, 3)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (15, 4)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (16, 1)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (16, 2)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (16, 3)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (16, 4)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (17, 1)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (17, 2)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (17, 3)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (17, 4)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (18, 1)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (18, 2)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (18, 3)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (18, 4)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (19, 1)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (19, 2)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (19, 3)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (19, 4)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (20, 1)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (20, 2)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (20, 3)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (20, 4)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (21, 1)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (21, 2)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (21, 3)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (21, 4)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (22, 1)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (22, 2)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (22, 3)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (22, 4)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (23, 1)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (23, 2)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (23, 3)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (23, 4)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (24, 1)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (24, 2)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (24, 3)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (24, 4)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (25, 1)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (25, 2)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (25, 3)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (25, 4)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (26, 1)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (26, 2)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (26, 3)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (26, 4)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (27, 1)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (27, 2)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (27, 3)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (27, 4)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (28, 1)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (28, 2)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (28, 3)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (28, 4)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (29, 1)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (29, 2)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (29, 3)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (29, 4)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (30, 1)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (30, 2)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (30, 3)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (30, 4)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (31, 1)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (31, 2)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (31, 3)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (31, 4)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (32, 1)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (32, 2)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (32, 3)
GO
print 'Processed 100 total records'
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (32, 4)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (33, 1)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (33, 2)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (33, 3)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (33, 4)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (34, 1)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (34, 2)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (34, 3)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (34, 4)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (35, 1)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (35, 2)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (35, 3)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (35, 4)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (36, 1)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (36, 2)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (36, 3)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (36, 4)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (37, 1)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (37, 2)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (37, 3)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (37, 4)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (38, 1)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (38, 2)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (38, 3)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (38, 4)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (39, 1)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (39, 2)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (39, 3)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (39, 4)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (40, 1)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (40, 2)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (40, 3)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (40, 4)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (41, 1)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (41, 2)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (41, 3)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (41, 4)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (42, 1)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (42, 2)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (42, 3)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (42, 4)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (43, 1)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (43, 2)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (43, 3)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (43, 4)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (44, 1)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (44, 2)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (44, 3)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (44, 4)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (45, 1)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (45, 2)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (45, 3)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (45, 4)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (46, 1)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (46, 2)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (46, 3)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (46, 4)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (47, 1)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (47, 2)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (47, 3)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (47, 4)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (48, 1)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (48, 2)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (48, 3)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (48, 4)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (49, 1)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (49, 2)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (49, 3)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (49, 4)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (50, 1)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (50, 2)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (50, 3)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (50, 4)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (51, 1)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (51, 2)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (51, 3)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (51, 4)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (52, 1)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (52, 2)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (52, 3)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (52, 4)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (53, 1)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (53, 2)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (53, 3)
INSERT [dbo].[UserPartnerCategory] ([UserId], [PartnerCategoryId]) VALUES (53, 4)
/****** Object:  Table [dbo].[Role]    Script Date: 03/09/2015 18:18:18 ******/
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
SET IDENTITY_INSERT [dbo].[Role] ON
INSERT [dbo].[Role] ([RoleId], [Description], [Active]) VALUES (1, N'Admin', 1)
INSERT [dbo].[Role] ([RoleId], [Description], [Active]) VALUES (2, N'Pipe Lead', 1)
INSERT [dbo].[Role] ([RoleId], [Description], [Active]) VALUES (3, N'NSM', 1)
INSERT [dbo].[Role] ([RoleId], [Description], [Active]) VALUES (4, N'ZSM', 1)
INSERT [dbo].[Role] ([RoleId], [Description], [Active]) VALUES (5, N'RSM', 1)
INSERT [dbo].[Role] ([RoleId], [Description], [Active]) VALUES (6, N'ASM', 1)
INSERT [dbo].[Role] ([RoleId], [Description], [Active]) VALUES (7, N'Supervisor', 1)
INSERT [dbo].[Role] ([RoleId], [Description], [Active]) VALUES (8, N'User', 1)
SET IDENTITY_INSERT [dbo].[Role] OFF
/****** Object:  Table [dbo].[Product]    Script Date: 03/09/2015 18:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product](
	[ProductId] [int] NOT NULL,
	[ProductDescription] [varchar](50) NULL,
	[ProductCategory] [varchar](50) NULL,
	[Type] [varchar](50) NULL,
	[SortOrder] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Product] ([ProductId], [ProductDescription], [ProductCategory], [Type], [SortOrder]) VALUES (1, N'NoteBook (KV)', N'Sellthru ($K)', N'Amount', 1)
INSERT [dbo].[Product] ([ProductId], [ProductDescription], [ProductCategory], [Type], [SortOrder]) VALUES (2, N'NoteBook (KV)', N'Sellthru (Units)', N'Unit', 2)
INSERT [dbo].[Product] ([ProductId], [ProductDescription], [ProductCategory], [Type], [SortOrder]) VALUES (3, N'NoteBook (KV)', N'SoW %', N'Wallet', 3)
INSERT [dbo].[Product] ([ProductId], [ProductDescription], [ProductCategory], [Type], [SortOrder]) VALUES (4, N'Desktops (6J)', N'Sellthru ($K)', N'Amount', 4)
INSERT [dbo].[Product] ([ProductId], [ProductDescription], [ProductCategory], [Type], [SortOrder]) VALUES (5, N'Desktops (6J)', N'Sellthru (Units)', N'Unit', 5)
INSERT [dbo].[Product] ([ProductId], [ProductDescription], [ProductCategory], [Type], [SortOrder]) VALUES (6, N'Desktops (6J)', N'SoW %', N'Wallet', 6)
INSERT [dbo].[Product] ([ProductId], [ProductDescription], [ProductCategory], [Type], [SortOrder]) VALUES (7, N'Tablet', N'Sellthru ($K)', N'Amount', 8)
INSERT [dbo].[Product] ([ProductId], [ProductDescription], [ProductCategory], [Type], [SortOrder]) VALUES (8, N'Tablet', N'Sellthru (Units)', N'Unit', 9)
INSERT [dbo].[Product] ([ProductId], [ProductDescription], [ProductCategory], [Type], [SortOrder]) VALUES (9, N'Tablet', N'SoW %', N'Wallet', 10)
INSERT [dbo].[Product] ([ProductId], [ProductDescription], [ProductCategory], [Type], [SortOrder]) VALUES (10, N'Attach', N'Sellthru ($K)', N'Amount', 11)
INSERT [dbo].[Product] ([ProductId], [ProductDescription], [ProductCategory], [Type], [SortOrder]) VALUES (11, N'Attach', N'Sellthru (Units)', N'Unit', 12)
INSERT [dbo].[Product] ([ProductId], [ProductDescription], [ProductCategory], [Type], [SortOrder]) VALUES (12, N'Attach', N'SoW %', N'Wallet', 13)
INSERT [dbo].[Product] ([ProductId], [ProductDescription], [ProductCategory], [Type], [SortOrder]) VALUES (13, N'Print Hardware', N'Sellthru ($K)', N'Amount', 14)
INSERT [dbo].[Product] ([ProductId], [ProductDescription], [ProductCategory], [Type], [SortOrder]) VALUES (14, N'Print Hardware', N'Sellthru (Units)', N'Unit', 15)
INSERT [dbo].[Product] ([ProductId], [ProductDescription], [ProductCategory], [Type], [SortOrder]) VALUES (15, N'Print Hardware', N'SoW %', N'Wallet', 16)
INSERT [dbo].[Product] ([ProductId], [ProductDescription], [ProductCategory], [Type], [SortOrder]) VALUES (16, N'Total PPS', N'Sellthru ($K)', N'Amount', 20)
INSERT [dbo].[Product] ([ProductId], [ProductDescription], [ProductCategory], [Type], [SortOrder]) VALUES (17, N'Desktops (6J)', N'Sellthru (AIO Units)', N'Unit', 7)
INSERT [dbo].[Product] ([ProductId], [ProductDescription], [ProductCategory], [Type], [SortOrder]) VALUES (18, N'Supplies', N'Sellthru ($K)', N'Amount', 17)
INSERT [dbo].[Product] ([ProductId], [ProductDescription], [ProductCategory], [Type], [SortOrder]) VALUES (19, N'Supplies', N'Sellthru (Units)', N'Unit', 18)
INSERT [dbo].[Product] ([ProductId], [ProductDescription], [ProductCategory], [Type], [SortOrder]) VALUES (20, N'Supplies', N'SoW%', N'Wallet', 19)
/****** Object:  Table [dbo].[PartnerCategory]    Script Date: 03/09/2015 18:18:18 ******/
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
SET IDENTITY_INSERT [dbo].[PartnerCategory] ON
INSERT [dbo].[PartnerCategory] ([PartnerCategoryId], [Description], [Active]) VALUES (1, N'MBO', 1)
INSERT [dbo].[PartnerCategory] ([PartnerCategoryId], [Description], [Active]) VALUES (2, N'LFR', 1)
INSERT [dbo].[PartnerCategory] ([PartnerCategoryId], [Description], [Active]) VALUES (3, N'HPW', 1)
INSERT [dbo].[PartnerCategory] ([PartnerCategoryId], [Description], [Active]) VALUES (4, N'VCP', 1)
SET IDENTITY_INSERT [dbo].[PartnerCategory] OFF
/****** Object:  Table [dbo].[Competitor]    Script Date: 03/09/2015 18:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Competitor](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [varchar](50) NOT NULL,
	[CompetitorName] [varchar](50) NOT NULL,
	[SortBy] [int] NULL,
 CONSTRAINT [PK_Competitor] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Competitor] ON
INSERT [dbo].[Competitor] ([CategoryId], [CategoryName], [CompetitorName], [SortBy]) VALUES (1, N'Computing', N'HP', 1)
INSERT [dbo].[Competitor] ([CategoryId], [CategoryName], [CompetitorName], [SortBy]) VALUES (2, N'Computing', N'Acer', 2)
INSERT [dbo].[Competitor] ([CategoryId], [CategoryName], [CompetitorName], [SortBy]) VALUES (3, N'Computing', N'Lenovo', 3)
INSERT [dbo].[Competitor] ([CategoryId], [CategoryName], [CompetitorName], [SortBy]) VALUES (4, N'Computing', N'Samsung', 4)
INSERT [dbo].[Competitor] ([CategoryId], [CategoryName], [CompetitorName], [SortBy]) VALUES (5, N'Computing', N'Sony', 5)
INSERT [dbo].[Competitor] ([CategoryId], [CategoryName], [CompetitorName], [SortBy]) VALUES (6, N'Computing', N'Dell', 6)
INSERT [dbo].[Competitor] ([CategoryId], [CategoryName], [CompetitorName], [SortBy]) VALUES (7, N'Printing', N'HP', 1)
INSERT [dbo].[Competitor] ([CategoryId], [CategoryName], [CompetitorName], [SortBy]) VALUES (8, N'Printing', N'Canon', 2)
INSERT [dbo].[Competitor] ([CategoryId], [CategoryName], [CompetitorName], [SortBy]) VALUES (9, N'Printing', N'Intex', 3)
INSERT [dbo].[Competitor] ([CategoryId], [CategoryName], [CompetitorName], [SortBy]) VALUES (10, N'Printing', N'Lenovo', 4)
SET IDENTITY_INSERT [dbo].[Competitor] OFF
/****** Object:  Table [dbo].[City]    Script Date: 03/09/2015 18:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[City](
	[CityId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](30) NOT NULL,
	[ZoneId] [int] NOT NULL,
	[StateId] [int] NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[CityId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[City] ON
INSERT [dbo].[City] ([CityId], [Description], [ZoneId], [StateId], [Active]) VALUES (1, N'Banglore', 5, 5, 1)
INSERT [dbo].[City] ([CityId], [Description], [ZoneId], [StateId], [Active]) VALUES (2, N'Bhopal', 2, 2, 1)
INSERT [dbo].[City] ([CityId], [Description], [ZoneId], [StateId], [Active]) VALUES (3, N'Chandigarh', 4, 4, 1)
INSERT [dbo].[City] ([CityId], [Description], [ZoneId], [StateId], [Active]) VALUES (4, N'Chennai', 5, 5, 1)
INSERT [dbo].[City] ([CityId], [Description], [ZoneId], [StateId], [Active]) VALUES (5, N'Chennai / Coimbtore', 5, 5, 1)
INSERT [dbo].[City] ([CityId], [Description], [ZoneId], [StateId], [Active]) VALUES (6, N'Delhi', 3, 3, 1)
INSERT [dbo].[City] ([CityId], [Description], [ZoneId], [StateId], [Active]) VALUES (7, N'Hyderabad', 1, 1, 1)
INSERT [dbo].[City] ([CityId], [Description], [ZoneId], [StateId], [Active]) VALUES (8, N'Mumbai', 7, 7, 1)
INSERT [dbo].[City] ([CityId], [Description], [ZoneId], [StateId], [Active]) VALUES (9, N'Pune', 7, 7, 1)
INSERT [dbo].[City] ([CityId], [Description], [ZoneId], [StateId], [Active]) VALUES (10, N'Kolkatta', 8, 8, 1)
SET IDENTITY_INSERT [dbo].[City] OFF
/****** Object:  Table [dbo].[User]    Script Date: 03/09/2015 18:18:18 ******/
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
SET IDENTITY_INSERT [dbo].[User] ON
INSERT [dbo].[User] ([UserId], [EmailId], [Pwd], [Name], [RoleId], [ReportingId], [Active], [Mobile]) VALUES (2, N'anurag.arora@hp.com', N'5Ndqp728+p8=', N'Anurag Arora', 3, 7, 1, N'9953825792')
INSERT [dbo].[User] ([UserId], [EmailId], [Pwd], [Name], [RoleId], [ReportingId], [Active], [Mobile]) VALUES (4, N'chawla@hp.com', N'Xye7Ae9x6sg=', N'Umesh Chawla', 4, 2, 1, N'9935898000')
INSERT [dbo].[User] ([UserId], [EmailId], [Pwd], [Name], [RoleId], [ReportingId], [Active], [Mobile]) VALUES (7, N'dev.sinha22@gmail.com', N'de', N'Admin', 5, 4, 0, N'9953825792')
INSERT [dbo].[User] ([UserId], [EmailId], [Pwd], [Name], [RoleId], [ReportingId], [Active], [Mobile]) VALUES (8, N'gurpreet.malik@hp.com', N'8HUZl9twVqw=', N'Gurpreet Singh Malik', 2, 7, 1, N'9935898000')
INSERT [dbo].[User] ([UserId], [EmailId], [Pwd], [Name], [RoleId], [ReportingId], [Active], [Mobile]) VALUES (9, N'vibhor.bansal@hp.com', N'8HUZl9twVqw=', N'Vibhor Bansal', 2, 7, 1, N'9935898000')
INSERT [dbo].[User] ([UserId], [EmailId], [Pwd], [Name], [RoleId], [ReportingId], [Active], [Mobile]) VALUES (10, N'sukanta.mukhopadhyay@hp.com', N'sUerIRyYDD8=', N'Sukanta Mukhopadhyay', 3, 7, 1, N'9935898000')
INSERT [dbo].[User] ([UserId], [EmailId], [Pwd], [Name], [RoleId], [ReportingId], [Active], [Mobile]) VALUES (11, N'harpreet.singh-bhatia@hp.com', N'RiXDrb5v738=', N'Harpreet Singh Bhatia', 3, 7, 1, N'9935898000')
INSERT [dbo].[User] ([UserId], [EmailId], [Pwd], [Name], [RoleId], [ReportingId], [Active], [Mobile]) VALUES (12, N'kanika.puri@hp.com', N'x6CXwlltPTo=', N'Kanika Puri', 1, 7, 1, N'9935898000')
INSERT [dbo].[User] ([UserId], [EmailId], [Pwd], [Name], [RoleId], [ReportingId], [Active], [Mobile]) VALUES (13, N'rishi.raj@hp.com', N'x6CXwlltPTo=', N'Rishi Raj', 1, 7, 1, N'9935898000')
INSERT [dbo].[User] ([UserId], [EmailId], [Pwd], [Name], [RoleId], [ReportingId], [Active], [Mobile]) VALUES (14, N'deepti.dang@hp.com', N'x6CXwlltPTo=', N'Deepti Dang', 1, 7, 1, N'9935898000')
INSERT [dbo].[User] ([UserId], [EmailId], [Pwd], [Name], [RoleId], [ReportingId], [Active], [Mobile]) VALUES (15, N'hemant.sikka@hp.com', N'Xye7Ae9x6sg=', N'Hemant Sikka', 4, 2, 1, N'9935898000')
INSERT [dbo].[User] ([UserId], [EmailId], [Pwd], [Name], [RoleId], [ReportingId], [Active], [Mobile]) VALUES (16, N'manish-kumar.srivastava@hp.com', N'Xye7Ae9x6sg=', N'Manish Srivastava', 4, 10, 1, N'9935898000')
INSERT [dbo].[User] ([UserId], [EmailId], [Pwd], [Name], [RoleId], [ReportingId], [Active], [Mobile]) VALUES (17, N'arin.banerjee@hp.com', N'Xye7Ae9x6sg=', N'Arin Banerjee', 4, 11, 1, N'9935898000')
INSERT [dbo].[User] ([UserId], [EmailId], [Pwd], [Name], [RoleId], [ReportingId], [Active], [Mobile]) VALUES (18, N'vijainder-singh.kundu@hp.com', N'EganCc0EdCQ=', N'Vijainder Singh Kundu', 5, 4, 1, N'9935898000')
INSERT [dbo].[User] ([UserId], [EmailId], [Pwd], [Name], [RoleId], [ReportingId], [Active], [Mobile]) VALUES (19, N'sachin.saini@hp.com', N'EganCc0EdCQ=', N'Sachin Saini', 5, 11, 1, N'9935898000')
INSERT [dbo].[User] ([UserId], [EmailId], [Pwd], [Name], [RoleId], [ReportingId], [Active], [Mobile]) VALUES (20, N'jaitly@hp.com', N'EganCc0EdCQ=', N'Gaurav Jaitly', 5, 11, 1, N'9935898000')
INSERT [dbo].[User] ([UserId], [EmailId], [Pwd], [Name], [RoleId], [ReportingId], [Active], [Mobile]) VALUES (21, N'mvasudevan@hp.com', N'Xye7Ae9x6sg=', N'V Murali', 5, 10, 1, N'9935898000')
INSERT [dbo].[User] ([UserId], [EmailId], [Pwd], [Name], [RoleId], [ReportingId], [Active], [Mobile]) VALUES (22, N'srikant.choudhury@hp.com', N'3coZqMSeOFc=', N'Srikant Choudhury', 8, 4, 1, N'9935898000')
INSERT [dbo].[User] ([UserId], [EmailId], [Pwd], [Name], [RoleId], [ReportingId], [Active], [Mobile]) VALUES (23, N'nitin.ahuja@hp.com', N'3coZqMSeOFc=', N'Nitin Ahuja', 8, 15, 1, N'9935898000')
INSERT [dbo].[User] ([UserId], [EmailId], [Pwd], [Name], [RoleId], [ReportingId], [Active], [Mobile]) VALUES (24, N'kiran.sriniwas@hp.com', N'3coZqMSeOFc=', N'Kiran Sriniwas', 8, 10, 1, N'9935898000')
INSERT [dbo].[User] ([UserId], [EmailId], [Pwd], [Name], [RoleId], [ReportingId], [Active], [Mobile]) VALUES (25, N'vikrant.kumar@hp.com', N'3coZqMSeOFc=', N'Vikrant Kumar', 8, 10, 1, N'9935898000')
INSERT [dbo].[User] ([UserId], [EmailId], [Pwd], [Name], [RoleId], [ReportingId], [Active], [Mobile]) VALUES (26, N's.sarath-babu@hp.com', N'3coZqMSeOFc=', N'S. Sarath Babu', 8, 10, 1, N'9935898000')
INSERT [dbo].[User] ([UserId], [EmailId], [Pwd], [Name], [RoleId], [ReportingId], [Active], [Mobile]) VALUES (27, N'prasad.chimka@hp.com', N'3coZqMSeOFc=', N'Prasad Chimka', 8, 10, 1, N'9935898000')
INSERT [dbo].[User] ([UserId], [EmailId], [Pwd], [Name], [RoleId], [ReportingId], [Active], [Mobile]) VALUES (28, N'gopal@hp.com', N'3coZqMSeOFc=', N'Gopal', 8, 11, 1, N'9935898000')
INSERT [dbo].[User] ([UserId], [EmailId], [Pwd], [Name], [RoleId], [ReportingId], [Active], [Mobile]) VALUES (29, N'abhinay.desai@hp.com', N'3coZqMSeOFc=', N'Abhinay Desai', 8, 11, 1, N'9935898000')
INSERT [dbo].[User] ([UserId], [EmailId], [Pwd], [Name], [RoleId], [ReportingId], [Active], [Mobile]) VALUES (30, N'ravi.manjeshwar@hp.com', N'Xye7Ae9x6sg=', N'Ravi Manjeshwar', 4, 2, 1, N'987')
INSERT [dbo].[User] ([UserId], [EmailId], [Pwd], [Name], [RoleId], [ReportingId], [Active], [Mobile]) VALUES (31, N'sanjay.gosh@hp.com', N'EganCc0EdCQ=', N'Sanjay Gosh', 5, 30, 1, N'9800')
INSERT [dbo].[User] ([UserId], [EmailId], [Pwd], [Name], [RoleId], [ReportingId], [Active], [Mobile]) VALUES (32, N'abhishek.kumar@hp.com', N'3coZqMSeOFc=', N'Abhishek Kumar', 8, 31, 1, N'9830')
INSERT [dbo].[User] ([UserId], [EmailId], [Pwd], [Name], [RoleId], [ReportingId], [Active], [Mobile]) VALUES (33, N'avinash@hp.com', N'3coZqMSeOFc=', N'Avinash', 8, 14, 1, N'9839')
INSERT [dbo].[User] ([UserId], [EmailId], [Pwd], [Name], [RoleId], [ReportingId], [Active], [Mobile]) VALUES (34, N'azar@hp.com', N'3coZqMSeOFc=', N'Azar', 8, 14, 1, N'9839')
INSERT [dbo].[User] ([UserId], [EmailId], [Pwd], [Name], [RoleId], [ReportingId], [Active], [Mobile]) VALUES (35, N'cat-ho@hp.com', N'3coZqMSeOFc=', N'Cat-HO', 8, 14, 1, N'9839')
INSERT [dbo].[User] ([UserId], [EmailId], [Pwd], [Name], [RoleId], [ReportingId], [Active], [Mobile]) VALUES (36, N'category@hp.com', N'3coZqMSeOFc=', N'Category', 8, 14, 1, N'9839')
INSERT [dbo].[User] ([UserId], [EmailId], [Pwd], [Name], [RoleId], [ReportingId], [Active], [Mobile]) VALUES (37, N'compuage@hp.com', N'3coZqMSeOFc=', N'Compuage', 8, 14, 1, N'9839')
INSERT [dbo].[User] ([UserId], [EmailId], [Pwd], [Name], [RoleId], [ReportingId], [Active], [Mobile]) VALUES (38, N'gaurav.jaitely@hp.com', N'3coZqMSeOFc=', N'Gaurav Jaitely', 8, 14, 1, N'9839')
INSERT [dbo].[User] ([UserId], [EmailId], [Pwd], [Name], [RoleId], [ReportingId], [Active], [Mobile]) VALUES (39, N'gautam@hp.com', N'3coZqMSeOFc=', N'Gautam', 8, 14, 1, N'9839')
INSERT [dbo].[User] ([UserId], [EmailId], [Pwd], [Name], [RoleId], [ReportingId], [Active], [Mobile]) VALUES (40, N'ho@hp.com', N'3coZqMSeOFc=', N'HO', 8, 7, 1, N'9839')
INSERT [dbo].[User] ([UserId], [EmailId], [Pwd], [Name], [RoleId], [ReportingId], [Active], [Mobile]) VALUES (41, N'RDS@hp.com', N'3coZqMSeOFc=', N'RDS', 8, 7, 1, N'9839')
INSERT [dbo].[User] ([UserId], [EmailId], [Pwd], [Name], [RoleId], [ReportingId], [Active], [Mobile]) VALUES (42, N'TM@hp.com', N'3coZqMSeOFc=', N'TM', 8, 7, 1, N'9839')
INSERT [dbo].[User] ([UserId], [EmailId], [Pwd], [Name], [RoleId], [ReportingId], [Active], [Mobile]) VALUES (43, N'ISPs@hp.com', N'3coZqMSeOFc=', N'ISPs', 8, 7, 1, N'9839')
INSERT [dbo].[User] ([UserId], [EmailId], [Pwd], [Name], [RoleId], [ReportingId], [Active], [Mobile]) VALUES (44, N'Kiran@hp.com', N'3coZqMSeOFc=', N'Kiran', 8, 7, 1, N'9839')
INSERT [dbo].[User] ([UserId], [EmailId], [Pwd], [Name], [RoleId], [ReportingId], [Active], [Mobile]) VALUES (45, N'Lakshmi@hp.com', N'3coZqMSeOFc=', N'Lakshmi', 8, 7, 1, N'9839')
INSERT [dbo].[User] ([UserId], [EmailId], [Pwd], [Name], [RoleId], [ReportingId], [Active], [Mobile]) VALUES (46, N'Link@hp.com', N'3coZqMSeOFc=', N'Link', 8, 7, 1, N'9839')
INSERT [dbo].[User] ([UserId], [EmailId], [Pwd], [Name], [RoleId], [ReportingId], [Active], [Mobile]) VALUES (47, N'manish.g@hp.com', N'3coZqMSeOFc=', N'Manish G', 8, 7, 1, N'9839')
INSERT [dbo].[User] ([UserId], [EmailId], [Pwd], [Name], [RoleId], [ReportingId], [Active], [Mobile]) VALUES (48, N'Neeraj@hp.com', N'3coZqMSeOFc=', N'Neeraj', 8, 7, 1, N'9839')
INSERT [dbo].[User] ([UserId], [EmailId], [Pwd], [Name], [RoleId], [ReportingId], [Active], [Mobile]) VALUES (49, N'Nitin@hp.com', N'3coZqMSeOFc=', N'Nitin', 8, 7, 1, N'9839')
INSERT [dbo].[User] ([UserId], [EmailId], [Pwd], [Name], [RoleId], [ReportingId], [Active], [Mobile]) VALUES (50, N'Rishab@hp.com', N'3coZqMSeOFc=', N'Rishab', 8, 7, 1, N'9839')
INSERT [dbo].[User] ([UserId], [EmailId], [Pwd], [Name], [RoleId], [ReportingId], [Active], [Mobile]) VALUES (51, N'sarwadeep@hp.com', N'3coZqMSeOFc=', N'Sarwadeep', 8, 7, 1, N'9839')
INSERT [dbo].[User] ([UserId], [EmailId], [Pwd], [Name], [RoleId], [ReportingId], [Active], [Mobile]) VALUES (52, N'Trainer@hp.com', N'3coZqMSeOFc=', N'Trainer', 8, 7, 1, N'9839')
INSERT [dbo].[User] ([UserId], [EmailId], [Pwd], [Name], [RoleId], [ReportingId], [Active], [Mobile]) VALUES (53, N'Viswanath@hp.com', N'3coZqMSeOFc=', N'Viswanath', 8, 7, 1, N'9839')
SET IDENTITY_INSERT [dbo].[User] OFF
/****** Object:  Table [dbo].[Permission]    Script Date: 03/09/2015 18:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Permission](
	[PermissionId] [int] IDENTITY(1,1) NOT NULL,
	[ModuleName] [varchar](50) NOT NULL,
	[RoleId] [int] NOT NULL,
	[CanView] [bit] NOT NULL,
	[CanAdd] [bit] NOT NULL,
	[CanEdit] [bit] NOT NULL,
	[CanDelete] [bit] NOT NULL,
 CONSTRAINT [PK_Permission] PRIMARY KEY CLUSTERED 
(
	[PermissionId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Permission] ON
INSERT [dbo].[Permission] ([PermissionId], [ModuleName], [RoleId], [CanView], [CanAdd], [CanEdit], [CanDelete]) VALUES (1, N'JBPlan', 1, 1, 1, 1, 1)
INSERT [dbo].[Permission] ([PermissionId], [ModuleName], [RoleId], [CanView], [CanAdd], [CanEdit], [CanDelete]) VALUES (2, N'JBPlan', 2, 1, 1, 1, 1)
INSERT [dbo].[Permission] ([PermissionId], [ModuleName], [RoleId], [CanView], [CanAdd], [CanEdit], [CanDelete]) VALUES (3, N'JBPlan', 3, 1, 1, 1, 1)
INSERT [dbo].[Permission] ([PermissionId], [ModuleName], [RoleId], [CanView], [CanAdd], [CanEdit], [CanDelete]) VALUES (4, N'JBPlan', 4, 1, 1, 1, 1)
INSERT [dbo].[Permission] ([PermissionId], [ModuleName], [RoleId], [CanView], [CanAdd], [CanEdit], [CanDelete]) VALUES (5, N'JBPlan', 5, 1, 1, 1, 1)
INSERT [dbo].[Permission] ([PermissionId], [ModuleName], [RoleId], [CanView], [CanAdd], [CanEdit], [CanDelete]) VALUES (6, N'JBPlan', 6, 1, 1, 1, 1)
INSERT [dbo].[Permission] ([PermissionId], [ModuleName], [RoleId], [CanView], [CanAdd], [CanEdit], [CanDelete]) VALUES (7, N'JBPlan', 7, 1, 1, 1, 1)
INSERT [dbo].[Permission] ([PermissionId], [ModuleName], [RoleId], [CanView], [CanAdd], [CanEdit], [CanDelete]) VALUES (8, N'JBPlan', 8, 1, 1, 1, 1)
SET IDENTITY_INSERT [dbo].[Permission] OFF
/****** Object:  Table [dbo].[UserCity]    Script Date: 03/09/2015 18:18:18 ******/
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
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (2, 3)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (2, 6)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (2, 10)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (4, 6)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (7, 1)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (7, 2)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (7, 3)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (7, 4)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (7, 5)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (7, 6)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (7, 7)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (7, 8)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (7, 9)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (7, 10)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (8, 1)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (8, 2)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (8, 3)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (8, 4)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (8, 5)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (8, 6)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (8, 7)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (8, 8)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (8, 9)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (8, 10)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (9, 1)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (9, 2)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (9, 3)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (9, 4)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (9, 5)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (9, 6)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (9, 7)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (9, 8)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (9, 9)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (10, 1)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (10, 4)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (10, 5)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (10, 7)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (11, 2)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (11, 8)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (11, 9)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (12, 1)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (12, 2)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (12, 3)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (12, 4)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (12, 5)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (12, 6)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (12, 7)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (12, 8)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (12, 9)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (12, 10)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (13, 1)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (13, 2)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (13, 3)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (13, 4)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (13, 5)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (13, 6)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (13, 7)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (13, 8)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (13, 9)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (13, 10)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (14, 1)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (14, 2)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (14, 3)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (14, 4)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (14, 5)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (14, 6)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (14, 7)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (14, 8)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (14, 9)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (14, 10)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (15, 3)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (16, 1)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (17, 2)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (18, 6)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (19, 8)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (20, 9)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (21, 5)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (22, 6)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (23, 3)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (24, 7)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (25, 1)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (26, 7)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (27, 1)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (28, 8)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (29, 9)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (30, 10)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (31, 10)
INSERT [dbo].[UserCity] ([UserId], [CityId]) VALUES (32, 10)
/****** Object:  Table [dbo].[Partner]    Script Date: 03/09/2015 18:18:18 ******/
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
	[CoreBusiness] [varchar](50) NULL,
	[CurrentBrands] [varchar](150) NULL,
	[StaffCount] [int] NOT NULL,
	[MainCompetitors] [varchar](150) NULL,
	[CustomerSegmentsAddressed] [varchar](150) NULL,
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
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Partner] ON
INSERT [dbo].[Partner] ([PartnerId], [PartnerName], [ContactPerson], [Email], [Phone], [Mobile], [Address], [CoreBusiness], [CurrentBrands], [StaffCount], [MainCompetitors], [CustomerSegmentsAddressed], [PartnerCategoryId], [CityId], [AssociatedUserId], [FrequencyOfEngagement], [RelationshipStatus], [Active]) VALUES (1, N'IT World', N'Mr. Neeraj Lath', N'it.world@test.com', N'9953', N'9953825792', N'CP', N'IT Retail', N'HPW, Lenovo & Asus', 3, N'Lenovo & Dell', N'Home User & Students', 3, 7, 24, N'5 visits per Week', N'Positive', 1)
INSERT [dbo].[Partner] ([PartnerId], [PartnerName], [ContactPerson], [Email], [Phone], [Mobile], [Address], [CoreBusiness], [CurrentBrands], [StaffCount], [MainCompetitors], [CustomerSegmentsAddressed], [PartnerCategoryId], [CityId], [AssociatedUserId], [FrequencyOfEngagement], [RelationshipStatus], [Active]) VALUES (2, N'Accord Computech Pvt. Ltd.', N'Mr. Naresh Garg', N'accord.computers@test.com', N'9953', N'9953825792', N'CP', N'IT Retail', N'HP, Dell, Apple', 8, N'Dell', N'Retail Consumer', 1, 3, 23, N'4 visits in a Week', N'Positive', 1)
INSERT [dbo].[Partner] ([PartnerId], [PartnerName], [ContactPerson], [Email], [Phone], [Mobile], [Address], [CoreBusiness], [CurrentBrands], [StaffCount], [MainCompetitors], [CustomerSegmentsAddressed], [PartnerCategoryId], [CityId], [AssociatedUserId], [FrequencyOfEngagement], [RelationshipStatus], [Active]) VALUES (3, N'Boss Computers Pvt. Ltd.
', N'Mr. NPS Bindra
', N'boss.computer@test.com', N'9953', N'9953825792', N'CP', N'IT Retail', N'HP, Dell, Toshiba, Lenovo & HCL
', 23, N'Dell, Toshiba
', N'Retail Consumer
', 1, 3, 23, N'4 visits in a Week
', N'Positive', 1)
INSERT [dbo].[Partner] ([PartnerId], [PartnerName], [ContactPerson], [Email], [Phone], [Mobile], [Address], [CoreBusiness], [CurrentBrands], [StaffCount], [MainCompetitors], [CustomerSegmentsAddressed], [PartnerCategoryId], [CityId], [AssociatedUserId], [FrequencyOfEngagement], [RelationshipStatus], [Active]) VALUES (4, N'Hariom Retail Pvt. Ltd.
', N'Mr. Sunil Juneja (MD)
', N'hariom.retail@test.com', N'9953', N'9953825792', N'CP', N'Consumer Electronics
', N'HP, Acer, Lenovo, Dell & Asus
', 20, N'Lenovo, Dell, Asus
', N'Retail Consumer
', 1, 6, 22, N'3 visits in a Week
', N'Positive', 1)
INSERT [dbo].[Partner] ([PartnerId], [PartnerName], [ContactPerson], [Email], [Phone], [Mobile], [Address], [CoreBusiness], [CurrentBrands], [StaffCount], [MainCompetitors], [CustomerSegmentsAddressed], [PartnerCategoryId], [CityId], [AssociatedUserId], [FrequencyOfEngagement], [RelationshipStatus], [Active]) VALUES (5, N'Sargam India Eletronics Pvt. Ltd.
', N'Mr. Dyanand & Deepak Bansal (CEO)
', N'sargam@test.com', N'9953', N'9953825792', N'CP', N'Consumer Electronics
', N'HP, Lenovo & Dell
', 100, N'Lenovo
', N'Retail Consumer
', 1, 6, 22, N'4 visits in a Week
', N'Positive', 1)
INSERT [dbo].[Partner] ([PartnerId], [PartnerName], [ContactPerson], [Email], [Phone], [Mobile], [Address], [CoreBusiness], [CurrentBrands], [StaffCount], [MainCompetitors], [CustomerSegmentsAddressed], [PartnerCategoryId], [CityId], [AssociatedUserId], [FrequencyOfEngagement], [RelationshipStatus], [Active]) VALUES (6, N'Unique Infoways Pvt. Ltd.
', N'Mr. Vipul Jain
', N'unique.infoway@test.com', N'9953', N'9953825792', N'CP', N'IT
 Retail', N'HP,  Lenovo, Dell, Acer, Toshiba, Asus & Apple
', 100, N'Lenovo, Dell
', N'Retail Consumer
', 1, 6, 22, N'4 visits in a Week
', N'Positive', 1)
INSERT [dbo].[Partner] ([PartnerId], [PartnerName], [ContactPerson], [Email], [Phone], [Mobile], [Address], [CoreBusiness], [CurrentBrands], [StaffCount], [MainCompetitors], [CustomerSegmentsAddressed], [PartnerCategoryId], [CityId], [AssociatedUserId], [FrequencyOfEngagement], [RelationshipStatus], [Active]) VALUES (7, N'Arihant Infocom', N'Mr. Manish Kumar', N'arihant.infocom@test.com', N'9953', N'9953825792', N'CP', N'IT PC & Components', N'HP, Intel, Dell, Asus, Logitech
', 15, N'LFRs & Retailer / Online Chaneels
', N'T3 Retailers & Small Sis
', 1, 1, 25, N'6 visits in a Week
', N'Positive', 1)
INSERT [dbo].[Partner] ([PartnerId], [PartnerName], [ContactPerson], [Email], [Phone], [Mobile], [Address], [CoreBusiness], [CurrentBrands], [StaffCount], [MainCompetitors], [CustomerSegmentsAddressed], [PartnerCategoryId], [CityId], [AssociatedUserId], [FrequencyOfEngagement], [RelationshipStatus], [Active]) VALUES (8, N'Bajaj Electronics
', N'Mr. Karan Bajaj
', N'karan.bajaj@test.com', N'9953', N'9953825792', N'CP', N'Consumer Electronics
', N'HP Dell, Lenevo, Samsung, Apple & Toshiba
', 13, N'Lenovo & Dell', N'Home User
', 1, 7, 26, N'2 visits in a Week
', N'Positive', 1)
INSERT [dbo].[Partner] ([PartnerId], [PartnerName], [ContactPerson], [Email], [Phone], [Mobile], [Address], [CoreBusiness], [CurrentBrands], [StaffCount], [MainCompetitors], [CustomerSegmentsAddressed], [PartnerCategoryId], [CityId], [AssociatedUserId], [FrequencyOfEngagement], [RelationshipStatus], [Active]) VALUES (9, N'Geonet IT Mall
, Mumbai', N'Mr. Bimal Kumar Singh
', N'geonet.it-mall@test.com', N'9953', N'9953825792', N'CP', N'IT Retail', N'HP', 35, N'LFR & Online
', N'Home User, Students & Higher Middle Class
', 3, 8, 28, N'2-3 Times in a Month
', N'Positive', 1)
INSERT [dbo].[Partner] ([PartnerId], [PartnerName], [ContactPerson], [Email], [Phone], [Mobile], [Address], [CoreBusiness], [CurrentBrands], [StaffCount], [MainCompetitors], [CustomerSegmentsAddressed], [PartnerCategoryId], [CityId], [AssociatedUserId], [FrequencyOfEngagement], [RelationshipStatus], [Active]) VALUES (10, N'Geonet IT Mall
, Pune', N'Mr. Bimal Kumar Singh
', N'geonet.it-mall@test.com', N'9953', N'9953825792', N'CP', N'IT Retail', N'HP', 35, N'Dell, Lenovo Exclusive Outlets + T2 MBO''s in vicinity
', N'End Customers, Students, Family
', 3, 9, 29, N'Abhinay Desai
', N'Positive', 1)
INSERT [dbo].[Partner] ([PartnerId], [PartnerName], [ContactPerson], [Email], [Phone], [Mobile], [Address], [CoreBusiness], [CurrentBrands], [StaffCount], [MainCompetitors], [CustomerSegmentsAddressed], [PartnerCategoryId], [CityId], [AssociatedUserId], [FrequencyOfEngagement], [RelationshipStatus], [Active]) VALUES (11, N'Girias
', N'Mr. Rishabh Giria
', N'girias@test.com', N'9953', N'9953825792', N'CP', N'Consumer Durables
', N'Dell, Acer & Canon
', 800, N'Dell in PC & Canon in Printers
', N'Home User
', 1, 1, 27, N'3 visits in a Week
', N'Positive', 1)
INSERT [dbo].[Partner] ([PartnerId], [PartnerName], [ContactPerson], [Email], [Phone], [Mobile], [Address], [CoreBusiness], [CurrentBrands], [StaffCount], [MainCompetitors], [CustomerSegmentsAddressed], [PartnerCategoryId], [CityId], [AssociatedUserId], [FrequencyOfEngagement], [RelationshipStatus], [Active]) VALUES (12, N'Kohinoor Telvideo Pvt. Ltd.
', N'Mr. Vishal Mewani
 (Director) / Mr. Sanjay Mewani', N'kohinoor@test.com', N'9953', N'9953825792', N'CP', N'Consumer Electronics & Appliance Retailing
', N'Samsung, Sony, LG, Philips & other CE products. IT - HP, Dell, Lenovo, Sony & Acer
', 10, N'LFR, Online
', N'Home User, Students & Higher Middle Class. Corporate Selling Panels
', 1, 8, 28, N'1-2 visits in a Week
', N'Positive', 1)
INSERT [dbo].[Partner] ([PartnerId], [PartnerName], [ContactPerson], [Email], [Phone], [Mobile], [Address], [CoreBusiness], [CurrentBrands], [StaffCount], [MainCompetitors], [CustomerSegmentsAddressed], [PartnerCategoryId], [CityId], [AssociatedUserId], [FrequencyOfEngagement], [RelationshipStatus], [Active]) VALUES (13, N'Sairaj Tech Infra Pvt. Ltd.
', N'Mr. Azhar Tamboli
 / Mr. Arshad Tamboli', N'sairaj@test.com', N'9953', N'9953825792', N'CP', N'IT Sales & Service, Security Products
', N'HP, Lenovo, Dell & Asus
', 70, N'Dell & Lenovo
', N'Students & End Customer
', 3, 9, 29, N'2 visits in a Week
', N'Positive', 1)
INSERT [dbo].[Partner] ([PartnerId], [PartnerName], [ContactPerson], [Email], [Phone], [Mobile], [Address], [CoreBusiness], [CurrentBrands], [StaffCount], [MainCompetitors], [CustomerSegmentsAddressed], [PartnerCategoryId], [CityId], [AssociatedUserId], [FrequencyOfEngagement], [RelationshipStatus], [Active]) VALUES (22, N'DMS', N'Mr.Apporva / Sumit
', N'dms@test.com', N'9953', N'9953825792', N'CP', N'Telecom Sales
', N'HP, Sony Accessories 
', 6, N'Iball/Samsung/Dell/Micromax
', N'Channel Partners, Retail Consumer
', 1, 10, 32, N'', N'Positive', 1)
INSERT [dbo].[Partner] ([PartnerId], [PartnerName], [ContactPerson], [Email], [Phone], [Mobile], [Address], [CoreBusiness], [CurrentBrands], [StaffCount], [MainCompetitors], [CustomerSegmentsAddressed], [PartnerCategoryId], [CityId], [AssociatedUserId], [FrequencyOfEngagement], [RelationshipStatus], [Active]) VALUES (23, N'GGC Industries', N'Mr.Rahul
', N'ggc@test.com', N'9953', N'9953825792', N'CP', N'Telecom Sales
', N'HP, LG mobile, HTC mobile
', 25, N'Lenovo / LG / HTC / Samsung / NOKIA / Micromax / Gionee / Panasonic
', N'Channel Partners, Retail Consumer
', 1, 10, 32, N'', N'Positive', 1)
INSERT [dbo].[Partner] ([PartnerId], [PartnerName], [ContactPerson], [Email], [Phone], [Mobile], [Address], [CoreBusiness], [CurrentBrands], [StaffCount], [MainCompetitors], [CustomerSegmentsAddressed], [PartnerCategoryId], [CityId], [AssociatedUserId], [FrequencyOfEngagement], [RelationshipStatus], [Active]) VALUES (24, N'Global Trade Agency', N'Mr. Anuj Shah
', N'gta@test.com', N'9953', N'9953825792', N'CP', N'Telecom Sales
', N'HP, LG mobile Distributor North Bengal
', 7, N'Lenovo / LG / HTC / Samsung / NOKIA / Micromax / Gionee / Panasonic
', N'Channel Partners, Retail Consumer
', 1, 10, 32, N'', N'Positive', 1)
INSERT [dbo].[Partner] ([PartnerId], [PartnerName], [ContactPerson], [Email], [Phone], [Mobile], [Address], [CoreBusiness], [CurrentBrands], [StaffCount], [MainCompetitors], [CustomerSegmentsAddressed], [PartnerCategoryId], [CityId], [AssociatedUserId], [FrequencyOfEngagement], [RelationshipStatus], [Active]) VALUES (25, N'MKG Computers Pvt. Ltd.
', N'Mr. Naveen Garg
', N'mkg@test.com', N'9953', N'9953825792', N'CP', N'IT & Mobile Distribution
', N'HP, Micromax, Lava, HTC & Blackberry
', 40, N'Samsung, Sony
', N'T3 Mobile
', 1, 10, 32, N'1 in a Month', N'Positive', 1)
INSERT [dbo].[Partner] ([PartnerId], [PartnerName], [ContactPerson], [Email], [Phone], [Mobile], [Address], [CoreBusiness], [CurrentBrands], [StaffCount], [MainCompetitors], [CustomerSegmentsAddressed], [PartnerCategoryId], [CityId], [AssociatedUserId], [FrequencyOfEngagement], [RelationshipStatus], [Active]) VALUES (26, N'Shweta Computers & Peripherals
', N'Mr. Dinesh Heda
', N'shweta@test.com', N'9953', N'9953825792', N'CP', N'IT Exclusive
', N'HP, Lenovo, Dell & Acer
', 100, N'Dell, Acer & Lenovo
', N'Home User & SOHO', 1, 7, 26, N'4 visits in a Week
', N'Positive', 1)
INSERT [dbo].[Partner] ([PartnerId], [PartnerName], [ContactPerson], [Email], [Phone], [Mobile], [Address], [CoreBusiness], [CurrentBrands], [StaffCount], [MainCompetitors], [CustomerSegmentsAddressed], [PartnerCategoryId], [CityId], [AssociatedUserId], [FrequencyOfEngagement], [RelationshipStatus], [Active]) VALUES (27, N'Technocrat Infotech
', N'Mr. Asif Khan
', N'technocrat@test.com', N'9953', N'9953825792', N'CP', N'IT Exlusive
', N'HP, Lenovo, Epson, Sony, HCL, Philips Monitor, Escan, Mercury, Genius, Nokia
', 70, N'Lenovo/ Sony/ Dell/ Nokia/ Samsung/ Micromax
', N'Channel Partners & Retail Consumer
', 1, 10, 32, N'1 in a Month', N'Positive', 1)
INSERT [dbo].[Partner] ([PartnerId], [PartnerName], [ContactPerson], [Email], [Phone], [Mobile], [Address], [CoreBusiness], [CurrentBrands], [StaffCount], [MainCompetitors], [CustomerSegmentsAddressed], [PartnerCategoryId], [CityId], [AssociatedUserId], [FrequencyOfEngagement], [RelationshipStatus], [Active]) VALUES (28, N'Flipkart', N'E-Tailer', N'flipkart@test.com', N'9953', N'9953825792', N'CP', N'E-Commerce', N'All Brands', 1000, N'All Except HP', N'Retail Consumer', 1, 6, 22, N'3 visits in a Week
', N'Positive', 1)
INSERT [dbo].[Partner] ([PartnerId], [PartnerName], [ContactPerson], [Email], [Phone], [Mobile], [Address], [CoreBusiness], [CurrentBrands], [StaffCount], [MainCompetitors], [CustomerSegmentsAddressed], [PartnerCategoryId], [CityId], [AssociatedUserId], [FrequencyOfEngagement], [RelationshipStatus], [Active]) VALUES (29, N'hkjhkjh', N'b', N'jjknj', N'nkjn', N'jnj', N'nn', N'hkjhjhkj', N'jkhk', 10, N'jhkj', N'kjhj', 1, 4, 2, N'jhb', N'b', 0)
SET IDENTITY_INSERT [dbo].[Partner] OFF
/****** Object:  Table [dbo].[ActivityLog]    Script Date: 03/09/2015 18:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ActivityLog](
	[LogId] [int] IDENTITY(1,1) NOT NULL,
	[Module] [varchar](50) NULL,
	[UserId] [int] NULL,
	[PartnerId] [int] NULL,
	[QuarterYear] [varchar](30) NULL,
	[LogDate] [datetime] NULL,
 CONSTRAINT [PK_ActivityLog] PRIMARY KEY CLUSTERED 
(
	[LogId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ActivityLog] ON
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (1, N'Target Entry', 2, 2, N'Q2 2015', CAST(0x0000A44500A9BD20 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (2, N'Target Entry', NULL, 3, N'Q2 2015', CAST(0x0000A45500F09F68 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (3, N'Target Entry', NULL, 3, N'Q2 2015', CAST(0x0000A45500F09F87 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (4, N'Target Entry', NULL, 3, N'Q2 2015', CAST(0x0000A45500F09F9D AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (5, N'Target Entry', NULL, 3, N'Q2 2015', CAST(0x0000A45500F09FBA AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (6, N'Target Entry', NULL, 3, N'Q2 2015', CAST(0x0000A45500F09FE1 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (7, N'Target Entry', NULL, 3, N'Q2 2015', CAST(0x0000A45500F0A005 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (8, N'Target Entry', NULL, 3, N'Q2 2015', CAST(0x0000A45500F0A024 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (9, N'Target Entry', NULL, 3, N'Q2 2015', CAST(0x0000A45500F0A03B AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (10, N'Target Entry', NULL, 3, N'Q2 2015', CAST(0x0000A45500F0A051 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (11, N'Target Entry', NULL, 3, N'Q2 2015', CAST(0x0000A45500F0A067 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (12, N'Target Entry', NULL, 3, N'Q2 2015', CAST(0x0000A45500F0A07D AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (13, N'Target Entry', NULL, 3, N'Q2 2015', CAST(0x0000A45500F0A093 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (14, N'Target Entry', NULL, 3, N'Q2 2015', CAST(0x0000A45500F0A0AA AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (15, N'Target Entry', NULL, 3, N'Q2 2015', CAST(0x0000A45500F0A0C0 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (16, N'Target Entry', NULL, 3, N'Q2 2015', CAST(0x0000A45500F0A0D6 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (17, N'Target Entry', NULL, 3, N'Q2 2015', CAST(0x0000A45500F0A107 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (18, N'Target Entry', 12, 3, N'Q2 2015', CAST(0x0000A45500F0A123 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (19, N'Target Entry', 12, 3, N'Q2 2015', CAST(0x0000A45500F0A13A AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (20, N'Target Entry', 12, 3, N'Q2 2015', CAST(0x0000A45500F0A151 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (21, N'Target Entry', NULL, 3, N'Q2 2015', CAST(0x0000A45500F0A168 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (22, N'Target Entry', 12, 3, N'Q2 2015', CAST(0x0000A45500F4A537 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (23, N'Target Entry', 12, 3, N'Q2 2015', CAST(0x0000A45500F4A569 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (24, N'Target Entry', 12, 3, N'Q2 2015', CAST(0x0000A45500F4A582 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (25, N'Target Entry', 12, 3, N'Q2 2015', CAST(0x0000A45500F4A5B2 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (26, N'Target Entry', 12, 3, N'Q2 2015', CAST(0x0000A45500F4A5C8 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (27, N'Target Entry', 12, 3, N'Q2 2015', CAST(0x0000A45500F4A5DE AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (28, N'Target Entry', 12, 3, N'Q2 2015', CAST(0x0000A45500F4A5FE AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (29, N'Target Entry', 12, 3, N'Q2 2015', CAST(0x0000A45500F4A614 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (30, N'Target Entry', 12, 3, N'Q2 2015', CAST(0x0000A45500F4A62A AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (31, N'Target Entry', 12, 3, N'Q2 2015', CAST(0x0000A45500F4A640 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (32, N'Target Entry', 12, 3, N'Q2 2015', CAST(0x0000A45500F4A655 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (33, N'Target Entry', 12, 3, N'Q2 2015', CAST(0x0000A45500F4A66B AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (34, N'Target Entry', 12, 3, N'Q2 2015', CAST(0x0000A45500F4A682 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (35, N'Target Entry', 12, 3, N'Q2 2015', CAST(0x0000A45500F4A698 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (36, N'Target Entry', 12, 3, N'Q2 2015', CAST(0x0000A45500F4A6AE AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (37, N'Target Entry', 12, 3, N'Q2 2015', CAST(0x0000A45500F4A6C4 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (38, N'Target Entry', 12, 3, N'Q2 2015', CAST(0x0000A45500F4A6DC AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (39, N'Target Entry', 12, 3, N'Q2 2015', CAST(0x0000A45500F4A6F2 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (40, N'Target Entry', 12, 3, N'Q2 2015', CAST(0x0000A45500F4A71A AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (41, N'Target Entry', 12, 3, N'Q2 2015', CAST(0x0000A45500F4A72F AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (42, N'Target Entry', 2, 22, N'Q2 2015', CAST(0x0000A455010743A0 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (43, N'Target Entry', 2, 22, N'Q2 2015', CAST(0x0000A455010743DE AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (44, N'Target Entry', 2, 22, N'Q2 2015', CAST(0x0000A455010743FA AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (45, N'Target Entry', 2, 22, N'Q2 2015', CAST(0x0000A45501074414 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (46, N'Target Entry', 2, 22, N'Q2 2015', CAST(0x0000A4550107442A AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (47, N'Target Entry', 2, 22, N'Q2 2015', CAST(0x0000A45501074454 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (48, N'Target Entry', 2, 22, N'Q2 2015', CAST(0x0000A4550107446A AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (49, N'Target Entry', 2, 22, N'Q2 2015', CAST(0x0000A45501074480 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (50, N'Target Entry', 2, 22, N'Q2 2015', CAST(0x0000A45501074496 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (51, N'Target Entry', 2, 22, N'Q2 2015', CAST(0x0000A455010744AC AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (52, N'Target Entry', 2, 22, N'Q2 2015', CAST(0x0000A455010744C3 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (53, N'Target Entry', 2, 22, N'Q2 2015', CAST(0x0000A455010744D8 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (54, N'Target Entry', 2, 22, N'Q2 2015', CAST(0x0000A455010744EE AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (55, N'Target Entry', 2, 22, N'Q2 2015', CAST(0x0000A45501074504 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (56, N'Target Entry', 2, 22, N'Q2 2015', CAST(0x0000A45501074532 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (57, N'Target Entry', 2, 22, N'Q2 2015', CAST(0x0000A4550107454F AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (58, N'Target Entry', 2, 22, N'Q2 2015', CAST(0x0000A45501074564 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (59, N'Target Entry', 2, 22, N'Q2 2015', CAST(0x0000A45501074579 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (60, N'Target Entry', 2, 22, N'Q2 2015', CAST(0x0000A45501074590 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (61, N'Target Entry', 2, 22, N'Q2 2015', CAST(0x0000A455010745A6 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (62, N'Sale Entry', 2, 22, N'Q2 2015', CAST(0x0000A455010754B4 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (63, N'Sale Entry', 2, 22, N'Q2 2015', CAST(0x0000A455010754D3 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (64, N'Sale Entry', 2, 22, N'Q2 2015', CAST(0x0000A455010754E8 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (65, N'Sale Entry', 2, 22, N'Q2 2015', CAST(0x0000A455010754FD AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (66, N'Sale Entry', 2, 22, N'Q2 2015', CAST(0x0000A45501075512 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (67, N'Sale Entry', 2, 22, N'Q2 2015', CAST(0x0000A45501075527 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (68, N'Sale Entry', 2, 22, N'Q2 2015', CAST(0x0000A4550107553D AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (69, N'Sale Entry', 2, 22, N'Q2 2015', CAST(0x0000A45501075552 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (70, N'Sale Entry', 2, 22, N'Q2 2015', CAST(0x0000A45501075568 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (71, N'Sale Entry', 2, 22, N'Q2 2015', CAST(0x0000A4550107557E AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (72, N'Sale Entry', 2, 22, N'Q2 2015', CAST(0x0000A45501075593 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (73, N'Sale Entry', 2, 22, N'Q2 2015', CAST(0x0000A455010755AB AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (74, N'Sale Entry', 2, 22, N'Q2 2015', CAST(0x0000A455010755C0 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (75, N'Sale Entry', 2, 22, N'Q2 2015', CAST(0x0000A455010755D5 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (76, N'Sale Entry', 2, 22, N'Q2 2015', CAST(0x0000A455010755EC AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (77, N'Sale Entry', 2, 22, N'Q2 2015', CAST(0x0000A45501075601 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (78, N'Sale Entry', 2, 22, N'Q2 2015', CAST(0x0000A45501075617 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (79, N'Sale Entry', 2, 22, N'Q2 2015', CAST(0x0000A4550107562C AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (80, N'Sale Entry', 2, 22, N'Q2 2015', CAST(0x0000A4550107566B AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (81, N'Sale Entry', 2, 22, N'Q2 2015', CAST(0x0000A45501075680 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (82, N'Strategic Plan', 2, 22, N'Q2 2015', CAST(0x0000A45501080877 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (83, N'Overview Plan', 2, 22, N'Q2 2015', CAST(0x0000A45501081256 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (84, N'Target Entry', 2, 22, N'Q2 2015', CAST(0x0000A45501081CA7 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (85, N'Target Entry', 2, 22, N'Q2 2015', CAST(0x0000A45501081CC3 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (86, N'Target Entry', 2, 22, N'Q2 2015', CAST(0x0000A45501081CDE AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (87, N'Target Entry', 2, 22, N'Q2 2015', CAST(0x0000A45501081CF9 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (88, N'Target Entry', 2, 22, N'Q2 2015', CAST(0x0000A45501081D10 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (89, N'Target Entry', 2, 22, N'Q2 2015', CAST(0x0000A45501081D27 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (90, N'Target Entry', 2, 22, N'Q2 2015', CAST(0x0000A45501081D3D AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (91, N'Target Entry', 2, 22, N'Q2 2015', CAST(0x0000A45501081D54 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (92, N'Target Entry', 2, 22, N'Q2 2015', CAST(0x0000A45501081D6C AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (93, N'Target Entry', 2, 22, N'Q2 2015', CAST(0x0000A45501081D82 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (94, N'Target Entry', 2, 22, N'Q2 2015', CAST(0x0000A45501081D99 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (95, N'Target Entry', 2, 22, N'Q2 2015', CAST(0x0000A45501081DAF AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (96, N'Target Entry', 2, 22, N'Q2 2015', CAST(0x0000A45501081DD3 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (97, N'Target Entry', 2, 22, N'Q2 2015', CAST(0x0000A45501081DEB AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (98, N'Target Entry', 2, 22, N'Q2 2015', CAST(0x0000A45501081E14 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (99, N'Target Entry', 2, 22, N'Q2 2015', CAST(0x0000A45501081E2C AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (100, N'Target Entry', 2, 22, N'Q2 2015', CAST(0x0000A45501081E42 AS DateTime))
GO
print 'Processed 100 total records'
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (101, N'Target Entry', 2, 22, N'Q2 2015', CAST(0x0000A45501081E59 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (102, N'Target Entry', 2, 22, N'Q2 2015', CAST(0x0000A45501081E6F AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (103, N'Target Entry', 2, 22, N'Q2 2015', CAST(0x0000A45501081E86 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (104, N'Competitor Landscape', 2, 23, N'Q2 2015', CAST(0x0000A45501085718 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (105, N'Competitor Landscape', 2, 23, N'Q2 2015', CAST(0x0000A45501085721 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (106, N'Competitor Landscape', 2, 23, N'Q2 2015', CAST(0x0000A45501085728 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (107, N'Competitor Landscape', 2, 23, N'Q2 2015', CAST(0x0000A45501085730 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (108, N'Competitor Landscape', 2, 23, N'Q2 2015', CAST(0x0000A45501085737 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (109, N'Competitor Landscape', 2, 23, N'Q2 2015', CAST(0x0000A4550108573E AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (110, N'Competitor Landscape', 2, 23, N'Q2 2015', CAST(0x0000A45501085745 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (111, N'Competitor Landscape', 2, 23, N'Q2 2015', CAST(0x0000A4550108574C AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (112, N'Competitor Landscape', 2, 23, N'Q2 2015', CAST(0x0000A45501085753 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (113, N'Competitor Landscape', 2, 23, N'Q2 2015', CAST(0x0000A4550108575B AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (114, N'Sale Entry', 2, 4, N'Q2 2015', CAST(0x0000A455010A6BE7 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (115, N'Sale Entry', 2, 4, N'Q2 2015', CAST(0x0000A455010A6C1E AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (116, N'Sale Entry', 2, 4, N'Q2 2015', CAST(0x0000A455010A6C51 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (117, N'Sale Entry', 2, 4, N'Q2 2015', CAST(0x0000A455010A6C66 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (118, N'Sale Entry', 2, 4, N'Q2 2015', CAST(0x0000A455010A6C7B AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (119, N'Sale Entry', 2, 4, N'Q2 2015', CAST(0x0000A455010A6C90 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (120, N'Sale Entry', 2, 4, N'Q2 2015', CAST(0x0000A455010A6CA6 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (121, N'Sale Entry', 2, 4, N'Q2 2015', CAST(0x0000A455010A6CBC AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (122, N'Sale Entry', 2, 4, N'Q2 2015', CAST(0x0000A455010A6CD2 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (123, N'Sale Entry', 2, 4, N'Q2 2015', CAST(0x0000A455010A6CE7 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (124, N'Sale Entry', 2, 4, N'Q2 2015', CAST(0x0000A455010A6CFD AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (125, N'Sale Entry', 2, 4, N'Q2 2015', CAST(0x0000A455010A6D12 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (126, N'Sale Entry', 2, 4, N'Q2 2015', CAST(0x0000A455010A6D27 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (127, N'Sale Entry', 2, 4, N'Q2 2015', CAST(0x0000A455010A6D3E AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (128, N'Sale Entry', 2, 4, N'Q2 2015', CAST(0x0000A455010A6D54 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (129, N'Sale Entry', 2, 4, N'Q2 2015', CAST(0x0000A455010A6D69 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (130, N'Sale Entry', 2, 4, N'Q2 2015', CAST(0x0000A455010A6D7F AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (131, N'Sale Entry', 2, 4, N'Q2 2015', CAST(0x0000A455010A6DA5 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (132, N'Sale Entry', 2, 4, N'Q2 2015', CAST(0x0000A455010A6DBB AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (133, N'Sale Entry', 2, 4, N'Q2 2015', CAST(0x0000A455010A6DD3 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (134, N'Competitor Landscape', 2, 5, N'Q2 2015', CAST(0x0000A455011A548A AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (135, N'Competitor Landscape', 2, 5, N'Q2 2015', CAST(0x0000A455011A54A7 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (136, N'Competitor Landscape', 2, 5, N'Q2 2015', CAST(0x0000A455011A54AF AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (137, N'Competitor Landscape', 2, 5, N'Q2 2015', CAST(0x0000A455011A54B7 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (138, N'Competitor Landscape', 2, 5, N'Q2 2015', CAST(0x0000A455011A54BE AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (139, N'Competitor Landscape', 2, 5, N'Q2 2015', CAST(0x0000A455011A54C4 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (140, N'Competitor Landscape', 2, 5, N'Q2 2015', CAST(0x0000A455011A54CB AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (141, N'Competitor Landscape', 2, 5, N'Q2 2015', CAST(0x0000A455011A54D2 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (142, N'Competitor Landscape', 2, 5, N'Q2 2015', CAST(0x0000A455011A54D9 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (143, N'Competitor Landscape', 2, 5, N'Q2 2015', CAST(0x0000A455011A54E0 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (144, N'Target Entry', 2, 27, N'Q2 2015', CAST(0x0000A4550174E03D AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (145, N'Target Entry', 2, 27, N'Q2 2015', CAST(0x0000A4550174E056 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (146, N'Target Entry', 2, 27, N'Q2 2015', CAST(0x0000A4550174E06D AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (147, N'Target Entry', 2, 27, N'Q2 2015', CAST(0x0000A4550174E099 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (148, N'Target Entry', 2, 27, N'Q2 2015', CAST(0x0000A4550174E0AF AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (149, N'Target Entry', 2, 27, N'Q2 2015', CAST(0x0000A4550174E0C5 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (150, N'Target Entry', 2, 27, N'Q2 2015', CAST(0x0000A4550174E0DF AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (151, N'Target Entry', 2, 27, N'Q2 2015', CAST(0x0000A4550174E0F6 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (152, N'Target Entry', 2, 27, N'Q2 2015', CAST(0x0000A4550174E114 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (153, N'Target Entry', 2, 27, N'Q2 2015', CAST(0x0000A4550174E12A AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (154, N'Target Entry', 2, 27, N'Q2 2015', CAST(0x0000A4550174E141 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (155, N'Target Entry', 2, 27, N'Q2 2015', CAST(0x0000A4550174E156 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (156, N'Target Entry', 2, 27, N'Q2 2015', CAST(0x0000A4550174E16C AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (157, N'Target Entry', 2, 27, N'Q2 2015', CAST(0x0000A4550174E181 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (158, N'Target Entry', 2, 27, N'Q2 2015', CAST(0x0000A4550174E198 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (159, N'Target Entry', 2, 27, N'Q2 2015', CAST(0x0000A4550174E1AF AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (160, N'Target Entry', 2, 27, N'Q2 2015', CAST(0x0000A4550174E1C5 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (161, N'Target Entry', 2, 27, N'Q2 2015', CAST(0x0000A4550174E1DB AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (162, N'Target Entry', 2, 27, N'Q2 2015', CAST(0x0000A4550174E1F2 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (163, N'Target Entry', 2, 27, N'Q2 2015', CAST(0x0000A4550174E215 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (164, N'Target Entry', 12, 29, N'Q2 2015', CAST(0x0000A4550176AE6D AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (165, N'Target Entry', 12, 29, N'Q2 2015', CAST(0x0000A4550176AE87 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (166, N'Target Entry', 12, 29, N'Q2 2015', CAST(0x0000A4550176AE9D AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (167, N'Target Entry', 12, 29, N'Q2 2015', CAST(0x0000A4550176AEB4 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (168, N'Target Entry', 12, 29, N'Q2 2015', CAST(0x0000A4550176AECB AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (169, N'Target Entry', 12, 29, N'Q2 2015', CAST(0x0000A4550176AEE2 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (170, N'Target Entry', 12, 29, N'Q2 2015', CAST(0x0000A4550176AEF8 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (171, N'Target Entry', 12, 29, N'Q2 2015', CAST(0x0000A4550176AF1B AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (172, N'Target Entry', 12, 29, N'Q2 2015', CAST(0x0000A4550176AF31 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (173, N'Target Entry', 12, 29, N'Q2 2015', CAST(0x0000A4550176AF48 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (174, N'Target Entry', 12, 29, N'Q2 2015', CAST(0x0000A4550176AF64 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (175, N'Target Entry', 12, 29, N'Q2 2015', CAST(0x0000A4550176AF81 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (176, N'Target Entry', 12, 29, N'Q2 2015', CAST(0x0000A4550176AF97 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (177, N'Target Entry', 12, 29, N'Q2 2015', CAST(0x0000A4550176AFAE AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (178, N'Target Entry', 12, 29, N'Q2 2015', CAST(0x0000A4550176AFC5 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (179, N'Target Entry', 12, 29, N'Q2 2015', CAST(0x0000A4550176AFDC AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (180, N'Target Entry', 12, 29, N'Q2 2015', CAST(0x0000A4550176AFFC AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (181, N'Target Entry', 12, 29, N'Q2 2015', CAST(0x0000A4550176B012 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (182, N'Target Entry', 12, 29, N'Q2 2015', CAST(0x0000A4550176B029 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (183, N'Target Entry', 12, 29, N'Q2 2015', CAST(0x0000A4550176B040 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (184, N'Sale Entry', 12, 29, N'Q2 2015', CAST(0x0000A4550176BE56 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (185, N'Sale Entry', 12, 29, N'Q2 2015', CAST(0x0000A4550176BE6E AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (186, N'Sale Entry', 12, 29, N'Q2 2015', CAST(0x0000A4550176BE85 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (187, N'Sale Entry', 12, 29, N'Q2 2015', CAST(0x0000A4550176BE9A AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (188, N'Sale Entry', 12, 29, N'Q2 2015', CAST(0x0000A4550176BEAF AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (189, N'Sale Entry', 12, 29, N'Q2 2015', CAST(0x0000A4550176BEC6 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (190, N'Sale Entry', 12, 29, N'Q2 2015', CAST(0x0000A4550176BEDD AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (191, N'Sale Entry', 12, 29, N'Q2 2015', CAST(0x0000A4550176BEF2 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (192, N'Sale Entry', 12, 29, N'Q2 2015', CAST(0x0000A4550176BF08 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (193, N'Sale Entry', 12, 29, N'Q2 2015', CAST(0x0000A4550176BF1D AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (194, N'Sale Entry', 12, 29, N'Q2 2015', CAST(0x0000A4550176BF3E AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (195, N'Sale Entry', 12, 29, N'Q2 2015', CAST(0x0000A4550176BF54 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (196, N'Sale Entry', 12, 29, N'Q2 2015', CAST(0x0000A4550176BF6A AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (197, N'Sale Entry', 12, 29, N'Q2 2015', CAST(0x0000A4550176BF7F AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (198, N'Sale Entry', 12, 29, N'Q2 2015', CAST(0x0000A4550176BF94 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (199, N'Sale Entry', 12, 29, N'Q2 2015', CAST(0x0000A4550176BFAA AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (200, N'Sale Entry', 12, 29, N'Q2 2015', CAST(0x0000A4550176BFCA AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (201, N'Sale Entry', 12, 29, N'Q2 2015', CAST(0x0000A4550176BFE0 AS DateTime))
GO
print 'Processed 200 total records'
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (202, N'Sale Entry', 12, 29, N'Q2 2015', CAST(0x0000A4550176BFF6 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (203, N'Sale Entry', 12, 29, N'Q2 2015', CAST(0x0000A4550176C00C AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (204, N'Target Entry', 2, 28, N'Q2 2015', CAST(0x0000A4550184C512 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (205, N'Target Entry', 2, 28, N'Q2 2015', CAST(0x0000A4550184C53F AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (206, N'Target Entry', 2, 28, N'Q2 2015', CAST(0x0000A4550184C56A AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (207, N'Target Entry', 2, 28, N'Q2 2015', CAST(0x0000A4550184C580 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (208, N'Target Entry', 2, 28, N'Q2 2015', CAST(0x0000A4550184C596 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (209, N'Target Entry', 2, 28, N'Q2 2015', CAST(0x0000A4550184C5AC AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (210, N'Target Entry', 2, 28, N'Q2 2015', CAST(0x0000A4550184C5CD AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (211, N'Target Entry', 2, 28, N'Q2 2015', CAST(0x0000A4550184C5EA AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (212, N'Target Entry', 2, 28, N'Q2 2015', CAST(0x0000A4550184C600 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (213, N'Target Entry', 2, 28, N'Q2 2015', CAST(0x0000A4550184C617 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (214, N'Target Entry', 2, 28, N'Q2 2015', CAST(0x0000A4550184C62D AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (215, N'Target Entry', 2, 28, N'Q2 2015', CAST(0x0000A4550184C643 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (216, N'Target Entry', 2, 28, N'Q2 2015', CAST(0x0000A4550184C65A AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (217, N'Target Entry', 2, 28, N'Q2 2015', CAST(0x0000A4550184C685 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (218, N'Target Entry', 2, 28, N'Q2 2015', CAST(0x0000A4550184C69C AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (219, N'Target Entry', 2, 28, N'Q2 2015', CAST(0x0000A4550184C6B3 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (220, N'Target Entry', 2, 28, N'Q2 2015', CAST(0x0000A4550184C6CB AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (221, N'Target Entry', 2, 28, N'Q2 2015', CAST(0x0000A4550184C6E1 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (222, N'Target Entry', 2, 28, N'Q2 2015', CAST(0x0000A4550184C6FB AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (223, N'Target Entry', 2, 28, N'Q2 2015', CAST(0x0000A4550184C713 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (224, N'Sale Entry', 2, 28, N'Q2 2015', CAST(0x0000A4550184FE55 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (225, N'Sale Entry', 2, 28, N'Q2 2015', CAST(0x0000A4550184FE87 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (226, N'Sale Entry', 2, 28, N'Q2 2015', CAST(0x0000A4550184FE9D AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (227, N'Sale Entry', 2, 28, N'Q2 2015', CAST(0x0000A4550184FEB3 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (228, N'Sale Entry', 2, 28, N'Q2 2015', CAST(0x0000A4550184FECD AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (229, N'Sale Entry', 2, 28, N'Q2 2015', CAST(0x0000A4550184FEE3 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (230, N'Sale Entry', 2, 28, N'Q2 2015', CAST(0x0000A4550184FEF9 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (231, N'Sale Entry', 2, 28, N'Q2 2015', CAST(0x0000A4550184FF0E AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (232, N'Sale Entry', 2, 28, N'Q2 2015', CAST(0x0000A4550184FF25 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (233, N'Sale Entry', 2, 28, N'Q2 2015', CAST(0x0000A4550184FF3B AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (234, N'Sale Entry', 2, 28, N'Q2 2015', CAST(0x0000A4550184FF51 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (235, N'Sale Entry', 2, 28, N'Q2 2015', CAST(0x0000A4550184FF67 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (236, N'Sale Entry', 2, 28, N'Q2 2015', CAST(0x0000A4550184FF7F AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (237, N'Sale Entry', 2, 28, N'Q2 2015', CAST(0x0000A4550184FFA7 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (238, N'Sale Entry', 2, 28, N'Q2 2015', CAST(0x0000A4550184FFC7 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (239, N'Sale Entry', 2, 28, N'Q2 2015', CAST(0x0000A4550184FFE5 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (240, N'Sale Entry', 2, 28, N'Q2 2015', CAST(0x0000A4550185000C AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (241, N'Sale Entry', 2, 28, N'Q2 2015', CAST(0x0000A4550185002D AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (242, N'Sale Entry', 2, 28, N'Q2 2015', CAST(0x0000A45501850043 AS DateTime))
INSERT [dbo].[ActivityLog] ([LogId], [Module], [UserId], [PartnerId], [QuarterYear], [LogDate]) VALUES (243, N'Sale Entry', 2, 28, N'Q2 2015', CAST(0x0000A45501850059 AS DateTime))
SET IDENTITY_INSERT [dbo].[ActivityLog] OFF
/****** Object:  Table [dbo].[ActionForTargetedGoal]    Script Date: 03/09/2015 18:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ActionForTargetedGoal](
	[ActionId] [int] IDENTITY(1,1) NOT NULL,
	[GoalName] [varchar](50) NOT NULL,
	[QuarterPlan] [varchar](max) NOT NULL,
	[PreviousQuarter] [varchar](max) NOT NULL,
	[QuarterYear] [varchar](50) NOT NULL,
	[ActionRequired] [varchar](max) NOT NULL,
	[AssignedUserId] [int] NULL,
	[CreatedDate] [date] NULL,
	[CreatedUser] [int] NULL,
	[ModifiedDate] [date] NULL,
	[ModifiedUser] [int] NULL,
	[PartnerId] [int] NULL,
 CONSTRAINT [PK_ActionForTargetedGoal] PRIMARY KEY CLUSTERED 
(
	[ActionId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ActionForTargetedGoal] ON
INSERT [dbo].[ActionForTargetedGoal] ([ActionId], [GoalName], [QuarterPlan], [PreviousQuarter], [QuarterYear], [ActionRequired], [AssignedUserId], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser], [PartnerId]) VALUES (1, N'Increase the WOD', N'130 Partners', N'120 Partners', N'Q2 2015', N'1)10 new counters need to be billed directly-should contribute additional 75 units Per month
2)Spl.slab based scheme for these counters+proper matrl availability of short supply skus
3)I-RD fos for these counters+training of sales team of these counters+pos availability', NULL, CAST(0xAC390B00 AS Date), 12, NULL, NULL, 7)
INSERT [dbo].[ActionForTargetedGoal] ([ActionId], [GoalName], [QuarterPlan], [PreviousQuarter], [QuarterYear], [ActionRequired], [AssignedUserId], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser], [PartnerId]) VALUES (2, N'Increase the SOW in Top Retail Outlet', N'250 Units', N'175 Units', N'Q2 2015', N'1)Specialised Tie up pgm on Qtr tgt+ISP at each store+ISB/SIS/GSB. Immediate Basis Requirement of ISP at 5 Stores . Where competition has Placed ISP and we are facing Challenge in terms of Growing our SOW. 1. Mega IT Store 2. AR Computer 3 . Ashwath Computer 4 . Sahara Computers 5. Rakesh Trading co
2)Offsite partner meet once in a QTR, monthly meeting with HP-sales team, product trainings for staff', NULL, CAST(0xAC390B00 AS Date), 12, NULL, NULL, 7)
INSERT [dbo].[ActionForTargetedGoal] ([ActionId], [GoalName], [QuarterPlan], [PreviousQuarter], [QuarterYear], [ActionRequired], [AssignedUserId], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser], [PartnerId]) VALUES (3, N'Increase Star SKU Mix amongst T3 Partners', N'15%', N'11%', N'Q2 2015', N'1. Demo Program to be supported for top 5 T3 mbo retailer , which I locally managed with Rd Tie up 1. Mega IT Store 2. Sahara Computers 3. AR Computers 4. Ahswath Computer 5. Rakesh Trading company', NULL, CAST(0xAC390B00 AS Date), 12, NULL, NULL, 7)
INSERT [dbo].[ActionForTargetedGoal] ([ActionId], [GoalName], [QuarterPlan], [PreviousQuarter], [QuarterYear], [ActionRequired], [AssignedUserId], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser], [PartnerId]) VALUES (4, N'Increase the WOD at Ahmedabad', N'30', N'15', N'Q2 2015', N'1)Teritery Program  for the 30 outlets .
2)slab based Incentive scheme every month
3)Pos/pop marketing material to be provided at all counters', 41, CAST(0xAC390B00 AS Date), 12, NULL, NULL, 22)
INSERT [dbo].[ActionForTargetedGoal] ([ActionId], [GoalName], [QuarterPlan], [PreviousQuarter], [QuarterYear], [ActionRequired], [AssignedUserId], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser], [PartnerId]) VALUES (5, N'Increase the SOW at KRO', N'', N'', N'Q2 2015', N'1)Specialized Tie up program with  KRO
2)To have Promoter in all the KRO
3)Ensure product availability at all times to partners through DMS', NULL, CAST(0xAC390B00 AS Date), 12, NULL, NULL, 22)
INSERT [dbo].[ActionForTargetedGoal] ([ActionId], [GoalName], [QuarterPlan], [PreviousQuarter], [QuarterYear], [ActionRequired], [AssignedUserId], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser], [PartnerId]) VALUES (6, N'ISP targets & achievement.
Trainings for ISP', N'', N'', N'Q2 2015', N'1)Daily Tracking, Weekly meeting for Motivating & addressing the issues
2)Monthly Training to be organized by Trainer', 53, CAST(0xAC390B00 AS Date), 12, NULL, NULL, 22)
SET IDENTITY_INSERT [dbo].[ActionForTargetedGoal] OFF
/****** Object:  Table [dbo].[Sale]    Script Date: 03/09/2015 18:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sale](
	[SaleId] [int] IDENTITY(1,1) NOT NULL,
	[QuarterYear] [varchar](50) NULL,
	[PartnerId] [int] NULL,
	[ProductId] [int] NULL,
	[M1] [int] NOT NULL,
	[M2] [int] NOT NULL,
	[M3] [int] NOT NULL,
	[CreatedDate] [date] NULL,
	[CreatedUser] [int] NULL,
	[ModifiedDate] [date] NULL,
	[ModifiedUser] [int] NULL,
 CONSTRAINT [PK_Sale] PRIMARY KEY CLUSTERED 
(
	[SaleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Sale] ON
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (1, N'Q2 2015', 2, 1, 49, 50, 50, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (2, N'Q2 2015', 2, 1, 60, 60, 60, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (3, N'Q2 2015', 2, 4, 4, 4, 3, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (4, N'Q2 2015', 2, 4, 5, 8, 8, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (5, N'Q2 2015', 1, 2, 100, 100, 120, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (6, N'Q2 2015', 1, 3, 52, 52, 52, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (7, N'Q2 2015', 1, 5, 5, 5, 5, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (8, N'Q2 2015', 1, 6, 5, 10, 10, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (9, N'Q2 2015', 1, 7, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (10, N'Q2 2015', 1, 8, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (11, N'Q2 2015', 1, 9, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (12, N'Q2 2015', 1, 10, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (13, N'Q2 2015', 8, 1, 100, 20, 50, CAST(0xB0390B00 AS Date), 12, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (14, N'Q2 2015', 8, 2, 0, 0, 0, CAST(0xB0390B00 AS Date), 12, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (15, N'Q2 2015', 8, 3, 0, 0, 0, CAST(0xB0390B00 AS Date), 12, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (16, N'Q2 2015', 8, 4, 0, 0, 0, CAST(0xB0390B00 AS Date), 12, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (17, N'Q2 2015', 8, 5, 0, 0, 0, CAST(0xB0390B00 AS Date), 12, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (18, N'Q2 2015', 8, 6, 0, 0, 0, CAST(0xB0390B00 AS Date), 12, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (19, N'Q2 2015', 8, 17, 0, 0, 0, CAST(0xB0390B00 AS Date), 12, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (20, N'Q2 2015', 8, 7, 0, 0, 0, CAST(0xB0390B00 AS Date), 12, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (21, N'Q2 2015', 8, 8, 0, 0, 0, CAST(0xB0390B00 AS Date), 12, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (22, N'Q2 2015', 8, 9, 0, 0, 0, CAST(0xB0390B00 AS Date), 12, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (23, N'Q2 2015', 8, 10, 0, 0, 0, CAST(0xB0390B00 AS Date), 12, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (24, N'Q2 2015', 8, 11, 0, 0, 0, CAST(0xB0390B00 AS Date), 12, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (25, N'Q2 2015', 8, 12, 0, 0, 0, CAST(0xB0390B00 AS Date), 12, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (26, N'Q2 2015', 8, 13, 0, 0, 0, CAST(0xB0390B00 AS Date), 12, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (27, N'Q2 2015', 8, 14, 0, 0, 0, CAST(0xB0390B00 AS Date), 12, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (28, N'Q2 2015', 8, 15, 0, 0, 0, CAST(0xB0390B00 AS Date), 12, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (29, N'Q2 2015', 8, 18, 0, 0, 0, CAST(0xB0390B00 AS Date), 12, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (30, N'Q2 2015', 8, 19, 0, 0, 0, CAST(0xB0390B00 AS Date), 12, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (31, N'Q2 2015', 8, 20, 0, 0, 0, CAST(0xB0390B00 AS Date), 12, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (32, N'Q2 2015', 8, 16, 0, 0, 0, CAST(0xB0390B00 AS Date), 12, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (33, N'Q2 2015', 22, 1, 50, 22, 20, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (34, N'Q2 2015', 22, 2, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (35, N'Q2 2015', 22, 3, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (36, N'Q2 2015', 22, 4, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (37, N'Q2 2015', 22, 5, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (38, N'Q2 2015', 22, 6, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (39, N'Q2 2015', 22, 17, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (40, N'Q2 2015', 22, 7, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (41, N'Q2 2015', 22, 8, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (42, N'Q2 2015', 22, 9, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (43, N'Q2 2015', 22, 10, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (44, N'Q2 2015', 22, 11, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (45, N'Q2 2015', 22, 12, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (46, N'Q2 2015', 22, 13, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (47, N'Q2 2015', 22, 14, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (48, N'Q2 2015', 22, 15, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (49, N'Q2 2015', 22, 18, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (50, N'Q2 2015', 22, 19, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (51, N'Q2 2015', 22, 20, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (52, N'Q2 2015', 22, 16, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (53, N'Q2 2015', 4, 1, 100, 20, 33, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (54, N'Q2 2015', 4, 2, 20, 33, 21, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (55, N'Q2 2015', 4, 3, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (56, N'Q2 2015', 4, 4, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (57, N'Q2 2015', 4, 5, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (58, N'Q2 2015', 4, 6, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (59, N'Q2 2015', 4, 17, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (60, N'Q2 2015', 4, 7, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (61, N'Q2 2015', 4, 8, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (62, N'Q2 2015', 4, 9, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (63, N'Q2 2015', 4, 10, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (64, N'Q2 2015', 4, 11, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (65, N'Q2 2015', 4, 12, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (66, N'Q2 2015', 4, 13, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (67, N'Q2 2015', 4, 14, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (68, N'Q2 2015', 4, 15, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (69, N'Q2 2015', 4, 18, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (70, N'Q2 2015', 4, 19, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (71, N'Q2 2015', 4, 20, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (72, N'Q2 2015', 4, 16, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (73, N'Q2 2015', 29, 1, 10, 20, 25, CAST(0xB0390B00 AS Date), 12, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (74, N'Q2 2015', 29, 2, 0, 0, 0, CAST(0xB0390B00 AS Date), 12, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (75, N'Q2 2015', 29, 3, 0, 0, 0, CAST(0xB0390B00 AS Date), 12, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (76, N'Q2 2015', 29, 4, 0, 0, 0, CAST(0xB0390B00 AS Date), 12, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (77, N'Q2 2015', 29, 5, 0, 0, 0, CAST(0xB0390B00 AS Date), 12, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (78, N'Q2 2015', 29, 6, 0, 0, 0, CAST(0xB0390B00 AS Date), 12, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (79, N'Q2 2015', 29, 17, 0, 0, 0, CAST(0xB0390B00 AS Date), 12, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (80, N'Q2 2015', 29, 7, 0, 0, 0, CAST(0xB0390B00 AS Date), 12, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (81, N'Q2 2015', 29, 8, 0, 0, 0, CAST(0xB0390B00 AS Date), 12, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (82, N'Q2 2015', 29, 9, 0, 0, 0, CAST(0xB0390B00 AS Date), 12, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (83, N'Q2 2015', 29, 10, 0, 0, 0, CAST(0xB0390B00 AS Date), 12, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (84, N'Q2 2015', 29, 11, 0, 0, 0, CAST(0xB0390B00 AS Date), 12, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (85, N'Q2 2015', 29, 12, 0, 0, 0, CAST(0xB0390B00 AS Date), 12, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (86, N'Q2 2015', 29, 13, 0, 0, 0, CAST(0xB0390B00 AS Date), 12, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (87, N'Q2 2015', 29, 14, 0, 0, 0, CAST(0xB0390B00 AS Date), 12, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (88, N'Q2 2015', 29, 15, 0, 0, 0, CAST(0xB0390B00 AS Date), 12, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (89, N'Q2 2015', 29, 18, 0, 0, 0, CAST(0xB0390B00 AS Date), 12, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (90, N'Q2 2015', 29, 19, 0, 0, 0, CAST(0xB0390B00 AS Date), 12, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (91, N'Q2 2015', 29, 20, 0, 0, 0, CAST(0xB0390B00 AS Date), 12, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (92, N'Q2 2015', 29, 16, 0, 0, 0, CAST(0xB0390B00 AS Date), 12, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (93, N'Q2 2015', 28, 1, 10, 22, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (94, N'Q2 2015', 28, 2, 10, 12, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (95, N'Q2 2015', 28, 3, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (96, N'Q2 2015', 28, 4, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (97, N'Q2 2015', 28, 5, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (98, N'Q2 2015', 28, 6, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (99, N'Q2 2015', 28, 17, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (100, N'Q2 2015', 28, 7, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
GO
print 'Processed 100 total records'
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (101, N'Q2 2015', 28, 8, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (102, N'Q2 2015', 28, 9, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (103, N'Q2 2015', 28, 10, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (104, N'Q2 2015', 28, 11, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (105, N'Q2 2015', 28, 12, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (106, N'Q2 2015', 28, 13, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (107, N'Q2 2015', 28, 14, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (108, N'Q2 2015', 28, 15, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (109, N'Q2 2015', 28, 18, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (110, N'Q2 2015', 28, 19, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (111, N'Q2 2015', 28, 20, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Sale] ([SaleId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (112, N'Q2 2015', 28, 16, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Sale] OFF
/****** Object:  Table [dbo].[TargetedGoal]    Script Date: 03/09/2015 18:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TargetedGoal](
	[TargetedGoalId] [int] IDENTITY(1,1) NOT NULL,
	[TargetedGoalName] [varchar](50) NOT NULL,
	[QuarterPlan] [varchar](max) NOT NULL,
	[PreviousQuarter] [varchar](max) NOT NULL,
	[QuarterYear] [varchar](50) NOT NULL,
	[TargetGoal] [varchar](500) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedUser] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedUser] [int] NULL,
	[PartnerId] [int] NULL,
 CONSTRAINT [PK_TargetedGoal] PRIMARY KEY CLUSTERED 
(
	[TargetedGoalId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TargetedGoal] ON
INSERT [dbo].[TargetedGoal] ([TargetedGoalId], [TargetedGoalName], [QuarterPlan], [PreviousQuarter], [QuarterYear], [TargetGoal], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser], [PartnerId]) VALUES (1, N'Increase Star SKU Mix', N'', N'15%', N'Q2 2015', N'>20%, 
Gautam, Nitin', CAST(0x0000A45100000000 AS DateTime), 12, NULL, NULL, 2)
INSERT [dbo].[TargetedGoal] ([TargetedGoalId], [TargetedGoalName], [QuarterPlan], [PreviousQuarter], [QuarterYear], [TargetGoal], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser], [PartnerId]) VALUES (2, N'AIO Mix', N'', N'50%', N'Q2 2015', N'55%, 
Gautam, Nitin', CAST(0x0000A45100000000 AS DateTime), 12, NULL, NULL, 2)
INSERT [dbo].[TargetedGoal] ([TargetedGoalId], [TargetedGoalName], [QuarterPlan], [PreviousQuarter], [QuarterYear], [TargetGoal], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser], [PartnerId]) VALUES (3, N'SOW', N'', N'45%', N'Q2 2015', N'47%
Nitin', CAST(0x0000A45100000000 AS DateTime), 12, NULL, NULL, 2)
INSERT [dbo].[TargetedGoal] ([TargetedGoalId], [TargetedGoalName], [QuarterPlan], [PreviousQuarter], [QuarterYear], [TargetGoal], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser], [PartnerId]) VALUES (4, N'UIA Sales Out', N'', N'10%', N'Q2 2015', N'20%
Gautam', CAST(0x0000A45100000000 AS DateTime), 12, NULL, NULL, 2)
INSERT [dbo].[TargetedGoal] ([TargetedGoalId], [TargetedGoalName], [QuarterPlan], [PreviousQuarter], [QuarterYear], [TargetGoal], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser], [PartnerId]) VALUES (5, N'Star Mix', N'>=30%', N'28%', N'Q2 2015', N'>30%
Sarath', CAST(0x0000A45100000000 AS DateTime), 12, NULL, NULL, 8)
INSERT [dbo].[TargetedGoal] ([TargetedGoalId], [TargetedGoalName], [QuarterPlan], [PreviousQuarter], [QuarterYear], [TargetGoal], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser], [PartnerId]) VALUES (6, N'Tab', N'75 Unit sell out monthly', N'65 units sellout monthly', N'Q2 2015', N'75 units sell out monthly
Sarath', CAST(0x0000A45100000000 AS DateTime), 12, NULL, NULL, 8)
INSERT [dbo].[TargetedGoal] ([TargetedGoalId], [TargetedGoalName], [QuarterPlan], [PreviousQuarter], [QuarterYear], [TargetGoal], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser], [PartnerId]) VALUES (7, N'KV Share', N'Increase the share from 45%- 50%', N'We have now reached 48% share', N'Q2 2015', N'Increase the share to 50%. Offer finance.
Sarath / Gurpreet', CAST(0x0000A45100000000 AS DateTime), 12, NULL, NULL, 8)
INSERT [dbo].[TargetedGoal] ([TargetedGoalId], [TargetedGoalName], [QuarterPlan], [PreviousQuarter], [QuarterYear], [TargetGoal], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser], [PartnerId]) VALUES (8, N'Printer Connect', N'To reach 15% Printer connect', N'We have reached 18% Printer connect', N'Q2 2015', N'Increase the connect by 23%. Increase printer display at top 5 stores.
Sarath / Gurpreet', CAST(0x0000A45100000000 AS DateTime), 12, NULL, NULL, 8)
INSERT [dbo].[TargetedGoal] ([TargetedGoalId], [TargetedGoalName], [QuarterPlan], [PreviousQuarter], [QuarterYear], [TargetGoal], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser], [PartnerId]) VALUES (9, N'Increase Star SKU Mix', N'', N'25%', N'Q2 2015', N'>30% Nitin', CAST(0x0000A45100000000 AS DateTime), 12, CAST(0x0000A45100000000 AS DateTime), 12, 3)
INSERT [dbo].[TargetedGoal] ([TargetedGoalId], [TargetedGoalName], [QuarterPlan], [PreviousQuarter], [QuarterYear], [TargetGoal], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser], [PartnerId]) VALUES (10, N'AIO MIX', N'', N'40%', N'Q2 2015', N'45% Nitin', CAST(0x0000A45100000000 AS DateTime), 12, CAST(0x0000A45100000000 AS DateTime), 12, 3)
INSERT [dbo].[TargetedGoal] ([TargetedGoalId], [TargetedGoalName], [QuarterPlan], [PreviousQuarter], [QuarterYear], [TargetGoal], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser], [PartnerId]) VALUES (11, N'MBO Display share', N'', N'23%', N'Q2 2015', N'> 30% Nitin', CAST(0x0000A45100000000 AS DateTime), 12, NULL, NULL, 3)
INSERT [dbo].[TargetedGoal] ([TargetedGoalId], [TargetedGoalName], [QuarterPlan], [PreviousQuarter], [QuarterYear], [TargetGoal], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser], [PartnerId]) VALUES (12, N'SoW', N'', N'25%', N'Q2 2015', N'> 30% Nitin / Partner', CAST(0x0000A45100000000 AS DateTime), 12, NULL, NULL, 3)
INSERT [dbo].[TargetedGoal] ([TargetedGoalId], [TargetedGoalName], [QuarterPlan], [PreviousQuarter], [QuarterYear], [TargetGoal], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser], [PartnerId]) VALUES (13, N'UIA Sales Out', N'', N'20%', N'Q2 2015', N'25% Gautam / Category', CAST(0x0000A45100000000 AS DateTime), 12, NULL, NULL, 3)
SET IDENTITY_INSERT [dbo].[TargetedGoal] OFF
/****** Object:  Table [dbo].[Target]    Script Date: 03/09/2015 18:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Target](
	[TargetId] [int] IDENTITY(1,1) NOT NULL,
	[QuarterYear] [varchar](50) NULL,
	[PartnerId] [int] NULL,
	[ProductId] [int] NULL,
	[M1] [int] NOT NULL,
	[M2] [int] NOT NULL,
	[M3] [int] NOT NULL,
	[CreatedDate] [date] NULL,
	[CreatedUser] [int] NULL,
	[ModifiedDate] [date] NULL,
	[ModifiedUser] [int] NULL,
 CONSTRAINT [PK_Target] PRIMARY KEY CLUSTERED 
(
	[TargetId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Target] ON
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (1, N'Q2 2015', 2, 1, 60, 60, 60, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (2, N'Q2 2015', 2, 1, 60, 60, 60, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (3, N'Q2 2015', 2, 4, 5, 8, 8, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (4, N'Q2 2015', 2, 4, 5, 8, 8, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (5, N'Q2 2015', 1, 2, 100, 100, 120, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (6, N'Q2 2015', 1, 3, 52, 52, 52, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (7, N'Q2 2015', 1, 5, 5, 5, 5, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (8, N'Q2 2015', 1, 6, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (9, N'Q2 2015', 1, 7, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (10, N'Q2 2015', 1, 8, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (11, N'Q2 2015', 1, 9, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (12, N'Q2 2015', 1, 10, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (13, N'Q2 2015', 1, 2, 100, 100, 120, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (14, N'Q2 2015', 1, 3, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (15, N'Q2 2015', 1, 5, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (16, N'Q2 2015', 1, 6, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (17, N'Q2 2015', 1, 7, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (18, N'Q2 2015', 1, 8, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (19, N'Q2 2015', 1, 9, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (20, N'Q2 2015', 1, 10, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (21, N'Q2 2015', 2, 2, 100, 100, 120, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (22, N'Q2 2015', 2, 3, 52, 52, 52, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (23, N'Q2 2015', 2, 5, 5, 5, 5, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (24, N'Q2 2015', 2, 6, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (25, N'Q2 2015', 2, 7, 1, 1, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (26, N'Q2 2015', 2, 8, 5, 5, 5, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (27, N'Q2 2015', 2, 9, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (28, N'Q2 2015', 2, 10, 1, 1, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (29, N'Q2 2015', 2, 11, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (30, N'Q2 2015', 2, 12, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (31, N'Q2 2015', 2, 13, 8, 8, 8, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (32, N'Q2 2015', 2, 14, 50, 50, 50, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (33, N'Q2 2015', 2, 15, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (34, N'Q2 2015', 2, 16, 77, 77, 77, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (35, N'Q2 2015', 2, 17, 5, 10, 10, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (36, N'Q2 2015', 3, 1, 50, 65, 80, NULL, NULL, CAST(0xB0390B00 AS Date), 12)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (37, N'Q2 2015', 3, 2, 100, 125, 150, NULL, NULL, CAST(0xB0390B00 AS Date), 12)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (38, N'Q2 2015', 3, 3, 30, 34, 38, NULL, NULL, CAST(0xB0390B00 AS Date), 12)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (39, N'Q2 2015', 3, 4, 5, 5, 5, NULL, NULL, CAST(0xB0390B00 AS Date), 12)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (40, N'Q2 2015', 3, 5, 5, 5, 5, NULL, NULL, CAST(0xB0390B00 AS Date), 12)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (41, N'Q2 2015', 3, 6, 0, 0, 0, NULL, NULL, CAST(0xB0390B00 AS Date), 12)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (42, N'Q2 2015', 3, 7, 1, 1, 1, NULL, NULL, CAST(0xB0390B00 AS Date), 12)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (43, N'Q2 2015', 3, 8, 5, 5, 5, NULL, NULL, CAST(0xB0390B00 AS Date), 12)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (44, N'Q2 2015', 3, 9, 0, 0, 0, NULL, NULL, CAST(0xB0390B00 AS Date), 12)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (45, N'Q2 2015', 3, 10, 1, 1, 1, NULL, NULL, CAST(0xB0390B00 AS Date), 12)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (46, N'Q2 2015', 3, 11, 0, 0, 0, NULL, NULL, CAST(0xB0390B00 AS Date), 12)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (47, N'Q2 2015', 3, 12, 0, 0, 0, NULL, NULL, CAST(0xB0390B00 AS Date), 12)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (48, N'Q2 2015', 3, 13, 7, 9, 9, NULL, NULL, CAST(0xB0390B00 AS Date), 12)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (49, N'Q2 2015', 3, 14, 50, 60, 60, NULL, NULL, CAST(0xB0390B00 AS Date), 12)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (50, N'Q2 2015', 3, 15, 0, 0, 0, NULL, NULL, CAST(0xB0390B00 AS Date), 12)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (51, N'Q2 2015', 3, 16, 64, 81, 96, NULL, NULL, CAST(0xB0390B00 AS Date), 12)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (52, N'Q2 2015', 3, 17, 5, 5, 5, NULL, NULL, CAST(0xB0390B00 AS Date), 12)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (53, N'Q2 2015', 4, 1, 64, 64, 75, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (54, N'Q2 2015', 4, 2, 150, 150, 175, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (55, N'Q2 2015', 4, 3, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (56, N'Q2 2015', 4, 4, 2, 2, 4, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (57, N'Q2 2015', 4, 5, 5, 5, 10, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (58, N'Q2 2015', 4, 6, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (59, N'Q2 2015', 4, 7, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (60, N'Q2 2015', 4, 8, 20, 30, 50, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (61, N'Q2 2015', 4, 9, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (62, N'Q2 2015', 4, 10, 1, 1, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (63, N'Q2 2015', 4, 11, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (64, N'Q2 2015', 4, 12, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (65, N'Q2 2015', 4, 13, 6, 6, 8, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (66, N'Q2 2015', 4, 14, 75, 75, 100, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (67, N'Q2 2015', 4, 15, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (68, N'Q2 2015', 4, 16, 73, 73, 88, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (69, N'Q2 2015', 4, 17, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (70, N'Q2 2015', 5, 1, 180, 226, 226, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (71, N'Q2 2015', 5, 2, 400, 500, 500, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (72, N'Q2 2015', 5, 3, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (73, N'Q2 2015', 5, 4, 9, 10, 12, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (74, N'Q2 2015', 5, 5, 20, 25, 30, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (75, N'Q2 2015', 5, 6, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (76, N'Q2 2015', 5, 7, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (77, N'Q2 2015', 5, 8, 30, 50, 50, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (78, N'Q2 2015', 5, 9, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (79, N'Q2 2015', 5, 10, 5, 5, 9, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (80, N'Q2 2015', 5, 11, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (81, N'Q2 2015', 5, 12, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (82, N'Q2 2015', 5, 13, 12, 12, 15, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (83, N'Q2 2015', 5, 14, 150, 150, 175, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (84, N'Q2 2015', 5, 15, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (85, N'Q2 2015', 5, 16, 206, 253, 262, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (86, N'Q2 2015', 5, 17, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (87, N'Q2 2015', 6, 1, 123, 147, 147, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (88, N'Q2 2015', 6, 2, 250, 300, 300, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (89, N'Q2 2015', 6, 3, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (90, N'Q2 2015', 6, 4, 5, 5, 5, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (91, N'Q2 2015', 6, 5, 10, 10, 10, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (92, N'Q2 2015', 6, 6, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (93, N'Q2 2015', 6, 7, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (94, N'Q2 2015', 6, 8, 25, 25, 25, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (95, N'Q2 2015', 6, 9, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (96, N'Q2 2015', 6, 10, 3, 4, 5, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (97, N'Q2 2015', 6, 11, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (98, N'Q2 2015', 6, 12, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (99, N'Q2 2015', 6, 13, 12, 12, 12, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (100, N'Q2 2015', 6, 14, 150, 150, 150, NULL, NULL, NULL, NULL)
GO
print 'Processed 100 total records'
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (101, N'Q2 2015', 6, 15, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (102, N'Q2 2015', 6, 16, 143, 168, 169, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (103, N'Q2 2015', 6, 17, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (104, N'Q2 2015', 11, 1, 140, 225, 235, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (105, N'Q2 2015', 11, 2, 250, 400, 450, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (106, N'Q2 2015', 11, 3, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (107, N'Q2 2015', 11, 4, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (108, N'Q2 2015', 11, 5, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (109, N'Q2 2015', 11, 6, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (110, N'Q2 2015', 11, 7, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (111, N'Q2 2015', 11, 8, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (112, N'Q2 2015', 11, 9, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (113, N'Q2 2015', 11, 10, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (114, N'Q2 2015', 11, 11, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (115, N'Q2 2015', 11, 12, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (116, N'Q2 2015', 11, 13, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (117, N'Q2 2015', 11, 14, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (118, N'Q2 2015', 11, 15, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (119, N'Q2 2015', 11, 16, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (120, N'Q2 2015', 11, 17, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (121, N'Q2 2015', 13, 1, 96, 123, 110, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (122, N'Q2 2015', 13, 2, 175, 225, 200, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (123, N'Q2 2015', 13, 3, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (124, N'Q2 2015', 13, 4, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (125, N'Q2 2015', 13, 5, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (126, N'Q2 2015', 13, 6, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (127, N'Q2 2015', 13, 7, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (128, N'Q2 2015', 13, 8, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (129, N'Q2 2015', 13, 9, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (130, N'Q2 2015', 13, 10, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (131, N'Q2 2015', 13, 11, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (132, N'Q2 2015', 13, 12, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (133, N'Q2 2015', 13, 13, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (134, N'Q2 2015', 13, 14, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (135, N'Q2 2015', 13, 15, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (136, N'Q2 2015', 13, 16, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (137, N'Q2 2015', 13, 17, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (138, N'Q2 2015', 7, 1, 472, 528, 529, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (139, N'Q2 2015', 7, 2, 1050, 1175, 1150, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (140, N'Q2 2015', 7, 3, 100, 100, 100, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (141, N'Q2 2015', 7, 4, 18, 28, 27, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (142, N'Q2 2015', 7, 5, 40, 60, 60, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (143, N'Q2 2015', 7, 6, 100, 100, 100, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (144, N'Q2 2015', 7, 17, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (145, N'Q2 2015', 7, 7, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (146, N'Q2 2015', 7, 8, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (147, N'Q2 2015', 7, 9, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (148, N'Q2 2015', 8, 1, 140, 225, 235, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (149, N'Q2 2015', 8, 2, 250, 400, 450, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (150, N'Q2 2015', 8, 3, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (151, N'Q2 2015', 8, 4, 3, 3, 3, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (152, N'Q2 2015', 8, 5, 10, 10, 10, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (153, N'Q2 2015', 8, 6, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (154, N'Q2 2015', 8, 17, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (155, N'Q2 2015', 8, 7, 9, 13, 18, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (156, N'Q2 2015', 8, 8, 50, 75, 100, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (157, N'Q2 2015', 8, 9, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (158, N'Q2 2015', 9, 1, 306, 331, 331, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (159, N'Q2 2015', 9, 2, 600, 650, 650, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (160, N'Q2 2015', 9, 3, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (161, N'Q2 2015', 9, 4, 30, 30, 30, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (162, N'Q2 2015', 9, 5, 60, 60, 60, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (163, N'Q2 2015', 9, 6, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (164, N'Q2 2015', 9, 17, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (165, N'Q2 2015', 9, 7, 4, 10, 10, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (166, N'Q2 2015', 9, 8, 20, 50, 50, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (167, N'Q2 2015', 9, 9, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (168, N'Q2 2015', 9, 10, 1, 1, 2, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (169, N'Q2 2015', 9, 11, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (170, N'Q2 2015', 9, 12, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (171, N'Q2 2015', 9, 13, 4, 9, 24, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (172, N'Q2 2015', 9, 14, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (173, N'Q2 2015', 9, 15, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (174, N'Q2 2015', 9, 18, 1, 7, 2, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (175, N'Q2 2015', 9, 19, 120, 670, 200, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (176, N'Q2 2015', 9, 20, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (177, N'Q2 2015', 25, 1, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (178, N'Q2 2015', 25, 2, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (179, N'Q2 2015', 25, 3, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (180, N'Q2 2015', 25, 4, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (181, N'Q2 2015', 25, 5, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (182, N'Q2 2015', 25, 6, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (183, N'Q2 2015', 25, 17, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (184, N'Q2 2015', 25, 7, 175, 225, 275, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (185, N'Q2 2015', 25, 8, 313, 414, 414, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (186, N'Q2 2015', 25, 9, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (187, N'Q2 2015', 25, 10, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (188, N'Q2 2015', 25, 11, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (189, N'Q2 2015', 25, 12, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (190, N'Q2 2015', 25, 13, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (191, N'Q2 2015', 25, 14, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (192, N'Q2 2015', 25, 15, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (193, N'Q2 2015', 25, 18, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (194, N'Q2 2015', 25, 19, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (195, N'Q2 2015', 25, 20, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (196, N'Q2 2015', 25, 16, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (197, N'Q2 2015', 3, 18, 0, 0, 0, CAST(0xB0390B00 AS Date), 12, CAST(0xB0390B00 AS Date), 12)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (198, N'Q2 2015', 3, 19, 0, 0, 0, CAST(0xB0390B00 AS Date), 12, CAST(0xB0390B00 AS Date), 12)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (199, N'Q2 2015', 3, 20, 0, 0, 0, CAST(0xB0390B00 AS Date), 12, CAST(0xB0390B00 AS Date), 12)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (200, N'Q2 2015', 22, 1, 10, 20, 30, CAST(0xB0390B00 AS Date), 2, CAST(0xB0390B00 AS Date), 2)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (201, N'Q2 2015', 22, 2, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, CAST(0xB0390B00 AS Date), 2)
GO
print 'Processed 200 total records'
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (202, N'Q2 2015', 22, 3, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, CAST(0xB0390B00 AS Date), 2)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (203, N'Q2 2015', 22, 4, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, CAST(0xB0390B00 AS Date), 2)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (204, N'Q2 2015', 22, 5, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, CAST(0xB0390B00 AS Date), 2)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (205, N'Q2 2015', 22, 6, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, CAST(0xB0390B00 AS Date), 2)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (206, N'Q2 2015', 22, 17, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, CAST(0xB0390B00 AS Date), 2)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (207, N'Q2 2015', 22, 7, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, CAST(0xB0390B00 AS Date), 2)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (208, N'Q2 2015', 22, 8, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, CAST(0xB0390B00 AS Date), 2)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (209, N'Q2 2015', 22, 9, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, CAST(0xB0390B00 AS Date), 2)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (210, N'Q2 2015', 22, 10, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, CAST(0xB0390B00 AS Date), 2)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (211, N'Q2 2015', 22, 11, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, CAST(0xB0390B00 AS Date), 2)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (212, N'Q2 2015', 22, 12, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, CAST(0xB0390B00 AS Date), 2)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (213, N'Q2 2015', 22, 13, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, CAST(0xB0390B00 AS Date), 2)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (214, N'Q2 2015', 22, 14, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, CAST(0xB0390B00 AS Date), 2)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (215, N'Q2 2015', 22, 15, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, CAST(0xB0390B00 AS Date), 2)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (216, N'Q2 2015', 22, 18, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, CAST(0xB0390B00 AS Date), 2)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (217, N'Q2 2015', 22, 19, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, CAST(0xB0390B00 AS Date), 2)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (218, N'Q2 2015', 22, 20, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, CAST(0xB0390B00 AS Date), 2)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (219, N'Q2 2015', 22, 16, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, CAST(0xB0390B00 AS Date), 2)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (220, N'Q2 2015', 27, 1, 23, 12, 32, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (221, N'Q2 2015', 27, 2, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (222, N'Q2 2015', 27, 3, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (223, N'Q2 2015', 27, 4, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (224, N'Q2 2015', 27, 5, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (225, N'Q2 2015', 27, 6, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (226, N'Q2 2015', 27, 17, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (227, N'Q2 2015', 27, 7, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (228, N'Q2 2015', 27, 8, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (229, N'Q2 2015', 27, 9, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (230, N'Q2 2015', 27, 10, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (231, N'Q2 2015', 27, 11, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (232, N'Q2 2015', 27, 12, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (233, N'Q2 2015', 27, 13, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (234, N'Q2 2015', 27, 14, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (235, N'Q2 2015', 27, 15, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (236, N'Q2 2015', 27, 18, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (237, N'Q2 2015', 27, 19, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (238, N'Q2 2015', 27, 20, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (239, N'Q2 2015', 27, 16, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (240, N'Q2 2015', 29, 1, 10, 20, 30, CAST(0xB0390B00 AS Date), 12, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (241, N'Q2 2015', 29, 2, 0, 0, 0, CAST(0xB0390B00 AS Date), 12, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (242, N'Q2 2015', 29, 3, 0, 0, 0, CAST(0xB0390B00 AS Date), 12, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (243, N'Q2 2015', 29, 4, 0, 0, 0, CAST(0xB0390B00 AS Date), 12, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (244, N'Q2 2015', 29, 5, 0, 0, 0, CAST(0xB0390B00 AS Date), 12, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (245, N'Q2 2015', 29, 6, 0, 0, 0, CAST(0xB0390B00 AS Date), 12, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (246, N'Q2 2015', 29, 17, 0, 0, 0, CAST(0xB0390B00 AS Date), 12, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (247, N'Q2 2015', 29, 7, 0, 0, 0, CAST(0xB0390B00 AS Date), 12, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (248, N'Q2 2015', 29, 8, 0, 0, 0, CAST(0xB0390B00 AS Date), 12, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (249, N'Q2 2015', 29, 9, 0, 0, 0, CAST(0xB0390B00 AS Date), 12, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (250, N'Q2 2015', 29, 10, 0, 0, 0, CAST(0xB0390B00 AS Date), 12, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (251, N'Q2 2015', 29, 11, 0, 0, 0, CAST(0xB0390B00 AS Date), 12, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (252, N'Q2 2015', 29, 12, 0, 0, 0, CAST(0xB0390B00 AS Date), 12, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (253, N'Q2 2015', 29, 13, 0, 0, 0, CAST(0xB0390B00 AS Date), 12, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (254, N'Q2 2015', 29, 14, 0, 0, 0, CAST(0xB0390B00 AS Date), 12, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (255, N'Q2 2015', 29, 15, 0, 0, 0, CAST(0xB0390B00 AS Date), 12, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (256, N'Q2 2015', 29, 18, 0, 0, 0, CAST(0xB0390B00 AS Date), 12, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (257, N'Q2 2015', 29, 19, 0, 0, 0, CAST(0xB0390B00 AS Date), 12, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (258, N'Q2 2015', 29, 20, 0, 0, 0, CAST(0xB0390B00 AS Date), 12, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (259, N'Q2 2015', 29, 16, 0, 0, 0, CAST(0xB0390B00 AS Date), 12, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (260, N'Q2 2015', 28, 1, 10, 20, 30, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (261, N'Q2 2015', 28, 2, 30, 30, 10, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (262, N'Q2 2015', 28, 3, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (263, N'Q2 2015', 28, 4, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (264, N'Q2 2015', 28, 5, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (265, N'Q2 2015', 28, 6, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (266, N'Q2 2015', 28, 17, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (267, N'Q2 2015', 28, 7, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (268, N'Q2 2015', 28, 8, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (269, N'Q2 2015', 28, 9, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (270, N'Q2 2015', 28, 10, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (271, N'Q2 2015', 28, 11, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (272, N'Q2 2015', 28, 12, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (273, N'Q2 2015', 28, 13, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (274, N'Q2 2015', 28, 14, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (275, N'Q2 2015', 28, 15, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (276, N'Q2 2015', 28, 18, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (277, N'Q2 2015', 28, 19, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (278, N'Q2 2015', 28, 20, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
INSERT [dbo].[Target] ([TargetId], [QuarterYear], [PartnerId], [ProductId], [M1], [M2], [M3], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (279, N'Q2 2015', 28, 16, 0, 0, 0, CAST(0xB0390B00 AS Date), 2, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Target] OFF
/****** Object:  Table [dbo].[StrategicPlan]    Script Date: 03/09/2015 18:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
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
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[StrategicPlan] ON
INSERT [dbo].[StrategicPlan] ([StrategicPlanId], [BusinessObjective], [Strategies], [Metrics], [QuarterYear], [AssignedUserId], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser], [Comments], [CheckpointState], [PartnerId]) VALUES (1, N'
Increase Star SKU
', N'
Focus on star sku display and sell-out drive .training and motivating for ISP to sell high end products', N'
Current Mix is 43% to take it to 47% ', N'Q2 2015', 13, CAST(0xA3390B00 AS Date), 12, CAST(0xA3390B00 AS Date), 12, NULL, N'Good', 13)
INSERT [dbo].[StrategicPlan] ([StrategicPlanId], [BusinessObjective], [Strategies], [Metrics], [QuarterYear], [AssignedUserId], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser], [Comments], [CheckpointState], [PartnerId]) VALUES (2, N'Maintain share in PC Business', N'Maintain Share of 34% in Bangalore Distribution channel. And take this to 36% by End of Q2’15.', N'Periodic review', N'Q2 2015', NULL, CAST(0xAC390B00 AS Date), 12, NULL, NULL, NULL, N'', 7)
INSERT [dbo].[StrategicPlan] ([StrategicPlanId], [BusinessObjective], [Strategies], [Metrics], [QuarterYear], [AssignedUserId], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser], [Comments], [CheckpointState], [PartnerId]) VALUES (3, N'Increase WOD', N'Increase the breadth of Distribution from Current 120 Partners to 135 partners by End of Q2’15. Lower the Dependency of T2.5 Set of partners which is currently @40-45%. Allocating Each FOS 35-40 Key Outlets who will manage only those set of account yet in touch with all key outlet of that Zone/ Territory', N'Periodic review', N'Q2 2015', NULL, CAST(0xAC390B00 AS Date), 12, NULL, NULL, NULL, N'', 7)
INSERT [dbo].[StrategicPlan] ([StrategicPlanId], [BusinessObjective], [Strategies], [Metrics], [QuarterYear], [AssignedUserId], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser], [Comments], [CheckpointState], [PartnerId]) VALUES (4, N'High End Mix Improvement', N'Increase in High-end Mix from current 11% to 15% by End of Q2’15.', N'Periodic review', N'Q2 2015', NULL, CAST(0xAC390B00 AS Date), 12, NULL, NULL, NULL, N'', 7)
INSERT [dbo].[StrategicPlan] ([StrategicPlanId], [BusinessObjective], [Strategies], [Metrics], [QuarterYear], [AssignedUserId], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser], [Comments], [CheckpointState], [PartnerId]) VALUES (5, N'Focus on Split and Touch models', N'High focus on Split and Touch models , take the First mover advantage. As a Special Initiative Give Demo to Key retail outlet on Rotation Basis. Give mystery Reward to outlets who displays and promote HP STAR / SPLIT SKU’S.  Focused approach to take the Premium NB to 20% in DBN Bangalore.', N'Periodic review', N'Q2 2015', NULL, CAST(0xAC390B00 AS Date), 12, NULL, NULL, NULL, N'', 7)
INSERT [dbo].[StrategicPlan] ([StrategicPlanId], [BusinessObjective], [Strategies], [Metrics], [QuarterYear], [AssignedUserId], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser], [Comments], [CheckpointState], [PartnerId]) VALUES (6, N'Focus on High Level Engagement with Key Retail Outlet ', N'Increase SOW in Key Retail Outlet by ensuring weekly  Joint Visit to these counters along with RD Owner & (Account Manager)', N'Periodic review', N'Q2 2015', NULL, CAST(0xAC390B00 AS Date), 12, NULL, NULL, NULL, N'', 7)
INSERT [dbo].[StrategicPlan] ([StrategicPlanId], [BusinessObjective], [Strategies], [Metrics], [QuarterYear], [AssignedUserId], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser], [Comments], [CheckpointState], [PartnerId]) VALUES (7, N'Increase SOW at counters at Raju , Jai Kmr Japan , Apple and Berry , Shivam; Kabir,', N' Special tie up programs for the mentioned KRO outlets 
Every month one Road show with the KRO', N'To get consistent 20  nos per month from each counter in  Q 2 15', N'Q2 2015', NULL, CAST(0xAC390B00 AS Date), 12, CAST(0xAC390B00 AS Date), 12, NULL, N'', 22)
INSERT [dbo].[StrategicPlan] ([StrategicPlanId], [BusinessObjective], [Strategies], [Metrics], [QuarterYear], [AssignedUserId], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser], [Comments], [CheckpointState], [PartnerId]) VALUES (8, N'Grow WOD in Ahmedabad', N'Special tertiary  program for 30 outlets with a min target of 5 units .', N'Increase no. of counters billed from 15 currently to 30 by end of Q3’15', N'Q2 2015', NULL, CAST(0xAC390B00 AS Date), 12, NULL, NULL, NULL, N'', 22)
INSERT [dbo].[StrategicPlan] ([StrategicPlanId], [BusinessObjective], [Strategies], [Metrics], [QuarterYear], [AssignedUserId], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser], [Comments], [CheckpointState], [PartnerId]) VALUES (9, N'To Enter other KRO like Prime , Kore', N'To start following up on a regular basis 
Select one of their Outlets and place promoter ', N'To drive 10 units per month ', N'Q2 2015', NULL, CAST(0xAC390B00 AS Date), 12, CAST(0xB0390B00 AS Date), 2, NULL, N'', 22)
INSERT [dbo].[StrategicPlan] ([StrategicPlanId], [BusinessObjective], [Strategies], [Metrics], [QuarterYear], [AssignedUserId], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser], [Comments], [CheckpointState], [PartnerId]) VALUES (10, N'Increase Accessory Connect', N'Encourage the partner and ISP Driven store  for better accessories connect to increase his overall margins while selling a Phablet  and hence improving his bottom line.', N'Current Connect in Q1’15 is less than 1% which needs to  reach to 2%', N'Q2 2015', NULL, CAST(0xAC390B00 AS Date), 12, NULL, NULL, NULL, N'', 25)
INSERT [dbo].[StrategicPlan] ([StrategicPlanId], [BusinessObjective], [Strategies], [Metrics], [QuarterYear], [AssignedUserId], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser], [Comments], [CheckpointState], [PartnerId]) VALUES (11, N'Increase WOD', N'Encourage partner to expand the channel so that dependency decreases on current set of partner ', N'Current WOD  is 28 which needs to grow to 35, ', N'Q2 2015', NULL, CAST(0xAC390B00 AS Date), 12, NULL, NULL, NULL, N'', 25)
INSERT [dbo].[StrategicPlan] ([StrategicPlanId], [BusinessObjective], [Strategies], [Metrics], [QuarterYear], [AssignedUserId], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser], [Comments], [CheckpointState], [PartnerId]) VALUES (12, N'To make best selling  T3 channel at Agra, Mathura, Meerut, Bulandshaar, Muzaffarnagar, Modinagar, Hapur, Terriotry  ', N'Proper sku mix to be driven , so as to increase the overall ASP.', N'Current running sku Yukon contributed 80% of overall biz , ideally would maintain 40% , so as to increase the ASP.', N'Q2 2015', NULL, CAST(0xAC390B00 AS Date), 12, NULL, NULL, NULL, N'', 25)
SET IDENTITY_INSERT [dbo].[StrategicPlan] OFF
/****** Object:  Table [dbo].[OverviewPlan]    Script Date: 03/09/2015 18:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OverviewPlan](
	[OverviewPlanId] [int] IDENTITY(1,1) NOT NULL,
	[Strength] [varchar](max) NULL,
	[Weakness] [varchar](max) NULL,
	[Opportunity] [varchar](max) NULL,
	[SupportReqd] [varchar](max) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedUser] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedUser] [int] NULL,
	[Comments] [varchar](max) NULL,
	[Quarter] [varchar](50) NULL,
	[PartnerId] [int] NOT NULL,
 CONSTRAINT [PK_OverviewPlan] PRIMARY KEY CLUSTERED 
(
	[OverviewPlanId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[OverviewPlan] ON
INSERT [dbo].[OverviewPlan] ([OverviewPlanId], [Strength], [Weakness], [Opportunity], [SupportReqd], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser], [Comments], [Quarter], [PartnerId]) VALUES (1, N'- High Walk in store
- Mid of IT Hub
- Good relationship with customer
- Knowledgeable staff
-  Most skilled ISP 
- After sale service support is good
- Star SKUs sales out', N'- Low end value product sales out focused
- Desktop/AIO Sales is less.
- High end printer sales out is less.', N'- Presently we are at 45% of the SOW, can grow up to 50% 
- AIO Sales out 
- Tablet Sales out focus required 
- UIA Printer Sales out
- Printers direct billing for T1 Partners', N'- Dell is getting aggressive at the counter, they have come up 30% of SOW
- Apple is the new entrant in the store.
- Online material procurement has been started at the store.', CAST(0x0000A44600000000 AS DateTime), 2, NULL, NULL, NULL, N'Q2 2015', 2)
INSERT [dbo].[OverviewPlan] ([OverviewPlanId], [Strength], [Weakness], [Opportunity], [SupportReqd], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser], [Comments], [Quarter], [PartnerId]) VALUES (2, N'- High Walk in store
- Mid of IT Hub
- Good relationship with customer
- Knowledgeable staff
- Most skilled ISP 
- After sale service support is good
- Star SKUs sales out', N'- Stock Management
- Stock Planning
- AIO Sales is less
- High end printer sales out is less
- Financial concerns with T1.', N'- Presently we are at 25% of the SOW, Can increase to beyond 30%
- AIO Sales out 
- UIA Printer Sales out', N'- Dell is getting aggressive at the counter, they are now at 35% of SOW
- Toshiba has made him wholesales for notebooks, which can grow his focus on Toshiba as well.
- Toshiba has given him 1 ISP plus ISB at the store', CAST(0x0000A44600000000 AS DateTime), 2, NULL, NULL, NULL, N'Q2 2015', 3)
INSERT [dbo].[OverviewPlan] ([OverviewPlanId], [Strength], [Weakness], [Opportunity], [SupportReqd], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser], [Comments], [Quarter], [PartnerId]) VALUES (3, N'- High Walk in store
- Old large customer base in North Delhi
- Multi location @ North Delhi n South Delhi
- Experience in CE Retail
- Financial Credibility', N'- Stock Management
- Lacks Quality Manpower at the mid management level', N'- Tab business? we Can scale up this business to 50 unit /Month
- Printing Business? combo offer with notebook', N'- Lenovo and Asus are  very aggressive at  entry level segment . 
- Surrounded by LFR stores', CAST(0x0000A44600000000 AS DateTime), 2, NULL, NULL, NULL, N'Q2 2015', 4)
INSERT [dbo].[OverviewPlan] ([OverviewPlanId], [Strength], [Weakness], [Opportunity], [SupportReqd], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser], [Comments], [Quarter], [PartnerId]) VALUES (4, N'- High Walk in store
- Leader In CE segment
- Good Retail Presence all across Delhi
- Newly Add 4 Big outlet 
- Huge investment in ATL and BTL', N'- IT Skill of  staff
- Less space for IT display  in majority of stores', N'- Expanding IT reach beyond 15+ stores( Need ISP  to start business from new store)
- Printing +Attach + Supplies Business', N'- Lenovo are  getting aggressive at the counter, they have come up  with ISP placement/Branding/LFR SKUs etc at Various stores. 
- Bent of mind towards CE at the store level', CAST(0x0000A44600000000 AS DateTime), 2, NULL, NULL, NULL, N'Q2 2015', 5)
INSERT [dbo].[OverviewPlan] ([OverviewPlanId], [Strength], [Weakness], [Opportunity], [SupportReqd], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser], [Comments], [Quarter], [PartnerId]) VALUES (5, N'- High Walk in store
- All store present @ IT Hub
- Address all type of  customer Base
- Do lot of marketing activity', N'- Huge investment done in the current metro outlet Impact ROI  
- Centralized  decision making
- Credit issue with T1', N'- Presently we are  around 5% of the SOW, can grow up to >30% If we provide extra support like branding/ 0% EMI offer on full range of notebook and desktop .
- Joint Marketing activity like newspaper ad', N'- Lenovo is  offering derivative   sku/AMD and entry level sku
- Highly Competitive Nehru Place Market  ?impact ROI', CAST(0x0000A44600000000 AS DateTime), 2, NULL, NULL, NULL, N'Q2 2015', 6)
INSERT [dbo].[OverviewPlan] ([OverviewPlanId], [Strength], [Weakness], [Opportunity], [SupportReqd], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser], [Comments], [Quarter], [PartnerId]) VALUES (6, N'- Strong Relationship in IT Hub – SP road Mkt.
- Financially Sound and has capabilities to Scale up Volumes and can bring in investment when needed.
- Presence in IT Hub and hence has a faster logistics mechanism for SP Road / IT Hub Market.
- Flexible with T3 Partners.
- Guidance of experience person / Partner of Arihant Infocom who has 25 years of IT and Telecom Distribution Experience.
- In event of product add-ons partner has a financial capability to scale up and manage funds for new business with additional funds.', N'- Not a strong back office for Reporting.
- Emotional Aspect of RD.
- Being a Partnership Firm , any decision requires consensus of both partners
- ROI is calculated and discussed very frequently. And hence its difficult at times to Justify the Margin and ROI to Partner.', N'- Grow SOW in Key Retail Outlets
- Increase the breadth of sales  by adding smaller partners outside IT Hub Market , which is a real growing area for Retail. For Ex Marathalli Belt….ITPL Belt….Electronic City Belt…
- Tap some of key competition liker Outshiny / Mehta Infotech/ Aashirwad ,who are loyal to competition and we have Low SOW in those outlets.
- Increase share and interaction/ visit  in Yelhanka . Peenya Belt which is a growing area of Bangalore outskirts.
- Can increase share in high end SKU, which will increase profitability for HP and Partner both..
- Increase HP Dedicated Field level Manpower to have a better coverage from RD Perspective.', N'- Dell is getting aggressive at the counter , Arihant Infocom Sister Concern Arihant Distributors is a Reseller for DELL Inspiron Range of Laptop and Desktop where partner enjoys High Returns in Very Low Investments.
- Intel is Getting aggressive in Arihant Infocom Counter , which could be a threat reason being they are taking the mind share of partner by taking time , investment , Manpower Etc.
- Partner Mind share going down due to Online channel Price issue and it could cause a serious problem in Partner and HP Relationship.
- Due to Exclusive Partner for HP Notebook Distribution , all Major  brands keep poaching Arihant Infocom and keep giving lucrative offers of Exclusive business proposal.', CAST(0x0000A44700000000 AS DateTime), 12, NULL, NULL, NULL, N'Q2 2015', 7)
INSERT [dbo].[OverviewPlan] ([OverviewPlanId], [Strength], [Weakness], [Opportunity], [SupportReqd], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser], [Comments], [Quarter], [PartnerId]) VALUES (7, N'- High Walk in store
- Geo presence
- Many outlets and IT products are in 14 stores. 
- EMI
- Involves in Business directly', N'- Manpower 
- Store ambience 
- Don’t want invest on IT and looks for Consignment', N'- ISP deployment and be a part of his ad campaign
- To be part of his EMI schemes via Bajaj 
- IT to be categorized from14 to 20 stores in this Qtr.', N'- Dell is getting aggressive at the counter offering  - Strategic Support on  Festive days and  additional support on  i3 SKU 
- Canon is offering  printer Bundle at aggressive price', CAST(0x0000A44700000000 AS DateTime), 12, NULL, NULL, NULL, N'Q2 2015', 11)
INSERT [dbo].[OverviewPlan] ([OverviewPlanId], [Strength], [Weakness], [Opportunity], [SupportReqd], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser], [Comments], [Quarter], [PartnerId]) VALUES (8, N'- High Walk in store – Opp  IT  Hub
- Good  HP & Competition Product Knowledge.
- Interested in Demand Generation Activities- Ads and promotions
- Trained Manpower', N'- More Deal oriented, as he operates with other vendors & located in IT hub trade center, competition vendors give him Deals .
- More interested in fast moving SKU & has high ROI Expectations.
- Only focuses on Mainstream for faster rotation of funds .', N'- To increase conversions, as the store is located in a High  footfall area opposite to  IT Hub.
- Maximise EMI offer & zero percent offers to counter Lenovo
- As his manpower is trained so  we can improve Sellout for Star SKU’s - HE, Printers & Accessories.
- Need to come out with an additional bonus /tactical support to increase SO on R series graphics /DOS SKUs', N'- On account of being present at high Rental location, we are giving Rental Support to the partner, we are sensitive that it can’t be continued forever, but in current circumstances stopping the support will hurt business sentiments.', CAST(0x0000A44700000000 AS DateTime), 12, NULL, NULL, NULL, N'Q2 2015', 1)
INSERT [dbo].[OverviewPlan] ([OverviewPlanId], [Strength], [Weakness], [Opportunity], [SupportReqd], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser], [Comments], [Quarter], [PartnerId]) VALUES (9, N'- High Walk in stores
- Multiple  stores  
- EMI  - Bajaj Finance
- Ads and promotions
- Manpower', N'- Stock Management
- Partner requires finance option also in sub 30k price models.', N'- Presently we are at  46%- 50% of the SOW,  we can grow up to 55% -60%  if  we can give  100% price protection  ( can be via Stock Audit)  and Promoters for all the  stores.
- Multiple store presence and  Expansion 
- EMI option on Credit  Cards 
- Need to  focus   existing high traffic stores - Panjagutta  &  Jublihills and Forum Mall.
- Print. Need to have a display section in top stores.', N'- Dell is getting aggressive at the counter, they have come up  to 26% of SOW and are offering 0% finance
- Dell is playing more on Corei3 and PDC.
- Higher margin offered by Dell and Lenovo.', CAST(0x0000A44700000000 AS DateTime), 12, NULL, NULL, NULL, N'Q2 2015', 8)
INSERT [dbo].[OverviewPlan] ([OverviewPlanId], [Strength], [Weakness], [Opportunity], [SupportReqd], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser], [Comments], [Quarter], [PartnerId]) VALUES (10, N'- Number of stores – 5
- Large customer base in Navi Mumbai
0% Finance 
- High mind share of owner towards HP
- Good ISP team', N'- High rentals 
- Management of Finances', N'- Buyback options on DT, NB, Printer to be leveraged
- Grow Attach business
- Student / Residential area promotion in local markets
- EPP in CIDCO  
- Panvel Store Expansion
- Airoli Store Expansion', N'- Walk-ins at stores coming down – need to work on free movie vouchers to customers buying even Rs 750/- worth goods from store. 
- Margins are under pressure as input costs have increased – creating pressure on overall operations', CAST(0x0000A44700000000 AS DateTime), 12, NULL, NULL, NULL, N'Q2 2015', 9)
INSERT [dbo].[OverviewPlan] ([OverviewPlanId], [Strength], [Weakness], [Opportunity], [SupportReqd], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser], [Comments], [Quarter], [PartnerId]) VALUES (11, N'- Of a total of 16 stores presence of IT in 11 stores. 
- Most Stores Located in Growing Market
- CE chain gives access to Inflow of Target Consumer
- Huge customer base
- Finance Options like Bajaj & EMI on credit cards 
- They have internally created a separate organization to focus on growing IT & Telecom biz.
- Have a manager to head IT category.
- They spend aggressively on paper advts.', N'- High expenses like LFR stores  
- Management has better knowledge of CE business compared to IT business
- Prefer direct & upfront rebate settlements without depending on PBCC & program routes', N'- They are seeing growth with HP and are inviting us to grow IT business
- Better engagement as we have direct contact 
- To Grow Printing & Attach business
- Increase branding and visibility at new stores
- Investing in sales people at stores is helping us maintain > 60% SOW 
- Have checked for EPPs / Corporate sales but current priority is to settle the retail sale.', N'- Online business like Snapdeal, Flipkart, Amazon creating challenges & impacting profitability.
- New products like Tablets, Hybrids & Smart phones can impact IT growth in the stores.
- Competition pitching supports like upfront rebates, manpower, special rebates & demo discounts', CAST(0x0000A44700000000 AS DateTime), 12, NULL, NULL, NULL, N'Q2 2015', 12)
INSERT [dbo].[OverviewPlan] ([OverviewPlanId], [Strength], [Weakness], [Opportunity], [SupportReqd], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser], [Comments], [Quarter], [PartnerId]) VALUES (12, N'- Location of store at all 3 cities (Pune/ Nashik / Aurangabad) is in prime location.
- Students are major customer segment at Pune & Nashik.
- Own Store staff & ISP’s are competent.
- Carries entire portfolio like Laptops, Desktops, Printers, Supplies, Tablets, Accessories
- Sales mix (i.e HE mix is good)', N'- Store cleanliness needs to be improved & monitored on regular basis.
- Minimal Parchment area activities by the partner for smaller stores promotion. Major dependency on flagship store @ Tilak Rd.', N'- Started direct Supplies billing from Q3’14. Shall look to grow biz in this segment going forward. Currently averaging direct purchase of Rs. 50K per month. Looking to take it to 1.5 lacs per month wef Feb’15
- Printer connect can be increased with IA and UIA 
- Partner willing to open more stores – HPW’s in ROM (Pune) provided HP supports. Mall store if possible.
- Kalyani Nagar store post relocation should pick up with  promotional activities planned for Q2’15.', N'- Additional A&P support required to do local activities to increase walk in and convert the buyers  into sale . 
- Other points listed in sheet 4.', CAST(0x0000A44700000000 AS DateTime), 12, NULL, NULL, NULL, N'Q2 2015', 10)
INSERT [dbo].[OverviewPlan] ([OverviewPlanId], [Strength], [Weakness], [Opportunity], [SupportReqd], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser], [Comments], [Quarter], [PartnerId]) VALUES (13, N'- High Walk in stores
- Mid of IT Hub
- Good relationship with customer
- Multiple Stores across Pune 
- Cash- rich', N'- Stock Management
- Works more on deal & Extra Support.
- Focus is more on deal based pricing at the MBO counters.', N'- Accessories placement done. Pricing support required for initial 2/3 months. 
- HPW store at Viman Nagar is operational & Plan to open 1 more HPW store at  a suitable location in Pune.
- Supplies growth opportunity through direct billing.', N'- Partner gets inclined towards reselling under stock pressure.
- Compares our pricing with Dell & Lenovo deals.', CAST(0x0000A44700000000 AS DateTime), 12, NULL, NULL, NULL, N'Q2 2015', 13)
INSERT [dbo].[OverviewPlan] ([OverviewPlanId], [Strength], [Weakness], [Opportunity], [SupportReqd], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser], [Comments], [Quarter], [PartnerId]) VALUES (14, N'-Involvement of owner in everyday sales and business 
-Partner has good Relation with some of Key Retail outlets
-Have complete Office set up for planning session
-Passionate about Telecom Business
-Is flexible  and gives credit exposure for  billing New Partners', N'-He is 6 months old  Distributor for  Ahmedabad Market
-Execution is week 
-No separate  Field Manpower for collection and sales .
-To Improve Financial – when market conditions are week', N'-Improve  Width of distribution  . 
-Tap new  KRO like  Kore , Prime , Mobile World
-Growth in upcountry   Ahmedabad  .
-Focus on 6 inches tablet in telecom sector .', N'-A&P funds to execute roadshows
-Demand Generation Activities for increasing Tertiary sales
-Funds for running local schemes for KRO in area.
-ISP required in more telecom counters .
-More Dummy units
-FTS scheme / End consumer offer', CAST(0x0000A45100000000 AS DateTime), 12, CAST(0x0000A45501081244 AS DateTime), 2, NULL, N'Q2 2015', 22)
INSERT [dbo].[OverviewPlan] ([OverviewPlanId], [Strength], [Weakness], [Opportunity], [SupportReqd], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser], [Comments], [Quarter], [PartnerId]) VALUES (15, N'-Involvement of owner in everyday sales and business is very high
-Partner has good hold in telecom market across Bengal
-Width of distribution is good .
-Good Financial health.
-Excellent own service setup.
-Adequate manpower present for business.', N'-He is not among Top telecom RDS in West Bengal
-Field Manpower quality to be improved.', N'-Improve  Width of distribution  in upcountry  market. 
-Engage new counters .
-Growth in upcountry  Bengal area assigned .
-Focus on 6 inches tablet in telecom sector .', N'-A&P funds to execute roadshows
-Funds for running local schemes for T3 in area.
-ISP required in more telecom counters .', CAST(0x0000A45100000000 AS DateTime), 12, NULL, NULL, NULL, N'Q2 2015', 23)
INSERT [dbo].[OverviewPlan] ([OverviewPlanId], [Strength], [Weakness], [Opportunity], [SupportReqd], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser], [Comments], [Quarter], [PartnerId]) VALUES (16, N'-Largest Online Retailer in the country
-Positive Management Team
-Pursuing Stock and sell model
-Great WOI
-Excellent customer service as a online retailer
-Innovative', N'-Is wanting to increase SOW with DELL and Lenovo due to higher margins
-Since Online retailer ? not showing profits hence limited on credit
-Is more inclined to using Price levers like emi, cash back , DOTD rather than the non price positioning variables', N'-Presently we are at 45% of the SOW and want to maintain the same
-Display share to be greater than 40% 
-Pre Launch and Pre booking for Stream
-Derivatives and Compaq 
-Rules of Engagement for the Online channel keeping in view the  importance of traditional and online both 
 Derivatives in Accessories and printer.', N'-Lenovo and Dell are getting aggressive at the counter, they have come up 20% of SOW with Dell reaching 25% plus
-Inventory optimization and Working capital reduction pressures at FK – internal mandate to operate at “Minus 10 “ terms by end March – ie if credit enjoyed is 30 days, operate at 20 days inventory.
-Other E tailers like Amazon and Snapdeal as they are operating predatory pricing.', CAST(0x0000A45100000000 AS DateTime), 12, NULL, NULL, NULL, N'Q2 2015', 28)
INSERT [dbo].[OverviewPlan] ([OverviewPlanId], [Strength], [Weakness], [Opportunity], [SupportReqd], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser], [Comments], [Quarter], [PartnerId]) VALUES (17, N'-Excellent Market Reach, having presence on every T3 partner
-Involvement of owner in everyday sales and business 
-Suitable number of sales personnel, hence provide proper attention to our product
-SKU Mix is good 
-Biggest Telecom Partner of West UP.
-Financially very sound.', N'-Credit Note settlement of T3 partners
-Timely distribution of stock against order is missing at Meerut Territory , improved at AGra
 
-Many Brand Business, sometimes defocussed.
-Dedicated resource is not there for our Biz.', N'Agra UP country still untapped. Need to address immediately.', N'RD may inclined towards other mobile handset brands under his belt, if we will loose momentum.', CAST(0x0000A45100000000 AS DateTime), 12, NULL, NULL, NULL, N'Q2 2015', 25)
SET IDENTITY_INSERT [dbo].[OverviewPlan] OFF
/****** Object:  Table [dbo].[OpenHouse]    Script Date: 03/09/2015 18:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OpenHouse](
	[OpenHouseId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](max) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedUser] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedUser] [int] NULL,
	[Quarter] [varchar](50) NULL,
	[PartnerId] [int] NOT NULL,
 CONSTRAINT [PK_OpenHouse] PRIMARY KEY CLUSTERED 
(
	[OpenHouseId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[OpenHouse] ON
INSERT [dbo].[OpenHouse] ([OpenHouseId], [Description], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser], [Quarter], [PartnerId]) VALUES (1, N'- Need branding in 3 store
- Need EMI /Bajaj on all product
- Co-marketing activity
- Need More Qty. of Bing Sku to counter Lenovo', CAST(0x0000A44800000000 AS DateTime), 2, NULL, NULL, N'Q2 2015', 4)
SET IDENTITY_INSERT [dbo].[OpenHouse] OFF
/****** Object:  Table [dbo].[CompetitorLandscape]    Script Date: 03/09/2015 18:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CompetitorLandscape](
	[CompetitorId] [int] IDENTITY(1,1) NOT NULL,
	[Share] [int] NULL,
	[BrandPresenc] [int] NULL,
	[PriceStrategy] [varchar](50) NULL,
	[StoreInvestment] [varchar](50) NULL,
	[AdditionalComment] [varchar](max) NULL,
	[CategoryId] [int] NULL,
	[PartnerId] [int] NULL,
	[QuarterYear] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedUser] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedUser] [int] NULL,
 CONSTRAINT [PK_CompetitorLandscape] PRIMARY KEY CLUSTERED 
(
	[CompetitorId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[CompetitorLandscape] ON
INSERT [dbo].[CompetitorLandscape] ([CompetitorId], [Share], [BrandPresenc], [PriceStrategy], [StoreInvestment], [AdditionalComment], [CategoryId], [PartnerId], [QuarterYear], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (1, 90, 90, N'', N'NA', N'', 1, 7, N'Q2 2015', NULL, NULL, NULL, NULL)
INSERT [dbo].[CompetitorLandscape] ([CompetitorId], [Share], [BrandPresenc], [PriceStrategy], [StoreInvestment], [AdditionalComment], [CategoryId], [PartnerId], [QuarterYear], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (2, 0, 0, N'', N'', N'', 2, 7, N'Q2 2015', NULL, NULL, NULL, NULL)
INSERT [dbo].[CompetitorLandscape] ([CompetitorId], [Share], [BrandPresenc], [PriceStrategy], [StoreInvestment], [AdditionalComment], [CategoryId], [PartnerId], [QuarterYear], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (3, 0, 0, N'', N'', N'', 3, 7, N'Q2 2015', NULL, NULL, NULL, NULL)
INSERT [dbo].[CompetitorLandscape] ([CompetitorId], [Share], [BrandPresenc], [PriceStrategy], [StoreInvestment], [AdditionalComment], [CategoryId], [PartnerId], [QuarterYear], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (4, 0, 0, N'', N'', N'', 4, 7, N'Q2 2015', NULL, NULL, NULL, NULL)
INSERT [dbo].[CompetitorLandscape] ([CompetitorId], [Share], [BrandPresenc], [PriceStrategy], [StoreInvestment], [AdditionalComment], [CategoryId], [PartnerId], [QuarterYear], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (5, 0, 0, N'', N'', N'', 5, 7, N'Q2 2015', NULL, NULL, NULL, NULL)
INSERT [dbo].[CompetitorLandscape] ([CompetitorId], [Share], [BrandPresenc], [PriceStrategy], [StoreInvestment], [AdditionalComment], [CategoryId], [PartnerId], [QuarterYear], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (6, 10, 10, N'', N'NA', N'', 6, 7, N'Q2 2015', NULL, NULL, NULL, NULL)
INSERT [dbo].[CompetitorLandscape] ([CompetitorId], [Share], [BrandPresenc], [PriceStrategy], [StoreInvestment], [AdditionalComment], [CategoryId], [PartnerId], [QuarterYear], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (7, 100, 100, N'', N'', N'', 7, 7, N'Q2 2015', NULL, NULL, NULL, NULL)
INSERT [dbo].[CompetitorLandscape] ([CompetitorId], [Share], [BrandPresenc], [PriceStrategy], [StoreInvestment], [AdditionalComment], [CategoryId], [PartnerId], [QuarterYear], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (8, 0, 0, N'', N'', N'', 8, 7, N'Q2 2015', NULL, NULL, NULL, NULL)
INSERT [dbo].[CompetitorLandscape] ([CompetitorId], [Share], [BrandPresenc], [PriceStrategy], [StoreInvestment], [AdditionalComment], [CategoryId], [PartnerId], [QuarterYear], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (9, 0, 0, N'', N'', N'', 9, 7, N'Q2 2015', NULL, NULL, NULL, NULL)
INSERT [dbo].[CompetitorLandscape] ([CompetitorId], [Share], [BrandPresenc], [PriceStrategy], [StoreInvestment], [AdditionalComment], [CategoryId], [PartnerId], [QuarterYear], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (10, 0, 0, N'', N'', N'', 10, 7, N'Q2 2015', NULL, NULL, NULL, NULL)
INSERT [dbo].[CompetitorLandscape] ([CompetitorId], [Share], [BrandPresenc], [PriceStrategy], [StoreInvestment], [AdditionalComment], [CategoryId], [PartnerId], [QuarterYear], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (11, 1, 1, N'', N'', N'', 1, 23, N'Q2 2015', CAST(0x0000A45501085704 AS DateTime), 2, NULL, NULL)
INSERT [dbo].[CompetitorLandscape] ([CompetitorId], [Share], [BrandPresenc], [PriceStrategy], [StoreInvestment], [AdditionalComment], [CategoryId], [PartnerId], [QuarterYear], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (12, 0, 0, N'', N'', N'', 2, 23, N'Q2 2015', CAST(0x0000A45501085720 AS DateTime), 2, NULL, NULL)
INSERT [dbo].[CompetitorLandscape] ([CompetitorId], [Share], [BrandPresenc], [PriceStrategy], [StoreInvestment], [AdditionalComment], [CategoryId], [PartnerId], [QuarterYear], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (13, 0, 0, N'', N'', N'', 3, 23, N'Q2 2015', CAST(0x0000A45501085727 AS DateTime), 2, NULL, NULL)
INSERT [dbo].[CompetitorLandscape] ([CompetitorId], [Share], [BrandPresenc], [PriceStrategy], [StoreInvestment], [AdditionalComment], [CategoryId], [PartnerId], [QuarterYear], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (14, 0, 0, N'', N'', N'', 4, 23, N'Q2 2015', CAST(0x0000A4550108572F AS DateTime), 2, NULL, NULL)
INSERT [dbo].[CompetitorLandscape] ([CompetitorId], [Share], [BrandPresenc], [PriceStrategy], [StoreInvestment], [AdditionalComment], [CategoryId], [PartnerId], [QuarterYear], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (15, 0, 0, N'', N'', N'', 5, 23, N'Q2 2015', CAST(0x0000A45501085736 AS DateTime), 2, NULL, NULL)
INSERT [dbo].[CompetitorLandscape] ([CompetitorId], [Share], [BrandPresenc], [PriceStrategy], [StoreInvestment], [AdditionalComment], [CategoryId], [PartnerId], [QuarterYear], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (16, 0, 0, N'', N'', N'', 6, 23, N'Q2 2015', CAST(0x0000A4550108573D AS DateTime), 2, NULL, NULL)
INSERT [dbo].[CompetitorLandscape] ([CompetitorId], [Share], [BrandPresenc], [PriceStrategy], [StoreInvestment], [AdditionalComment], [CategoryId], [PartnerId], [QuarterYear], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (17, 0, 0, N'', N'', N'', 7, 23, N'Q2 2015', CAST(0x0000A45501085744 AS DateTime), 2, NULL, NULL)
INSERT [dbo].[CompetitorLandscape] ([CompetitorId], [Share], [BrandPresenc], [PriceStrategy], [StoreInvestment], [AdditionalComment], [CategoryId], [PartnerId], [QuarterYear], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (18, 0, 0, N'', N'', N'', 8, 23, N'Q2 2015', CAST(0x0000A4550108574B AS DateTime), 2, NULL, NULL)
INSERT [dbo].[CompetitorLandscape] ([CompetitorId], [Share], [BrandPresenc], [PriceStrategy], [StoreInvestment], [AdditionalComment], [CategoryId], [PartnerId], [QuarterYear], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (19, 0, 0, N'', N'', N'', 9, 23, N'Q2 2015', CAST(0x0000A45501085752 AS DateTime), 2, NULL, NULL)
INSERT [dbo].[CompetitorLandscape] ([CompetitorId], [Share], [BrandPresenc], [PriceStrategy], [StoreInvestment], [AdditionalComment], [CategoryId], [PartnerId], [QuarterYear], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (20, 0, 0, N'', N'', N'', 10, 23, N'Q2 2015', CAST(0x0000A45501085759 AS DateTime), 2, NULL, NULL)
INSERT [dbo].[CompetitorLandscape] ([CompetitorId], [Share], [BrandPresenc], [PriceStrategy], [StoreInvestment], [AdditionalComment], [CategoryId], [PartnerId], [QuarterYear], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (21, 10, 0, N'', N'', N'', 1, 5, N'Q2 2015', CAST(0x0000A455011A53EA AS DateTime), 2, NULL, NULL)
INSERT [dbo].[CompetitorLandscape] ([CompetitorId], [Share], [BrandPresenc], [PriceStrategy], [StoreInvestment], [AdditionalComment], [CategoryId], [PartnerId], [QuarterYear], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (22, 0, 0, N'', N'', N'', 2, 5, N'Q2 2015', CAST(0x0000A455011A54A1 AS DateTime), 2, NULL, NULL)
INSERT [dbo].[CompetitorLandscape] ([CompetitorId], [Share], [BrandPresenc], [PriceStrategy], [StoreInvestment], [AdditionalComment], [CategoryId], [PartnerId], [QuarterYear], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (23, 0, 0, N'', N'', N'', 3, 5, N'Q2 2015', CAST(0x0000A455011A54AF AS DateTime), 2, NULL, NULL)
INSERT [dbo].[CompetitorLandscape] ([CompetitorId], [Share], [BrandPresenc], [PriceStrategy], [StoreInvestment], [AdditionalComment], [CategoryId], [PartnerId], [QuarterYear], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (24, 0, 0, N'', N'', N'', 4, 5, N'Q2 2015', CAST(0x0000A455011A54B6 AS DateTime), 2, NULL, NULL)
INSERT [dbo].[CompetitorLandscape] ([CompetitorId], [Share], [BrandPresenc], [PriceStrategy], [StoreInvestment], [AdditionalComment], [CategoryId], [PartnerId], [QuarterYear], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (25, 0, 0, N'', N'', N'', 5, 5, N'Q2 2015', CAST(0x0000A455011A54BD AS DateTime), 2, NULL, NULL)
INSERT [dbo].[CompetitorLandscape] ([CompetitorId], [Share], [BrandPresenc], [PriceStrategy], [StoreInvestment], [AdditionalComment], [CategoryId], [PartnerId], [QuarterYear], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (26, 0, 0, N'', N'', N'', 6, 5, N'Q2 2015', CAST(0x0000A455011A54C4 AS DateTime), 2, NULL, NULL)
INSERT [dbo].[CompetitorLandscape] ([CompetitorId], [Share], [BrandPresenc], [PriceStrategy], [StoreInvestment], [AdditionalComment], [CategoryId], [PartnerId], [QuarterYear], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (27, 0, 0, N'', N'', N'', 7, 5, N'Q2 2015', CAST(0x0000A455011A54CB AS DateTime), 2, NULL, NULL)
INSERT [dbo].[CompetitorLandscape] ([CompetitorId], [Share], [BrandPresenc], [PriceStrategy], [StoreInvestment], [AdditionalComment], [CategoryId], [PartnerId], [QuarterYear], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (28, 0, 0, N'', N'', N'', 8, 5, N'Q2 2015', CAST(0x0000A455011A54D1 AS DateTime), 2, NULL, NULL)
INSERT [dbo].[CompetitorLandscape] ([CompetitorId], [Share], [BrandPresenc], [PriceStrategy], [StoreInvestment], [AdditionalComment], [CategoryId], [PartnerId], [QuarterYear], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (29, 0, 0, N'', N'', N'', 9, 5, N'Q2 2015', CAST(0x0000A455011A54D9 AS DateTime), 2, NULL, NULL)
INSERT [dbo].[CompetitorLandscape] ([CompetitorId], [Share], [BrandPresenc], [PriceStrategy], [StoreInvestment], [AdditionalComment], [CategoryId], [PartnerId], [QuarterYear], [CreatedDate], [CreatedUser], [ModifiedDate], [ModifiedUser]) VALUES (30, 0, 0, N'', N'', N'', 10, 5, N'Q2 2015', CAST(0x0000A455011A54DF AS DateTime), 2, NULL, NULL)
SET IDENTITY_INSERT [dbo].[CompetitorLandscape] OFF
/****** Object:  Default [DF_City_Active]    Script Date: 03/09/2015 18:18:18 ******/
ALTER TABLE [dbo].[City] ADD  CONSTRAINT [DF_City_Active]  DEFAULT ((1)) FOR [Active]
GO
/****** Object:  Default [DF_Partner_Active]    Script Date: 03/09/2015 18:18:18 ******/
ALTER TABLE [dbo].[Partner] ADD  CONSTRAINT [DF_Partner_Active]  DEFAULT ((1)) FOR [Active]
GO
/****** Object:  Default [DF_PartnerCategory_Active]    Script Date: 03/09/2015 18:18:18 ******/
ALTER TABLE [dbo].[PartnerCategory] ADD  CONSTRAINT [DF_PartnerCategory_Active]  DEFAULT ((1)) FOR [Active]
GO
/****** Object:  Default [DF_Role_Active]    Script Date: 03/09/2015 18:18:18 ******/
ALTER TABLE [dbo].[Role] ADD  CONSTRAINT [DF_Role_Active]  DEFAULT ((1)) FOR [Active]
GO
/****** Object:  Default [DF_Sale_M2]    Script Date: 03/09/2015 18:18:18 ******/
ALTER TABLE [dbo].[Sale] ADD  CONSTRAINT [DF_Sale_M2]  DEFAULT ((0)) FOR [M2]
GO
/****** Object:  Default [DF_States_Active]    Script Date: 03/09/2015 18:18:18 ******/
ALTER TABLE [dbo].[States] ADD  CONSTRAINT [DF_States_Active]  DEFAULT ((1)) FOR [Active]
GO
/****** Object:  Default [DF_Target_M2]    Script Date: 03/09/2015 18:18:18 ******/
ALTER TABLE [dbo].[Target] ADD  CONSTRAINT [DF_Target_M2]  DEFAULT ((0)) FOR [M2]
GO
/****** Object:  Default [DF_User_Active]    Script Date: 03/09/2015 18:18:18 ******/
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_Active]  DEFAULT ((1)) FOR [Active]
GO
/****** Object:  Default [DF_Zone_Active]    Script Date: 03/09/2015 18:18:18 ******/
ALTER TABLE [dbo].[Zone] ADD  CONSTRAINT [DF_Zone_Active]  DEFAULT ((1)) FOR [Active]
GO
/****** Object:  ForeignKey [FK_ActionForTargetedGoal_Partner]    Script Date: 03/09/2015 18:18:18 ******/
ALTER TABLE [dbo].[ActionForTargetedGoal]  WITH CHECK ADD  CONSTRAINT [FK_ActionForTargetedGoal_Partner] FOREIGN KEY([PartnerId])
REFERENCES [dbo].[Partner] ([PartnerId])
GO
ALTER TABLE [dbo].[ActionForTargetedGoal] CHECK CONSTRAINT [FK_ActionForTargetedGoal_Partner]
GO
/****** Object:  ForeignKey [FK_ActionForTargetedGoal_User]    Script Date: 03/09/2015 18:18:18 ******/
ALTER TABLE [dbo].[ActionForTargetedGoal]  WITH CHECK ADD  CONSTRAINT [FK_ActionForTargetedGoal_User] FOREIGN KEY([AssignedUserId])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[ActionForTargetedGoal] CHECK CONSTRAINT [FK_ActionForTargetedGoal_User]
GO
/****** Object:  ForeignKey [FK_ActivityLog_Partner]    Script Date: 03/09/2015 18:18:18 ******/
ALTER TABLE [dbo].[ActivityLog]  WITH CHECK ADD  CONSTRAINT [FK_ActivityLog_Partner] FOREIGN KEY([PartnerId])
REFERENCES [dbo].[Partner] ([PartnerId])
GO
ALTER TABLE [dbo].[ActivityLog] CHECK CONSTRAINT [FK_ActivityLog_Partner]
GO
/****** Object:  ForeignKey [FK_ActivityLog_User]    Script Date: 03/09/2015 18:18:18 ******/
ALTER TABLE [dbo].[ActivityLog]  WITH CHECK ADD  CONSTRAINT [FK_ActivityLog_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[ActivityLog] CHECK CONSTRAINT [FK_ActivityLog_User]
GO
/****** Object:  ForeignKey [FK_City_Zone]    Script Date: 03/09/2015 18:18:18 ******/
ALTER TABLE [dbo].[City]  WITH CHECK ADD  CONSTRAINT [FK_City_Zone] FOREIGN KEY([ZoneId])
REFERENCES [dbo].[Zone] ([ZoneId])
GO
ALTER TABLE [dbo].[City] CHECK CONSTRAINT [FK_City_Zone]
GO
/****** Object:  ForeignKey [FK_Competitor_Competitor]    Script Date: 03/09/2015 18:18:18 ******/
ALTER TABLE [dbo].[Competitor]  WITH CHECK ADD  CONSTRAINT [FK_Competitor_Competitor] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Competitor] ([CategoryId])
GO
ALTER TABLE [dbo].[Competitor] CHECK CONSTRAINT [FK_Competitor_Competitor]
GO
/****** Object:  ForeignKey [FK_CompetitorLandscape_Competitor]    Script Date: 03/09/2015 18:18:18 ******/
ALTER TABLE [dbo].[CompetitorLandscape]  WITH CHECK ADD  CONSTRAINT [FK_CompetitorLandscape_Competitor] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Competitor] ([CategoryId])
GO
ALTER TABLE [dbo].[CompetitorLandscape] CHECK CONSTRAINT [FK_CompetitorLandscape_Competitor]
GO
/****** Object:  ForeignKey [FK_CompetitorLandscape_Partner]    Script Date: 03/09/2015 18:18:18 ******/
ALTER TABLE [dbo].[CompetitorLandscape]  WITH CHECK ADD  CONSTRAINT [FK_CompetitorLandscape_Partner] FOREIGN KEY([PartnerId])
REFERENCES [dbo].[Partner] ([PartnerId])
GO
ALTER TABLE [dbo].[CompetitorLandscape] CHECK CONSTRAINT [FK_CompetitorLandscape_Partner]
GO
/****** Object:  ForeignKey [FK_OpenHouse_Partner]    Script Date: 03/09/2015 18:18:18 ******/
ALTER TABLE [dbo].[OpenHouse]  WITH CHECK ADD  CONSTRAINT [FK_OpenHouse_Partner] FOREIGN KEY([PartnerId])
REFERENCES [dbo].[Partner] ([PartnerId])
GO
ALTER TABLE [dbo].[OpenHouse] CHECK CONSTRAINT [FK_OpenHouse_Partner]
GO
/****** Object:  ForeignKey [FK_OverviewPlan_Partner]    Script Date: 03/09/2015 18:18:18 ******/
ALTER TABLE [dbo].[OverviewPlan]  WITH CHECK ADD  CONSTRAINT [FK_OverviewPlan_Partner] FOREIGN KEY([PartnerId])
REFERENCES [dbo].[Partner] ([PartnerId])
GO
ALTER TABLE [dbo].[OverviewPlan] CHECK CONSTRAINT [FK_OverviewPlan_Partner]
GO
/****** Object:  ForeignKey [FK_Partner_City]    Script Date: 03/09/2015 18:18:18 ******/
ALTER TABLE [dbo].[Partner]  WITH CHECK ADD  CONSTRAINT [FK_Partner_City] FOREIGN KEY([CityId])
REFERENCES [dbo].[City] ([CityId])
GO
ALTER TABLE [dbo].[Partner] CHECK CONSTRAINT [FK_Partner_City]
GO
/****** Object:  ForeignKey [FK_Partner_PartnerCategory]    Script Date: 03/09/2015 18:18:18 ******/
ALTER TABLE [dbo].[Partner]  WITH CHECK ADD  CONSTRAINT [FK_Partner_PartnerCategory] FOREIGN KEY([PartnerCategoryId])
REFERENCES [dbo].[PartnerCategory] ([PartnerCategoryId])
GO
ALTER TABLE [dbo].[Partner] CHECK CONSTRAINT [FK_Partner_PartnerCategory]
GO
/****** Object:  ForeignKey [FK_Partner_User]    Script Date: 03/09/2015 18:18:18 ******/
ALTER TABLE [dbo].[Partner]  WITH CHECK ADD  CONSTRAINT [FK_Partner_User] FOREIGN KEY([AssociatedUserId])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[Partner] CHECK CONSTRAINT [FK_Partner_User]
GO
/****** Object:  ForeignKey [FK_Permission_Role]    Script Date: 03/09/2015 18:18:18 ******/
ALTER TABLE [dbo].[Permission]  WITH CHECK ADD  CONSTRAINT [FK_Permission_Role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([RoleId])
GO
ALTER TABLE [dbo].[Permission] CHECK CONSTRAINT [FK_Permission_Role]
GO
/****** Object:  ForeignKey [FK_Sale_Partner]    Script Date: 03/09/2015 18:18:18 ******/
ALTER TABLE [dbo].[Sale]  WITH CHECK ADD  CONSTRAINT [FK_Sale_Partner] FOREIGN KEY([PartnerId])
REFERENCES [dbo].[Partner] ([PartnerId])
GO
ALTER TABLE [dbo].[Sale] CHECK CONSTRAINT [FK_Sale_Partner]
GO
/****** Object:  ForeignKey [FK_Sale_Product]    Script Date: 03/09/2015 18:18:18 ******/
ALTER TABLE [dbo].[Sale]  WITH CHECK ADD  CONSTRAINT [FK_Sale_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([ProductId])
GO
ALTER TABLE [dbo].[Sale] CHECK CONSTRAINT [FK_Sale_Product]
GO
/****** Object:  ForeignKey [FK_StrategicPlan_Partner]    Script Date: 03/09/2015 18:18:18 ******/
ALTER TABLE [dbo].[StrategicPlan]  WITH CHECK ADD  CONSTRAINT [FK_StrategicPlan_Partner] FOREIGN KEY([PartnerId])
REFERENCES [dbo].[Partner] ([PartnerId])
GO
ALTER TABLE [dbo].[StrategicPlan] CHECK CONSTRAINT [FK_StrategicPlan_Partner]
GO
/****** Object:  ForeignKey [FK_StrategicPlan_User]    Script Date: 03/09/2015 18:18:18 ******/
ALTER TABLE [dbo].[StrategicPlan]  WITH CHECK ADD  CONSTRAINT [FK_StrategicPlan_User] FOREIGN KEY([AssignedUserId])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[StrategicPlan] CHECK CONSTRAINT [FK_StrategicPlan_User]
GO
/****** Object:  ForeignKey [FK_Target_Partner]    Script Date: 03/09/2015 18:18:18 ******/
ALTER TABLE [dbo].[Target]  WITH CHECK ADD  CONSTRAINT [FK_Target_Partner] FOREIGN KEY([PartnerId])
REFERENCES [dbo].[Partner] ([PartnerId])
GO
ALTER TABLE [dbo].[Target] CHECK CONSTRAINT [FK_Target_Partner]
GO
/****** Object:  ForeignKey [FK_Target_Product]    Script Date: 03/09/2015 18:18:18 ******/
ALTER TABLE [dbo].[Target]  WITH CHECK ADD  CONSTRAINT [FK_Target_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([ProductId])
GO
ALTER TABLE [dbo].[Target] CHECK CONSTRAINT [FK_Target_Product]
GO
/****** Object:  ForeignKey [FK_TargetedGoal_Partner]    Script Date: 03/09/2015 18:18:18 ******/
ALTER TABLE [dbo].[TargetedGoal]  WITH CHECK ADD  CONSTRAINT [FK_TargetedGoal_Partner] FOREIGN KEY([PartnerId])
REFERENCES [dbo].[Partner] ([PartnerId])
GO
ALTER TABLE [dbo].[TargetedGoal] CHECK CONSTRAINT [FK_TargetedGoal_Partner]
GO
/****** Object:  ForeignKey [FK_User_Role]    Script Date: 03/09/2015 18:18:18 ******/
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([RoleId])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
/****** Object:  ForeignKey [FK_User_User1]    Script Date: 03/09/2015 18:18:18 ******/
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_User1] FOREIGN KEY([ReportingId])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_User1]
GO
/****** Object:  ForeignKey [FK_UserCity_City]    Script Date: 03/09/2015 18:18:18 ******/
ALTER TABLE [dbo].[UserCity]  WITH CHECK ADD  CONSTRAINT [FK_UserCity_City] FOREIGN KEY([CityId])
REFERENCES [dbo].[City] ([CityId])
GO
ALTER TABLE [dbo].[UserCity] CHECK CONSTRAINT [FK_UserCity_City]
GO
/****** Object:  ForeignKey [FK_UserCity_User]    Script Date: 03/09/2015 18:18:18 ******/
ALTER TABLE [dbo].[UserCity]  WITH CHECK ADD  CONSTRAINT [FK_UserCity_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[UserCity] CHECK CONSTRAINT [FK_UserCity_User]
GO
/****** Object:  ForeignKey [FK_UserCity_UserCity]    Script Date: 03/09/2015 18:18:18 ******/
ALTER TABLE [dbo].[UserCity]  WITH CHECK ADD  CONSTRAINT [FK_UserCity_UserCity] FOREIGN KEY([UserId], [CityId])
REFERENCES [dbo].[UserCity] ([UserId], [CityId])
GO
ALTER TABLE [dbo].[UserCity] CHECK CONSTRAINT [FK_UserCity_UserCity]
GO

/****** Object:  Table [dbo].[PlacementProduct]    Script Date: 03/11/2015 11:44:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[PlacementProduct](
	[PlacementProductId] [int] IDENTITY(1,1) NOT NULL,
	[PlacementProductDescription] [varchar](200) NOT NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_PlacementProduct] PRIMARY KEY CLUSTERED 
(
	[PlacementProductId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


/****** Object:  Table [dbo].[PlacementTarget]    Script Date: 03/11/2015 11:44:24 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[PlacementTarget](
	[PlacementTargetId] [int] IDENTITY(1,1) NOT NULL,
	[PlacementProductId] [int] NOT NULL,
	[Stores] [int] NULL,
	[Units] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedUser] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedUser] [int] NULL,
	[PartnerId] [int] NOT NULL,
	[QuarterYear] [varchar](50) NOT NULL,
 CONSTRAINT [PK_PlacementTarget] PRIMARY KEY CLUSTERED 
(
	[PlacementTargetId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[PlacementTarget]  WITH CHECK ADD  CONSTRAINT [FK_PlacementTarget_Partner] FOREIGN KEY([PartnerId])
REFERENCES [dbo].[Partner] ([PartnerId])
GO

ALTER TABLE [dbo].[PlacementTarget] CHECK CONSTRAINT [FK_PlacementTarget_Partner]
GO

ALTER TABLE [dbo].[PlacementTarget]  WITH CHECK ADD  CONSTRAINT [FK_PlacementTarget_PlacementProduct] FOREIGN KEY([PlacementProductId])
REFERENCES [dbo].[PlacementProduct] ([PlacementProductId])
GO

ALTER TABLE [dbo].[PlacementTarget] CHECK CONSTRAINT [FK_PlacementTarget_PlacementProduct]
GO

/****** Object:  Table [dbo].[ActionAssignedUser]    Script Date: 03/12/2015 11:02:47 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ActionAssignedUser](
	[ActionId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_ActionAssignedUser] PRIMARY KEY CLUSTERED 
(
	[ActionId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[ActionAssignedUser]  WITH CHECK ADD  CONSTRAINT [FK_ActionAssignedUser_ActionForTargetedGoal] FOREIGN KEY([ActionId])
REFERENCES [dbo].[ActionForTargetedGoal] ([ActionId])
GO

ALTER TABLE [dbo].[ActionAssignedUser] CHECK CONSTRAINT [FK_ActionAssignedUser_ActionForTargetedGoal]
GO

ALTER TABLE [dbo].[ActionAssignedUser]  WITH CHECK ADD  CONSTRAINT [FK_ActionAssignedUser_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([UserId])
GO

ALTER TABLE [dbo].[ActionAssignedUser] CHECK CONSTRAINT [FK_ActionAssignedUser_User]
GO
