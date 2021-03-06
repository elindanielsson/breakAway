/****** Object:  UserDefinedFunction [dbo].[ufnLBtoKG]    Script Date: 12/16/2010 19:44:54 ******/
USE [Breakaway]
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ufnLBtoKG]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CReate FUNCTION [dbo].[ufnLBtoKG](@Pounds [int])
RETURNS [nvarchar](15) 
AS 
-- Converts kilograms to pounds so that all customer weights can be stored in pounds
BEGIN
    DECLARE @ret [int];

    SET @ret = cast((@Pounds/ 2.2) as int)
       
    RETURN @ret
END;
' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[ufnKGtoLB]    Script Date: 12/16/2010 19:44:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ufnKGtoLB]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CReate FUNCTION [dbo].[ufnKGtoLB](@Kilogram [int])
RETURNS [nvarchar](15) 
AS 
-- Converts kilograms to pounds so that all customer weights can be stored in pounds
BEGIN
    DECLARE @ret [int];

    SET @ret = cast((@Kilogram * 2.2) as int)
       
    RETURN @ret
END;
' 
END
GO
/****** Object:  Table [dbo].[Activities]    Script Date: 12/16/2010 19:44:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Activities]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Activities](
	[ActivityID] [int] IDENTITY(1,1) NOT NULL,
	[Activity] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[imagepath] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Category] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_Activities] PRIMARY KEY CLUSTERED 
(
	[ActivityID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[Activities] ON
INSERT [dbo].[Activities] ([ActivityID], [Activity], [imagepath], [Category]) VALUES (1, N'Skiing                                            ', N'\images\happy.gif', N'land      ')
INSERT [dbo].[Activities] ([ActivityID], [Activity], [imagepath], [Category]) VALUES (2, N'Snowboarding                                      ', N'\images\happy.gif', N'Winter    ')
INSERT [dbo].[Activities] ([ActivityID], [Activity], [imagepath], [Category]) VALUES (3, N'Road Cycling - Leisure                            ', N'\images\cycling.jpg', N'Land      ')
INSERT [dbo].[Activities] ([ActivityID], [Activity], [imagepath], [Category]) VALUES (4, N'Road Cycling - Challenging                        ', N'\images\happy.gif', N'Land      ')
INSERT [dbo].[Activities] ([ActivityID], [Activity], [imagepath], [Category]) VALUES (5, N'Mountain Biking                                   ', N'\images\happy.gif', N'Land      ')
INSERT [dbo].[Activities] ([ActivityID], [Activity], [imagepath], [Category]) VALUES (6, N'Kayaking                                          ', N'\images\kayaking.jpg', N'Water     ')
INSERT [dbo].[Activities] ([ActivityID], [Activity], [imagepath], [Category]) VALUES (7, N'Canoing                                           ', N'\images\happy.gif', N'Water     ')
INSERT [dbo].[Activities] ([ActivityID], [Activity], [imagepath], [Category]) VALUES (8, N'Deep Sea Fishing                                  ', N'\images\happy.gif', N'Water     ')
INSERT [dbo].[Activities] ([ActivityID], [Activity], [imagepath], [Category]) VALUES (9, N'Fly Fishing                                       ', N'\images\happy.gif', N'Water     ')
INSERT [dbo].[Activities] ([ActivityID], [Activity], [imagepath], [Category]) VALUES (10, N'White Water Kayaking                              ', N'\images\kayakingww.jpg', N'Water     ')
INSERT [dbo].[Activities] ([ActivityID], [Activity], [imagepath], [Category]) VALUES (11, N'White Water Rafting                               ', N'\images\happy.gif', N'Water     ')
INSERT [dbo].[Activities] ([ActivityID], [Activity], [imagepath], [Category]) VALUES (12, N'Mountaineering                                    ', N'\images\happy.gif', N'Land      ')
INSERT [dbo].[Activities] ([ActivityID], [Activity], [imagepath], [Category]) VALUES (13, N'Hiking                                            ', N'\images\happy.gif', N'Land      ')
INSERT [dbo].[Activities] ([ActivityID], [Activity], [imagepath], [Category]) VALUES (14, N'Walking Tours                                     ', N'\images\walking.jpg', N'Land      ')
INSERT [dbo].[Activities] ([ActivityID], [Activity], [imagepath], [Category]) VALUES (15, N'Ice Climbing                                      ', N'\images\happy.gif', N'Winter    ')
INSERT [dbo].[Activities] ([ActivityID], [Activity], [imagepath], [Category]) VALUES (16, N'Rock Climbing                                     ', N'\images\happy.gif', N'Land      ')
INSERT [dbo].[Activities] ([ActivityID], [Activity], [imagepath], [Category]) VALUES (17, N'Backpacking                                       ', N'\images\happy.gif', N'Land      ')
INSERT [dbo].[Activities] ([ActivityID], [Activity], [imagepath], [Category]) VALUES (18, N'Horse riding                                      ', N'\images\horse.jpg', N'Land      ')
INSERT [dbo].[Activities] ([ActivityID], [Activity], [imagepath], [Category]) VALUES (19, N'Llama Trekking                                    ', N'\images\happy.gif', N'Land      ')
INSERT [dbo].[Activities] ([ActivityID], [Activity], [imagepath], [Category]) VALUES (20, N'Canyoneering                                      ', N'\images\happy.gif', N'Land      ')
INSERT [dbo].[Activities] ([ActivityID], [Activity], [imagepath], [Category]) VALUES (21, N'Dog Sledding                                      ', N'\images\happy.gif', N'Winter    ')
INSERT [dbo].[Activities] ([ActivityID], [Activity], [imagepath], [Category]) VALUES (22, N'Scuba Diving                                      ', N'\images\diving.jpg', N'Water     ')
INSERT [dbo].[Activities] ([ActivityID], [Activity], [imagepath], [Category]) VALUES (23, N'Surfing                                           ', N'\images\happy.gif', N'Water     ')
INSERT [dbo].[Activities] ([ActivityID], [Activity], [imagepath], [Category]) VALUES (24, N'Safari                                            ', N'\images\happy.gif', N'Land      ')
INSERT [dbo].[Activities] ([ActivityID], [Activity], [imagepath], [Category]) VALUES (25, N'Sledding                                          ', N'\images\happy.gif', N'Winter    ')
INSERT [dbo].[Activities] ([ActivityID], [Activity], [imagepath], [Category]) VALUES (26, N'WindSurfing                                       ', NULL, N'Water     ')
INSERT [dbo].[Activities] ([ActivityID], [Activity], [imagepath], [Category]) VALUES (27, N'Sky Diving                                        ', NULL, N'Flying    ')
INSERT [dbo].[Activities] ([ActivityID], [Activity], [imagepath], [Category]) VALUES (28, N'Ballooning                                        ', NULL, N'Flying    ')
INSERT [dbo].[Activities] ([ActivityID], [Activity], [imagepath], [Category]) VALUES (29, N'Hang Gliding                                      ', NULL, N'Flying    ')
INSERT [dbo].[Activities] ([ActivityID], [Activity], [imagepath], [Category]) VALUES (30, N'WindSurfing                                       ', NULL, N'Water     ')
INSERT [dbo].[Activities] ([ActivityID], [Activity], [imagepath], [Category]) VALUES (31, N'WindSurfing                                       ', NULL, N'Water     ')
INSERT [dbo].[Activities] ([ActivityID], [Activity], [imagepath], [Category]) VALUES (32, N'WindSurfing', NULL, N'Water')
SET IDENTITY_INSERT [dbo].[Activities] OFF
/****** Object:  Table [dbo].[CustomerTypes]    Script Date: 12/16/2010 19:44:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CustomerTypes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CustomerTypes](
	[CustomerTypeID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerType] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_CustomerTypes] PRIMARY KEY CLUSTERED 
(
	[CustomerTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[CustomerTypes] ON
INSERT [dbo].[CustomerTypes] ([CustomerTypeID], [CustomerType]) VALUES (1, N'Standard            ')
INSERT [dbo].[CustomerTypes] ([CustomerTypeID], [CustomerType]) VALUES (2, N'Silver              ')
INSERT [dbo].[CustomerTypes] ([CustomerTypeID], [CustomerType]) VALUES (3, N'Gold                ')
SET IDENTITY_INSERT [dbo].[CustomerTypes] OFF
/****** Object:  Table [dbo].[ContactPersonalInfo]    Script Date: 12/16/2010 19:44:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ContactPersonalInfo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ContactPersonalInfo](
	[ContactID] [int] NOT NULL,
	[BirthDate] [datetime] NULL,
	[HeightInches] [int] NULL,
	[WeightPounds] [int] NULL,
	[DietaryRestrictions] [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_ContactPersonalInfo] PRIMARY KEY CLUSTERED 
(
	[ContactID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (1, CAST(0x000073AA00000000 AS DateTime), 69, 125, N'                                                                                                                                                                                                        ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (2, CAST(0x0000801700000000 AS DateTime), 57, 206, N'                                                                                                                                                        ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (6, CAST(0x00006F7F00000000 AS DateTime), 74, 232, N'                                                                                                                                                                 ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (7, CAST(0x000085C900000000 AS DateTime), 51, 196, N'                                                                                                                                                                                                   ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (10, NULL, NULL, NULL, NULL)
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (12, CAST(0x0000699E00000000 AS DateTime), 75, 221, N'                                                                                                                                                                                                                                             ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (19, CAST(0x0000771800000000 AS DateTime), 68, 226, N'                                                                                                                                                                                                                                ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (20, CAST(0x00005FD000000000 AS DateTime), 52, 191, N'                                                                                                                                                                    ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (21, CAST(0x0000801000000000 AS DateTime), 59, 188, N'                                                                                                                                                             ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (22, NULL, NULL, NULL, NULL)
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (23, NULL, NULL, NULL, NULL)
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (24, NULL, NULL, NULL, NULL)
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (30, CAST(0x000050D300000000 AS DateTime), 63, 248, N'                                                                                                                                                                                                                                                 ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (34, CAST(0x00008B1500000000 AS DateTime), 72, 219, N'                                                                                                                                                ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (37, CAST(0x00004D9100000000 AS DateTime), 68, 178, N'                                                                                                                                                                                                                              ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (38, CAST(0x0000641400000000 AS DateTime), 55, 184, N'                                                                                                           ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (39, CAST(0x000061A500000000 AS DateTime), 54, 268, N'                                                                                                               ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (40, CAST(0x0000891600000000 AS DateTime), 75, 157, N'                                                                                                                                                                         ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (43, CAST(0x0000534100000000 AS DateTime), 74, 201, N'                                                                                                                                               ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (46, CAST(0x00007EA400000000 AS DateTime), 70, 104, N'                                                                                                                                                                                      ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (48, NULL, NULL, NULL, NULL)
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (56, CAST(0x000083FF00000000 AS DateTime), 62, 287, N'                                                                                                                                                                                               ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (57, CAST(0x0000809C00000000 AS DateTime), 70, 231, N'                                                                                                                                                               ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (59, CAST(0x000082B700000000 AS DateTime), 78, 284, N'                                                                                                                        ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (65, CAST(0x0000512D00000000 AS DateTime), 60, 268, N'                                                                                                                                                                                                                                                   ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (66, CAST(0x0000817400000000 AS DateTime), 66, 164, N'                                                                                                           ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (70, CAST(0x000059B000000000 AS DateTime), 53, 109, N'                                                                                                                                   ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (79, CAST(0x000053AD00000000 AS DateTime), 54, 220, N'                                                                                                                                                                                                                   ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (82, CAST(0x00006A3A00000000 AS DateTime), 68, 100, N'                                                                                                                                                                                                                            ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (88, CAST(0x00007F9200000000 AS DateTime), 76, 210, N'                                                                                                                                   ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (95, CAST(0x000060F800000000 AS DateTime), 58, 175, N'                                                                                                                                                                                                ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (96, CAST(0x00005E0600000000 AS DateTime), 59, 265, N'                                                                                                                 ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (97, CAST(0x0000804D00000000 AS DateTime), 61, 148, N'                                                                                                            ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (101, CAST(0x000073B800000000 AS DateTime), 50, 106, N'                                                                                                                                                                                                                                 ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (102, CAST(0x0000781C00000000 AS DateTime), 50, 203, N'                                                                                                                                                                                                                                                ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (112, CAST(0x0000527C00000000 AS DateTime), 78, 204, N'                                                                                                                                                                                                                  ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (113, CAST(0x000072C500000000 AS DateTime), 53, 133, N'                                                                                                                                                                                                                                  ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (118, CAST(0x0000703400000000 AS DateTime), 76, 128, N'                                                                                                                                                                                               ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (124, CAST(0x00004F9E00000000 AS DateTime), 52, 285, N'                                                                                                                    ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (127, CAST(0x0000892900000000 AS DateTime), 70, 299, N'                                                                                                                                                                                                                ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (129, CAST(0x0000647800000000 AS DateTime), 68, 234, N'                                                                                                                                                                                       ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (131, CAST(0x00005D9D00000000 AS DateTime), 57, 283, N'                                                                                                                                    ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (137, CAST(0x000081F500000000 AS DateTime), 57, 273, N'                                                                                                                      ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (145, CAST(0x0000732000000000 AS DateTime), 60, 263, N'                                                                                                                                                                                                                                                        ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (146, CAST(0x000080F100000000 AS DateTime), 58, 245, N'                                                                                                                                                                                            ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (147, CAST(0x0000779A00000000 AS DateTime), 67, 182, N'                                                                                                    ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (148, CAST(0x0000703200000000 AS DateTime), 68, 208, N'                                                                                                                                                                  ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (149, CAST(0x000056B500000000 AS DateTime), 80, 231, N'                                                                                                                                                                                                                        ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (150, CAST(0x0000577600000000 AS DateTime), 70, 199, N'                                                                                                                                                                        ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (151, CAST(0x000072B900000000 AS DateTime), 60, 241, N'                                                                                                                                                                                                                              ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (160, CAST(0x00006CC400000000 AS DateTime), 80, 234, N'                                                                                                                                                                 ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (164, CAST(0x0000559E00000000 AS DateTime), 67, 283, N'                                                                                                                                                                                 ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (172, CAST(0x00004FC100000000 AS DateTime), 53, 152, N'                                                                                                                                                                                                               ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (180, CAST(0x0000689300000000 AS DateTime), 63, 110, N'                                                                                                                                                                                                                                    ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (185, CAST(0x0000864600000000 AS DateTime), 56, 243, N'                                                                                                                        ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (186, CAST(0x00004D8400000000 AS DateTime), 73, 263, N'                                                                                                                                                                                                                                                     ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (187, CAST(0x00006C5300000000 AS DateTime), 69, 188, N'                                                                                                                                                                                                                 ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (190, CAST(0x00004CB300000000 AS DateTime), 69, 152, N'                                                                                                                      ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (191, CAST(0x0000759300000000 AS DateTime), 62, 261, N'                                                                                                                                               ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (192, CAST(0x00005D7C00000000 AS DateTime), 76, 224, N'                                                                                                                                                                                    ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (196, CAST(0x0000606E00000000 AS DateTime), 50, 251, N'                                                                                                                                                                  ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (199, CAST(0x0000848000000000 AS DateTime), 62, 131, N'                                                                                                                                                                                                                                     ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (202, CAST(0x0000541B00000000 AS DateTime), 66, 105, N'                                                                                                       ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (203, CAST(0x0000853900000000 AS DateTime), 60, 195, N'                                                                                                                                                                                                                                                ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (204, CAST(0x0000570F00000000 AS DateTime), 59, 275, N'                                                                                                                                                                     ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (218, CAST(0x00005C6A00000000 AS DateTime), 62, 142, N'                                                                                                                                                                                          ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (220, CAST(0x00005B2900000000 AS DateTime), 66, 230, N'                                                                                                                ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (221, CAST(0x00007DF500000000 AS DateTime), 60, 99, N'                                                                                                      ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (223, CAST(0x000072F100000000 AS DateTime), 59, 160, N'                                                                                                                   ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (228, CAST(0x000051DC00000000 AS DateTime), 59, 253, N'                                                                                                                                                ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (236, CAST(0x0000583100000000 AS DateTime), 60, 234, N'                                                                                                                        ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (245, CAST(0x000072D000000000 AS DateTime), 72, 274, N'                                                                                                                                                ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (257, CAST(0x0000818900000000 AS DateTime), 52, 246, N'                                                                                                                                                                                                        ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (258, CAST(0x000074E000000000 AS DateTime), 61, 238, N'                                                                                                               ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (259, CAST(0x0000706700000000 AS DateTime), 57, 280, N'                                                                                                                                                                                                       ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (271, CAST(0x00008BC100000000 AS DateTime), 71, 113, N'                                                                                                                                                   ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (275, CAST(0x00008B3800000000 AS DateTime), NULL, 261, N'                                                                                                                                                  ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (282, CAST(0x000063F700000000 AS DateTime), 51, 282, N'                                                                                                                                                                      ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (289, CAST(0x00006D2900000000 AS DateTime), 66, 186, N'                                                                                                                                                                                                                             ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (291, CAST(0x0000745500000000 AS DateTime), 53, 289, N'                                                                                                                                                            ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (293, CAST(0x00005FD000000000 AS DateTime), 57, 264, N'                                                                                                                                                                                               ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (300, CAST(0x0000554300000000 AS DateTime), 67, 173, N'                                                                                                                                                                                                                                                       ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (306, CAST(0x00006A9500000000 AS DateTime), 73, 112, N'                                                                                                                                                                                                                                                         ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (308, CAST(0x000067C700000000 AS DateTime), 65, 136, N'                                                                                                    ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (309, CAST(0x0000534800000000 AS DateTime), 57, 241, N'                                                                                                                                                                                                ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (311, CAST(0x00006FB900000000 AS DateTime), 61, 288, N'                                                                                                                 ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (312, NULL, NULL, NULL, NULL)
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (316, CAST(0x0000690400000000 AS DateTime), 79, 154, N'                                                                                                                                                                                                                         ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (322, CAST(0x00007EEE00000000 AS DateTime), 67, 190, N'                                                                                                                                                                    ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (323, CAST(0x00005C0700000000 AS DateTime), 61, 285, N'                                                                                                                                                                                                                                           ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (325, CAST(0x00004C7300000000 AS DateTime), 75, 162, N'                                                                                                                                         ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (326, CAST(0x0000683C00000000 AS DateTime), 71, 266, N'                                                                                                                                              ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (328, CAST(0x0000818800000000 AS DateTime), 51, 296, N'                                                                                                                                                                                                                ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (330, CAST(0x00006DAD00000000 AS DateTime), 60, 128, N'                                                                                                                                                                                                              ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (331, CAST(0x000088B500000000 AS DateTime), 63, 279, N'                                                                                                                                                                                                                                  ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (334, CAST(0x0000824D00000000 AS DateTime), 59, 204, N'                                                                                                           ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (335, CAST(0x0000852600000000 AS DateTime), 50, 279, N'                                                                                                                                                                      ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (340, CAST(0x00005F2700000000 AS DateTime), 64, 147, N'                                                                                                    ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (345, CAST(0x0000722C00000000 AS DateTime), 55, 101, N'                                                                                                                                                                   ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (346, CAST(0x0000877400000000 AS DateTime), 59, 186, N'                                                                                                                                                                                                                                        ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (347, CAST(0x0000863400000000 AS DateTime), 63, 192, N'                                                                                                                   ')
GO
print 'Processed 100 total records'
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (353, CAST(0x0000598A00000000 AS DateTime), 67, 117, N'                                                                                                                                                                                                                             ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (360, CAST(0x000060A400000000 AS DateTime), 78, 265, N'no meat')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (361, CAST(0x000057B000000000 AS DateTime), 55, 286, N'                                                                                                                                                                                                                                  ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (363, CAST(0x0000732100000000 AS DateTime), 75, 175, N'                                                                                                                                                                                                              ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (370, CAST(0x0000523300000000 AS DateTime), 51, 186, N'                                                                                                                         ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (371, CAST(0x0000730300000000 AS DateTime), 76, 143, N'                                                                                                                        ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (372, CAST(0x0000748700000000 AS DateTime), 69, 219, N'                                                                                                                                                                       ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (376, CAST(0x00005B0000000000 AS DateTime), 78, 112, N'                                                                                                                                                                 ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (377, CAST(0x000063DA00000000 AS DateTime), 53, 208, N'                                                                                                                                                                                       ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (380, CAST(0x000050D100000000 AS DateTime), 78, 277, N'                                                                                                                               ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (383, CAST(0x000055D700000000 AS DateTime), 50, NULL, N'                                                                                                                                                                   ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (384, CAST(0x00006A7800000000 AS DateTime), 77, 221, N'                                                                                                                                                                                         ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (390, CAST(0x00004DCD00000000 AS DateTime), 80, 267, N'                                                                                                                                                           ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (398, CAST(0x0000811700000000 AS DateTime), 60, 138, N'                                                                                                        ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (399, CAST(0x00007C1400000000 AS DateTime), 79, 169, N'                                                                                                                                                     ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (402, CAST(0x0000538D00000000 AS DateTime), 51, 116, N'                                                                                                                                                                                                  ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (403, CAST(0x0000572700000000 AS DateTime), 52, 140, N'                                                                                                                                                                                                            ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (406, CAST(0x000080DF00000000 AS DateTime), 79, 212, N'                                                                                                                                                                                                                  ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (412, CAST(0x0000628800000000 AS DateTime), 58, 194, N'                                                                                                                                                                                                                             ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (415, CAST(0x00007E9C00000000 AS DateTime), 63, 284, N'                                                                                                    ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (420, CAST(0x00007C2300000000 AS DateTime), 71, 135, N'                                                                                                                                                       ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (421, CAST(0x000063B100000000 AS DateTime), 70, 175, N'                                                                                                                                  ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (425, CAST(0x0000713200000000 AS DateTime), 50, 250, N'                                                                                                                                                                                   ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (430, CAST(0x0000790500000000 AS DateTime), 56, 261, N'                                                                                                                                                                               ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (434, CAST(0x000066C900000000 AS DateTime), 69, 170, N'                                                                                                                                                                                                                 ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (436, CAST(0x000065E900000000 AS DateTime), 64, 255, N'                                                                                                                                                                                               ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (437, CAST(0x00007FF900000000 AS DateTime), 55, 124, N'                                                                                                                                         ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (438, CAST(0x000070EF00000000 AS DateTime), 66, 123, N'                                                                                                                                                                                    ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (439, CAST(0x00007BDD00000000 AS DateTime), 68, 237, N'                                                                                                                                                               ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (443, CAST(0x00008B4A00000000 AS DateTime), 56, 251, N'                                                                                                                                                                                                                                                        ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (451, CAST(0x00004F2700000000 AS DateTime), 53, 143, N'                                                                                                                                                                             ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (452, CAST(0x000074BF00000000 AS DateTime), 63, 248, N'                                                                                                                                                       ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (453, CAST(0x00005F6100000000 AS DateTime), 70, 265, N'                                                                                                      ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (454, CAST(0x00008BC200000000 AS DateTime), 58, 129, N'                                                                                                                                                                                                   ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (456, CAST(0x000068D000000000 AS DateTime), 60, 212, N'                                                                                                                                                                                                                                ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (460, CAST(0x000077D800000000 AS DateTime), 59, 101, N'                                                                                                                                                                                        ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (462, CAST(0x0000844500000000 AS DateTime), 75, 99, N'                                                                                                                                                                                      ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (466, CAST(0x000087F700000000 AS DateTime), 62, 245, N'                                                                                                                                                                          ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (470, CAST(0x0000645000000000 AS DateTime), 80, 124, N'                                                                                                                                                                                                                                ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (471, CAST(0x000063D700000000 AS DateTime), 73, 161, N'                                                                                                                                                                                                   ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (474, CAST(0x00005E4900000000 AS DateTime), 50, 288, N'                                                                                                                              ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (478, CAST(0x0000659B00000000 AS DateTime), 74, 276, N'                                                                                                                                                                                           ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (480, CAST(0x000066E700000000 AS DateTime), 58, 172, N'                                                                                                                                                                      ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (488, CAST(0x0000817A00000000 AS DateTime), NULL, 100, N'                                                                                                                                                                                                                               ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (490, CAST(0x0000689300000000 AS DateTime), 71, 293, N'                                                                                                                                           ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (492, CAST(0x000079EA00000000 AS DateTime), NULL, 165, N'                                                                                                     ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (493, CAST(0x0000716800000000 AS DateTime), 76, 133, N'                                                                                                                                                                                                           ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (504, CAST(0x00004E8700000000 AS DateTime), 55, 169, N'                                                                                                                                                                                                                                     ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (505, CAST(0x00006EAE00000000 AS DateTime), 62, 140, N'                                                                                                                                                                             ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (507, CAST(0x00005C2000000000 AS DateTime), 58, 295, N'                                                                                                                                                                               ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (515, CAST(0x0000731400000000 AS DateTime), 74, 242, N'                                                                                                                                                                                                                     ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (526, CAST(0x000075BE00000000 AS DateTime), 75, 296, N'                                                                                                                                        ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (528, CAST(0x0000603600000000 AS DateTime), 53, 117, N'                                                                                                                        ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (533, CAST(0x0000567100000000 AS DateTime), 70, 106, N'                                                                                                                       ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (542, CAST(0x000059BA00000000 AS DateTime), 57, 128, N'                                                                                                                                        ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (547, CAST(0x0000560D00000000 AS DateTime), 69, 245, N'                                                                                                                                        ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (552, CAST(0x0000893800000000 AS DateTime), 58, 100, N'                                                                                                                         ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (556, CAST(0x0000895500000000 AS DateTime), 54, 265, N'                                                                                                                             ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (559, CAST(0x0000658500000000 AS DateTime), 52, 194, N'                                                                                                                                                                                                                                                ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (561, CAST(0x0000724100000000 AS DateTime), 61, 202, N'                                                                                                                                                                               ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (562, CAST(0x000087BB00000000 AS DateTime), 67, 272, N'                                                                                                                                                                                                                  ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (565, CAST(0x0000566B00000000 AS DateTime), 75, 165, N'                                                                                                                                                      ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (568, CAST(0x0000743500000000 AS DateTime), 77, 283, N'                                                                                                                                                                                                    ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (569, CAST(0x00007DF400000000 AS DateTime), 63, 152, N'                                                                                                                         ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (570, CAST(0x000073A900000000 AS DateTime), 75, 206, N'                                                                                                                                                                                                        ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (574, CAST(0x0000700C00000000 AS DateTime), 77, 160, N'                                                                                                                         ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (578, CAST(0x000054D400000000 AS DateTime), 53, 160, N'                                                                                                                                                                                                                      ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (579, CAST(0x0000611100000000 AS DateTime), 67, 176, N'                                                                                                                                                                                                                              ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (582, CAST(0x0000862100000000 AS DateTime), 55, 124, N'                                                                                                                                                                                                                     ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (583, CAST(0x000083A800000000 AS DateTime), 53, 127, N'                                                                                                                                                                                                                                                   ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (588, CAST(0x000086FF00000000 AS DateTime), 67, 238, N'                                                                                                                                      ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (592, CAST(0x00006D8100000000 AS DateTime), 60, 138, N'                                                                                                                     ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (597, CAST(0x00005F9100000000 AS DateTime), 68, 260, N'                                                                                                              ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (601, CAST(0x0000647F00000000 AS DateTime), 76, 107, N'                                                                                                                                                                         ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (607, CAST(0x00005CAA00000000 AS DateTime), 71, 277, N'                                                                                                                                            ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (608, NULL, 62, 232, N'                                                                                                                                                                                            ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (622, CAST(0x00006EAF00000000 AS DateTime), 51, 275, N'                                                                                                                                                      ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (623, CAST(0x0000566E00000000 AS DateTime), 80, 101, N'                                                                                                                                                                                                                                ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (624, CAST(0x000072EC00000000 AS DateTime), 80, 262, N'                                                                                                                                                                           ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (626, CAST(0x0000577B00000000 AS DateTime), NULL, 262, N'                                                                                                                                          ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (630, CAST(0x00004EEA00000000 AS DateTime), 54, 186, N'                                                                                                                                                                                            ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (635, CAST(0x00005C5B00000000 AS DateTime), 70, 131, N'                                                                                                                                                                                                                          ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (637, CAST(0x0000897600000000 AS DateTime), 50, 260, N'                                                                                                                                                                                                                             ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (647, NULL, 70, 206, N'                                                                                                                                        ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (648, CAST(0x000053AE00000000 AS DateTime), 64, 216, N'                                                                                                                                                                                                                                            ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (649, CAST(0x00008B0E00000000 AS DateTime), 76, 176, N'                                                                                                                                                                                                                                                     ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (650, CAST(0x00005A0E00000000 AS DateTime), 77, 173, N'                                                                                                                                                                          ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (654, CAST(0x00004E6B00000000 AS DateTime), 52, 268, N'                                                                                                                                                                                                                           ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (668, CAST(0x00005B1A00000000 AS DateTime), 55, 161, N'                                                                                                                                                                                     ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (669, CAST(0x0000575C00000000 AS DateTime), 56, 109, N'                                                                                                                                                                            ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (670, CAST(0x00005D8700000000 AS DateTime), 58, 209, N'                                                                                                                                                                                                                    ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (671, CAST(0x000069B900000000 AS DateTime), 50, 213, N'                                                                                                                                                                     ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (672, CAST(0x0000676C00000000 AS DateTime), 55, 122, N'                                                                                                         ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (673, CAST(0x00004CA500000000 AS DateTime), 65, 222, N'                                                                                                                                                                            ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (674, CAST(0x00005FEF00000000 AS DateTime), 76, 240, N'                                                                                                                                                                                                                                       ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (677, CAST(0x00006E4300000000 AS DateTime), 77, 201, N'                                                                                                                  ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (692, CAST(0x00006F3600000000 AS DateTime), 56, 151, N'                                                                                                                                                                                                          ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (693, CAST(0x00004E8400000000 AS DateTime), 78, 139, N'                                                                                                                                                                                        ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (694, CAST(0x0000653D00000000 AS DateTime), 74, 103, N'                                                                                                                                              ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (695, CAST(0x00007F5C00000000 AS DateTime), 52, 256, N'                                                                                                                                                                                                                                         ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (696, CAST(0x000053C300000000 AS DateTime), 67, 120, NULL)
GO
print 'Processed 200 total records'
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (697, CAST(0x0000644D00000000 AS DateTime), 66, 146, N'                                                                                                                                                                                                                    ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (698, CAST(0x00007D0800000000 AS DateTime), 69, 191, N'                                                                                                                                                                                            ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (707, CAST(0x00007F9700000000 AS DateTime), 62, 144, N'                                                                                                                              ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (708, CAST(0x00005BAA00000000 AS DateTime), 55, 285, N'                                                                                                               ')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (716, NULL, 68, 138, N'Vegetarian')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (717, NULL, 68, 138, N'Vegetarian')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (718, NULL, 68, 138, N'Vegetarian')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (719, NULL, NULL, NULL, NULL)
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (720, NULL, 68, 138, N'Vegetarian')
INSERT [dbo].[ContactPersonalInfo] ([ContactID], [BirthDate], [HeightInches], [WeightPounds], [DietaryRestrictions]) VALUES (728, NULL, NULL, NULL, NULL)
/****** Object:  Table [dbo].[Contact]    Script Date: 12/16/2010 19:44:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Contact]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Contact](
	[ContactID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[LastName] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Title] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AddDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[RowVersion] [timestamp] NOT NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[ContactID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[Contact] ON
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (1, N'Alexandre                                ', N'Solzhenitsyn                                      ', N'Mr.', CAST(0x000098BE00C0BDCC AS DateTime), CAST(0x00009DE800DA11D0 AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (2, N'Keith                                             ', N'Harris                                            ', N'Mr.                                               ', CAST(0x0000931E014FE9DB AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (3, N'Donna                                             ', N'Carrera                                          ', N'Ms.                                               ', CAST(0x00009A6801266A11 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (4, N'Janet                                             ', N'Gates                                             ', N'Mrs.                                              ', CAST(0x0000950300F9FC94 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (5, N'Lucy                                              ', N'Harrington                                        ', N'Mr.                                               ', CAST(0x000096D101830D28 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (6, N'Rosemary                                          ', N'Carroll                                           ', N'Ms.                                               ', CAST(0x000097040163ED6F AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (7, N'Dominic                                           ', N'Gashi                         ', N'Mr.                                               ', CAST(0x00009708012C6D15 AS DateTime), CAST(0x00009D0000B4FC83 AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (10, N'Kathleen                                          ', N'Garza                                             ', N'Ms.                                               ', CAST(0x000098480030D227 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (11, N'Katherine                                         ', N'Harding                                           ', N'Ms.                                               ', CAST(0x000094A500D9CA71 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (12, N'Johnny                                            ', N'Caprio                                            ', N'Mr.                                               ', CAST(0x000093210080DB4C AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (13, N'First                                             ', N'Last                                              ', NULL, CAST(0x0000978B017E1434 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (16, N'Christopher                                       ', N'Beck                                              ', N'Mr.                                               ', CAST(0x00009558003100FE AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (18, N'David                                             ', N'Liu                                               ', N'Mr.                                               ', CAST(0x0000997500DFB40C AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (19, N'John                                              ', N'Beaver                                            ', N'Mr.                                               ', CAST(0x0000970900FE6E25 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (20, N'Jean                                              ', N'Handley                                           ', N'Ms.                                               ', CAST(0x000094510059E864 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (21, N'Jinghao                                           ', N'Liu                                               ', N'                                                  ', CAST(0x000099C000D46516 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (22, N'Charles', N'Petzold', N'Sir', CAST(0x000096B600550FC1 AS DateTime), CAST(0x00009D7B00EAE5AB AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (23, N'Kerim                                             ', N'Hanif                                             ', N'Mr.                                               ', CAST(0x000093950029A2A9 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (24, N'Kevin                                             ', N'Liu                                               ', N'Mr.                                               ', CAST(0x000095A800B11C8C AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (25, N'Donald                                            ', N'Blanton                                           ', N'Mr.                                               ', CAST(0x0000944A014F0962 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (28, N'Jackie                                            ', N'Blackwell                                         ', N'Ms.                                               ', CAST(0x000096E000BCB4EB AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (29, N'Bryan                                             ', N'Hamilton                                          ', N'Mr.                                               ', CAST(0x000096A00106DEBE AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (30, N'Todd                                              ', N'Logan                                             ', N'Mr.                                               ', CAST(0x000094A600101343 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (34, N'Barbara                                           ', N'German                                            ', N'Ms.                                               ', CAST(0x000093BF00E2340C AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (37, N'Jim                                               ', N'Geist                                             ', N'Mr.                                               ', CAST(0x00009569003D2995 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (38, N'Betty                                             ', N'Haines                                            ', N'Ms.                                               ', CAST(0x00009A19011A6A42 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (39, N'Sharon                                            ', N'Looney                                            ', N'Ms.                                               ', CAST(0x00009A9400D8562B AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (40, N'Darren                                            ', N'Gehring                                           ', N'Mr.                                               ', CAST(0x00009AE001281190 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (41, N'Erin                                              ', N'Hagens                                            ', N'Ms.                                               ', CAST(0x0000939E013A3288 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (42, N'Jeremy                                            ', N'Los                                               ', N'Mr.                                               ', CAST(0x000095ED006B86B8 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (43, N'Elsa                                              ', N'Leavitt                                           ', N'Ms.                                               ', CAST(0x000099F000ABB62C AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (46, N'David                                             ', N'Lawrence                                          ', N'Mr.                                               ', CAST(0x0000956A010F3CC8 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (47, N'Hattie                                            ', N'Haemon                                            ', N'Ms.                                               ', CAST(0x000096CF001D8E74 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (48, N'Anita                                             ', N'Lucerne                                           ', N'Ms.                                               ', CAST(0x000093C50003B9B7 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (52, N'Rebecca                                           ', N'Laszlo                                            ', N'Ms.                                               ', CAST(0x00009A7401568F81 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (55, N'Eric                                              ', N'Lang                                              ', N'Mr.                                               ', CAST(0x00009A6900513CFC AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (56, N'Brian                                             ', N'Groth                                             ', N'Mr.                                               ', CAST(0x000094DD00460C91 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (57, N'Judy                                              ', N'Lundahl                                           ', N'Ms.                                               ', CAST(0x00009A9201264732 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (58, N'Peter                                             ', N'Kurniawan                                         ', N'Mr.                                               ', CAST(0x000097B400754D83 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (59, N'Douglas                                           ', N'Groncki                                           ', N'Mr.                                               ', CAST(0x000093AC01367532 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (60, N'Sean                                              ', N'Lunt                                              ', N'Mr.                                               ', CAST(0x00009319004A47C1 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (61, N'Jeffrey                                           ', N'Kurtz                                             ', N'Mr.                                               ', CAST(0x000098C400E35617 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (64, N'Vamsi                                             ', N'Kuppa                                             ', N'Mr.                                               ', CAST(0x0000946800A7BFA2 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (65, N'Jane                                              ', N'Greer                                             ', N'Ms.                                               ', CAST(0x0000974200E2B36B AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (66, N'Alexander                                         ', N'Deborde                                           ', N'Mr.                                               ', CAST(0x00009782017E2BD4 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (70, N'Deepak                                            ', N'Kumar                                             ', N'Mr.                                               ', CAST(0x000099300123B637 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (73, N'Margaret                                          ', N'Krupka                                            ', N'Ms.                                               ', CAST(0x000099EA00075DDF AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (74, N'Christopher                                       ', N'Bright                                            ', N'Mr.                                               ', CAST(0x000097310161DE94 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (75, N'Aidan                                             ', N'Delaney                                           ', N'Ms.                                               ', CAST(0x000093A600AB37DB AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (76, N'James                                             ', N'Krow                                              ', N'Mr.                                               ', CAST(0x000096C70068DE5D AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (77, N'Michael                                           ', N'Brundage                                          ', N'Mr.                                               ', CAST(0x000097CE0134DB95 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (78, N'Stefan                                            ', N'Delmarco                                          ', N'Mr.                                               ', CAST(0x000096EE008EB5B7 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (79, N'Mitch                                             ', N'Kennedy                                           ', N'Mr.                                               ', CAST(0x00009771013CA7C0 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (82, N'James                                             ', N'Kramer                                            ', N'Mr.                                               ', CAST(0x00009878007CDD9F AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (83, N'Eric                                              ', N'Brumfield                                         ', N'Mr.                                               ', CAST(0x00009855002F2E55 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (84, N'Della                                             ', N'Demott Jr                                         ', N'Ms.                                               ', CAST(0x00009ADE014C7836 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (88, N'Pamala                                            ', N'Kotc                                              ', N'Ms.                                               ', CAST(0x0000961300934CA9 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (91, N'Joy                                               ', N'Koski                                             ', N'Ms.                                               ', CAST(0x0000974701200BC6 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (92, N'Jovita                                            ', N'Carmody                                           ', N'Ms.                                               ', CAST(0x000098BD01535E11 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (93, N'Prashanth                                         ', N'Desai                                             ', N'Mr.                                               ', CAST(0x00009960016F770F AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (94, N'Scott                                             ', N'Konersmann                                        ', N'Mr.                                               ', CAST(0x00009A6F008E0E6A AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (95, N'Jane                                              ', N'Carmichael                                        ', N'Ms.                                               ', CAST(0x000095100044BB77 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (96, N'Bonnie                                            ', N'Lepro                                             ', N'Ms.                                               ', CAST(0x0000937600CA7A5E AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (97, N'Eugene                                            ', N'Kogan                                             ', N'Mr.                                               ', CAST(0x00009301000D4069 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (100, N'Kirk                                              ', N'King                                              ', N'Mr.                                               ', CAST(0x000094B0010D4CF7 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (101, N'William                                           ', N'Conner                                            ', N'Mr.                                               ', CAST(0x000097DA00CC60E1 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (102, N'Linda                                             ', N'Leste                                             ', N'Ms.                                               ', CAST(0x00009302010D304B AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (106, N'Andrea                                            ', N'Thomsen                                           ', N'Ms.                                               ', CAST(0x00009A73006528C0 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (109, N'Daniel                                            ', N'Thompson                                          ', N'Mr.                                               ', CAST(0x000099D4008AFCDE AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (110, N'Kendra                                            ', N'Thompson                                          ', N'Ms.                                               ', CAST(0x000096950173E09E AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (111, N'Scott                                             ', N'Colvin                                            ', N'Mr.                                               ', CAST(0x00009817009CB2FC AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (112, N'Elsie                                             ', N'Lewin                                             ', N'Ms.                                               ', CAST(0x000096980097917A AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (113, N'Donald                                            ', N'Thompson                                          ', N'Mr.                                               ', CAST(0x0000933600C427C2 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (114, N'John                                              ', N'Colon                                             ', N'Mr.                                               ', CAST(0x000094CC00F6A899 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (115, N'George                                            ', N'Li                                                ', N'Mr.                                               ', CAST(0x0000933B00BA92CF AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (118, N'Yale                                              ', N'Li                                                ', N'Mr.                                               ', CAST(0x0000960A009D5017 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (119, N'Phyllis                                           ', N'Thomas                                            ', N'Ms.                                               ', CAST(0x0000930B015D7E61 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (120, N'Pat                                               ', N'Coleman                                           ', N'Mr.                                               ', CAST(0x000095A8015FA230 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (124, N'Yuhong                                            ', N'Li                                                ', N'Ms.                                               ', CAST(0x000097C50067567E AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (127, N'Jose                                              ', N'Lique                                             ', N'Mr.                                               ', CAST(0x00009587007CB430 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (128, N'Judy                                              ', N'Thames                                            ', N'Ms.                                               ', CAST(0x00009A830104D174 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (129, N'Connie                                            ', N'Coffman                                           ', N'Ms.                                               ', CAST(0x00009515011D231C AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (130, N'Paulo                                             ', N'Lisboa                                            ', N'Mr.                                               ', CAST(0x00009323016C3F7C AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (131, N'Vanessa                                           ', N'Tench                                             ', N'Ms.                                               ', CAST(0x000096BA005B9DF3 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (132, N'Teanna                                            ', N'Cobb                                              ', N'Ms.                                               ', CAST(0x00009A5B0130E50B AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (133, N'Michael                                           ', N'Graff                                             ', N'Mr.                                               ', CAST(0x00009681004AFA31 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (136, N'Derek                                             ', N'Graham                                            ', N'Mr.                                               ', CAST(0x00009AD8000E06A4 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (137, N'Gytis                                             ', N'Barzdukas                                         ', N'                                                  ', CAST(0x0000958300929301 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (138, N'Jane                                              ', N'Clayton                                           ', N'Ms.                                               ', CAST(0x000097F100C55DF7 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (142, N'Jon                                               ', N'Grande                                            ', N'Mr.                                               ', CAST(0x000096E10087D1FD AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (145, N'Ted                                               ', N'Bremer                                            ', N'Mr.                                               ', CAST(0x0000970500A0E79D AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (146, N'Richard                                           ', N'Bready                                            ', N'Mr.                                               ', CAST(0x000093A300887A4B AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (147, N'Alice                                             ', N'Clark                                             ', N'Ms.                                               ', CAST(0x0000987B008F364E AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (148, N'Alan                                              ', N'Brewer                                            ', N'Mr.                                               ', CAST(0x000097880078CE75 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (149, N'Cornelius                                         ', N'Brandon                                           ', N'Mr.                                               ', CAST(0x00009A27015EFD99 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (150, N'Jill                                              ', N'Christie                                          ', N'Ms.                                               ', CAST(0x000094C30169C4FF AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (151, N'Walter                                            ', N'Brian                                             ', N'Mr.                                               ', CAST(0x000098AF0089F088 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (154, N'Carlton                                           ', N'Carlisle                                          ', N'Mr.                                               ', CAST(0x000098C1006F9B55 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (155, N'Jose                                              ', N'Castellucio                                       ', N'Mr.                                               ', CAST(0x00009AAA005B6C25 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (156, N'Lester                                            ', N'Bowman                                            ', N'Mr.                                               ', CAST(0x00009554011CD1A3 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
GO
print 'Processed 100 total records'
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (160, N'Brigid                                            ', N'Cavendish                                         ', N'Ms.                                               ', CAST(0x000094A1012615C9 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (163, N'Andrew                                            ', N'Cencini                                           ', N'Mr.                                               ', CAST(0x0000976D00B2D7E6 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (164, N'Cindy                                             ', N'Dodd                                              ', N'Ms.                                               ', CAST(0x000099A400AA3F60 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (165, N'Randall                                           ', N'Boseman                                           ', N'Mr.                                               ', CAST(0x00009AE4011842AA AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (166, N'Stacey                                            ', N'Cereghino                                         ', N'Ms.                                               ', CAST(0x000098C400F74FF0 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (167, N'Blaine                                            ', N'Dockter                                           ', N'Mr.                                               ', CAST(0x0000930B004C9747 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (168, N'Luis                                              ', N'Bonifaz                                           ', N'Sr.                                               ', CAST(0x0000988A0094CCF8 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (169, N'Brenda                                            ', N'Diaz                                              ', N'Ms.                                               ', CAST(0x00009AD201833CE2 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (172, N'Gabriele                                          ', N'Dickmann                                          ', N'Ms.                                               ', CAST(0x000098E70106ADDD AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (173, N'Rudolph                                           ', N'Dillon                                            ', N'Mr.                                               ', CAST(0x00009A1C00A2E8FF AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (174, N'Michael                                           ', N'Bohling                                           ', N'Mr.                                               ', CAST(0x0000992E00ECE3DF AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (178, N'Dick                                              ', N'Dievendorff                                       ', N'Mr.                                               ', CAST(0x0000978B00EDD2A5 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (180, N'Nicky                                             ', N'Chesnut                                           ', N'Ms.                                               ', CAST(0x0000942D0106B225 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (181, N'Michael                                           ', N'Lee                                               ', N'Mr.                                               ', CAST(0x000097BB01284706 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (182, N'Stanley                                           ', N'Alan                                              ', N'Mr.                                               ', CAST(0x000099080003E5BB AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (183, N'Yao-Qiang                                         ', N'Cheng                                             ', N'Mr.                                               ', CAST(0x0000934F013155D9 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (184, N'Marjorie                                          ', N'Lee                                               ', N'Ms.                                               ', CAST(0x00009345013EE01C AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (185, N'Sandeep                                           ', N'Kaliyath                                          ', N'Mr.                                               ', CAST(0x0000957D00E24EF4 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (186, N'Pei                                               ', N'Chow                                              ', N'Mr.                                               ', CAST(0x000099C300EBAD9F AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (187, N'Frank                                             ', N'Campbell                                          ', N'Mr.                                               ', CAST(0x000094EB00FEEAE3 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (190, N'Mark                                              ', N'Lee                                               ', N'Mr.                                               ', CAST(0x00009AB6016D9E14 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (191, N'Sandra                                            ', N'Kitt                                              ', N'Ms.                                               ', CAST(0x000095150097416F AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (192, N'Hao                                               ', N'Chen                                              ', N'Mr.                                               ', CAST(0x0000975F010F9EE2 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (196, N'Jolie                                             ', N'Lenehan                                           ', N'Ms.                                               ', CAST(0x00009B070100836A AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (197, N'Diane                                             ', N'Krane                                             ', N'Ms.                                               ', CAST(0x00009A7C01607C15 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (198, N'Payton                                            ', N'Benson                                            ', N'Mr.                                               ', CAST(0x000098AC00E99268 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (199, N'Roger                                             ', N'Lengel                                            ', N'Mr.                                               ', CAST(0x000098F6011BD7C6 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (200, N'Peggy                                             ', N'Justice                                           ', N'Ms.                                               ', CAST(0x00009949013519AD AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (201, N'Edna                                              ', N'Benson                                            ', N'Ms.                                               ', CAST(0x0000938C003BE303 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (202, N'A.                                                ', N'Leonetti                                          ', N'                                                  ', CAST(0x00009AF90185EB54 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (203, N'Jean                                              ', N'Jordan                                            ', N'Ms.                                               ', CAST(0x000097BE00811393 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (204, N'Ido                                               ', N'Ben-Sachar                                        ', N'Mr.                                               ', CAST(0x000099AF00B2716F AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (205, N'Frank                                             ', N'Mart¡nez                                          ', N'Mr.                                               ', CAST(0x00009707000A5D88 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (208, N'Steve                                             ', N'Masters                                           ', N'Mr.                                               ', CAST(0x00009A3E00D09847 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (209, N'Robert                                            ', N'Jones                                             ', N'Mr.                                               ', CAST(0x0000971B005ADCBC AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (210, N'Josh                                              ', N'Barnhill                                          ', N'Mr.                                               ', CAST(0x0000946700315D51 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (214, N'Jennifer                                          ', N'Maxham                                            ', N'Ms.                                               ', CAST(0x00009849017677C5 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (217, N'Chris                                             ', N'Maxwell                                           ', N'Mr.                                               ', CAST(0x000093A800A48C52 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (218, N'David                                             ', N'Johnson                                           ', N'Mr.                                               ', CAST(0x0000971B00FF79CA AS DateTime), CAST(0x00009D3800EF47A4 AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (219, N'Brian                                             ', N'Johnson                                           ', N'Mr.                                               ', CAST(0x0000971A0153726C AS DateTime), CAST(0x00009D3800EF47A4 AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (220, N'Robert                                            ', N'Brown                                             ', N'Mr.                                               ', CAST(0x00009415002C950A AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (221, N'Sandra                                            ', N'Maynard                                           ', N'Ms.                                               ', CAST(0x000096CC0183E70C AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (222, N'Barry                                             ', N'Johnson                                           ', N'Mr.                                               ', CAST(0x0000954B0071386A AS DateTime), CAST(0x00009D3800EF47A4 AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (223, N'Joyce                                             ', N'Jarvis                                            ', N'Ms.                                               ', CAST(0x0000956A00C0DE56 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (226, N'Vance                                             ', N'Johns                                             ', N'Ms.                                               ', CAST(0x0000945A004FC894 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (227, N'Robin                                             ', N'McGuigan                                          ', N'Ms.                                               ', CAST(0x00009A790132F7D2 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (228, N'Danielle                                          ', N'Johnson                                           ', N'Ms.                                               ', CAST(0x000097C7004315B2 AS DateTime), CAST(0x00009D3800EF47A4 AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (232, N'David                                             ', N'Jaffe                                             ', N'Mr.                                               ', CAST(0x0000938200492F09 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (235, N'Mary                                              ', N'Alexander                                         ', N'Ms.                                               ', CAST(0x0000939500CACF22 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (236, N'Lola                                              ', N'McCarthy                                          ', N'Ms.                                               ', CAST(0x000097CA012DDDB1 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (237, N'Mary                                              ', N'Browning                                          ', N'Ms.                                               ', CAST(0x0000943D010E5428 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (238, N'Jodan                                             ', N'Jacobson                                          ', N'Ms.                                               ', CAST(0x000094A9007EE46A AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (239, N'Jane                                              ', N'McCarty                                           ', N'Ms.                                               ', CAST(0x0000974701348293 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (240, N'Jessie                                            ', N'Valerio                                           ', N'Mr.                                               ', CAST(0x000095B5015F0C48 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (241, N'Eric                                              ', N'Jacobsen                                          ', N'Mr.                                               ', CAST(0x000093CB0093244C AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (244, N'Bronson                                           ', N'Jacobs                                            ', N'Mr.                                               ', CAST(0x0000968701838DE3 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (245, N'James                                             ', N'McCoy                                             ', N'Mr.                                               ', CAST(0x000093EA0082CCE0 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (246, N'Esther                                            ', N'Valle                                             ', N'Ms.                                               ', CAST(0x000099FB015319A3 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (250, N'Denean                                            ', N'Ison                                              ', N'Ms.                                               ', CAST(0x00009A53005BF717 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (253, N'Erik                                              ', N'Ismert                                            ', N'Mr.                                               ', CAST(0x000097D500EF42BB AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (254, N'Robert                                            ', N'Bernacchi                                         ', N'Mr.                                               ', CAST(0x00009570013CB49F AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (255, N'Sunil                                             ', N'Uppal                                             ', N'Mr.                                               ', CAST(0x0000994901562C97 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (256, N'Richard                                           ', N'Irwin                                             ', N'Mr.                                               ', CAST(0x0000988300C50CFE AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (257, N'Matthias                                          ', N'X_Berndt                                          ', N'Mr.                                               ', CAST(0x000097A2006B74C5 AS DateTime), CAST(0x00009B0D011E01B1 AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (258, N'Sairaj                                            ', N'Uddin                                             ', N'Mr.                                               ', CAST(0x00009343009D26B5 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (259, N'Lucio                                             ', N'Iallo                                             ', N'Mr.                                               ', CAST(0x000095A0014616F3 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (262, N'Beth                                              ', N'Inghram                                           ', N'Ms.                                               ', CAST(0x0000991F006BDA58 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (263, N'Timothy                                           ', N'Burnett                                           ', N'Mr.                                               ', CAST(0x000095730146A18E AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (264, N'Phyllis                                           ', N'Tuffield                                          ', N'Ms.                                               ', CAST(0x000095AC0167CA94 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (268, N'Richard                                           ', N'Byham                                             ', N'Mr.                                               ', CAST(0x000097A800ABA8A2 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (271, N'Jared                                             ', N'Bustamante                                        ', N'Mr.                                               ', CAST(0x00009A080025A7E7 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (272, N'Henry                                             ', N'Campen                                            ', N'Mr.                                               ', CAST(0x00009ADC01567935 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (273, N'Christie                                          ', N'Trujillo                                          ', N'Ms.                                               ', CAST(0x00009458017FE823 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (274, N'Janet                                             ', N'Gilliat                                           ', N'Ms.                                               ', CAST(0x0000933D0124F2BE AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (275, N'Chris                                             ', N'Cannon                                            ', N'Mr.                                               ', CAST(0x0000940A01559470 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (276, N'Michael John                                      ', N'Troyer                                            ', N'Mr.                                               ', CAST(0x0000939D00F0B64B AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (277, N'Guy                                               ', N'Gilbert                                           ', N'Mr.                                               ', CAST(0x000093BD011E4D04 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (280, N'Frances                                           ', N'Giglio                                            ', N'Mr.                                               ', CAST(0x00009567008830EF AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (281, N'Suzana De Abreu                                   ', N'Canuto                                            ', N'Ms.                                               ', CAST(0x0000994C014A378B AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (282, N'Billy                                             ', N'Trent                                             ', N'Mr.                                               ', CAST(0x00009A6C016C9325 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (286, N'Leo                                               ', N'Giakoumakis                                       ', N'Mr.                                               ', CAST(0x00009A0500B30F0D AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (287, N'Grant                                             ', N'Culbertson                                        ', N'Mr.                                               ', CAST(0x000094BC006E3A21 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (288, N'Robert                                            ', N'Barker                                            ', N'Mr.                                               ', CAST(0x000092F6006BA493 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (289, N'Gabriel                                           ', N'Bockenkamp                                        ', N'Ms.                                               ', CAST(0x000095540100248A AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (290, N'Scott                                             ', N'Culp                                              ', N'Mr.                                               ', CAST(0x00009A500068D0B2 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (291, N'Wayne                                             ', N'Banack                                            ', N'Mr.                                               ', CAST(0x000097A400A2DF63 AS DateTime), CAST(0x00009B9D0106B33B AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (292, N'Michael                                           ', N'Blythe                                            ', N'Mr.                                               ', CAST(0x00009459016D3FB5 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (293, N'Conor                                             ', N'Cunningham                                        ', N'Mr.                                               ', CAST(0x0000949A0179ED9F AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (294, N'Alberto                                           ', N'Baltazar                                          ', N'Mr.                                               ', CAST(0x0000955E01833F70 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (295, N'Joseph                                            ', N'Mitzner                                           ', N'Mr.                                               ', CAST(0x00009ABB007DB0AA AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (298, N'Robert                                            ', N'Mitosinka                                         ', N'Mr.                                               ', CAST(0x000099FC0151CABD AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (299, N'Thierry                                           ', N'D''Hers                                            ', N'Mr.                                               ', CAST(0x00009AFC00572ABD AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (300, N'Daniel                                            ', N'X_Blanco                                          ', N'Mr.                                               ', CAST(0x000099690040532F AS DateTime), CAST(0x00009B10013563C7 AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (304, N'Linda                                             ', N'Mitchell                                          ', N'Ms.                                               ', CAST(0x000093940041DA70 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (306, N'Stephen                                           ', N'Ayers                                             ', N'Mr.                                               ', CAST(0x0000968100960B14 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (307, N'Neva                                              ', N'Mitchell                                          ', N'Ms.                                               ', CAST(0x00009320012D3BD6 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (308, N'Megan                                             ', N'Davis                                             ', N'Ms.                                               ', CAST(0x0000978B0155D1FD AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (309, N'Jonathan                                          ', N'Arthur                                            ', N'Mr.                                               ', CAST(0x000094590172A22D AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (310, N'Frank                                             ', N'Miller                                            ', N'Mr.                                               ', CAST(0x000098A00065764C AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (311, N'Alvaro                                            ', N'De Matos Miranda Filho                            ', N'Sr.                                               ', CAST(0x000097B9013241F9 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (312, N'Thomas                                            ', N'Armstrong                                         ', N'Mr.                                               ', CAST(0x00009305004DE1DA AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
GO
print 'Processed 200 total records'
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (313, N'Dylan                                             ', N'Miller                                            ', N'Mr.                                               ', CAST(0x000095E2010AA8DB AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (316, N'Ben                                               ', N'Miller                                            ', N'Mr.                                               ', CAST(0x000094B50034627A AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (317, N'Jacob                                             ', N'Dean                                              ', N'Mr.                                               ', CAST(0x0000962E00AAB385 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (318, N'Ann                                               ', N'Beebe                                             ', N'Ms.                                               ', CAST(0x000093160102DB78 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (322, N'Matthew                                           ', N'Miller                                            ', N'Mr.                                               ', CAST(0x000095EB00BF8B76 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (323, N'Jo                                                ', N'Brown                                             ', N'Mr.                                               ', CAST(0x0000954701370618 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (325, N'Virginia                                          ', N'Miller                                            ', N'Mrs.', CAST(0x000093E6014A5F48 AS DateTime), CAST(0x00009D3800F1D154 AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (326, N'Scott                                             ', N'Gode                                              ', N'Mr.                                               ', CAST(0x000098A20043EA32 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (327, N'Caroline                                          ', N'Vicknair                                          ', N'Ms.                                               ', CAST(0x0000993501680D95 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (328, N'Robert                                            ', N'Vessa                                             ', N'Mr.                                               ', CAST(0x00009A0201882AB3 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (329, N'Andreas                                           ', N'Berglund                                          ', N'                                                  ', CAST(0x0000938B00A74212 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (330, N'Mete                                              ', N'X_Goktepe                                         ', N'Mr.                                               ', CAST(0x0000977400079A2D AS DateTime), CAST(0x00009B1300AEA834 AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (331, N'Wanda                                             ', N'Vernon                                            ', N'Ms.                                               ', CAST(0x0000946F012B53BB AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (334, N'Dora                                              ', N'Verdad                                            ', N'Ms.                                               ', CAST(0x000095C200DDAC0C AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (335, N'John                                              ', N'Berger                                            ', N'Mr.                                               ', CAST(0x0000996E00604757 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (336, N'Brian                                             ', N'Goldstein                                         ', N'Mr.                                               ', CAST(0x000094BF00819DE8 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (340, N'Raja                                              ', N'Venugopal                                         ', N'Mr.                                               ', CAST(0x00009AE900E9895B AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (343, N'Patricia                                          ', N'Vasquez                                           ', N'Ms.                                               ', CAST(0x000099A500848464 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (344, N'Karren                                            ', N'Burkhardt                                         ', N'Ms.                                               ', CAST(0x000097BD009AAE3C AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (345, N'Abigail                                           ', N'Gonzalez                                          ', N'Ms.                                               ', CAST(0x0000958A00C210B8 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (346, N'Ranjit                                            ', N'Varkey Chudukatil                                 ', N'Mr.                                               ', CAST(0x000097930054FD87 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (347, N'Ingrids                                           ', N'Burkhardt                                         ', N'Ms.                                               ', CAST(0x00009980006296D9 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (348, N'Oscar                                             ', N'Alpuerto                                          ', N'Mr.                                               ', CAST(0x0000946100BC079B AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (349, N'Gary                                              ', N'Vargas                                            ', N'Mr.                                               ', CAST(0x0000934B01662822 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (352, N'Shane                                             ', N'Kim                                               ', N'Mr.                                               ', CAST(0x00009A14004E0916 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (353, N'Joan                                              ', N'Campbell                                          ', N'Ms.                                               ', CAST(0x00009AB10169949A AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (354, N'Maxwell                                           ', N'Amland                                            ', N'Mr.                                               ', CAST(0x00009657016958A5 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (358, N'Joe                                               ', N'Kim                                               ', N'Mr.                                               ', CAST(0x000097620013EF1D AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (360, N'Ramona                                            ', N'Antrim                                            ', N'Mrs.                                              ', CAST(0x000095A5017DE6FC AS DateTime), CAST(0x00009DD801781A40 AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (361, N'Karan                                             ', N'Khanna                                            ', N'Ms.                                               ', CAST(0x0000985400B97F7E AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (362, N'Sharon                                            ', N'Crow                                              ', N'Ms.                                               ', CAST(0x0000942601309323 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (363, N'Chris                                             ', N'Ashton                                            ', N'Mr.                                               ', CAST(0x000096F400AE8FEA AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (364, N'Imtiaz                                            ', N'Khan                                              ', N'Mr.                                               ', CAST(0x000097EE016B0800 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (365, N'Jack                                              ', N'Creasey                                           ', N'Mr.                                               ', CAST(0x0000972400C5A491 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (366, N'Teresa                                            ', N'Atkinson                                          ', N'Ms.                                               ', CAST(0x000095E30165BFB1 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (367, N'Tammy                                             ', N'Khan                                              ', N'Ms.                                               ', CAST(0x00009670008779AE AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (370, N'Elizabeth                                         ', N'Keyser                                            ', N'Ms.                                               ', CAST(0x0000933B0126FB63 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (371, N'Bruno                                             ', N'Costa Da Silva                                    ', N'Mr.                                               ', CAST(0x00009A9C0059E2CF AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (372, N'Katherine                                         ', N'Swan                                              ', N'Ms.                                               ', CAST(0x000093DD012B6725 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (376, N'Mary                                              ', N'Kesslep                                           ', N'Ms.                                               ', CAST(0x0000969100BBD769 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (377, N'Marlin                                            ', N'Coriell                                           ', N'Mr.                                               ', CAST(0x0000974F003B0712 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (379, N'Kevin                                             ', N'Kennedy                                           ', N'Mr.                                               ', CAST(0x0000994F00BC13A3 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (380, N'Eva                                               ', N'Corets                                            ', N'Ms.                                               ', CAST(0x0000975C00F561BF AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (381, N'Julie                                             ', N'Taft-Rider                                        ', N'Ms.                                               ', CAST(0x00009A2A016CD559 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (382, N'Robert                                            ', N'Kelly                                             ', N'Mr.                                               ', CAST(0x000097C800AC05F9 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (383, N'Scott                                             ', N'Cooper                                            ', N'Mr.                                               ', CAST(0x000099AB00220290 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (384, N'Clarence                                          ', N'Tatman                                            ', N'Mr.                                               ', CAST(0x0000959A005DF3E3 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (385, N'John                                              ', N'Kelly                                             ', N'Mr.                                               ', CAST(0x0000960200EFD571 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (388, N'Victor                                            ', N'Kelley                                            ', N'Mr.                                               ', CAST(0x0000943901741385 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (389, N'Dorothy                                           ', N'Contreras                                         ', N'Ms.                                               ', CAST(0x0000946200719908 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (390, N'Mike                                              ', N'Taylor                                            ', N'Mr.                                               ', CAST(0x0000985700F7E936 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (394, N'Bonnie                                            ', N'Kearney                                           ', N'Ms.                                               ', CAST(0x00009A69001B11E9 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (395, N'June                                              ', N'Brunner                                           ', N'Ms.                                               ', CAST(0x00009589003009DC AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (397, N'Sandeep                                           ', N'Katyal                                            ', N'Mr.                                               ', CAST(0x000094380180DC3A AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (398, N'Shirley                                           ', N'Bruner                                            ', N'Ms.                                               ', CAST(0x000094AA00A4FE64 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (399, N'Chad                                              ', N'Tedford                                           ', N'Mr.                                               ', CAST(0x0000938C01608BAB AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (400, N'Peter                                             ', N'Houston                                           ', N'Mr.                                               ', CAST(0x00009AAF00E7D306 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (401, N'Tom                                               ', N'Johnston                                          ', N'Mr.                                               ', CAST(0x00009416015905D8 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (402, N'Marian                                            ', N'Berch                                             ', N'Ms.                                               ', CAST(0x0000959200359AA7 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (403, N'Juanita                                           ', N'Holman                                            ', N'Ms.                                               ', CAST(0x00009AA2005E68F0 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (406, N'Eddie                                             ', N'Holmes                                            ', N'Mr.                                               ', CAST(0x0000937B01036195 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (407, N'Robert                                            ', N'Avalos                                            ', N'Mr.                                               ', CAST(0x000093EE00E42684 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (408, N'Alexander                                         ', N'Berger                                            ', N'Mr.                                               ', CAST(0x0000933200DF65D4 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (412, N'Jean                                              ', N'Holloway                                          ', N'Ms.                                               ', CAST(0x000097A30080BDAE AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (415, N'Greg                                              ', N'Chapman                                           ', N'Mr.                                               ', CAST(0x00009684001111A2 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (416, N'Angela                                            ', N'Barbariol                                         ', N'Ms.                                               ', CAST(0x00009380000D7985 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (417, N'Ruth                                              ', N'Choin                                             ', N'Ms.                                               ', CAST(0x00009584010E9091 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (418, N'Lee                                               ', N'Chapla                                            ', N'Mr.                                               ', CAST(0x0000944E00509C06 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (419, N'Darrell                                           ', N'Banks                                             ', N'Mr.                                               ', CAST(0x000094E0007B328E AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (420, N'Anthony                                           ', N'Chor                                              ', N'Mr.                                               ', CAST(0x000094B30173DBEC AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (421, N'Forrest                                           ', N'Chandler                                          ', N'Mr.                                               ', CAST(0x000093B601775004 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (424, N'Eli                                               ', N'Bowen                                             ', N'Mr.                                               ', CAST(0x0000977900F13774 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (425, N'Stephen                                           ', N'Jiang                                             ', N'Mr.                                               ', CAST(0x000093AA0036F105 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (426, N'Dirk                                              ', N'Bruno                                             ', N'Mr.                                               ', CAST(0x000094C700935241 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (430, N'Gustavo                                           ', N'Camargel                                          ', N'Sr.                                               ', CAST(0x000093160112BECE AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (431, N'Douglas                                           ', N'Baldwin                                           ', N'Mr.                                               ', CAST(0x0000954C00C67D2F AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (433, N'Lindsey                                           ', N'Camacho                                           ', N'Ms.                                               ', CAST(0x000097FA00C74E2F AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (434, N'James                                             ', N'Bailey                                            ', N'Mr.                                               ', CAST(0x000099A8015FC29B AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (435, N'Carol                                             ', N'Elliott                                           ', N'Ms.                                               ', CAST(0x000096390127DDE7 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (436, N'Barbara                                           ', N'Calone                                            ', N'Ms.                                               ', CAST(0x0000978C01373AB0 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (437, N'Megan                                             ', N'Burke                                             ', N'Ms.                                               ', CAST(0x0000999A016E57D1 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (438, N'Cory                                              ', N'Booth                                             ', N'Mr.                                               ', CAST(0x0000973C006E8882 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (439, N'Shannon                                           ', N'Elliott                                           ', N'Ms.                                               ', CAST(0x0000957A0177F5DA AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (442, N'Jauna                                             ', N'Elson                                             ', N'Ms.                                               ', CAST(0x000096AA00FE3BC1 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (443, N'Janaina Barreiro Gambaro                          ', N'Bueno                                             ', N'Sra.                                              ', CAST(0x00009A6D00C15CD0 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (444, N'Shaun                                             ', N'Beasley                                           ', N'Mr.                                               ', CAST(0x00009387003F1027 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (448, N'Terry                                             ', N'Eminhizer                                         ', N'Mr.                                               ', CAST(0x000094FD00229055 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (451, N'John                                              ', N'Emory                                             ', N'Mr.                                               ', CAST(0x00009AD30029CBD4 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (452, N'Olga                                              ', N'Trau                                              ', N'Ms.                                               ', CAST(0x000099E1017831BE AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (453, N'Jon                                               ', N'Ganio                                             ', N'Mr.                                               ', CAST(0x000099EC00FC0501 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (454, N'Gail                                              ', N'Erickson                                          ', N'Ms.                                               ', CAST(0x000099F500BA1DAD AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (455, N'James                                             ', N'Tran                                              ', N'Mr.                                               ', CAST(0x00009312007A377D AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (456, N'Michael                                           ', N'Galos                                             ', N'Mr.                                               ', CAST(0x0000961C00F8B37B AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (457, N'Mark                                              ', N'Erickson                                          ', N'Mr.                                               ', CAST(0x00009A6300083BB8 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (460, N'Martha                                            ', N'Espinoza                                          ', N'Ms.                                               ', CAST(0x0000953E0009D3DB AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (461, N'Glenn                                             ', N'Track                                             ', N'Mr.                                               ', CAST(0x0000965D008540EA AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (462, N'Bob                                               ', N'Gage                                              ', N'Mr.                                               ', CAST(0x0000987500EE9AF5 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (466, N'Janeth                                            ', N'Esteves                                           ', N'Sra.                                              ', CAST(0x00009A7B010F1CDC AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (468, N'Paul                                              ', N'Fulton                                            ', N'Mr.                                               ', CAST(0x00009A00006558F1 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (469, N'Twanna                                            ', N'Evans                                             ', N'Ms.                                               ', CAST(0x00009659014B5E7C AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (470, N'Delia                                             ', N'Toone                                             ', N'Ms.                                               ', CAST(0x000096F2012BBAC0 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
GO
print 'Processed 300 total records'
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (471, N'Justin                                            ', N'Ford                                              ', N'Mr.                                               ', CAST(0x0000981A016D9582 AS DateTime), CAST(0x00009B8600B82EE2 AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (472, N'Ann                                               ', N'Evans                                             ', N'Ms.                                               ', CAST(0x00009A6E008EBEB2 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (473, N'Kay                                               ', N'Krane                                             ', N'Ms.                                               ', CAST(0x0000933D017AB7CD AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (474, N'Mihail                                            ', N'Frintu                                            ', N'Mr.                                               ', CAST(0x000099DD00DCC42D AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (475, N'John                                              ', N'Evans                                             ', N'Mr.                                               ', CAST(0x00009988012C2E68 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (478, N'Ruby Sue                                          ', N'Styles                                            ', N'Ms.                                               ', CAST(0x000098C701532656 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (479, N'Lori                                              ', N'Kane                                              ', N'Ms.                                               ', CAST(0x0000951A00249D2C AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (480, N'Susan                                             ', N'French                                            ', N'Ms.                                               ', CAST(0x00009A050134E21E AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (484, N'Gary                                              ', N'Suess                                             ', N'Mr.                                               ', CAST(0x000095610121BEFB AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (487, N'Ruth                                              ', N'Suffin                                            ', N'Ms.                                               ', CAST(0x00009AC50063BD9A AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (488, N'Margaret                                          ', N'Smith                                             ', N'Ms.                                               ', CAST(0x0000974D006DC038 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (489, N'Dorothy                                           ', N'Fox                                               ', N'Ms.                                               ', CAST(0x0000976E00BD0333 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (490, N'Elizabeth                                         ', N'Sullivan                                          ', N'Ms.                                               ', CAST(0x0000950600E06B8C AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (491, N'Frances                                           ', N'Adams                                             ', N'Ms.                                               ', CAST(0x00009A4001661C19 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (492, N'Garth                                             ', N'Fort                                              ', N'Mr.                                               ', CAST(0x00009AB101126F63 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (493, N'Michael                                           ', N'Sullivan                                          ', N'Mr.                                               ', CAST(0x0000933901182A32 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (496, N'Marcia                                            ', N'Sultan                                            ', N'Ms.                                               ', CAST(0x0000993E000FA0CA AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (497, N'Amy                                               ', N'Alberts                                           ', N'Ms.                                               ', CAST(0x00009ABC004C1BC9 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (498, N'Kelly                                             ', N'Focht                                             ', N'Ms.                                               ', CAST(0x0000997000A7C1C5 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (502, N'Krishna                                           ', N'Sunkammurali                                      ', N'Mr.                                               ', CAST(0x000097E101302955 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (504, N'Mae                                               ', N'Black                                             ', N'Ms.                                               ', CAST(0x00009A2B00BD7ABF AS DateTime), CAST(0x00009B0D011F3A39 AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (505, N'Brad                                              ', N'Sutton                                            ', N'Mr.                                               ', CAST(0x000095CC014E2CB0 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (506, N'François                                          ', N'Ferrier                                           ', N'Mr.                                               ', CAST(0x0000935801268F21 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (507, N'Mary                                              ', N'Bishop                                            ', N'Mr.                                               ', CAST(0x000099970188FBF1 AS DateTime), CAST(0x00009B0D011EEB6D AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (508, N'Martin                                            ', N'Svoboda                                           ', N'Mr.                                               ', CAST(0x00009303001F40D4 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (509, N'Robert                                            ', N'Ahlering                                          ', N'Mr.                                               ', CAST(0x0000936001197145 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (510, N'Jimmy                                             ', N'Bischoff                                          ', N'Mr.                                               ', CAST(0x0000980B01803125 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (511, N'Abraham                                           ', N'Swearengin                                        ', N'Mr.                                               ', CAST(0x00009A3F00468C2D AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (514, N'Ryan                                              ', N'Calafato                                          ', N'Mr.                                               ', CAST(0x0000963800B66B89 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (515, N'Dragan                                            ', N'Tomic                                             ', N'Mr.                                               ', CAST(0x00009A7200C50379 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (516, N'Thomas                                            ', N'Michaels                                          ', N'Mr.                                               ', CAST(0x0000937C004DAC58 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (520, N'Mari                                              ', N'Caldwell                                          ', N'Ms.                                               ', CAST(0x00009484006A530F AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (523, N'Mary                                              ', N'Gimmi                                             ', N'Ms.                                               ', CAST(0x00009447006AF2F0 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (526, N'David                                             ', N'Givens                                            ', N'Mr.                                               ', CAST(0x00009A2801021680 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (527, N'Diane                                             ', N'Tibbott                                           ', N'Ms.                                               ', CAST(0x00009411018B6788 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (528, N'Helen                                             ', N'Meyer                                             ', N'Ms.                                               ', CAST(0x0000934300C77940 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (529, N'Jeanie                                            ', N'Glenn                                             ', N'Ms.                                               ', CAST(0x0000933E011C8D9C AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (532, N'Diane                                             ', N'Glimp                                             ', N'Ms.                                               ', CAST(0x00009579009D4927 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (533, N'Yuping                                            ', N'Tian                                              ', N'Ms.                                               ', CAST(0x000094DF00C504F5 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (534, N'Stephen                                           ', N'Mew                                               ', N'Mr.                                               ', CAST(0x00009AD0002BEBCE AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (538, N'John                                              ', N'Brooks                                            ', N'Mr.                                               ', CAST(0x00009A9D015F144A AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (541, N'Willie                                            ', N'Brooks                                            ', N'Mr.                                               ', CAST(0x00009AB600447CC5 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (542, N'Andrew                                            ', N'Kobylinski                                        ', N'Mr.                                               ', CAST(0x000096E000DFD0F2 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (543, N'R. Morgan                                         ', N'Mendoza                                           ', N'Mr.                                               ', CAST(0x00009A6B00C8540C AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (544, N'Jay                                               ', N'Adams                                             ', N'Mr.                                               ', CAST(0x000095D00099DF5E AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (545, N'Christian                                         ', N'Kleinerman                                        ', N'Mr.                                               ', CAST(0x000098A5012584B6 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (546, N'Anton                                             ', N'Kirilov                                           ', N'Mr.                                               ', CAST(0x00009838004F7173 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (547, N'Gladys                                            ', N'Mendiola                                          ', N'Ms.                                               ', CAST(0x0000980A0061BEA9 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (550, N'Raquel                                            ', N'Mello                                             ', N'Ms.                                               ', CAST(0x000098D201619322 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (551, N'Samuel                                            ', N'Agcaoili                                          ', N'Mr.                                               ', CAST(0x0000956300F899BE AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (552, N'Tim                                               ', N'Kim                                               ', N'Mr.                                               ', CAST(0x00009A1F007CB03D AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (556, N'Nancy                                             ', N'McPhearson                                        ', N'Ms.                                               ', CAST(0x0000954F0187D397 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (559, N'Nkenge                                            ', N'McLin                                             ', N'Ms.                                               ', CAST(0x0000986300F30692 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (560, N'Paul                                              ', N'Alcorn                                            ', N'Sir                                               ', CAST(0x00009439002478A1 AS DateTime), CAST(0x00009B4400C0EEAB AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (561, N'Marvin                                            ', N'Allen                                             ', N'Mr.                                               ', CAST(0x0000987901891669 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (562, N'Yvonne                                            ', N'McKay                                             ', N'Ms.                                               ', CAST(0x00009AC800E34993 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (563, N'Sean                                              ', N'Jacobson                                          ', N'Mr.                                               ', CAST(0x00009315018865A8 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (564, N'Michelle                                          ', N'Alexander                                         ', N'Ms.                                               ', CAST(0x000094A30146C497 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (565, N'Richard                                           ', N'Bentley                                           ', N'Mr.                                               ', CAST(0x000094B4003C26A6 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (568, N'Curtis                                            ', N'Howard                                            ', N'Mr.                                               ', CAST(0x00009671008A7FBA AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (569, N'Cecil                                             ', N'Allison                                           ', N'Mr.                                               ', CAST(0x0000946A0124DA6C AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (570, N'George                                            ', N'Andersonn                        ', N'Mr.                                               ', CAST(0x00009B940104F76C AS DateTime), CAST(0x00009DD80159E309 AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (574, N'Janice                                            ', N'Hows                                              ', N'Ms.                                               ', CAST(0x000094FA0118B090 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (577, N'George                                            ', N'Huckaby                                           ', N'Mr.                                               ', CAST(0x00009623006B83B0 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (578, N'Carolyn                                           ', N'Farinox                                           ', N'Ms.                                               ', CAST(0x0000997F015C9591 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (579, N'Kim                                               ', N'Abercrombie                                       ', N'Ms.                                               ', CAST(0x00009A1E002B9BF0 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (580, N'Joshua                                            ', N'Huff                                              ', N'Mr.                                               ', CAST(0x0000932E000BB4AA AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (581, N'Geri                                              ', N'Farrell                                           ', N'Ms.                                               ', CAST(0x0000951200A057D7 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (582, N'Catherine                                         ', N'Abel                                              ', N'Ms.                                               ', CAST(0x0000944F00D598BC AS DateTime), CAST(0x00009B9E00C01670 AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (583, N'Laura                                             ', N'Steele                                            ', N'Ms.                                               ', CAST(0x0000954600FFDAAD AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (586, N'Shanay                                            ', N'Steelman                                          ', N'Ms.                                               ', CAST(0x0000996801193748 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (587, N'Rhoda                                             ', N'Finley                                            ', N'Ms.                                               ', CAST(0x000093BB0051BF08 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (588, N'Pat                                               ', N'Chambers                                          ', N'Mr.                                               ', CAST(0x0000945B00854A00 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (592, N'Stefano                                           ', N'Stefani                                           ', N'Mr.                                               ', CAST(0x00009677008B3675 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (595, N'Alan                                              ', N'Steiner                                           ', N'Mr.                                               ', CAST(0x0000950C00DF9015 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (596, N'Kathie                                            ', N'Flood                                             ', N'Ms.                                               ', CAST(0x00009AF600ECB532 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (597, N'Bob                                               ', N'Hodges                                            ', N'Mr.                                               ', CAST(0x000096BE00E2ED48 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (598, N'Derik                                             ', N'Stenerson                                         ', N'Mr.                                               ', CAST(0x000098BB010D1174 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (599, N'Raul                                              ', N'Casts                                             ', N'Mr.                                               ', CAST(0x00009410005DB8B7 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (600, N'Holly                                             ', N'Holt                                              ', N'Ms.                                               ', CAST(0x0000998F0182367D AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (601, N'Vassar                                            ', N'Stern                                             ', N'Mr.                                               ', CAST(0x000097AA00517876 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (604, N'Wathalee                                          ', N'Steuber                                           ', N'Ms.                                               ', CAST(0x000094A600DA54F4 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (605, N'Matthew                                           ', N'Cavallari                                         ', N'Mr.                                               ', CAST(0x00009646011F9408 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (606, N'Helge                                             ', N'Hoeing                                            ', N'Ms.                                               ', CAST(0x000097B40178A9FD AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (607, N'Alice                                             ', N'Steiner                                           ', N'Ms.                                               ', CAST(0x0000952F0022CE6C AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (608, N'Steven                                            ', N'Brown                                             ', N'Mr.                                               ', CAST(0x00009AC000BE5B8E AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (609, N'David                                             ', N'Hodgson                                           ', N'Mr.                                               ', CAST(0x0000936E01645A79 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (610, N'Liza Marie                                        ', N'Stevens                                           ', N'Ms.                                               ', CAST(0x0000968B015646B2 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (613, N'Jim                                               ', N'Stewart                                           ', N'Mr.                                               ', CAST(0x0000964F00CC4027 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (617, N'Arlene                                            ', N'Huff                                              ', N'Ms.                                               ', CAST(0x00009875016EF0E5 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (620, N'Matthew                                           ', N'Hunter                                            ', N'Mr.                                               ', CAST(0x0000965400AE715E AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (621, N'Matthew                                           ', N'Hink                                              ', N'Mr.                                               ', CAST(0x0000995700DD1130 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (622, N'Robert                                            ', N'Stotka                                            ', N'Mr.                                               ', CAST(0x00009A2F010430FB AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (623, N'Phyllis                                           ', N'Huntsman                                          ', N'Ms.                                               ', CAST(0x00009A25005888F3 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (624, N'Mike                                              ', N'Hines                                             ', N'Mr.                                               ', CAST(0x000098D3018102F7 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (625, N'Kayla                                             ', N'Stotler                                           ', N'Ms.                                               ', CAST(0x0000987A009BABCD AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (626, N'Lawrence                                          ', N'Hurkett                                           ', N'Mr.                                               ', CAST(0x00009A1101424AA3 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (629, N'Ryan                                              ', N'Ihrig                                             ', N'Mr.                                               ', CAST(0x00009AF70039207A AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (630, N'Andrew                                            ', N'Hill                                              ', N'Mr.                                               ', CAST(0x0000930F0105AF48 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (631, N'Robert                                            ', N'Lyeba                                             ', N'Mr.                                               ', CAST(0x0000972100D7C50A AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (635, N'Roger                                             ', N'Van Houten                                        ', N'Mr.                                               ', CAST(0x0000968C0145BE33 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
GO
print 'Processed 400 total records'
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (637, N'Robert                                            ', N'Lyon                                              ', N'Mr.                                               ', CAST(0x000096030144A45E AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (641, N'Rose                                              ', N'Vandenouer                                        ', N'Ms.                                               ', CAST(0x0000972D00F668DA AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (643, N'Denise                                            ', N'Maccietto                                         ', N'Ms.                                               ', CAST(0x000093E000AC7185 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (644, N'Gregory                                           ', N'Vanderbout                                        ', N'Mr.                                               ', CAST(0x000093BD00673213 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (645, N'Ronald                                            ', N'Heymsfield                                        ', N'Mr.                                               ', CAST(0x000097730013098E AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (646, N'Scott                                             ', N'MacDonald                                         ', N'Mr.                                               ', CAST(0x00009B080141F47B AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (647, N'Michael                                           ', N'Vanderhyde                                        ', N'Mr.                                               ', CAST(0x0000931B014A784D AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (648, N'Cheryl                                            ', N'Herring                                           ', N'Ms.                                               ', CAST(0x0000980D01103DD1 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (649, N'Walter                                            ', N'Mays                                              ', N'Mr.                                               ', CAST(0x000094FE0028964A AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (650, N'Margaret                                          ', N'Vanderkamp                                        ', N'Ms.                                               ', CAST(0x000098F7002C1268 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (653, N'Kara                                              ', N'Vanderlinden                                      ', N'Ms.                                               ', CAST(0x000098040092A1AB AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (654, N'Jésus                                             ', N'Hernandez                                         ', N'Mr.                                               ', CAST(0x000098C4013AC958 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (655, N'Irene                                             ', N'Hernandez                                         ', N'Ms.                                               ', CAST(0x0000932C00A5254C AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (659, N'Ajay                                              ', N'Manchepalli                                       ', N'Mr.                                               ', CAST(0x00009735003EA925 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (660, N'Nieves                                            ', N'Vargas                                            ', N'Mr.                                               ', CAST(0x0000973D0168CB64 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (661, N'Kari                                              ', N'Hensien                                           ', N'Mr.                                               ', CAST(0x0000942B00D945F6 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (665, N'Tomas                                             ', N'Manzanares                                        ', N'Mr.                                               ', CAST(0x00009A73007E81A7 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (668, N'Kathy                                             ', N'Marcovecchio                                      ', N'Ms.                                               ', CAST(0x000095C1009758B5 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (669, N'Patricia                                          ', N'Doyle                                             ', N'Ms.                                               ', CAST(0x00009490012D15B2 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (670, N'Valerie                                           ', N'Hendricks                                         ', N'Ms.                                               ', CAST(0x000099AA004689E0 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (671, N'Jill                                              ', N'Markwood                                          ', N'Ms.                                               ', CAST(0x0000940E00FA5B4C AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (672, N'Gerald                                            ', N'Drury                                             ', N'Mr.                                               ', CAST(0x000097D501496B2C AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (673, N'John                                              ', N'Hanson                                            ', N'Mr.                                               ', CAST(0x0000997C001B00BC AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (674, N'Melissa                                           ', N'Marple                                            ', N'Ms.                                               ', CAST(0x000097730126C4F6 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (677, N'Cecelia                                           ', N'Marshall                                          ', N'Ms.                                               ', CAST(0x000099430057BF75 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (678, N'Reuben                                            ', N'D''sa                                              ', N'Mr.                                               ', CAST(0x0000995B017CD8DF AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (679, N'Brenda                                            ', N'Heaney                                            ', N'Ms.                                               ', CAST(0x00009454016DF968 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (683, N'Linda                                             ', N'Martin                                            ', N'Ms.                                               ', CAST(0x000094A900849470 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (685, N'James                                             ', N'Haugh                                             ', N'Mr.                                               ', CAST(0x000098A30187EAFB AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (689, N'Sandra                                            ', N'Martinez                                          ', N'Ms.                                               ', CAST(0x00009349011B4425 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (692, N'Bev                                               ', N'Desalvo                                           ', N'Ms.                                               ', CAST(0x00009583001DAEF9 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (693, N'Bart                                              ', N'Duncan                                            ', N'Mr.                                               ', CAST(0x0000976701725E92 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (694, N'Ann                                               ', N'Hass                                              ', N'Ms.                                               ', CAST(0x000095ED00499F0B AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (695, N'Rob                                               ', N'Caron                                             ', N'Mr.                                               ', CAST(0x000096090005E6D9 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (696, N'Maciej                                            ', N'Dusza                                             ', N'Mr.                                               ', CAST(0x000098B10180C529 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (697, N'Roger                                             ', N'Harui                                             ', N'Mr.                                               ', CAST(0x0000943A0099AA65 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (698, N'Andy                                              ', N'Carothers                                         ', N'Mr.                                               ', CAST(0x00009381004DC653 AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (701, N'Linda                                             ', N'Ecoffey                                           ', N'Ms.                                               ', CAST(0x0000998A008EA1FF AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (707, N'Albert                                            ', N'Acabax                                            ', N'                                                  ', CAST(0x00009AAA0086035D AS DateTime), CAST(0x00009AF1008B48AE AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (708, N'Andy                                              ', N'Acme                                              ', N'                                                  ', CAST(0x0000938400F75EB4 AS DateTime), CAST(0x00009B9D010345D0 AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (709, N'Sampson                                           ', N'Flynn                                             ', N'Kiddo                                             ', CAST(0x00009C7F0109EC6C AS DateTime), CAST(0x00009C7F0109EC6C AS DateTime))
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Title], [AddDate], [ModifiedDate]) VALUES (728, N'Joan', N'Amrat', NULL, CAST(0x00009B8100F0F7D3 AS DateTime), CAST(0x00009D11014D0DC2 AS DateTime))
SET IDENTITY_INSERT [dbo].[Contact] OFF
/****** Object:  Table [dbo].[Equipment]    Script Date: 12/16/2010 19:44:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Equipment]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Equipment](
	[EquipmentID] [int] IDENTITY(1,1) NOT NULL,
	[Equipment] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_Equipment] PRIMARY KEY CLUSTERED 
(
	[EquipmentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[Equipment] ON
INSERT [dbo].[Equipment] ([EquipmentID], [Equipment]) VALUES (1, N'Touring Bike                                      ')
INSERT [dbo].[Equipment] ([EquipmentID], [Equipment]) VALUES (2, N'Mountain Bike                                     ')
INSERT [dbo].[Equipment] ([EquipmentID], [Equipment]) VALUES (3, N'Ocean Kayak Single                                ')
INSERT [dbo].[Equipment] ([EquipmentID], [Equipment]) VALUES (4, N'Ocean Kayak Double                                ')
INSERT [dbo].[Equipment] ([EquipmentID], [Equipment]) VALUES (5, N'White Water Kayak                                 ')
INSERT [dbo].[Equipment] ([EquipmentID], [Equipment]) VALUES (6, N'White Water Raft                                  ')
INSERT [dbo].[Equipment] ([EquipmentID], [Equipment]) VALUES (7, N'Fishing Poles                                     ')
INSERT [dbo].[Equipment] ([EquipmentID], [Equipment]) VALUES (8, N'Backpack                                          ')
INSERT [dbo].[Equipment] ([EquipmentID], [Equipment]) VALUES (9, N'Tent                                              ')
INSERT [dbo].[Equipment] ([EquipmentID], [Equipment]) VALUES (10, N'Sleeping Bag                                      ')
INSERT [dbo].[Equipment] ([EquipmentID], [Equipment]) VALUES (11, N'Wet Suit                                          ')
INSERT [dbo].[Equipment] ([EquipmentID], [Equipment]) VALUES (12, N'Dry Bag                                           ')
INSERT [dbo].[Equipment] ([EquipmentID], [Equipment]) VALUES (13, N'Compass                                           ')
INSERT [dbo].[Equipment] ([EquipmentID], [Equipment]) VALUES (14, N'Binoculars                                        ')
INSERT [dbo].[Equipment] ([EquipmentID], [Equipment]) VALUES (15, N'Dry Suit')
SET IDENTITY_INSERT [dbo].[Equipment] OFF
/****** Object:  Table [dbo].[OldReservations]    Script Date: 12/16/2010 19:44:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OldReservations]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OldReservations](
	[ReservationID] [int] IDENTITY(1,1) NOT NULL,
	[ReservationDate] [datetime] NOT NULL,
	[ContactID] [int] NOT NULL,
	[EventID] [int] NULL,
	[RowVersion] [timestamp] NOT NULL,
 CONSTRAINT [PK_OldReservations] PRIMARY KEY CLUSTERED 
(
	[ReservationID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[Locations]    Script Date: 12/16/2010 19:44:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Locations]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Locations](
	[LocationID] [int] IDENTITY(1,1) NOT NULL,
	[LocationName] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_Locations] PRIMARY KEY CLUSTERED 
(
	[LocationID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[Locations] ON
INSERT [dbo].[Locations] ([LocationID], [LocationName]) VALUES (1, N'Tanzania                  ')
INSERT [dbo].[Locations] ([LocationID], [LocationName]) VALUES (2, N'Algeria                                           ')
INSERT [dbo].[Locations] ([LocationID], [LocationName]) VALUES (3, N'Guadeloupe                                        ')
INSERT [dbo].[Locations] ([LocationID], [LocationName]) VALUES (4, N'Turks and Caicos Islands                          ')
INSERT [dbo].[Locations] ([LocationID], [LocationName]) VALUES (5, N'Morocco                                           ')
INSERT [dbo].[Locations] ([LocationID], [LocationName]) VALUES (6, N'Spain                                             ')
INSERT [dbo].[Locations] ([LocationID], [LocationName]) VALUES (7, N'New Caledonia                                     ')
INSERT [dbo].[Locations] ([LocationID], [LocationName]) VALUES (8, N'Kazakhstan                                        ')
INSERT [dbo].[Locations] ([LocationID], [LocationName]) VALUES (9, N'Western Sahara                                    ')
INSERT [dbo].[Locations] ([LocationID], [LocationName]) VALUES (10, N'Antarctica                                        ')
INSERT [dbo].[Locations] ([LocationID], [LocationName]) VALUES (11, N'Portugal                                          ')
INSERT [dbo].[Locations] ([LocationID], [LocationName]) VALUES (12, N'Grand Canyon                                      ')
INSERT [dbo].[Locations] ([LocationID], [LocationName]) VALUES (13, N'Togo                                              ')
INSERT [dbo].[Locations] ([LocationID], [LocationName]) VALUES (14, N'Tasmania')
INSERT [dbo].[Locations] ([LocationID], [LocationName]) VALUES (15, N'Martinique                                        ')
INSERT [dbo].[Locations] ([LocationID], [LocationName]) VALUES (16, N'Denmark                                           ')
INSERT [dbo].[Locations] ([LocationID], [LocationName]) VALUES (17, N'Montreal                                          ')
INSERT [dbo].[Locations] ([LocationID], [LocationName]) VALUES (18, N'British Columbia')
INSERT [dbo].[Locations] ([LocationID], [LocationName]) VALUES (19, N'Bulgaria                                          ')
INSERT [dbo].[Locations] ([LocationID], [LocationName]) VALUES (20, N'Cameroon                                          ')
INSERT [dbo].[Locations] ([LocationID], [LocationName]) VALUES (21, N'Vermont')
INSERT [dbo].[Locations] ([LocationID], [LocationName]) VALUES (22, N'Belize                                            ')
INSERT [dbo].[Locations] ([LocationID], [LocationName]) VALUES (23, N'Hungary                                           ')
INSERT [dbo].[Locations] ([LocationID], [LocationName]) VALUES (24, N'Saint Vincent and the Grenadines                  ')
INSERT [dbo].[Locations] ([LocationID], [LocationName]) VALUES (25, N'Åland Islands                                     ')
INSERT [dbo].[Locations] ([LocationID], [LocationName]) VALUES (26, N'Zion National Park                                ')
INSERT [dbo].[Locations] ([LocationID], [LocationName]) VALUES (27, N'Hawaii')
INSERT [dbo].[Locations] ([LocationID], [LocationName]) VALUES (28, N'Mauritania                                        ')
INSERT [dbo].[Locations] ([LocationID], [LocationName]) VALUES (29, N'Stockholm                  ')
INSERT [dbo].[Locations] ([LocationID], [LocationName]) VALUES (30, N'Belgium                                           ')
INSERT [dbo].[Locations] ([LocationID], [LocationName]) VALUES (31, N'Trinidad and Tobago                               ')
INSERT [dbo].[Locations] ([LocationID], [LocationName]) VALUES (32, N'South Africa                                      ')
INSERT [dbo].[Locations] ([LocationID], [LocationName]) VALUES (33, N'Norway                                            ')
INSERT [dbo].[Locations] ([LocationID], [LocationName]) VALUES (34, N'Australia                                         ')
INSERT [dbo].[Locations] ([LocationID], [LocationName]) VALUES (35, N'Albania                                           ')
INSERT [dbo].[Locations] ([LocationID], [LocationName]) VALUES (36, N'Costa Rica                                        ')
INSERT [dbo].[Locations] ([LocationID], [LocationName]) VALUES (37, N'Yellowstone National Park')
INSERT [dbo].[Locations] ([LocationID], [LocationName]) VALUES (38, N'Provence                                          ')
INSERT [dbo].[Locations] ([LocationID], [LocationName]) VALUES (39, N'Saudi Arabia                                      ')
INSERT [dbo].[Locations] ([LocationID], [LocationName]) VALUES (40, N'Croatia                                           ')
INSERT [dbo].[Locations] ([LocationID], [LocationName]) VALUES (41, N'Greece                                            ')
INSERT [dbo].[Locations] ([LocationID], [LocationName]) VALUES (42, N'India                                             ')
INSERT [dbo].[Locations] ([LocationID], [LocationName]) VALUES (43, N'Montenegro                                        ')
INSERT [dbo].[Locations] ([LocationID], [LocationName]) VALUES (44, N'Faroe Islands                                     ')
INSERT [dbo].[Locations] ([LocationID], [LocationName]) VALUES (45, N'Iceland                                           ')
INSERT [dbo].[Locations] ([LocationID], [LocationName]) VALUES (46, N'Norfolk Island                                    ')
INSERT [dbo].[Locations] ([LocationID], [LocationName]) VALUES (47, N'Canada                                            ')
INSERT [dbo].[Locations] ([LocationID], [LocationName]) VALUES (48, N'Swaziland                                         ')
INSERT [dbo].[Locations] ([LocationID], [LocationName]) VALUES (49, N'Malta                                             ')
INSERT [dbo].[Locations] ([LocationID], [LocationName]) VALUES (50, N'Ireland                                           ')
INSERT [dbo].[Locations] ([LocationID], [LocationName]) VALUES (51, N'Germany                                           ')
INSERT [dbo].[Locations] ([LocationID], [LocationName]) VALUES (52, N'Sweden')
INSERT [dbo].[Locations] ([LocationID], [LocationName]) VALUES (53, N'Bouvet Island                                     ')
INSERT [dbo].[Locations] ([LocationID], [LocationName]) VALUES (54, N'Djibouti                                          ')
INSERT [dbo].[Locations] ([LocationID], [LocationName]) VALUES (55, N'Brazil')
INSERT [dbo].[Locations] ([LocationID], [LocationName]) VALUES (56, N'Chile                                             ')
INSERT [dbo].[Locations] ([LocationID], [LocationName]) VALUES (57, N'Macao                                             ')
INSERT [dbo].[Locations] ([LocationID], [LocationName]) VALUES (58, N'Hong Kong                                         ')
INSERT [dbo].[Locations] ([LocationID], [LocationName]) VALUES (59, N'Slovenia                                          ')
INSERT [dbo].[Locations] ([LocationID], [LocationName]) VALUES (60, N'Amazon                                            ')
INSERT [dbo].[Locations] ([LocationID], [LocationName]) VALUES (61, N'Turkmenistan                                      ')
INSERT [dbo].[Locations] ([LocationID], [LocationName]) VALUES (62, N'Netherlands Antilles                              ')
INSERT [dbo].[Locations] ([LocationID], [LocationName]) VALUES (63, N'New Zealand                                       ')
INSERT [dbo].[Locations] ([LocationID], [LocationName]) VALUES (64, N'Cook Islands                                      ')
INSERT [dbo].[Locations] ([LocationID], [LocationName]) VALUES (65, N'Bali')
INSERT [dbo].[Locations] ([LocationID], [LocationName]) VALUES (66, N'Japan                                             ')
INSERT [dbo].[Locations] ([LocationID], [LocationName]) VALUES (67, N'Finland')
INSERT [dbo].[Locations] ([LocationID], [LocationName]) VALUES (68, N'Peru                                              ')
INSERT [dbo].[Locations] ([LocationID], [LocationName]) VALUES (69, N'Nepal                                     ')
INSERT [dbo].[Locations] ([LocationID], [LocationName]) VALUES (70, N'Indonesia                                         ')
INSERT [dbo].[Locations] ([LocationID], [LocationName]) VALUES (71, N'Gabon                                             ')
INSERT [dbo].[Locations] ([LocationID], [LocationName]) VALUES (72, N'Monaco                                            ')
INSERT [dbo].[Locations] ([LocationID], [LocationName]) VALUES (73, N'Réunion                                           ')
INSERT [dbo].[Locations] ([LocationID], [LocationName]) VALUES (74, N'Singapore                                         ')
INSERT [dbo].[Locations] ([LocationID], [LocationName]) VALUES (75, N'Saint Pierre and Miquelon                         ')
INSERT [dbo].[Locations] ([LocationID], [LocationName]) VALUES (76, N'n/a                                               ')
INSERT [dbo].[Locations] ([LocationID], [LocationName]) VALUES (77, N'Albania                                           ')
INSERT [dbo].[Locations] ([LocationID], [LocationName]) VALUES (78, N'Antarctica                                        ')
INSERT [dbo].[Locations] ([LocationID], [LocationName]) VALUES (79, N'Åland Islands                                     ')
INSERT [dbo].[Locations] ([LocationID], [LocationName]) VALUES (80, N'Albania                                           ')
INSERT [dbo].[Locations] ([LocationID], [LocationName]) VALUES (81, N'Albania                                           ')
SET IDENTITY_INSERT [dbo].[Locations] OFF
/****** Object:  StoredProcedure [dbo].[InsertContact]    Script Date: 12/16/2010 19:44:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InsertContact]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[InsertContact]

           @FirstName nchar(50),
           @LastName nchar(50),
           @Title nchar(50)

--create contact record first, get id, then create customer record

    AS       
   INSERT INTO Contact
           ([FirstName]
           ,[LastName]
           ,[Title]
           ,[AddDate]
           ,[ModifiedDate])
     VALUES
           (@FirstName,@LastName,@Title,
           GETDATE(),GETDATE())

    select SCOPE_IDENTITY() as ContactID
' 
END
GO
/****** Object:  Table [dbo].[Lodging]    Script Date: 12/16/2010 19:44:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Lodging]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Lodging](
	[LodgingID] [int] IDENTITY(1,1) NOT NULL,
	[LodgingName] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ContactID] [int] NOT NULL,
	[LocationID] [int] NULL,
	[Resort] [bit] NOT NULL,
	[ResortChainOwner] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LuxuryResort] [bit] NOT NULL,
 CONSTRAINT [PK_Lodging] PRIMARY KEY CLUSTERED 
(
	[LodgingID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[Lodging] ON
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (1, N'Inn at the Round Barn Farm                        ', 509, 62, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (3, N'Willey''s Farm Bed & Breakfast                     ', 544, 42, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (4, N'Paradise Bay Bed & Breakfast                      ', 390, 34, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (5, N'Sunset House Bed & Breakfast                      ', 147, 21, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (6, N'Sleepy Hollow Inn, Ski and Bike Center            ', 394, 36, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (9, N'Hidden Garden''s Bed & Breakfast                   ', 701, 75, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (10, N'So Just Relax                                     ', 196, 24, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (11, N'Inn at Buck Hollow Farm                           ', 204, 64, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (13, N'560 VT Route 100                                  ', 443, 40, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (14, N'Strong House Inn                                  ', 329, 52, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (15, N'One Of A Kind Bed and Breakfast                   ', 707, 7, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (16, N'Richmond Victorian Inn                            ', 19, 34, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (17, N'Black Bear Inn                                    ', 609, 75, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (18, N'Barnhouse Bed & Breakfast                         ', 402, 58, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (20, N'Couture''s Shop & B&B                        ', 221, 72, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (22, N'Proctor Avenue Bed & Breakfast                    ', 601, 21, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (24, N'Tetreault House Bed & Breakfast                   ', 20, 35, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (25, N'Inn at Charlotte                                  ', 491, 17, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (26, N'Elliot House Bed & Breakfast                      ', 370, 54, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (28, N'Heart of the Village Inn                          ', 484, 66, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (31, N'Willard Street Inn                                ', 132, 17, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (32, N'Overlook Park Bed & Breakfast                     ', 318, 68, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (34, N'Windekind Farm                                    ', 598, 49, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (36, N'A River''s Edge Bed & Breakfast                    ', 542, 37, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (38, N'Camp Carlton                                      ', 4, 76, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (191, N'Hilton Tanzania     ', 1, 1, 1, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (192, N'Hilton Algeria                                    ', 1, 2, 1, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (193, N'Hilton Guadeloupe                                 ', 1, 3, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (194, N'Hilton Turks and Caicos Islands                   ', 1, 4, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (195, N'Hilton Morocco                                    ', 1, 5, 1, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (196, N'Hilton Spain                                      ', 1, 6, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (197, N'Hilton New Caledonia                              ', 1, 7, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (198, N'Hilton Kazakhstan                                 ', 1, 8, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (199, N'Hilton Western Sahara                             ', 1, 9, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (200, N'Hilton Antarctica                                 ', 1, 10, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (201, N'Hilton Portugal                                   ', 1, 11, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (202, N'Best Western Grand Canyon                         ', 1, 12, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (203, N'Hilton Togo                                       ', 1, 13, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (204, N'Fountainside B&B', 1, 14, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (205, N'Hilton Martinique                                 ', 1, 15, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (206, N'Hilton Denmark                                    ', 1, 16, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (207, N'Hilton Montreal                                   ', 1, 17, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (208, N'Victoria Inn', 1, 18, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (209, N'Hilton Sofia                                      ', 1, 19, 1, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (210, N'Hilton Cameroon                                   ', 1, 20, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (211, N'Burlington Mariott', 1, 21, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (212, N'Hilton Belize                                     ', 1, 22, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (213, N'Hilton Hungary                                    ', 1, 23, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (214, N'Hilton Saint Vincent', 1, 24, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (215, N'Hilton Åland Islands                              ', 1, 25, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (216, N'Best Western Zion National Park                   ', 1, 26, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (217, N'Hilton Hong Kong                                  ', 1, 27, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (218, N'Hilton Mauritania                                 ', 1, 28, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (219, N'Hilton Stockholm                           ', 1, 29, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (220, N'Hilton Belgium                                    ', 1, 30, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (221, N'Hilton Trinidad and Tobago                        ', 1, 31, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (222, N'Cape Grace Hotel ', 1, 32, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (223, N'Hilton Norway                                     ', 1, 33, 1, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (224, N'Hilton Sydney                                     ', 1, 34, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (225, N'Hilton Albania                                    ', 1, 35, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (226, N'Hilton Costa Rica                                 ', 1, 36, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (227, N'Hilton Uganda                                     ', 1, 37, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (228, N'Hilton Provence                                   ', 1, 38, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (229, N'Hilton Saudi Arabia                               ', 1, 39, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (230, N'Hilton Croatia                                    ', 1, 40, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (231, N'Hilton Greece                                     ', 1, 41, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (232, N'Hilton India                                      ', 1, 42, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (233, N'Hilton Montenegro                                 ', 1, 43, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (234, N'Hilton Faroe Islands                              ', 1, 44, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (235, N'Hilton Iceland                                    ', 1, 45, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (236, N'Hilton Norfolk Island                             ', 1, 46, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (237, N'Hilton Canada                                     ', 1, 47, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (238, N'Hilton Swaziland                                  ', 1, 48, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (239, N'Hilton Malta                                      ', 1, 49, 1, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (240, N'Hilton Ireland                                    ', 1, 50, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (241, N'Hilton Germany                                    ', 1, 51, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (242, N'Hilton Serbia                                     ', 1, 52, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (243, N'Hilton Bouvet Island                              ', 1, 53, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (244, N'Hilton Djibouti                                   ', 1, 54, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (245, N'Hilton Belize                                     ', 1, 55, 1, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (246, N'Hilton Chile                                      ', 1, 56, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (247, N'Hilton Macao                                      ', 1, 57, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (248, N'Hilton Hong Kong                                  ', 1, 58, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (249, N'Hilton Slovenia                                   ', 1, 59, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (250, N'Hilton Amazon                                     ', 1, 60, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (251, N'Hilton Turkmenistan                               ', 1, 61, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (252, N'Hilton Netherlands Antilles                       ', 1, 62, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (253, N'Hilton New Zealand                                ', 1, 63, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (254, N'Hilton Cook Islands                               ', 1, 64, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (255, N'Bali Inn', 1, 65, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (256, N'Hilton Japan                                      ', 1, 66, 1, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (257, N'Hilton Mayotte                                    ', 1, 67, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (258, N'Hilton Peru                                       ', 1, 68, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (259, N'Hilton Namibia                                    ', 1, 69, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (260, N'Hilton Bali                                       ', 1, 70, 1, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (261, N'Hilton Gabon                                      ', 1, 71, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (262, N'Hilton Monaco                                     ', 1, 72, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (263, N'Hilton Réunion                                    ', 1, 73, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (264, N'Hilton Singapore                                  ', 1, 74, 0, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (265, N'Hilton  Miquelon                  ', 1, 75, 0, NULL, 0)
GO
print 'Processed 100 total records'
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (266, N'Hilton Pacifica                                   ', 1, 76, 1, NULL, 0)
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [ContactID], [LocationID], [Resort], [ResortChainOwner], [LuxuryResort]) VALUES (268, N'testtest                                          ', 1, NULL, 0, NULL, 0)
SET IDENTITY_INSERT [dbo].[Lodging] OFF
/****** Object:  Table [dbo].[Address]    Script Date: 12/16/2010 19:44:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Address]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Address](
	[addressID] [int] IDENTITY(1,1) NOT NULL,
	[Street1] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Street2] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[City] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[StateProvince] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CountryRegion] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PostalCode] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AddressType] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ContactID] [int] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[RowVersion] [timestamp] NOT NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[addressID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[Address] ON
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2260, N'8714 Yosemite Ct.                                 ', NULL, N'Bothell                                           ', N'Washington                                        ', N'United States                                     ', N'98011               ', N'Home      ', 325, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2261, N'1317 Lasalle Street                               ', NULL, N'Bothell                                           ', N'Washington                                        ', N'United States                                     ', N'98011               ', N'Home      ', 19, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2262, N'9178 Jumping St.                                  ', NULL, N'Dallas                                            ', N'Texas                                             ', N'United States                                     ', N'75201               ', N'Home      ', 130, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2263, N'9228 Via Del Sol                                  ', NULL, N'Phoenix                                           ', N'Arizona                                           ', N'United States                                     ', N'85004               ', N'Home      ', 473, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2265, N'2681 Eagle Peak                                   ', NULL, N'Bellevue                                          ', N'Washington                                        ', N'United States                                     ', N'98004               ', N'Home      ', 254, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2266, N'7943 Walnut Ave                                   ', NULL, N'Renton                                            ', N'Washington                                        ', N'United States                                     ', N'98055               ', N'Home      ', 2, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2267, N'6388 Lake City Way                                ', NULL, N'Burnaby                                           ', N'British Columbia                                  ', N'Canada                                            ', N'V5A 3A6             ', N'Home      ', 10, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2268, N'52560 Free Street                                 ', NULL, N'Toronto                                           ', N'Ontario                                           ', N'Canada                                            ', N'M4B 1V7             ', N'Office    ', 11, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2269, N'22580 Free Street                                 ', NULL, N'Toronto                                           ', N'Ontario                                           ', N'Canada                                            ', N'M4B 1V7             ', N'Office    ', 12, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2270, N'2575 Bloor Street East                            ', NULL, N'Toronto                                           ', N'Ontario                                           ', N'Canada                                            ', N'M4B 1V6             ', N'Office    ', 28, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2271, N'Station E                                         ', NULL, N'Chalk Riber                                       ', N'Ontario                                           ', N'Canada                                            ', N'K0J 1J0             ', N'Office    ', 29, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2272, N'575 Rue St Amable                                 ', NULL, N'Quebec                                            ', N'Quebec                                            ', N'Canada                                            ', N'G1R                 ', N'Office    ', 30, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2273, N'2512-4th Ave Sw                                   ', NULL, N'Calgary                                           ', N'Alberta                                           ', N'Canada                                            ', N'T2P 2G8             ', N'Office    ', 46, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2274, N'55 Lakeshore Blvd East                            ', NULL, N'Toronto                                           ', N'Ontario                                           ', N'Canada                                            ', N'M4B 1V6             ', N'Office    ', 47, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2275, N'6333 Cote Vertu                                   ', NULL, N'Montreal                                          ', N'Quebec                                            ', N'Canada                                            ', N'H1Y 2H7             ', N'Home      ', 48, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2276, N'3255 Front Street West                            ', NULL, N'Toronto                                           ', N'Ontario                                           ', N'Canada                                            ', N'M4B 1V6             ', N'Office    ', 64, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2277, N'2550 Signet Drive                                 ', NULL, N'Weston                                            ', N'Ontario                                           ', N'Canada                                            ', N'M9V 4W3             ', N'Office    ', 65, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2278, N'6777 Kingsway                                     ', NULL, N'Burnaby                                           ', N'British Columbia                                  ', N'Canada                                            ', N'V5H 3Z7             ', N'Office    ', 66, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2279, N'5250-505 Burning St                               ', NULL, N'Vancouver                                         ', N'British Columbia                                  ', N'Canada                                            ', N'V7L 4J4             ', N'Office    ', 82, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2280, N'600 Slater Street                                 ', NULL, N'Ottawa                                            ', N'Ontario                                           ', N'Canada                                            ', N'K4B 1S2             ', N'Office    ', 83, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2281, N'25575 The Queensway                               ', NULL, N'Etobicoke                                         ', N'Ontario                                           ', N'Canada                                            ', N'M9W 3P3             ', N'Office    ', 84, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2282, N'2521 McPherson Street                             ', NULL, N'Markham                                           ', N'Ontario                                           ', N'Canada                                            ', N'L3S 3K2             ', N'Home      ', 100, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2283, N'2560 Bay Street                                   ', NULL, N'Toronto                                           ', N'Ontario                                           ', N'Canada                                            ', N'M4B 1V7             ', N'Office    ', 101, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2284, N'630 University Avenue                             ', NULL, N'Toronto                                           ', N'Ontario                                           ', N'Canada                                            ', N'M4B 1V7             ', N'Office    ', 102, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2285, N'992 St Clair Ave East                             ', NULL, N'Toronto                                           ', N'Ontario                                           ', N'Canada                                            ', N'M4B 1V7             ', N'Home      ', 118, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2286, N'99, Rue Saint-pierre                              ', NULL, N'Pnot-Rouge                                        ', N'Quebec                                            ', N'Canada                                            ', N'J1E 2T7             ', N'Home      ', 119, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2287, N'25245 Rue Sherbrooke Ouest                        ', NULL, N'Montreal                                          ', N'Quebec                                            ', N'Canada                                            ', N'H1Y 2H5             ', N'Office    ', 120, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2288, N'655-4th Ave S.W.                                  ', NULL, N'Calgary                                           ', N'Alberta                                           ', N'Canada                                            ', N'T2P 2G8             ', N'Office    ', 136, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2289, N'25900-700-9th Ave S.W.                            ', NULL, N'Calgary                                           ', N'Alberta                                           ', N'Canada                                            ', N'T2P 2G8             ', N'Office    ', 137, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2290, N'Po Box 83270                                      ', NULL, N'Vancouver                                         ', N'British Columbia                                  ', N'Canada                                            ', N'V7L 4J4             ', N'Home      ', 138, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2291, N'400-25155 West Pender St                          ', NULL, N'Vancouver                                         ', N'British Columbia                                  ', N'Canada                                            ', N'V7L 4J4             ', N'Home      ', 154, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2292, N'2511 Baker Road                                   ', NULL, N'Toronto                                           ', N'Ontario                                           ', N'Canada                                            ', N'M4B 1V7             ', N'Office    ', 155, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2293, N'770 Notre Datme Quest Bureau 800                  ', NULL, N'Montreal                                          ', N'Quebec                                            ', N'Canada                                            ', N'H1Y 2H7             ', N'Office    ', 156, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2294, N'250551 Shellbridge Way                            ', NULL, N'Richmond                                          ', N'British Columbia                                  ', N'Canada                                            ', N'V6B 3P7             ', N'Office    ', 172, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2295, N'595 Burning Street                                ', NULL, N'Vancouver                                         ', N'British Columbia                                  ', N'Canada                                            ', N'V7L 4J4             ', N'Office    ', 173, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2296, N'252345 8810th Avenue                              ', NULL, N'Surrey                                            ', N'British Columbia                                  ', N'Canada                                            ', N'V3T 4W3             ', N'Office    ', 174, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2297, N'2512-410th Avenue S.W.                            ', NULL, N'Calgary                                           ', N'Alberta                                           ', N'Canada                                            ', N'T2P 2G8             ', N'Office    ', 190, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2298, N'258 King Street East                              ', NULL, N'Toronto                                           ', N'Ontario                                           ', N'Canada                                            ', N'M4B 1V7             ', N'Office    ', 191, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2299, N'6th Floor Ferguson Block                          ', NULL, N'Toronto                                           ', N'Ontario                                           ', N'Canada                                            ', N'M4B 1V7             ', N'Home      ', 192, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2300, N'2545 King Street West                             ', NULL, N'Toronto                                           ', N'Ontario                                           ', N'Canada                                            ', N'M4B 1V7             ', N'Office    ', 208, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2301, N'2550 Middlefield Road                             ', NULL, N'Scarborough                                       ', N'Ontario                                           ', N'Canada                                            ', N'M1V 4M2             ', N'Office    ', 209, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2302, N'25 First Canadian Place                           ', NULL, N'Toronto                                           ', N'Ontario                                           ', N'Canada                                            ', N'M4B 1V5             ', N'Home      ', 210, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2303, N'65 Gamelin Street                                 ', NULL, N'Hull                                              ', N'Quebec                                            ', N'Canada                                            ', N'8Y                  ', N'Office    ', 226, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2304, N'2500 University Avenue                            ', NULL, N'Toronto                                           ', N'Ontario                                           ', N'Canada                                            ', N'M4B 1V5             ', N'Office    ', 227, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2305, N'955 Green Valley Crescent                         ', NULL, N'Ottawa                                            ', N'Ontario                                           ', N'Canada                                            ', N'K4B 1S1             ', N'Home      ', 228, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2306, N'2510 Crew Court                                   ', NULL, N'Montreal                                          ', N'Quebec                                            ', N'Canada                                            ', N'H1Y 2H8             ', N'Home      ', 244, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2307, N'9900-6400 Boul, Taschereau                        ', NULL, N'Brossard                                          ', N'Quebec                                            ', N'Canada                                            ', N'J4Z 1R4             ', N'Home      ', 245, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2308, N'600 Boul. Rene-levesque Ouest                     ', NULL, N'Montreal                                          ', N'Quebec                                            ', N'Canada                                            ', N'H1Y 2H7             ', N'Office    ', 246, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2309, N'9259 - 1110th Avenue Sw                           ', NULL, N'Calgary                                           ', N'Alberta                                           ', N'Canada                                            ', N'T2P 2G8             ', N'Office    ', 262, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2310, N'45259 Canada Way                                  ', NULL, N'Burnaby                                           ', N'British Columbia                                  ', N'Canada                                            ', N'V5G 4S4             ', N'Home      ', 263, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2311, N'9960 King Street E.                               ', NULL, N'Toronto                                           ', N'Ontario                                           ', N'Canada                                            ', N'M4B 1V5             ', N'Office    ', 264, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2312, N'9979 Bayview Drive                                ', NULL, N'Barrie                                            ', N'Ontario                                           ', N'Canada                                            ', N'L4N                 ', N'Office    ', 280, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2313, N'20225 Lansing Ave                                 ', NULL, N'Montreal                                          ', N'Quebec                                            ', N'Canada                                            ', N'H1Y 2H7             ', N'Office    ', 281, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2314, N'99954 Boul. Laurier, Local 060, Place             ', NULL, N'Sainte-Foy                                        ', N'Quebec                                            ', N'Canada                                            ', N'G1W                 ', N'Home      ', 282, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2315, N'6th Floor 5250 Main Street                        ', NULL, N'Winnipeg                                          ', N'Manitoba                                          ', N'Canada                                            ', N'R3                  ', N'Office    ', 298, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2316, N'Box 99354 300 Union Street                        ', NULL, N'Saint John                                        ', N'Brunswick                                         ', N'Canada                                            ', N'E2P 1E3             ', N'Office    ', 299, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2317, N'Suite 800 2530 Slater Street                      ', NULL, N'Ottawa                                            ', N'Ontario                                           ', N'Canada                                            ', N'K4B 1T7             ', N'Office    ', 300, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2318, N'Suite 500 995 W. 11th Avenue                      ', NULL, N'Mississauga                                       ', N'Ontario                                           ', N'Canada                                            ', N'L5A 1H6             ', N'Office    ', 316, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2319, N'#9900 2700 Production Way                         ', NULL, N'Burnaby                                           ', N'British Columbia                                  ', N'Canada                                            ', N'V5A 4X1             ', N'Home      ', 317, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2320, N'25537 Hillside Avenue                             ', NULL, N'Victoria                                          ', N'British Columbia                                  ', N'Canada                                            ', N'V8V                 ', N'Office    ', 318, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2321, N'Suite 2502 410 Albert Street                      ', NULL, N'Waterloo                                          ', N'Ontario                                           ', N'Canada                                            ', N'N2V                 ', N'Office    ', 334, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2322, N'5700 Explorer Drive                               ', NULL, N'Mississauga                                       ', N'Ontario                                           ', N'Canada                                            ', N'L4W 5J3             ', N'Home      ', 335, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2323, N'965 De La Gauchetiere West                        ', NULL, N'Montreal                                          ', N'Quebec                                            ', N'Canada                                            ', N'H1Y 2H8             ', N'Home      ', 336, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2324, N'No. 25400 10665 Jasper Avenue                     ', NULL, N'Edmonton                                          ', N'Alberta                                           ', N'Canada                                            ', N'T5                  ', N'Home      ', 352, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2325, N'P.O. Box 44000                                    ', NULL, N'Winnipeg                                          ', N'Manitoba                                          ', N'Canada                                            ', N'R3                  ', N'Home      ', 353, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2326, N'Suite 99320 255 - 510th Avenue S.W.               ', NULL, N'Calgary                                           ', N'Alberta                                           ', N'Canada                                            ', N'T2P 2G8             ', N'Office    ', 354, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2327, N'6400, 888 - 3rd Avenue                            ', NULL, N'Calgary                                           ', N'Alberta                                           ', N'Canada                                            ', N'T2P 2G8             ', N'Office    ', 370, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2328, N'255117 - 101 Avenue                               ', NULL, N'Surrey                                            ', N'British Columbia                                  ', N'Canada                                            ', N'V3T 4W3             ', N'Office    ', 371, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2329, N'975 Princess Street                               ', NULL, N'Kingston                                          ', N'Ontario                                           ', N'Canada                                            ', N'7L                  ', N'Home      ', 372, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2330, N'2900 - 25055 Dunning Street                       ', NULL, N'Vancouver                                         ', N'British Columbia                                  ', N'Canada                                            ', N'V7L 4J4             ', N'Office    ', 388, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2331, N'Suite 25800 3401 - 10810th Avenue                 ', NULL, N'Surrey                                            ', N'British Columbia                                  ', N'Canada                                            ', N'V3T 4W3             ', N'Office    ', 389, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2332, N'750 Philip Street                                 ', NULL, N'Waterloo                                          ', N'Ontario                                           ', N'Canada                                            ', N'N2V                 ', N'Home      ', 390, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2333, N'Bureau 9900 825, Avenue Querbes                   ', NULL, N'Outremont                                         ', N'Quebec                                            ', N'Canada                                            ', N'H1Y 2G5             ', N'Office    ', 406, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2334, N'700 Bureau Road                                   ', NULL, N'Montreal                                          ', N'Quebec                                            ', N'Canada                                            ', N'H1Y 2H7             ', N'Office    ', 407, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2335, N'253711 Mayfield Place, Unit 150                   ', NULL, N'Richmond                                          ', N'British Columbia                                  ', N'Canada                                            ', N'V6B 3P7             ', N'Home      ', 408, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2336, N'63 West Beaver Creek                              ', NULL, N'Richmond Hill                                     ', N'Ontario                                           ', N'Canada                                            ', N'L4E 3M5             ', N'Home      ', 424, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2337, N'9900 Ronson Drive                                 ', NULL, N'Etobicoke                                         ', N'Ontario                                           ', N'Canada                                            ', N'M9W 3P3             ', N'Office    ', 425, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2338, N'251 Indell Lane                                   ', NULL, N'Brampton                                          ', N'Ontario                                           ', N'Canada                                            ', N'L6W 2T7             ', N'Office    ', 426, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2339, N'2573 Dufferin Street                              ', NULL, N'Toronto                                           ', N'Ontario                                           ', N'Canada                                            ', N'M4B 1V5             ', N'Office    ', 442, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2340, N'995 Crescent                                      ', NULL, N'Richmond Hill                                     ', N'Ontario                                           ', N'Canada                                            ', N'L4E 3M5             ', N'Home      ', 443, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2341, N'2500-622 5th Ave Sw                               ', NULL, N'Calgary                                           ', N'Alberta                                           ', N'Canada                                            ', N'T2P 2G8             ', N'Office    ', 444, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2342, N'6700 Boul Taschereau                              ', NULL, N'Brossard                                          ', N'Quebec                                            ', N'Canada                                            ', N'J4Z 1C5             ', N'Home      ', 460, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2343, N'55 Standish Court                                 ', NULL, N'Mississauga                                       ', N'Ontario                                           ', N'Canada                                            ', N'L5B 3V4             ', N'Home      ', 461, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2344, N'43251 Viking Way, Unit 130                        ', NULL, N'Richmond                                          ', N'British Columbia                                  ', N'Canada                                            ', N'V6B 3P7             ', N'Office    ', 462, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2345, N'46990 Viking Way                                  ', NULL, N'Richmond                                          ', N'British Columbia                                  ', N'Canada                                            ', N'V6B 3P7             ', N'Office    ', 478, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2346, N'9693 Louis H Lafontaine                           ', NULL, N'Ville De''anjou                                    ', N'Quebec                                            ', N'Canada                                            ', N'J1G 2R3             ', N'Office    ', 479, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2347, N'69251 Creditview Road                             ', NULL, N'Mississauga                                       ', N'Ontario                                           ', N'Canada                                            ', N'L5B 3V4             ', N'Home      ', 480, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2348, N'251420a 170th Street                              ', NULL, N'Edmonton                                          ', N'Alberta                                           ', N'Canada                                            ', N'T5                  ', N'Office    ', 496, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2349, N'252851 Rowan Place                                ', NULL, N'Richmond                                          ', N'British Columbia                                  ', N'Canada                                            ', N'V6B 3P7             ', N'Home      ', 497, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2350, N'5990 Avebury Road                                 ', NULL, N'Mississauga                                       ', N'Ontario                                           ', N'Canada                                            ', N'L5B 3V4             ', N'Office    ', 498, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2351, N'254480 River Rd                                   ', NULL, N'Richmond                                          ', N'British Columbia                                  ', N'Canada                                            ', N'V6B 3P7             ', N'Office    ', 514, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2352, N'Suite #9902                                       ', NULL, N'North York                                        ', N'Ontario                                           ', N'Canada                                            ', N'M4C 4K6             ', N'Office    ', 515, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2353, N'5th Floor, 79 Place D''armes                       ', NULL, N'Kingston                                          ', N'Ontario                                           ', N'Canada                                            ', N'7L                  ', N'Home      ', 516, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2354, N'#500-75 O''Connor Street                           ', NULL, N'Ottawa                                            ', N'Ontario                                           ', N'Canada                                            ', N'K4B 1S2             ', N'Home      ', 526, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2355, N'4400 March Road                                   ', NULL, N'Kanata                                            ', N'Ontario                                           ', N'Canada                                            ', N'K2L 1H5             ', N'Home      ', 532, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2356, N'Depot 80                                          ', NULL, N'Sillery                                           ', N'Quebec                                            ', N'Canada                                            ', N'G1T                 ', N'Home      ', 533, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2357, N'250 Kingsbridge Garden Circle                     ', NULL, N'Mississauga                                       ', N'Ontario                                           ', N'Canada                                            ', N'L5B 3V4             ', N'Home      ', 534, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2358, N'No. 2000-25080 Beaver Hall Hill                   ', NULL, N'Quebec                                            ', N'Quebec                                            ', N'Canada                                            ', N'G1R                 ', N'Office    ', 550, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2359, N'No. 25800-130 King Street West                    ', NULL, N'Toronto                                           ', N'Ontario                                           ', N'Canada                                            ', N'M4B 1V5             ', N'Office    ', 551, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2360, N'25 Danger Street West                             ', N'Floor 7                                           ', N'Toronto                                           ', N'Ontario                                           ', N'Canada                                            ', N'M4B 1V5             ', N'Office    ', 552, CAST(0x00009A47010A035A AS DateTime))
GO
print 'Processed 100 total records'
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2361, N'6th Floor, 25st Canadian Place                    ', NULL, N'Toronto                                           ', N'Ontario                                           ', N'Canada                                            ', N'M4B 1V5             ', N'Home      ', 568, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2362, N'254 Colonnade Road                                ', NULL, N'Nepean                                            ', N'Ontario                                           ', N'Canada                                            ', N'K2J 2W5             ', N'Home      ', 569, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2364, N'5 place Ville-Marie                               ', NULL, N'Montreal                                          ', N'Quebec                                            ', N'Canada                                            ', N'H1Y 2H7             ', N'Home      ', 586, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2365, N'6030 Conroy Road                                  ', NULL, N'Ottawa                                            ', N'Ontario                                           ', N'Canada                                            ', N'K4B 1S3             ', N'Home      ', 587, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2366, N'30025 Wayburne Drive, Suite 275                   ', NULL, N'Burnaby                                           ', N'British Columbia                                  ', N'Canada                                            ', N'V5G 4W1             ', N'Office    ', 588, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2367, N'999 West Georgia St.                              ', NULL, N'Vancouver                                         ', N'Ontario                                           ', N'Canada                                            ', N'V5T 1Y9             ', N'Office    ', 613, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2368, N'250333 Southport Road, S.W.                       ', NULL, N'Calgary                                           ', N'Alberta                                           ', N'Canada                                            ', N'T2P 2G8             ', N'Home      ', 629, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2369, N'7000 Victoria Park Avenue                         ', NULL, N'Toronto                                           ', N'Ontario                                           ', N'Canada                                            ', N'M4B 1V4             ', N'Home      ', 630, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2370, N'63 Free St.                                       ', NULL, N'Toronto                                           ', N'Ontario                                           ', N'Canada                                            ', N'M4B 1V4             ', N'Office    ', 631, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2371, N'609 Evans Avenue                                  ', NULL, N'Toronto                                           ', N'Ontario                                           ', N'Canada                                            ', N'M4B 1V4             ', N'Office    ', 637, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2372, N'2520 Flanders Road                                ', NULL, N'Toronto                                           ', N'Ontario                                           ', N'Canada                                            ', N'M4B 1V4             ', N'Office    ', 653, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2373, N'32605 West 252 Mile Road, Suite 250               ', NULL, N'Aurora                                            ', N'Ontario                                           ', N'Canada                                            ', N'L4G 7N6             ', N'Office    ', 654, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2374, N'25730, boul. St-Régis                             ', NULL, N'Dorval                                            ', N'Quebec                                            ', N'Canada                                            ', N'H9P 1H1             ', N'Office    ', 655, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2375, N'253131 Lake Frasier Drive, Office No. 2           ', NULL, N'Calgary                                           ', N'Alberta                                           ', N'Canada                                            ', N'T2P 2G8             ', N'Home      ', 661, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2376, N'9984 Wellington Street                            ', NULL, N'Ottawa                                            ', N'Ontario                                           ', N'Canada                                            ', N'K4B 1S2             ', N'Office    ', 677, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2377, N'9950 Ferrand Drive, 9th Floor                     ', NULL, N'Toronto                                           ', N'Ontario                                           ', N'Canada                                            ', N'M4B 1V4             ', N'Office    ', 678, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2378, N'990th Floor 700 De La GauchetiSre Ou              ', NULL, N'Montreal                                          ', N'Quebec                                            ', N'Canada                                            ', N'H1Y 2H3             ', N'Home      ', 679, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2379, N'660 Saint-Jacques, Bureau 400                     ', NULL, N'Montreal                                          ', N'Quebec                                            ', N'Canada                                            ', N'H1Y 2H8             ', N'Home      ', 685, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2380, N'67255 - 8th Street N.E., Suite 350                ', NULL, N'Calgary                                           ', N'Alberta                                           ', N'Canada                                            ', N'T2P 2G8             ', N'Office    ', 701, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2381, N'12345 Sterling Avenue                             ', NULL, N'Irving                                            ', N'Texas                                             ', N'United States                                     ', N'75061               ', N'Office    ', 3, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2382, N'800 Interchange Blvd.                             ', N'Suite 2501                                        ', N'Austin                                            ', N'Texas                                             ', N'United States                                     ', N'78701               ', N'Home      ', 4, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2383, N'90025 Sterling St                                 ', NULL, N'Irving                                            ', N'Texas                                             ', N'United States                                     ', N'75061               ', N'Office    ', 21, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2384, N'2505 Gateway Drive                                ', NULL, N'North Sioux City                                  ', N'South Dakota                                      ', N'United States                                     ', N'57049               ', N'Office    ', 22, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2385, N'74400 France Avenue South                         ', NULL, N'Edina                                             ', N'Minnesota                                         ', N'United States                                     ', N'55436               ', N'Home      ', 39, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2386, N'509 Nafta Boulevard                               ', NULL, N'Laredo                                            ', N'Texas                                             ', N'United States                                     ', N'78040               ', N'Office    ', 40, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2387, N'25149 Howard Dr                                   ', NULL, N'West Chicago                                      ', N'Illinois                                          ', N'United States                                     ', N'60185               ', N'Office    ', 57, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2388, N'63 W Monroe                                       ', NULL, N'Chicago                                           ', N'Illinois                                          ', N'United States                                     ', N'60610               ', N'Office    ', 58, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2389, N'Corporate Office                                  ', NULL, N'Garland                                           ', N'Texas                                             ', N'United States                                     ', N'75040               ', N'Home      ', 75, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2390, N'25269 N. Wood Dale Rd                             ', NULL, N'Wood Dale                                         ', N'Illinois                                          ', N'United States                                     ', N'60191               ', N'Office    ', 76, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2391, N'Sapp Road West                                    ', NULL, N'Round Rock                                        ', N'Texas                                             ', N'United States                                     ', N'78664               ', N'Home      ', 93, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2392, N'52500 Liberty Way                                 ', NULL, N'Fort Worth                                        ', N'Texas                                             ', N'United States                                     ', N'76102               ', N'Office    ', 94, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2393, N'25550 Executive Dr                                ', NULL, N'Elgin                                             ', N'Illinois                                          ', N'United States                                     ', N'60120               ', N'Home      ', 111, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2394, N'P.O. Box 6256916                                  ', NULL, N'Dallas                                            ', N'Texas                                             ', N'United States                                     ', N'75201               ', N'Home      ', 112, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2395, N'25269 Wood Dale Rd.                               ', NULL, N'Wood Dale                                         ', N'Illinois                                          ', N'United States                                     ', N'60191               ', N'Office    ', 129, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2396, N'Po Box 8259024                                    ', NULL, N'Dallas                                            ', N'Texas                                             ', N'United States                                     ', N'75201               ', N'Home      ', 130, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2397, N'42500 W 76th St                                   ', NULL, N'Chicago                                           ', N'Illinois                                          ', N'United States                                     ', N'60610               ', N'Office    ', 147, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2398, N'4255 East Lies Road                               ', NULL, N'Carol Stream                                      ', N'Illinois                                          ', N'United States                                     ', N'60188               ', N'Office    ', 148, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2399, N'2500 North Stemmons Freeway                       ', NULL, N'Dallas                                            ', N'Texas                                             ', N'United States                                     ', N'75201               ', N'Office    ', 165, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2400, N'220 Mercy Drive                                   ', NULL, N'Garland                                           ', N'Texas                                             ', N'United States                                     ', N'75040               ', N'Home      ', 166, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2401, N'25 N State St                                     ', NULL, N'Chicago                                           ', N'Illinois                                          ', N'United States                                     ', N'60610               ', N'Office    ', 183, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2402, N'2509 W. Frankford                                 ', NULL, N'Carrollton                                        ', N'Texas                                             ', N'United States                                     ', N'75006               ', N'Office    ', 184, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2403, N'Po Box 8035996                                    ', NULL, N'Dallas                                            ', N'Texas                                             ', N'United States                                     ', N'75201               ', N'Home      ', 201, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2404, N'5700 Legacy Dr                                    ', NULL, N'Plano                                             ', N'Texas                                             ', N'United States                                     ', N'75074               ', N'Home      ', 202, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2405, N'625 W Jackson Blvd. Unit 2502                     ', NULL, N'Chicago                                           ', N'Illinois                                          ', N'United States                                     ', N'60610               ', N'Home      ', 219, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2406, N'250880 Baur Blvd                                  ', NULL, N'Saint Louis                                       ', N'Missouri                                          ', N'United States                                     ', N'63103               ', N'Office    ', 220, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2407, N'Noah Lane                                         ', NULL, N'Chicago                                           ', N'Illinois                                          ', N'United States                                     ', N'60610               ', N'Office    ', 237, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2408, N'6030 Robinson Road                                ', NULL, N'Jefferson City                                    ', N'Missouri                                          ', N'United States                                     ', N'65101               ', N'Office    ', 238, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2409, N'25500 Old Spanish Trail                           ', NULL, N'Houston                                           ', N'Texas                                             ', N'United States                                     ', N'77003               ', N'Home      ', 255, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2410, N'99828 Routh Street, Suite 825                     ', NULL, N'Dallas                                            ', N'Texas                                             ', N'United States                                     ', N'75201               ', N'Office    ', 256, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2411, N'One Dancing, Rr No. 25                            ', N'Box 8033                                          ', N'Round Rock                                        ', N'Texas                                             ', N'United States                                     ', N'78664               ', N'Home      ', 273, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2412, N'9995 West Central Entrance                        ', NULL, N'Duluth                                            ', N'Minnesota                                         ', N'United States                                     ', N'55802               ', N'Home      ', 274, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2413, N'48255 I-10 E. @ Eastpoint Blvd.                   ', NULL, N'Baytown                                           ', N'Texas                                             ', N'United States                                     ', N'77520               ', N'Home      ', 291, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2414, N'9903 Highway 6 South                              ', NULL, N'Houston                                           ', N'Texas                                             ', N'United States                                     ', N'77003               ', N'Office    ', 292, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2415, N'2345 North Freeway                                ', NULL, N'Houston                                           ', N'Texas                                             ', N'United States                                     ', N'77003               ', N'Office    ', 309, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2416, N'123 W. Lake Ave.                                  ', NULL, N'Peoria                                            ', N'Illinois                                          ', N'United States                                     ', N'61606               ', N'Office    ', 310, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2417, N'660 Lindbergh                                     ', NULL, N'Saint Louis                                       ', N'Missouri                                          ', N'United States                                     ', N'63103               ', N'Office    ', 327, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2418, N'72540 Blanco Rd.                                  ', NULL, N'San Antonio                                       ', N'Texas                                             ', N'United States                                     ', N'78204               ', N'Home      ', 328, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2419, N'99450 Highway 59 North                            ', NULL, N'Humble                                            ', N'Texas                                             ', N'United States                                     ', N'77338               ', N'Office    ', 345, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2420, N'455 256th St.                                     ', NULL, N'Moline                                            ', N'Illinois                                          ', N'United States                                     ', N'61265               ', N'Office    ', 346, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2421, N'70 N.W. Plaza                                     ', NULL, N'Saint Ann                                         ', N'Missouri                                          ', N'United States                                     ', N'63074               ', N'Home      ', 363, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2422, N'25095 W. Florissant                               ', NULL, N'Ferguson                                          ', N'Missouri                                          ', N'United States                                     ', N'63135               ', N'Office    ', 364, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2423, N'6996 South Lindbergh                              ', NULL, N'Saint Louis                                       ', N'Missouri                                          ', N'United States                                     ', N'63103               ', N'Office    ', 381, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2424, N'6425 Nw Loop 410                                  ', NULL, N'San Antonio                                       ', N'Texas                                             ', N'United States                                     ', N'78204               ', N'Home      ', 382, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2425, N'9500b E. Central Texas Expressway                 ', NULL, N'Killeen                                           ', N'Texas                                             ', N'United States                                     ', N'76541               ', N'Home      ', 399, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2426, N'1200 First Ave.                                   ', NULL, N'Joliet                                            ', N'Illinois                                          ', N'United States                                     ', N'60433               ', N'Office    ', 400, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2427, N'7760 N. Pan Am Expwy                              ', NULL, N'San Antonio                                       ', N'Texas                                             ', N'United States                                     ', N'78204               ', N'Home      ', 417, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2428, N'99433 S. Greenbay Rd.                             ', NULL, N'Racine                                            ', N'Wisconsin                                         ', N'United States                                     ', N'53182               ', N'Office    ', 418, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2429, N'25220 Airline Road                                ', NULL, N'Corpus Christi                                    ', N'Texas                                             ', N'United States                                     ', N'78404               ', N'Office    ', 435, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2430, N'25306 Harvey Rd.                                  ', NULL, N'College Station                                   ', N'Texas                                             ', N'United States                                     ', N'77840               ', N'Office    ', 436, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2431, N'3900 S. 997th St.                                 ', NULL, N'Milwaukee                                         ', N'Wisconsin                                         ', N'United States                                     ', N'53202               ', N'Office    ', 453, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2432, N'44025 W. Empire                                   ', NULL, N'Denby                                             ', N'South Dakota                                      ', N'United States                                     ', N'57716               ', N'Home      ', 454, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2433, N'23025 S.W. Military Rd.                           ', NULL, N'San Antonio                                       ', N'Texas                                             ', N'United States                                     ', N'78204               ', N'Office    ', 471, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2434, N'Ring Plaza                                        ', NULL, N'Norridge                                          ', N'Illinois                                          ', N'United States                                     ', N'60706               ', N'Home      ', 472, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2435, N'Lakeline Mall                                     ', NULL, N'Cedar Park                                        ', N'Texas                                             ', N'United States                                     ', N'78613               ', N'Office    ', 489, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2436, N'Town East Center                                  ', NULL, N'Mesquite                                          ', N'Texas                                             ', N'United States                                     ', N'75149               ', N'Home      ', 490, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2437, N'Fountains On The Lake                             ', NULL, N'Stafford                                          ', N'Texas                                             ', N'United States                                     ', N'77477               ', N'Office    ', 507, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2438, N'Southwest Outlet                                  ', NULL, N'Hillsboro                                         ', N'Texas                                             ', N'United States                                     ', N'76645               ', N'Office    ', 508, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2439, N'Johnson Creek                                     ', NULL, N'Johnson Creek                                     ', N'Wisconsin                                         ', N'United States                                     ', N'53038               ', N'Home      ', 543, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2440, N'Blue Ridge Mall                                   ', NULL, N'Kansas City                                       ', N'Missouri                                          ', N'United States                                     ', N'64106               ', N'Office    ', 544, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2441, N'First Colony Mall                                 ', NULL, N'Sugar Land                                        ', N'Texas                                             ', N'United States                                     ', N'77478               ', N'Home      ', 561, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2442, N'Horizon Outlet                                    ', NULL, N'Woodbury                                          ', N'Minnesota                                         ', N'United States                                     ', N'55125               ', N'Office    ', 562, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2443, N'Tanger Factory                                    ', NULL, N'Branch                                            ', N'Minnesota                                         ', N'United States                                     ', N'55056               ', N'Home      ', 579, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2444, N'Management Mall                                   ', NULL, N'San Antonio                                       ', N'Texas                                             ', N'United States                                     ', N'78204               ', N'Office    ', 580, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2445, N'Ohms Road                                         ', NULL, N'Houston                                           ', N'Texas                                             ', N'United States                                     ', N'77003               ', N'Office    ', 597, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2446, N'Factory Merchants                                 ', NULL, N'Branson                                           ', N'Missouri                                          ', N'United States                                     ', N'65616               ', N'Home      ', 598, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2447, N'Cedar Creek Stores                                ', NULL, N'Mosinee                                           ', N'Wisconsin                                         ', N'United States                                     ', N'54455               ', N'Home      ', 606, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2448, N'Lone Star Factory                                 ', NULL, N'La Marque                                         ', N'Texas                                             ', N'United States                                     ', N'77568               ', N'Home      ', 607, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2449, N'Sports Stores @ Tuscola                           ', NULL, N'Tuscola                                           ', N'Illinois                                          ', N'United States                                     ', N'61953               ', N'Home      ', 622, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2450, N'City Center                                       ', NULL, N'Minneapolis                                       ', N'Minnesota                                         ', N'United States                                     ', N'55402               ', N'Home      ', 623, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2451, N'St. Louis Marketplace                             ', NULL, N'Saint Louis                                       ', N'Missouri                                          ', N'United States                                     ', N'63103               ', N'Home      ', 646, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2452, N'Lincoln Square                                    ', NULL, N'Arlington                                         ', N'Texas                                             ', N'United States                                     ', N'76010               ', N'Home      ', 647, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2453, N'Kansas City Factory Outlet                        ', NULL, N'Odessa                                            ', N'Missouri                                          ', N'United States                                     ', N'64076               ', N'Home      ', 670, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2454, N'Fiesta Trail Shopping Center                      ', NULL, N'San Antonio                                       ', N'Texas                                             ', N'United States                                     ', N'78204               ', N'Home      ', 671, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2455, N'Medford Outlet Center                             ', NULL, N'Medford                                           ', N'Minnesota                                         ', N'United States                                     ', N'55049               ', N'Home      ', 694, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2456, N'Ward Parkway Center                               ', NULL, N'Kansas City                                       ', N'Missouri                                          ', N'United States                                     ', N'64106               ', N'Home      ', 695, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2457, N'93-2501, Blackfriars Road,                        ', NULL, N'London                                            ', N'England                                           ', N'UK                                                ', N'SE1 8HL             ', N'Home      ', 16, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2458, N'Science Park South, Birchwood                     ', N'Stanford House                                    ', N'Warrington                                        ', N'England                                           ', N'UK                                                ', N'WA3 7BH             ', N'Home      ', 34, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2459, N'Phoenix Way, Cirencester                          ', NULL, N'Gloucestershire                                   ', N'England                                           ', N'UK                                                ', N'GL7 1RY             ', N'Home      ', 52, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2460, N'255 Irving Street                                 ', NULL, N'London                                            ', N'England                                           ', N'UK                                                ', N'C2H 7AU             ', N'Office    ', 70, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2461, N'Garamonde Drive, Wymbush                          ', N'PO Box 4023                                       ', N'Milton Keynes                                     ', N'England                                           ', N'UK                                                ', N'MK8 8ZD             ', N'Office    ', 88, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2462, N'251 The Metro Center                              ', NULL, N'Wokingham                                         ', N'England                                           ', N'UK                                                ', N'RG41 1QW            ', N'Home      ', 106, CAST(0x00009A47010A035A AS DateTime))
GO
print 'Processed 200 total records'
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2463, N'Bradford                                          ', NULL, N'W. York                                           ', N'England                                           ', N'UK                                                ', N'BD1 4SJ             ', N'Office    ', 124, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2464, N'Galashiels                                        ', NULL, N'Liverpool                                         ', N'England                                           ', N'UK                                                ', N'L4 4HB              ', N'Office    ', 142, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2465, N'Banbury                                           ', NULL, N'Oxon                                              ', N'England                                           ', N'UK                                                ', N'OX16 8RS            ', N'Office    ', 160, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2466, N'Bradford                                          ', N'Raven House, Kingsgate                            ', N'W. York                                           ', N'England                                           ', N'UK                                                ', N'BD1 4SJ             ', N'Office    ', 178, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2467, N'Garamonde Drive, Wymbush                          ', N'P.O. Box 803                                      ', N'Milton Keynes                                     ', N'England                                           ', N'UK                                                ', N'MK8 8ZD             ', N'Office    ', 196, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2468, N'Butterfield Hse, 7-251 Chapel St                  ', NULL, N'Lancaster                                         ', N'England                                           ', N'UK                                                ', N'LA1 1LN             ', N'Home      ', 214, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2469, N'Wade Road                                         ', NULL, N'Basingstoke Hants                                 ', N'England                                           ', N'UK                                                ', N'RG24 8PL            ', N'Office    ', 232, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2470, N'586 Fulham Road,                                  ', NULL, N'London                                            ', N'England                                           ', N'UK                                                ', N'SW6 SBY             ', N'Office    ', 250, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2471, N'Knaves Beech Ind.                                 ', NULL, N'High Wycombe                                      ', N'England                                           ', N'UK                                                ', N'HP10 9QY            ', N'Home      ', 268, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2472, N'Elmhurst Road, Goring                             ', NULL, N'Reading                                           ', N'England                                           ', N'UK                                                ', N'RG7 5H7             ', N'Office    ', 286, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2473, N'New Millhouse, 2583 Milton Park                   ', NULL, N'Abingdon                                          ', N'England                                           ', N'UK                                                ', N'OX14 4SE            ', N'Home      ', 304, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2474, N'Wymbush                                           ', NULL, N'Milton Keynes                                     ', N'England                                           ', N'UK                                                ', N'MK8 8DF             ', N'Office    ', 322, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2475, N'Burgess Hill                                      ', N'Edward Way                                        ', N'West Sussex                                       ', N'England                                           ', N'UK                                                ', N'RH15 9UD            ', N'Office    ', 340, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2476, N'308-3250 Casting Road                             ', NULL, N'York                                              ', N'England                                           ', N'UK                                                ', N'Y024 1GF            ', N'Home      ', 358, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2477, N'Wharfdale Road                                    ', NULL, N'Berkshire                                         ', N'England                                           ', N'UK                                                ', N'RG11 5TP            ', N'Office    ', 376, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2478, N'7 Pioneer Business Park                           ', NULL, N'York                                              ', N'England                                           ', N'UK                                                ', N'Y03 4TN             ', N'Home      ', 394, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2479, N'Unit 99a Battery Retail Pk                        ', NULL, N'Birmingham                                        ', N'England                                           ', N'UK                                                ', N'B29 6SL             ', N'Home      ', 412, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2480, N'Ellesfield Ave                                    ', NULL, N'Bracknell                                         ', N'England                                           ', N'UK                                                ', N'RG12 8TB            ', N'Office    ', 430, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2481, N'Warrington Ldc Unit 25/2                          ', NULL, N'Woolston                                          ', N'England                                           ', N'UK                                                ', N'WA1 4SY             ', N'Home      ', 448, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2482, N'6 The Farm, Liberty Road                          ', NULL, N'Maidenhead                                        ', N'England                                           ', N'UK                                                ', N'SL67RJ              ', N'Office    ', 466, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2483, N'725a The Arches                                   ', NULL, N'Berks                                             ', N'England                                           ', N'UK                                                ', N'SL4 1RH             ', N'Home      ', 484, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2484, N'Paramount House                                   ', NULL, N'London                                            ', N'England                                           ', N'UK                                                ', N'W1N 9FA             ', N'Home      ', 502, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2485, N'2524 Barlby Road                                  ', NULL, N'London                                            ', N'England                                           ', N'UK                                                ', N'W10 6BL             ', N'Office    ', 520, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2486, N'99-3 Forest Works                                 ', NULL, N'London                                            ', N'England                                           ', N'UK                                                ', N'E17 6JF             ', N'Office    ', 538, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2487, N'46-44 Albemarle Street                            ', NULL, N'London                                            ', N'England                                           ', N'UK                                                ', N'W1X3SE              ', N'Office    ', 556, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2488, N'399 Clearing Green                                ', NULL, N'London                                            ', N'England                                           ', N'UK                                                ', N'EC1R 0DU            ', N'Home      ', 574, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2489, N'997b Tradescant Road                              ', NULL, N'London                                            ', N'England                                           ', N'UK                                                ', N'SW8 1XD             ', N'Home      ', 592, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2490, N'2574 Milton Park                                  ', NULL, N'Oxford                                            ', N'England                                           ', N'UK                                                ', N'OX14 4SE            ', N'Home      ', 617, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2491, N'Internet House, 3399 Science Park                 ', NULL, N'Cambridge                                         ', N'England                                           ', N'UK                                                ', N'CB4 4BZ             ', N'Home      ', 635, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2492, N'7 Garden House Cloisters, 8 Batters               ', NULL, N'London                                            ', N'England                                           ', N'UK                                                ', N'SW8 4BG             ', N'Home      ', 641, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2493, N'25 Hartfield Road, Wimbledon                      ', NULL, N'London                                            ', N'England                                           ', N'UK                                                ', N'SW19 3RU            ', N'Office    ', 659, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2494, N'99 Dean Street, Soho                              ', NULL, N'London                                            ', N'England                                           ', N'UK                                                ', N'W1V 5RN             ', N'Office    ', 665, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2495, N'Park House-4th Floor, 2516 Park St.               ', NULL, N'London                                            ', N'England                                           ', N'UK                                                ', N'W1Y 3RA             ', N'Home      ', 683, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2496, N'67 Vincent Square, Victoria                       ', NULL, N'London                                            ', N'England                                           ', N'UK                                                ', N'SW1P 2NU            ', N'Home      ', 689, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2497, N'855 East Main Avenue                              ', NULL, N'Zeeland                                           ', N'Michigan                                          ', N'United States                                     ', N'49464               ', N'Office    ', 18, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2498, N'9920 North Telegraph Rd.                          ', NULL, N'Pontiac                                           ', N'Michigan                                          ', N'United States                                     ', N'48342               ', N'Home      ', 180, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2499, N'46460 West Oaks Drive                             ', NULL, N'Novi                                              ', N'Michigan                                          ', N'United States                                     ', N'48375               ', N'Office    ', 197, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2500, N'997000 Telegraph Rd.                              ', NULL, N'Southfield                                        ', N'Michigan                                          ', N'United States                                     ', N'48034               ', N'Home      ', 198, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2501, N'399700 John R. Rd.                                ', NULL, N'Madison Heights                                   ', N'Michigan                                          ', N'United States                                     ', N'48071               ', N'Office    ', 287, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2502, N'6789 Warren Road                                  ', NULL, N'Westland                                          ', N'Michigan                                          ', N'United States                                     ', N'48185               ', N'Office    ', 288, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2503, N'2533 Eureka Rd.                                   ', NULL, N'Southgate                                         ', N'Michigan                                          ', N'United States                                     ', N'48195               ', N'Office    ', 306, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2504, N'250000 Eight Mile Road                            ', NULL, N'Detroit                                           ', N'Michigan                                          ', N'United States                                     ', N'48226               ', N'Office    ', 323, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2505, N'998 Forest Road                                   ', NULL, N'Saginaw                                           ', N'Michigan                                          ', N'United States                                     ', N'48601               ', N'Office    ', 360, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2506, N'99800 Tittabawasee Rd.                            ', NULL, N'Saginaw                                           ', N'Michigan                                          ', N'United States                                     ', N'48601               ', N'Office    ', 377, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2507, N'678 Eastman Ave.                                  ', NULL, N'Midland                                           ', N'Michigan                                          ', N'United States                                     ', N'48640               ', N'Office    ', 395, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2508, N'Horizon Outlet Center                             ', NULL, N'Holland                                           ', N'Michigan                                          ', N'United States                                     ', N'49423               ', N'Home      ', 431, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2509, N'Horizon Outlet Center                             ', NULL, N'Monroe                                            ', N'Michigan                                          ', N'United States                                     ', N'98272               ', N'Home      ', 468, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2510, N'Redford Plaza                                     ', NULL, N'Redford                                           ', N'Michigan                                          ', N'United States                                     ', N'48239               ', N'Home      ', 504, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2511, N'Port Huron                                        ', NULL, N'Port Huron                                        ', N'Michigan                                          ', N'United States                                     ', N'48060               ', N'Home      ', 643, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2512, N'Kensington Valley Shops                           ', NULL, N'Howell                                            ', N'Michigan                                          ', N'United States                                     ', N'48843               ', N'Home      ', 660, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2513, N'1 Rue Cardinale', NULL, N'Montreal', N'Quebec', NULL, NULL, N'Office    ', 1, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2514, N'3207 S Grady Way                                  ', NULL, N'Renton                                            ', N'Washington                                        ', N'United States                                     ', N'98055               ', N'Office    ', 2, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2515, N'99300 223rd Southeast                             ', NULL, N'Bothell                                           ', N'Washington                                        ', N'United States                                     ', N'98011               ', N'Office    ', 19, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2516, N'259826 Russell Rd. South                          ', NULL, N'Kent                                              ', N'Washington                                        ', N'United States                                     ', N'98031               ', N'Office    ', 20, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2517, N'35525-9th Street Sw                               ', NULL, N'Puyallup                                          ', N'Washington                                        ', N'United States                                     ', N'98371               ', N'Office    ', 37, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2518, N'640 South 994th St. W.                            ', NULL, N'Billings                                          ', N'Montana                                           ', N'United States                                     ', N'59101               ', N'Office    ', 38, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2519, N'25300 Biddle Road                                 ', NULL, N'Medford                                           ', N'Oregon                                            ', N'United States                                     ', N'97504               ', N'Office    ', 55, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2520, N'Gateway                                           ', NULL, N'Portland                                          ', N'Oregon                                            ', N'United States                                     ', N'97205               ', N'Office    ', 56, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2521, N'Great Northwestern                                ', NULL, N'North Bend                                        ', N'Washington                                        ', N'United States                                     ', N'98045               ', N'Office    ', 73, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2522, N'Washington Square                                 ', NULL, N'Portland                                          ', N'Oregon                                            ', N'United States                                     ', N'97205               ', N'Office    ', 74, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2523, N'258101 Nw Evergreen Parkway                       ', NULL, N'Beaverton                                         ', N'Oregon                                            ', N'United States                                     ', N'97005               ', N'Home      ', 91, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2524, N'253950 N.E. 178th Place                           ', NULL, N'Woodinville                                       ', N'Washington                                        ', N'United States                                     ', N'98072               ', N'Home      ', 92, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2525, N'755 Nw Grandstand                                 ', NULL, N'Issaquah                                          ', N'Washington                                        ', N'United States                                     ', N'98027               ', N'Office    ', 109, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2526, N'22571 South 2500 East                             ', NULL, N'Idaho Falls                                       ', N'Idaho                                             ', N'United States                                     ', N'83402               ', N'Office    ', 110, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2527, N'257700 Ne 76th Street                             ', NULL, N'Redmond                                           ', N'Washington                                        ', N'United States                                     ', N'98052               ', N'Office    ', 127, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2528, N'25102 Springwater                                 ', NULL, N'Wenatchee                                         ', N'Washington                                        ', N'United States                                     ', N'98801               ', N'Home      ', 128, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2529, N'Bldg. 9n/99298                                    ', NULL, N'Redmond                                           ', N'Washington                                        ', N'United States                                     ', N'98052               ', N'Office    ', 145, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2530, N'4251 First Avenue                                 ', NULL, N'Seattle                                           ', N'Washington                                        ', N'United States                                     ', N'98104               ', N'Office    ', 146, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2531, N'558 S 6th St                                      ', NULL, N'Klamath Falls                                     ', N'Oregon                                            ', N'United States                                     ', N'97601               ', N'Office    ', 163, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2532, N'994 Sw Cherry Park Rd                             ', NULL, N'Troutdale                                         ', N'Oregon                                            ', N'United States                                     ', N'97060               ', N'Home      ', 164, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2533, N'25718 Se Sunnyside Rd                             ', NULL, N'Clackamas                                         ', N'Oregon                                            ', N'United States                                     ', N'97015-6403          ', N'Office    ', 181, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2534, N'567 Sw Mcloughlin Blvd                            ', NULL, N'Milwaukie                                         ', N'Oregon                                            ', N'United States                                     ', N'97222               ', N'Home      ', 182, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2535, N'490 Ne 4th St                                     ', NULL, N'Renton                                            ', N'Washington                                        ', N'United States                                     ', N'98055               ', N'Office    ', 199, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2536, N'15 East Main                                      ', NULL, N'Port Orchard                                      ', N'Washington                                        ', N'United States                                     ', N'98366               ', N'Office    ', 200, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2537, N'3025 E Waterway Blvd                              ', NULL, N'Shelton                                           ', N'Washington                                        ', N'United States                                     ', N'98584               ', N'Office    ', 217, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2538, N'7990 Ocean Beach Hwy.                             ', NULL, N'Longview                                          ', N'Washington                                        ', N'United States                                     ', N'98632               ', N'Home      ', 218, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2539, N'2345 West Spencer Road                            ', NULL, N'Lynnwood                                          ', N'Washington                                        ', N'United States                                     ', N'98036               ', N'Home      ', 235, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2540, N'1050 Oak Street                                   ', NULL, N'Seattle                                           ', N'Washington                                        ', N'United States                                     ', N'98104               ', N'Office    ', 236, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2541, N'4927 S Meridian Ave Ste D                         ', NULL, N'Puyallup                                          ', N'Washington                                        ', N'United States                                     ', N'98371               ', N'Office    ', 253, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2542, N'25915 140th Ave Ne                                ', NULL, N'Bellevue                                          ', N'Washington                                        ', N'United States                                     ', N'98004               ', N'Office    ', 254, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2543, N'3307 Evergreen Blvd                               ', N'Ste 1071                                          ', N'Washougal                                         ', N'Washington                                        ', N'United States                                     ', N'98671               ', N'Office    ', 271, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2544, N'2507 Pacific Ave S                                ', NULL, N'Tacoma                                            ', N'Washington                                        ', N'United States                                     ', N'98403               ', N'Home      ', 272, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2545, N'67 Rainer Ave S                                   ', NULL, N'Renton                                            ', N'Washington                                        ', N'United States                                     ', N'98055               ', N'Office    ', 289, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2546, N'750 Lakeway Dr                                    ', NULL, N'Bellingham                                        ', N'Washington                                        ', N'United States                                     ', N'98225               ', N'Office    ', 290, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2547, N'2528 Meridian E                                   ', NULL, N'Puyallup                                          ', N'Washington                                        ', N'United States                                     ', N'98371               ', N'Office    ', 307, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2548, N'48995 Evergreen Wy.                               ', NULL, N'Everett                                           ', N'Washington                                        ', N'United States                                     ', N'98201               ', N'Office    ', 308, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2549, N'25111 228th St Sw                                 ', NULL, N'Bothell                                           ', N'Washington                                        ', N'United States                                     ', N'98011               ', N'Office    ', 325, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2550, N'2583 Se 272nd St                                  ', NULL, N'Kent                                              ', N'Washington                                        ', N'United States                                     ', N'98031               ', N'Office    ', 326, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2551, N'409 S. Main Ste. 25                               ', NULL, N'Ellensburg                                        ', N'Washington                                        ', N'United States                                     ', N'98926               ', N'Office    ', 343, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2552, N'2502 Evergreen Ste E                              ', NULL, N'Everett                                           ', N'Washington                                        ', N'United States                                     ', N'98201               ', N'Office    ', 344, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2553, N'755 W Washington Ave Ste D                        ', NULL, N'Sequim                                            ', N'Washington                                        ', N'United States                                     ', N'98382               ', N'Office    ', 361, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2554, N'44606 N Division St                               ', NULL, N'Spokane                                           ', N'Washington                                        ', N'United States                                     ', N'99202               ', N'Office    ', 362, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2555, N'2550 Ne Sandy Blvd                                ', NULL, N'Portland                                          ', N'Oregon                                            ', N'United States                                     ', N'97205               ', N'Office    ', 379, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2556, N'2540 Dell Range Blvd                              ', NULL, N'Cheyenne                                          ', N'Wyoming                                           ', N'United States                                     ', N'82001               ', N'Office    ', 380, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2557, N'765 Delridge Way Sw                               ', NULL, N'Seattle                                           ', N'Washington                                        ', N'United States                                     ', N'98104               ', N'Office    ', 397, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2558, N'4781 Highway 95                                   ', NULL, N'Sandpoint                                         ', N'Idaho                                             ', N'United States                                     ', N'83864               ', N'Office    ', 398, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2559, N'4210 E Sprague Ave                                ', NULL, N'Spokane                                           ', N'Washington                                        ', N'United States                                     ', N'99202               ', N'Home      ', 415, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2560, N'Valley Mall                                       ', NULL, N'Union Gap                                         ', N'Washington                                        ', N'United States                                     ', N'98903               ', N'Office    ', 416, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2561, N'S Sound Ctr Suite 25300                           ', NULL, N'Lacey                                             ', N'Washington                                        ', N'United States                                     ', N'98503               ', N'Home      ', 433, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2562, N'Southgate Mall                                    ', NULL, N'Missoula                                          ', N'Montana                                           ', N'United States                                     ', N'59801               ', N'Office    ', 434, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2563, N'Medford                                           ', NULL, N'Medford                                           ', N'Oregon                                            ', N'United States                                     ', N'97504               ', N'Office    ', 451, CAST(0x00009A47010A035A AS DateTime))
GO
print 'Processed 300 total records'
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2564, N'Heritage Mall                                     ', NULL, N'Albany                                            ', N'Oregon                                            ', N'United States                                     ', N'97321               ', N'Office    ', 452, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2565, N'Lewis County Mall                                 ', NULL, N'Chehalis                                          ', N'Washington                                        ', N'United States                                     ', N'98532               ', N'Home      ', 469, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2566, N'755 Columbia Ctr Blvd                             ', NULL, N'Kennewick                                         ', N'Washington                                        ', N'United States                                     ', N'99337               ', N'Home      ', 470, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2567, N'Lancaster Mall                                    ', NULL, N'Salem                                             ', N'Oregon                                            ', N'United States                                     ', N'97301               ', N'Home      ', 487, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2568, N'Lewiston Mall                                     ', NULL, N'Lewiston                                          ', N'Idaho                                             ', N'United States                                     ', N'83501               ', N'Office    ', 488, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2569, N'Three Rivers Mall                                 ', NULL, N'Kelso                                             ', N'Washington                                        ', N'United States                                     ', N'98626               ', N'Office    ', 505, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2570, N'Eastridge Mall                                    ', NULL, N'Casper                                            ', N'Wyoming                                           ', N'United States                                     ', N'82601               ', N'Office    ', 506, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2571, N'Holiday Village Mall                              ', NULL, N'Great Falls                                       ', N'Montana                                           ', N'United States                                     ', N'59401               ', N'Office    ', 541, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2572, N'2526a Tri-Lake Blvd Ne                            ', NULL, N'Kirkland                                          ', N'Washington                                        ', N'United States                                     ', N'98033               ', N'Office    ', 542, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2573, N'Frontier Mall                                     ', NULL, N'Cheyenne                                          ', N'Wyoming                                           ', N'United States                                     ', N'82001               ', N'Office    ', 559, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2574, N'White Mountain Mall                               ', NULL, N'Rock Springs                                      ', N'Wyoming                                           ', N'United States                                     ', N'82901               ', N'Office    ', 560, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2575, N'3390 South 23rd St.                               ', NULL, N'Tacoma                                            ', N'Washington                                        ', N'United States                                     ', N'98403               ', N'Office    ', 577, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2576, N'3250 South Meridian                               ', NULL, N'Puyallup                                          ', N'Washington                                        ', N'United States                                     ', N'98371               ', N'Office    ', 578, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2577, N'2255 254th Avenue Se                              ', NULL, N'Albany                                            ', N'Oregon                                            ', N'United States                                     ', N'97321               ', N'Office    ', 595, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2578, N'705 SE Mall Parkway                               ', NULL, N'Everett                                           ', N'Washington                                        ', N'United States                                     ', N'98201               ', N'Home      ', 596, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2579, N'700 Se Sunnyside Road                             ', NULL, N'Clackamas                                         ', N'Oregon                                            ', N'United States                                     ', N'97015               ', N'Office    ', 604, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2580, N'North 93270 Newport Highway                       ', NULL, N'Spokane                                           ', N'Washington                                        ', N'United States                                     ', N'99202               ', N'Home      ', 605, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2581, N'25708 Dell Range Blvd.                            ', NULL, N'Cheyenne                                          ', N'Wyoming                                           ', N'United States                                     ', N'82001               ', N'Office    ', 620, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2582, N'No. 60 Bellis Fair Parkway                        ', NULL, N'Bellingham                                        ', N'Washington                                        ', N'United States                                     ', N'98225               ', N'Home      ', 621, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2583, N'950 Gateway Street                                ', NULL, N'Springfield                                       ', N'Oregon                                            ', N'United States                                     ', N'97477               ', N'Office    ', 644, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2584, N'250775 SW Hillsdale Hwy                           ', NULL, N'Beaverton                                         ', N'Oregon                                            ', N'United States                                     ', N'97005               ', N'Office    ', 645, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2585, N'9905 Three Rivers Drive                           ', NULL, N'Kelso                                             ', N'Washington                                        ', N'United States                                     ', N'98626               ', N'Office    ', 668, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2586, N'225 South 314th Street                            ', NULL, N'Federal Way                                       ', N'Washington                                        ', N'United States                                     ', N'98003               ', N'Office    ', 669, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2587, N'7009 Sw Hall Blvd.                                ', NULL, N'Tigard                                            ', N'Oregon                                            ', N'United States                                     ', N'97223               ', N'Office    ', 692, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2588, N'99295 S.e. Tualatin Valley_hwy.                   ', NULL, N'Hillsboro                                         ', N'Oregon                                            ', N'United States                                     ', N'97123               ', N'Office    ', 693, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2589, N'482505 Warm Springs Blvd.                         ', NULL, N'Fremont                                           ', N'California                                        ', N'United States                                     ', N'94536               ', N'Home      ', 5, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2590, N'39933 Mission Oaks Blvd                           ', NULL, N'Camarillo                                         ', N'California                                        ', N'United States                                     ', N'93010               ', N'Office    ', 6, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2591, N'5420 West 22500 South                             ', NULL, N'Salt Lake City                                    ', N'Utah                                              ', N'United States                                     ', N'84101               ', N'Office    ', 7, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2592, N'60025 Bollinger Canyon Road                       ', NULL, N'San Ramon                                         ', N'California                                        ', N'United States                                     ', N'94583               ', N'Home      ', 23, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2593, N'9992 Whipple Rd                                   ', NULL, N'Union City                                        ', N'California                                        ', N'United States                                     ', N'94587               ', N'Home      ', 24, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2594, N'Corporate Office                                  ', NULL, N'El Segundo                                        ', N'California                                        ', N'United States                                     ', N'90245               ', N'Home      ', 25, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2595, N'25001 Montague Expressway                         ', NULL, N'Milpitas                                          ', N'California                                        ', N'United States                                     ', N'95035               ', N'Home      ', 41, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2596, N'4460 Newport Center Drive                         ', NULL, N'Newport Beach                                     ', N'California                                        ', N'United States                                     ', N'92625               ', N'Home      ', 42, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2597, N'2575 West 2700 South                              ', NULL, N'Salt Lake City                                    ', N'Utah                                              ', N'United States                                     ', N'84101               ', N'Office    ', 43, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2598, N'70259 West Sunnyview Ave                          ', NULL, N'Visalia                                           ', N'California                                        ', N'United States                                     ', N'93291               ', N'Office    ', 59, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2599, N'60750 San Clemente                                ', NULL, N'Hayward                                           ', N'California                                        ', N'United States                                     ', N'94541               ', N'Home      ', 60, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2600, N'Receiving                                         ', NULL, N'Fullerton                                         ', N'California                                        ', N'United States                                     ', N'92831               ', N'Home      ', 61, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2601, N'22555 Paseo De Las Americas                       ', NULL, N'San Diego                                         ', N'California                                        ', N'United States                                     ', N'92102               ', N'Home      ', 77, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2602, N'Incom Sports Center                               ', NULL, N'Ontario                                           ', N'California                                        ', N'United States                                     ', N'91764               ', N'Home      ', 78, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2603, N'C/O Starpak, Inc.                                 ', NULL, N'Greeley                                           ', N'Colorado                                          ', N'United States                                     ', N'80631               ', N'Home      ', 79, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2604, N'5967 W Las Positas Blvd                           ', NULL, N'Pleasanton                                        ', N'California                                        ', N'United States                                     ', N'94566               ', N'Home      ', 95, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2605, N'25600 E St Andrews Pl                             ', NULL, N'Santa Ana                                         ', N'California                                        ', N'United States                                     ', N'92701               ', N'Home      ', 96, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2606, N'6756 Mowry                                        ', NULL, N'Newark                                            ', N'California                                        ', N'United States                                     ', N'94560               ', N'Office    ', 97, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2607, N'25472 Marlay Ave                                  ', NULL, N'Fontana                                           ', N'California                                        ', N'United States                                     ', N'92335               ', N'Office    ', 113, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2608, N'77 Beale Street                                   ', N'Room 99767c                                       ', N'San Francisco                                     ', N'California                                        ', N'United States                                     ', N'94109               ', N'Office    ', 114, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2609, N'910 Main Street.                                  ', NULL, N'Sparks                                            ', N'Nevada                                            ', N'United States                                     ', N'89431               ', N'Office    ', 115, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2610, N'2500 N Serene Blvd                                ', N'19th Floor                                        ', N'El Segundo                                        ', N'California                                        ', N'United States                                     ', N'90245               ', N'Office    ', 131, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2611, N'5650 West 88th Ave.                               ', NULL, N'Westminster                                       ', N'Colorado                                          ', N'United States                                     ', N'80030               ', N'Office    ', 132, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2612, N'9700 Sisk Road                                    ', NULL, N'Modesto                                           ', N'California                                        ', N'United States                                     ', N'95354               ', N'Office    ', 133, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2613, N'789 West Alameda                                  ', NULL, N'Westminster                                       ', N'Colorado                                          ', N'United States                                     ', N'80030               ', N'Office    ', 149, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2614, N'54254 Pacific Ave.                                ', NULL, N'Stockton                                          ', N'California                                        ', N'United States                                     ', N'95202               ', N'Home      ', 150, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2615, N'25136 Jefferson Blvd.                             ', NULL, N'Culver City                                       ', N'California                                        ', N'United States                                     ', N'90232               ', N'Office    ', 151, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2616, N'99000 S. Avalon Blvd. Suite 750                   ', NULL, N'Carson                                            ', N'California                                        ', N'United States                                     ', N'90746               ', N'Office    ', 167, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2617, N'72502 Eastern Ave.                                ', NULL, N'Bell Gardens                                      ', N'California                                        ', N'United States                                     ', N'90201               ', N'Office    ', 168, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2618, N'2560 E. Newlands Dr                               ', NULL, N'Fernley                                           ', N'Nevada                                            ', N'United States                                     ', N'89408               ', N'Office    ', 169, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2619, N'630 N. Capitol Ave.                               ', NULL, N'San Jose                                          ', N'California                                        ', N'United States                                     ', N'95112               ', N'Home      ', 185, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2620, N'4660 Rodeo Road                                   ', NULL, N'Santa Fe                                          ', N'New Mexico                                        ', N'United States                                     ', N'87501               ', N'Office    ', 186, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2621, N'251340 E. South St.                               ', NULL, N'Cerritos                                          ', N'California                                        ', N'United States                                     ', N'90703               ', N'Office    ', 187, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2622, N'440 West Huntington Dr.                           ', NULL, N'Monrovia                                          ', N'California                                        ', N'United States                                     ', N'91016               ', N'Office    ', 203, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2623, N'99235 Hawthorne Blvd.                             ', NULL, N'Torrance                                          ', N'California                                        ', N'United States                                     ', N'90505               ', N'Office    ', 204, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2624, N'870 N. 54th Ave.                                  ', NULL, N'Chandler                                          ', N'Arizona                                           ', N'United States                                     ', N'85225               ', N'Office    ', 205, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2625, N'9952 E. Lohman Ave.                               ', NULL, N'Las Cruces                                        ', N'New Mexico                                        ', N'United States                                     ', N'88001               ', N'Office    ', 221, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2626, N'2530 South Colorado Blvd.                         ', NULL, N'Denver                                            ', N'Colorado                                          ', N'United States                                     ', N'80203               ', N'Home      ', 222, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2627, N'955 E. County Line Rd.                            ', NULL, N'Englewood                                         ', N'Colorado                                          ', N'United States                                     ', N'80110               ', N'Home      ', 223, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2628, N'409 Santa Monica Blvd.                            ', NULL, N'Santa Monica                                      ', N'California                                        ', N'United States                                     ', N'90401               ', N'Home      ', 239, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2629, N'Mall Of Orange                                    ', NULL, N'Orange                                            ', N'California                                        ', N'United States                                     ', N'92867               ', N'Office    ', 240, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2630, N'Topanga Plaza                                     ', NULL, N'Canoga Park                                       ', N'California                                        ', N'United States                                     ', N'91303               ', N'Home      ', 241, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2631, N'Escondido                                         ', NULL, N'Escondido                                         ', N'California                                        ', N'United States                                     ', N'92025               ', N'Home      ', 257, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2632, N'Natomas Marketplace                               ', NULL, N'Sacramento                                        ', N'California                                        ', N'United States                                     ', N'95814               ', N'Home      ', 258, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2633, N'Simi @ The Plaza                                  ', NULL, N'Simi Valley                                       ', N'California                                        ', N'United States                                     ', N'93065               ', N'Home      ', 259, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2634, N'Lakewood Mall                                     ', NULL, N'Lakewood                                          ', N'California                                        ', N'United States                                     ', N'90712               ', N'Office    ', 275, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2635, N'Oxnard Outlet                                     ', NULL, N'Oxnard                                            ', N'California                                        ', N'United States                                     ', N'93030               ', N'Office    ', 276, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2636, N'Vista Marketplace                                 ', NULL, N'Alhambra                                          ', N'California                                        ', N'United States                                     ', N'91801               ', N'Home      ', 277, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2637, N'Sports Store At Park City                         ', NULL, N'Park City                                         ', N'Utah                                              ', N'United States                                     ', N'84098               ', N'Home      ', 293, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2638, N'North County Square                               ', NULL, N'Vista                                             ', N'California                                        ', N'United States                                     ', N'92084               ', N'Home      ', 294, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2639, N'123 Camelia Avenue                                ', NULL, N'Oxnard                                            ', N'California                                        ', N'United States                                     ', N'93030               ', N'Home      ', 295, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2640, N'Mountain Square                                   ', NULL, N'Upland                                            ', N'California                                        ', N'United States                                     ', N'91786               ', N'Office    ', 311, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2641, N'Fox Hills                                         ', NULL, N'Culver City                                       ', N'California                                        ', N'United States                                     ', N'90232               ', N'Office    ', 312, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2642, N'Parkway Plaza                                     ', NULL, N'El Cajon                                          ', N'California                                        ', N'United States                                     ', N'92020               ', N'Home      ', 313, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2643, N'Stonewood Mall                                    ', NULL, N'Downey                                            ', N'California                                        ', N'United States                                     ', N'90241               ', N'Office    ', 329, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2644, N'100 Hanford Mall                                  ', NULL, N'Hanford                                           ', N'California                                        ', N'United States                                     ', N'93230               ', N'Office    ', 330, CAST(0x00009B1300AEA834 AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2645, N'Ontario Mills                                     ', NULL, N'Ontario                                           ', N'California                                        ', N'United States                                     ', N'91764               ', N'Office    ', 331, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2646, N'Nut Tree Factory                                  ', NULL, N'Vacaville                                         ', N'California                                        ', N'United States                                     ', N'95688               ', N'Home      ', 347, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2647, N'Rocky Mountain Pines Outlet                       ', NULL, N'Loveland                                          ', N'Colorado                                          ', N'United States                                     ', N'80537               ', N'Home      ', 348, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2648, N'Stevens Creek Shopping Center                     ', NULL, N'San Jose                                          ', N'California                                        ', N'United States                                     ', N'95112               ', N'Home      ', 349, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2649, N'Factory Merchants                                 ', NULL, N'Barstow                                           ', N'California                                        ', N'United States                                     ', N'92311               ', N'Home      ', 365, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2650, N'The Citadel Commerce Plaza                        ', NULL, N'City Of Commerce                                  ', N'California                                        ', N'United States                                     ', N'90040               ', N'Home      ', 366, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2651, N'University Town Center                            ', NULL, N'San Diego                                         ', N'California                                        ', N'United States                                     ', N'92102               ', N'Home      ', 367, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2652, N'Pavillion @ Redlands                              ', NULL, N'Redlands                                          ', N'California                                        ', N'United States                                     ', N'92373               ', N'Home      ', 383, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2653, N'San Diego Factory                                 ', NULL, N'San Ysidro                                        ', N'California                                        ', N'United States                                     ', N'92173               ', N'Home      ', 384, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2654, N'Pacific West Outlet                               ', NULL, N'Gilroy                                            ', N'California                                        ', N'United States                                     ', N'95020               ', N'Home      ', 385, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2655, N'Belz Factory Outlet                               ', NULL, N'Las Vegas                                         ', N'Nevada                                            ', N'United States                                     ', N'89106               ', N'Home      ', 401, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2656, N'Camarillo Athletic Stores                         ', NULL, N'Camarillo                                         ', N'California                                        ', N'United States                                     ', N'93010               ', N'Home      ', 402, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2657, N'Lake Elisnor Place                                ', NULL, N'Lake Elsinore                                     ', N'California                                        ', N'United States                                     ', N'92530               ', N'Home      ', 403, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2658, N'Norwalk Square                                    ', NULL, N'Norwalk                                           ', N'California                                        ', N'United States                                     ', N'90650               ', N'Office    ', 419, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2659, N'Riverside                                         ', NULL, N'Sherman Oaks                                      ', N'California                                        ', N'United States                                     ', N'91403               ', N'Office    ', 420, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2660, N'The Quad @ WestView                               ', NULL, N'Whittier                                          ', N'California                                        ', N'United States                                     ', N'90605               ', N'Office    ', 421, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2661, N'Arcadia Crossing                                  ', NULL, N'Phoenix                                           ', N'Arizona                                           ', N'United States                                     ', N'85004               ', N'Home      ', 437, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2662, N'Eastern Beltway Center                            ', NULL, N'Las Vegas                                         ', N'Nevada                                            ', N'United States                                     ', N'89106               ', N'Home      ', 438, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2663, N'Factory Stores/tucson                             ', NULL, N'Tucson                                            ', N'Arizona                                           ', N'United States                                     ', N'85701               ', N'Home      ', 439, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2664, N'Viejas Outlet Center                              ', NULL, N'Alpine                                            ', N'California                                        ', N'United States                                     ', N'91901               ', N'Home      ', 455, CAST(0x00009A47010A035A AS DateTime))
GO
print 'Processed 400 total records'
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2665, N'West Park Plaza                                   ', NULL, N'Irvine                                            ', N'California                                        ', N'United States                                     ', N'92614               ', N'Home      ', 456, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2666, N'Factory Stores Of America                         ', NULL, N'Mesa                                              ', N'Arizona                                           ', N'United States                                     ', N'85201               ', N'Home      ', 457, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2667, N'Prime Outlets                                     ', NULL, N'Phoenix                                           ', N'Arizona                                           ', N'United States                                     ', N'85004               ', N'Home      ', 473, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2668, N'Bayshore Mall                                     ', NULL, N'Eureka                                            ', N'California                                        ', N'United States                                     ', N'95501               ', N'Office    ', 474, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2669, N'7709 West Virginia Avenue                         ', NULL, N'Phoenix                                           ', N'Arizona                                           ', N'United States                                     ', N'85004               ', N'Office    ', 475, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2670, N'6900 Sisk Road                                    ', NULL, N'Modesto                                           ', N'California                                        ', N'United States                                     ', N'95354               ', N'Office    ', 491, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2671, N'3250 Baldwin Park Blvd                            ', NULL, N'Baldwin Park                                      ', N'California                                        ', N'United States                                     ', N'91706               ', N'Home      ', 492, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2672, N'5867 Sunrise Boulevard                            ', NULL, N'Citrus Heights                                    ', N'California                                        ', N'United States                                     ', N'95610               ', N'Office    ', 493, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2673, N'6500 East Grant Road                              ', NULL, N'Tucson                                            ', N'Arizona                                           ', N'United States                                     ', N'85701               ', N'Office    ', 509, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2674, N'3065 Santa Margarita Parkway                      ', NULL, N'Trabuco Canyon                                    ', N'California                                        ', N'United States                                     ', N'92679               ', N'Home      ', 510, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2675, N'9920 Bridgepointe Parkway                         ', NULL, N'San Mateo                                         ', N'California                                        ', N'United States                                     ', N'94404               ', N'Home      ', 511, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2676, N'5525 South Hover Road                             ', NULL, N'Longmont                                          ', N'Colorado                                          ', N'United States                                     ', N'80501               ', N'Office    ', 523, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2677, N'8525 South Parker Road                            ', NULL, N'Parker                                            ', N'Colorado                                          ', N'United States                                     ', N'80138               ', N'Home      ', 527, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2678, N'7505 Laguna Boulevard                             ', NULL, N'Elk Grove                                         ', N'California                                        ', N'United States                                     ', N'95624               ', N'Office    ', 528, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2679, N'9909 W. Ventura Boulevard                         ', NULL, N'Camarillo                                         ', N'California                                        ', N'United States                                     ', N'93010               ', N'Office    ', 529, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2680, N'25150 El Camino Real                              ', NULL, N'San Bruno                                         ', N'California                                        ', N'United States                                     ', N'94066               ', N'Home      ', 545, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2681, N'2575 Rocky Mountain Ave.                          ', NULL, N'Loveland                                          ', N'Colorado                                          ', N'United States                                     ', N'80537               ', N'Home      ', 546, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2682, N'25871 North Main Street                           ', NULL, N'Walnut Creek                                      ', N'California                                        ', N'United States                                     ', N'94596               ', N'Office    ', 547, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2683, N'2551 East Warner Road                             ', NULL, N'Gilbert                                           ', N'Arizona                                           ', N'United States                                     ', N'85233               ', N'Office    ', 563, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2684, N'22589 West Craig Road                             ', NULL, N'North Las Vegas                                   ', N'Nevada                                            ', N'United States                                     ', N'89030               ', N'Home      ', 564, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2685, N'25751 University Drive                            ', NULL, N'Vista                                             ', N'California                                        ', N'United States                                     ', N'92084               ', N'Office    ', 565, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2686, N'49925 Crestview Drive N.E.                        ', NULL, N'Rio Rancho                                        ', N'New Mexico                                        ', N'United States                                     ', N'87124               ', N'Home      ', 581, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2687, N'57251 Serene Blvd                                 ', NULL, N'Van Nuys                                          ', N'California                                        ', N'United States                                     ', N'91411               ', N'Office    ', 582, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2688, N'253731 West Bell Road                             ', NULL, N'Surprise                                          ', N'Arizona                                           ', N'United States                                     ', N'85374               ', N'Office    ', 583, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2689, N'99040 California Avenue                           ', NULL, N'Sand City                                         ', N'California                                        ', N'United States                                     ', N'93955               ', N'Home      ', 599, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2690, N'25620 Firestone Boulevard                         ', NULL, N'Norwalk                                           ', N'California                                        ', N'United States                                     ', N'90650               ', N'Office    ', 600, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2691, N'25130 South State Street                          ', NULL, N'Sandy                                             ', N'Utah                                              ', N'United States                                     ', N'84070               ', N'Office    ', 601, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2692, N'5500 Grossmont Center Drive                       ', NULL, N'La Mesa                                           ', N'California                                        ', N'United States                                     ', N'91941               ', N'Home      ', 608, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2693, N'99700 Bell Road                                   ', NULL, N'Auburn                                            ', N'California                                        ', N'United States                                     ', N'95603               ', N'Office    ', 609, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2694, N'7750 E Marching Rd                                ', NULL, N'Scottsdale                                        ', N'Arizona                                           ', N'United States                                     ', N'85257               ', N'Home      ', 610, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2695, N'25250 N 90th St                                   ', NULL, N'Scottsdale                                        ', N'Arizona                                           ', N'United States                                     ', N'85257               ', N'Office    ', 624, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2696, N'9980 S Alma School Road                           ', NULL, N'Chandler                                          ', N'Arizona                                           ', N'United States                                     ', N'85225               ', N'Home      ', 625, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2697, N'6753 Howard Hughes Parkway                        ', NULL, N'Las Vegas                                         ', N'Nevada                                            ', N'United States                                     ', N'89106               ', N'Home      ', 626, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2698, N'Corp Ofc Accts Payable                            ', NULL, N'El Segundo                                        ', N'California                                        ', N'United States                                     ', N'90245               ', N'Home      ', 648, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2699, N'Po Box 252525                                     ', NULL, N'Santa Ana                                         ', N'California                                        ', N'United States                                     ', N'92701               ', N'Home      ', 649, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2700, N'62500 Neil Road                                   ', NULL, N'Reno                                              ', N'Nevada                                            ', N'United States                                     ', N'89502               ', N'Office    ', 650, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2701, N'4635 S. Harrison Blvd.                            ', NULL, N'Ogden                                             ', N'Utah                                              ', N'United States                                     ', N'84401               ', N'Office    ', 672, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2702, N'825 W 500 S                                       ', NULL, N'Bountiful                                         ', N'Utah                                              ', N'United States                                     ', N'84010               ', N'Office    ', 673, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2703, N'603 Gellert Blvd                                  ', NULL, N'Daly City                                         ', N'California                                        ', N'United States                                     ', N'94015               ', N'Office    ', 674, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2704, N'2564 S. Redwood Rd.                               ', NULL, N'Riverton                                          ', N'Utah                                              ', N'United States                                     ', N'84065               ', N'Office    ', 696, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2705, N'9927 N. Main St.                                  ', NULL, N'Tooele                                            ', N'Utah                                              ', N'United States                                     ', N'84074               ', N'Office    ', 697, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2706, N'566 S. Main                                       ', NULL, N'Cedar City                                        ', N'Utah                                              ', N'United States                                     ', N'84720               ', N'Office    ', 698, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2707, N'165 North Main                                    ', NULL, N'Austin                                            ', N'Texas                                             ', N'United States                                     ', N'78701               ', N'Home      ', 4, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2708, N'2000 300th Street                                 ', NULL, N'Denver                                            ', N'Colorado                                          ', N'United States                                     ', N'80203               ', N'Home      ', 222, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2709, N'99 Front Street                                   ', NULL, N'Minneapolis                                       ', N'Minnesota                                         ', N'United States                                     ', N'55402               ', N'Home      ', 623, CAST(0x00009A47010A035A AS DateTime))
INSERT [dbo].[Address] ([addressID], [Street1], [Street2], [City], [StateProvince], [CountryRegion], [PostalCode], [AddressType], [ContactID], [ModifiedDate]) VALUES (2718, N'1 Rou Ouest', N'Suite 203', N'Montreal', N'QC', N'Canada', N'A1B 2C3', N'Work', 570, CAST(0x00009D7E00F3A98B AS DateTime))
SET IDENTITY_INSERT [dbo].[Address] OFF
/****** Object:  Table [dbo].[ActivityEquipment]    Script Date: 12/16/2010 19:44:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ActivityEquipment]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ActivityEquipment](
	[ActivityID] [int] NOT NULL,
	[EquipmentID] [int] NOT NULL,
 CONSTRAINT [PK_ActivityEquipment] PRIMARY KEY CLUSTERED 
(
	[ActivityID] ASC,
	[EquipmentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[ActivityEquipment] ([ActivityID], [EquipmentID]) VALUES (1, 1)
INSERT [dbo].[ActivityEquipment] ([ActivityID], [EquipmentID]) VALUES (2, 1)
INSERT [dbo].[ActivityEquipment] ([ActivityID], [EquipmentID]) VALUES (3, 5)
INSERT [dbo].[ActivityEquipment] ([ActivityID], [EquipmentID]) VALUES (4, 10)
INSERT [dbo].[ActivityEquipment] ([ActivityID], [EquipmentID]) VALUES (5, 3)
INSERT [dbo].[ActivityEquipment] ([ActivityID], [EquipmentID]) VALUES (6, 1)
INSERT [dbo].[ActivityEquipment] ([ActivityID], [EquipmentID]) VALUES (6, 3)
INSERT [dbo].[ActivityEquipment] ([ActivityID], [EquipmentID]) VALUES (6, 12)
INSERT [dbo].[ActivityEquipment] ([ActivityID], [EquipmentID]) VALUES (6, 15)
INSERT [dbo].[ActivityEquipment] ([ActivityID], [EquipmentID]) VALUES (7, 5)
INSERT [dbo].[ActivityEquipment] ([ActivityID], [EquipmentID]) VALUES (8, 14)
INSERT [dbo].[ActivityEquipment] ([ActivityID], [EquipmentID]) VALUES (9, 7)
INSERT [dbo].[ActivityEquipment] ([ActivityID], [EquipmentID]) VALUES (10, 7)
INSERT [dbo].[ActivityEquipment] ([ActivityID], [EquipmentID]) VALUES (11, 7)
INSERT [dbo].[ActivityEquipment] ([ActivityID], [EquipmentID]) VALUES (12, 10)
INSERT [dbo].[ActivityEquipment] ([ActivityID], [EquipmentID]) VALUES (13, 8)
INSERT [dbo].[ActivityEquipment] ([ActivityID], [EquipmentID]) VALUES (14, 8)
INSERT [dbo].[ActivityEquipment] ([ActivityID], [EquipmentID]) VALUES (15, 12)
INSERT [dbo].[ActivityEquipment] ([ActivityID], [EquipmentID]) VALUES (16, 9)
INSERT [dbo].[ActivityEquipment] ([ActivityID], [EquipmentID]) VALUES (17, 12)
INSERT [dbo].[ActivityEquipment] ([ActivityID], [EquipmentID]) VALUES (18, 11)
INSERT [dbo].[ActivityEquipment] ([ActivityID], [EquipmentID]) VALUES (19, 11)
INSERT [dbo].[ActivityEquipment] ([ActivityID], [EquipmentID]) VALUES (20, 13)
INSERT [dbo].[ActivityEquipment] ([ActivityID], [EquipmentID]) VALUES (21, 12)
INSERT [dbo].[ActivityEquipment] ([ActivityID], [EquipmentID]) VALUES (22, 14)
INSERT [dbo].[ActivityEquipment] ([ActivityID], [EquipmentID]) VALUES (23, 14)
INSERT [dbo].[ActivityEquipment] ([ActivityID], [EquipmentID]) VALUES (24, 13)
INSERT [dbo].[ActivityEquipment] ([ActivityID], [EquipmentID]) VALUES (25, 14)
/****** Object:  Table [dbo].[Customers]    Script Date: 12/16/2010 19:44:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Customers]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Customers](
	[ContactID] [int] NOT NULL,
	[CustomerTypeID] [int] NOT NULL,
	[InitialDate] [datetime] NULL,
	[PrimaryDesintation] [int] NULL,
	[SecondaryDestination] [int] NULL,
	[PrimaryActivity] [int] NULL,
	[SecondaryActivity] [int] NULL,
	[Notes] [varchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[RowVersion] [timestamp] NOT NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[ContactID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (1, 1, CAST(0x000098BE00000000 AS DateTime), 5, 25, 18, 21, N'He was lots of fun to have on our trip! and more... some more notes! and more')
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (2, 1, CAST(0x00009717009D85B5 AS DateTime), 19, 22, 7, 5, N'nerw notes')
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (6, 1, CAST(0x0000993D0155EB51 AS DateTime), 66, 8, 28, 28, N'notes more ')
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (7, 1, CAST(0x000092FC0102E09F AS DateTime), 15, 18, 25, 24, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (10, 1, CAST(0x00009AFA009CBAD1 AS DateTime), 15, 18, 20, 8, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (12, 1, CAST(0x000098E1007CD9D6 AS DateTime), 47, 50, 20, 18, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (16, 1, CAST(0x00009AA200C10BC2 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (19, 1, CAST(0x000093800037BC8A AS DateTime), 34, 37, 11, 14, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (20, 1, CAST(0x000097BB0119B687 AS DateTime), 54, 57, 18, 21, N'9/21/2010 8:47:22 PM')
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (21, 1, CAST(0x000099900053FCF5 AS DateTime), 35, 38, 11, 14, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (22, 1, CAST(0x00009B4000C4263B AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (23, 1, CAST(0x00009B4000C5254C AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (24, 1, CAST(0x00009B4000C4F863 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (30, 1, CAST(0x0000938300DD8F8A AS DateTime), 59, 62, 19, 22, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (34, 1, CAST(0x000095C80124DC39 AS DateTime), 32, 35, 11, 14, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (37, 1, CAST(0x0000982D017D9E47 AS DateTime), 73, 3, 24, 27, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (38, 1, CAST(0x0000991800FBE95F AS DateTime), 9, 12, 3, 6, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (39, 1, CAST(0x00009A2001234E85 AS DateTime), 10, 13, 3, 6, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (40, 1, CAST(0x000094230183F343 AS DateTime), 67, 70, 22, 25, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (43, 1, CAST(0x000097B300436973 AS DateTime), 36, 39, 12, 15, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (46, 1, CAST(0x0000993E00788A66 AS DateTime), 20, 23, 7, 10, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (48, 1, CAST(0x00009B4000FFC38E AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (56, 1, CAST(0x000094BB0060A28F AS DateTime), 51, 54, 17, 20, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (57, 1, CAST(0x00009AB1000B9448 AS DateTime), 30, 33, 10, 13, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (59, 1, CAST(0x0000930900D29D11 AS DateTime), 19, 22, 6, 9, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (65, 1, CAST(0x00009580012936B3 AS DateTime), 46, 49, 15, 18, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (66, 1, CAST(0x000095BC0021DFF7 AS DateTime), 11, 14, 4, 7, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (70, 1, CAST(0x0000947A00F982EC AS DateTime), 42, 45, 14, 17, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (79, 1, CAST(0x000099480088BD8A AS DateTime), 36, 39, 12, 15, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (82, 1, CAST(0x000094B0005513EC AS DateTime), 64, 67, 21, 24, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (88, 1, CAST(0x00009A5D00FDFB65 AS DateTime), 59, 62, 19, 22, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (95, 1, CAST(0x0000976100ED938D AS DateTime), 10, 13, 4, 7, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (96, 1, CAST(0x00009914001B6B08 AS DateTime), 49, 52, 16, 19, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (97, 1, CAST(0x000093B6013A6F5E AS DateTime), 17, 20, 6, 9, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (101, 1, CAST(0x0000988A0168C821 AS DateTime), 39, 42, 13, 16, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (102, 1, CAST(0x00009783014916CC AS DateTime), 23, 26, 8, 11, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (112, 1, CAST(0x0000979E007325C7 AS DateTime), 70, 73, 23, 26, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (113, 1, CAST(0x000096090049769E AS DateTime), 40, 43, 13, 16, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (118, 1, CAST(0x000095B100079078 AS DateTime), 32, 35, 11, 14, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (124, 1, CAST(0x000099BB00778126 AS DateTime), 15, 18, 5, 8, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (127, 1, CAST(0x0000969800555CFD AS DateTime), 73, 3, 24, 27, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (129, 1, CAST(0x00009A7C004DF2EA AS DateTime), 17, 20, 6, 9, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (131, 1, CAST(0x000095AA00EC8ED8 AS DateTime), 8, 11, 3, 6, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (137, 1, CAST(0x000098640105820F AS DateTime), 57, 60, 19, 22, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (145, 1, CAST(0x0000994C008C207C AS DateTime), 58, 61, 19, 22, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (146, 1, CAST(0x0000967501151860 AS DateTime), 21, 24, 7, 10, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (147, 1, CAST(0x00009597002C1C1B AS DateTime), 52, 55, 17, 20, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (148, 1, CAST(0x00009B05005EBFBA AS DateTime), 64, 67, 21, 24, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (149, 1, CAST(0x000094D100EC5421 AS DateTime), 8, 11, 3, 6, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (150, 1, CAST(0x000096B6013B8678 AS DateTime), 27, 30, 9, 12, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (151, 1, CAST(0x000096F80152C18C AS DateTime), 6, 9, 2, 5, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (160, 1, CAST(0x00009A4900750A5C AS DateTime), 37, 40, 12, 15, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (164, 1, CAST(0x000093D600D2F175 AS DateTime), 17, 20, 6, 9, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (172, 1, CAST(0x0000953A00576D6A AS DateTime), 41, 44, 13, 16, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (180, 1, CAST(0x000098AC00F0A1F5 AS DateTime), 43, 46, 14, 17, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (185, 1, CAST(0x000099EE007EC5F9 AS DateTime), 61, 64, 20, 23, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (186, 1, CAST(0x0000965400165476 AS DateTime), 50, 53, 16, 19, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (187, 1, CAST(0x0000945200A708EF AS DateTime), 65, 68, 21, 24, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (190, 1, CAST(0x00009B23017B7B15 AS DateTime), 24, 27, 8, 11, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (191, 1, CAST(0x0000987000A46A4D AS DateTime), 49, 52, 16, 19, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (192, 1, CAST(0x000097A80165F4AC AS DateTime), 58, 61, 19, 22, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (196, 1, CAST(0x0000951D0078F038 AS DateTime), 62, 65, 20, 23, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (199, 1, CAST(0x000094EB0132949B AS DateTime), 12, 15, 4, 7, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (202, 1, CAST(0x000095F800E03093 AS DateTime), 64, 67, 21, 24, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (203, 1, CAST(0x000098DC013287E9 AS DateTime), 63, 66, 21, 24, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (204, 1, CAST(0x000093A5003E25FD AS DateTime), 32, 35, 11, 14, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (218, 1, CAST(0x000099FE00B427CE AS DateTime), 72, 2, 23, 26, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (220, 1, CAST(0x00009595005C5A38 AS DateTime), 44, 47, 14, 17, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (221, 1, CAST(0x000094100150C32F AS DateTime), 75, 2, 24, 27, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (223, 1, CAST(0x0000937D0155C34E AS DateTime), 39, 42, 13, 16, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (228, 2, CAST(0x000097D00154DD5F AS DateTime), 50, 53, 16, 19, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (236, 2, CAST(0x00009AEE00719F7D AS DateTime), 54, 57, 18, 21, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (241, 1, CAST(0x00009DB701005F70 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (245, 2, CAST(0x0000950700D1BE8A AS DateTime), 46, 49, 15, 18, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (257, 2, CAST(0x000095BF0151D011 AS DateTime), 47, 50, 15, 18, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (258, 2, CAST(0x000095FB01469C95 AS DateTime), 49, 52, 16, 19, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (259, 2, CAST(0x0000995A014D058D AS DateTime), 8, 11, 3, 6, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (271, 2, CAST(0x0000977A0065091E AS DateTime), 51, 54, 17, 20, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (275, 2, CAST(0x00009A05008B4670 AS DateTime), 65, 68, 21, 24, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (282, 2, CAST(0x000095840053FBB7 AS DateTime), 52, 55, 17, 20, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (289, 2, CAST(0x000096130093AC02 AS DateTime), 72, 2, 23, 26, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (291, 1, CAST(0x0000974100CC888A AS DateTime), 38, 41, 12, 15, N'we hope he comes back')
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (293, 2, CAST(0x0000966E00B52C70 AS DateTime), 46, 49, 15, 18, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (300, 2, CAST(0x00009A25016E9E94 AS DateTime), 69, 72, 22, 25, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (306, 2, CAST(0x0000958F00DF40B7 AS DateTime), 3, 6, 1, 4, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (308, 2, CAST(0x000098D600FBD2AF AS DateTime), 68, 71, 22, 25, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (309, 2, CAST(0x000096F901143D87 AS DateTime), 23, 26, 15, 11, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (311, 2, CAST(0x0000935D012E4A9E AS DateTime), 22, 25, 7, 10, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (312, 1, CAST(0x00009AFB00BC587F AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (316, 2, CAST(0x00009647004D3FE1 AS DateTime), 39, 42, 13, 16, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (322, 2, CAST(0x000095BC00D47AA9 AS DateTime), 54, 57, 18, 21, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (323, 2, CAST(0x000093C600122FE8 AS DateTime), 3, 6, 1, 4, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (325, 2, CAST(0x000095B9005A9FD5 AS DateTime), 52, 55, 17, 20, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (326, 2, CAST(0x0000977F010264D1 AS DateTime), 10, 13, 4, 7, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (328, 2, CAST(0x000095F700F32DEF AS DateTime), 46, 49, 15, 18, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (330, 2, CAST(0x000095D8001401F8 AS DateTime), 1, 4, 1, 4, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (331, 2, CAST(0x000093CB00561524 AS DateTime), 10, 13, 3, 6, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (334, 2, CAST(0x0000948C00D1186A AS DateTime), 68, 71, 22, 25, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (335, 2, CAST(0x000097ED0040BE17 AS DateTime), 69, 72, 22, 25, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (340, 2, CAST(0x000098C3013C2A1F AS DateTime), 43, 46, 14, 17, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (345, 2, CAST(0x00009A3F000856FE AS DateTime), 36, 39, 12, 15, NULL)
GO
print 'Processed 100 total records'
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (346, 2, CAST(0x00009A060127285F AS DateTime), 19, 22, 6, 9, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (347, 2, CAST(0x00009924017B829B AS DateTime), 69, 72, 20, 25, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (353, 2, CAST(0x00009A8200113309 AS DateTime), 35, 38, 12, 15, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (360, 2, CAST(0x00009AA70138A2C9 AS DateTime), 54, 57, 18, 21, N'new notes 2:48 PM, new notes')
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (361, 2, CAST(0x0000932C008FE8D7 AS DateTime), 68, 71, 22, 25, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (363, 2, CAST(0x000099F5008604A5 AS DateTime), 62, 65, 20, 23, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (370, 2, CAST(0x0000942A010232BF AS DateTime), 56, 59, 18, 21, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (371, 2, CAST(0x00009489017A7B8B AS DateTime), 8, 11, 3, 6, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (372, 2, CAST(0x000093D9001D6797 AS DateTime), 61, 64, 20, 23, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (376, 2, CAST(0x000095CD01770ADF AS DateTime), 15, 18, 5, 8, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (377, 2, CAST(0x0000982E0000B9B7 AS DateTime), 43, 46, 14, 17, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (380, 2, CAST(0x0000969E0053A1DB AS DateTime), 71, 1, 23, 26, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (383, 2, CAST(0x0000954F012F5F4D AS DateTime), 34, 37, 11, 14, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (384, 2, CAST(0x00009A95011C8933 AS DateTime), 36, 39, 12, 15, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (390, 2, CAST(0x000095430066A61F AS DateTime), 74, 1, 24, 27, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (398, 2, CAST(0x00009A8C002F03B0 AS DateTime), 50, 53, 16, 19, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (399, 2, CAST(0x0000958A0027E9BC AS DateTime), 26, 29, 9, 12, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (402, 2, CAST(0x000094FE009F8637 AS DateTime), 66, 69, 21, 24, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (403, 2, CAST(0x0000976700C4AE78 AS DateTime), 24, 27, 8, 11, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (406, 2, CAST(0x0000939900DCFE91 AS DateTime), 40, 43, 13, 16, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (412, 2, CAST(0x0000956E0179F881 AS DateTime), 20, 23, 7, 10, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (415, 2, CAST(0x00009961012B8354 AS DateTime), 67, 70, 22, 25, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (420, 2, CAST(0x00009AE8009A44A3 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (421, 2, CAST(0x0000942C008427B7 AS DateTime), 70, 73, 23, 26, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (425, 2, CAST(0x00009A080126CF04 AS DateTime), 72, 2, 23, 26, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (430, 2, CAST(0x000093C5009C7CBF AS DateTime), 75, 2, 24, 27, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (434, 2, CAST(0x0000968800C31109 AS DateTime), 22, 25, 7, 10, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (436, 2, CAST(0x0000953B004F86F0 AS DateTime), 40, 43, 13, 16, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (437, 2, CAST(0x000093060138E505 AS DateTime), 17, 20, 6, 9, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (438, 2, CAST(0x00009980011C014A AS DateTime), 47, 50, 15, 18, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (439, 2, CAST(0x00009529011848AF AS DateTime), 39, 42, 13, 16, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (443, 2, CAST(0x00009346006FA833 AS DateTime), 40, 43, 13, 16, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (451, 3, CAST(0x0000989E004CED5F AS DateTime), 51, 54, 17, 20, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (452, 3, CAST(0x0000966E010ACA1D AS DateTime), 20, 23, 7, 10, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (453, 3, CAST(0x00009420014E2496 AS DateTime), 20, 23, 7, 10, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (454, 3, CAST(0x000096A90123F010 AS DateTime), 64, 67, 21, 24, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (456, 3, CAST(0x0000956500529EF5 AS DateTime), 24, 27, 8, 11, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (460, 3, CAST(0x00009B0E004B098B AS DateTime), 47, 50, 15, 18, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (462, 3, CAST(0x000099AA0060162B AS DateTime), 68, 71, 22, 25, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (466, 3, CAST(0x0000939A00E421CC AS DateTime), 29, 32, 10, 13, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (470, 3, CAST(0x0000981900FEE0CE AS DateTime), 66, 69, 22, 25, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (471, 3, CAST(0x000095DC0078D9A9 AS DateTime), 63, 66, 20, 23, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (474, 3, CAST(0x000099E901342DC9 AS DateTime), 15, 18, 5, 8, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (478, 3, CAST(0x000093C800274A5D AS DateTime), 17, 20, 6, 9, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (480, 3, CAST(0x0000960D00DBEA95 AS DateTime), 5, 8, 2, 5, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (488, 3, CAST(0x00009A1801046272 AS DateTime), 52, 55, 17, 20, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (490, 3, CAST(0x0000942D01842499 AS DateTime), 25, 28, 8, 11, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (492, 3, CAST(0x000095EF00263CAE AS DateTime), 70, 73, 23, 26, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (493, 3, CAST(0x000092F5015590A9 AS DateTime), 75, 2, 24, 27, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (504, 3, CAST(0x000098600013F092 AS DateTime), 62, 65, 20, 23, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (505, 3, CAST(0x0000994800315083 AS DateTime), 12, 15, 4, 7, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (507, 3, CAST(0x0000935E015FEA65 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (515, 3, CAST(0x0000931F00DE59D3 AS DateTime), 34, 37, 11, 14, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (526, 3, CAST(0x000093FD00AA2A2C AS DateTime), 37, 40, 12, 15, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (528, 3, CAST(0x000099A000DAF1FD AS DateTime), 25, 28, 8, 11, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (533, 3, CAST(0x0000975300D93D48 AS DateTime), 42, 45, 14, 17, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (542, 3, CAST(0x0000983E00F2C31B AS DateTime), 18, 21, 6, 9, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (547, 3, CAST(0x000096F800D066DC AS DateTime), 23, 26, 8, 11, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (552, 3, CAST(0x000094290167EFC2 AS DateTime), 13, 16, 5, 8, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (556, 3, CAST(0x000098B70150E503 AS DateTime), 17, 20, 6, 9, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (559, 3, CAST(0x0000969F00BE7F3F AS DateTime), 62, 65, 20, 23, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (561, 3, CAST(0x0000943F00CE857A AS DateTime), 69, 72, 22, 25, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (562, 3, CAST(0x0000978A00C9F4A8 AS DateTime), 73, 3, 24, 27, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (565, 3, CAST(0x0000937C012DDD2A AS DateTime), 54, 57, 18, 21, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (568, 3, CAST(0x000096460168B50A AS DateTime), 64, 67, 21, 24, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (569, 3, CAST(0x000094190068391E AS DateTime), 48, 51, 28, 4, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (570, 1, NULL, 25, 11, 17, 7, N', new notes')
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (574, 3, CAST(0x0000944D00EC4340 AS DateTime), 72, 2, 23, 26, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (578, 3, CAST(0x0000957D0143D845 AS DateTime), 35, 38, 12, 15, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (579, 3, CAST(0x0000958E000AA1D2 AS DateTime), 22, 25, 8, 10, N'uh huh 3')
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (582, 1, CAST(0x0000995C006203B6 AS DateTime), 49, 52, 16, 19, N'Fun lady ')
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (583, 3, CAST(0x00009604001964A7 AS DateTime), 47, 50, 15, 18, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (588, 3, CAST(0x0000944400D56555 AS DateTime), 21, 24, 7, 10, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (592, 3, CAST(0x000095490094D85B AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (597, 3, CAST(0x00009ABB016E1A4F AS DateTime), 43, 46, 14, 17, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (601, 3, CAST(0x00009A96011B85C4 AS DateTime), 75, 2, 24, 27, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (607, 3, CAST(0x00009333008B7F72 AS DateTime), 59, 62, 19, 22, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (608, 3, CAST(0x0000967000279051 AS DateTime), 9, 12, 3, 6, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (622, 3, CAST(0x000097870117ADD1 AS DateTime), 72, 2, 24, 27, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (623, 3, CAST(0x0000959700DA3365 AS DateTime), 22, 25, 7, 10, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (624, 3, CAST(0x0000976D0027C9BA AS DateTime), 38, 41, 12, 15, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (626, 3, CAST(0x00009A8C00FD1A3C AS DateTime), 58, 61, 19, 22, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (630, 3, CAST(0x0000970D00BAF9D4 AS DateTime), 49, 52, 16, 19, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (635, 3, CAST(0x000099CD0166BEBD AS DateTime), 36, 39, 12, 15, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (637, 3, CAST(0x000099D8007A5F0F AS DateTime), 9, 12, 3, 6, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (647, 3, CAST(0x000094AF00067099 AS DateTime), 3, 6, 1, 4, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (648, 3, CAST(0x00009A50014B9A2E AS DateTime), 59, 62, 19, 22, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (649, 3, CAST(0x0000949E000B6E7C AS DateTime), 65, 68, 21, 24, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (650, 3, CAST(0x000096FA005DA970 AS DateTime), 37, 40, 12, 15, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (654, 3, CAST(0x000093BA009C9B39 AS DateTime), 2, 5, 1, 4, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (668, 3, CAST(0x00009A8E0002927E AS DateTime), 5, 8, 2, 5, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (669, 3, CAST(0x00009B2000E1084A AS DateTime), 68, 71, 22, 25, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (670, 3, CAST(0x000095D90147A7B7 AS DateTime), 8, 11, 3, 6, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (671, 3, CAST(0x00009776007604CA AS DateTime), 65, 68, 21, 24, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (672, 3, CAST(0x0000956600DF0381 AS DateTime), 9, 12, 3, 6, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (673, 3, CAST(0x000095AD0029283A AS DateTime), 57, 60, 19, 22, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (674, 3, CAST(0x000093550032CFC5 AS DateTime), 9, 12, 3, 6, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (677, 3, CAST(0x0000959E0082EE56 AS DateTime), 48, 51, 16, 19, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (692, 3, CAST(0x0000962700F063D9 AS DateTime), 29, 32, 10, 13, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (693, 3, CAST(0x000095D4016F6754 AS DateTime), 75, 2, 24, 27, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (694, 3, CAST(0x0000990500BD9A66 AS DateTime), 8, 11, 3, 6, NULL)
GO
print 'Processed 200 total records'
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (695, 3, CAST(0x00009A98014DA5A9 AS DateTime), 7, 10, 2, 5, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (696, 3, CAST(0x00009999016CDAD0 AS DateTime), 49, 52, 16, 19, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (697, 3, CAST(0x0000959B00C96EF2 AS DateTime), 42, 45, 14, 17, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (698, 3, CAST(0x0000934F00E47F7D AS DateTime), 60, 63, 20, 23, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (707, 3, CAST(0x000093CF01439359 AS DateTime), 58, 61, 19, 22, N'Albert paid in cash')
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (708, 1, CAST(0x00009AB000A45F49 AS DateTime), 31, 34, 10, 13, N'beep beep')
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (709, 1, CAST(0x00009C7F0109EC6D AS DateTime), 10, NULL, 21, 12, NULL)
INSERT [dbo].[Customers] ([ContactID], [CustomerTypeID], [InitialDate], [PrimaryDesintation], [SecondaryDestination], [PrimaryActivity], [SecondaryActivity], [Notes]) VALUES (728, 1, CAST(0x00009CEE00F0ED90 AS DateTime), NULL, NULL, NULL, NULL, N', new notes, new notes, new notes, new notes, new notes, new notes, new notes, new notes, new notes, new notes, new notes, new notes, new notes, new notes, new notes, new notes, new notes, new notes, new notes')
/****** Object:  StoredProcedure [dbo].[ContactsAddedinDateRange]    Script Date: 12/16/2010 19:44:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ContactsAddedinDateRange]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[ContactsAddedinDateRange]
@startdate DATETIME,
@enddate DATETIME

AS

SELECT     *
FROM         Contact WHERE CONVERT(CHAR,[AddDate],1)
 BETWEEN CONVERT(CHAR,@startdate,1) AND CONVERT(CHAR,@enddate,1)
 ORDER BY [AddDate]
' 
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateContact]    Script Date: 12/16/2010 19:44:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UpdateContact]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[UpdateContact]
			@ContactID INT,
           @FirstName nchar(50),
           @LastName nchar(50),
           @Title nchar(50)
AS
UPDATE Contact	SET
           FIRSTName=@FirstName,
           LastName=@LastName,
           Title = @Title,
           ModifiedDate=GETDATE()
           WHERE  ContactID=@contactID
           
SELECT RowVersion from Contact where ContactID=@ContactID          
' 
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateCustomerWithMappings]    Script Date: 12/16/2010 19:44:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UpdateCustomerWithMappings]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[UpdateCustomerWithMappings]

@ContactID int,
@CustomerTypeID int,
@InitialDate datetime,
@PrimaryDesintation int,
@SecondaryDestination int,
@PrimaryActivity int,
@SecondaryActivity int,
@Notes varchar,
@FirstName nvarchar(50),
@LastName nvarchar(50),
@Title nvarchar(50),
@AddDate datetime,
@ModifiedDate datetime,
@BirthDate datetime,
@HeightInches int,
@WeightPounds int,
@DietaryRestrictions varchar(250),
@CustTimeStamp timestamp,
@ContactTimeStamp timestamp

AS
UPDATE Customers
   SET 
     CustomerTypeID = @CustomerTypeID,
     InitialDate = @InitialDate,
     PrimaryDesintation = @PrimaryDesintation,
     SecondaryDestination = @SecondaryDestination,
     PrimaryActivity = @PrimaryActivity,
     SecondaryActivity = @SecondaryActivity,
     Notes = @Notes
 WHERE ContactID=@ContactID and RowVersion=@ContactTimeStamp
UPDATE Contact
   SET FirstName = @FirstName,
     LastName = @LastName,
     Title = @Title,
     AddDate = @AddDate,
     ModifiedDate = @ModifiedDate
 WHERE ContactID=@ContactID and RowVersion=@CustTimeStamp

UPDATE BreakAway.dbo.ContactPersonalInfo
   SET 
     BirthDate = @BirthDate,
     HeightInches = @HeightInches,
     WeightPounds = @WeightPounds,
     DietaryRestrictions = @DietaryRestrictions
 WHERE ContactID=@ContactID 
 
 select Customers.RowVersion as CustRowVersion, Contact.RowVersion as ContRowVersion 
 from Customers,Contact where Contact.ContactID=@ContactID and Customers.ContactID=Contact.ContactID
' 
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateCustomer]    Script Date: 12/16/2010 19:44:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UpdateCustomer]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[UpdateCustomer]
			@ContactID INT,
           @CustomerTypeID INT,
           @PrimaryDest int,
           @SecondaryDest int,
           @PrimaryAct int,
           @SecondaryAct int,
           @Notes VARCHAR(MAX)
AS
UPDATE [Customers]
           SET [CustomerTypeID]= @CustomerTypeID,
           [PrimaryDesintation]=@PrimaryDest,
           SecondaryDestination=@SecondaryDest,
           PrimaryActivity=@PrimaryAct,
           SecondaryActivity=@SecondaryAct,
           Notes=@Notes
     WHERE
     [ContactID]=@ContactID
' 
END
GO
/****** Object:  View [dbo].[vOfficeAddresses]    Script Date: 12/16/2010 19:44:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vOfficeAddresses]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[vOfficeAddresses]
AS
SELECT     dbo.Contact.FirstName, dbo.Contact.LastName, dbo.Address.addressID, dbo.Address.Street1, dbo.Address.Street2, dbo.Address.City, dbo.Address.StateProvince, 
                      dbo.Address.CountryRegion, dbo.Address.PostalCode, dbo.Address.AddressType, dbo.Address.ContactID, dbo.Address.ModifiedDate
FROM         dbo.Address INNER JOIN
                      dbo.Contact ON dbo.Address.ContactID = dbo.Contact.ContactID
WHERE     (dbo.Address.AddressType = N''Office'')
'
GO
/****** Object:  StoredProcedure [dbo].[InsertCustomer]    Script Date: 12/16/2010 19:44:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InsertCustomer]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[InsertCustomer]
			@ContactID INT,
           @CustomerTypeID INT,
           @PrimaryDest int,
           @SecondaryDest int,
           @PrimaryAct int,
           @SecondaryAct int,
           @Notes VARCHAR(MAX)

    AS       
           
-- customerTypeID has a default of 1 in case @customerTypeID is null

INSERT INTO [BreakAway].[dbo].[Customers]
           ([ContactID]
           ,[CustomerTypeID]
           ,[InitialDate]
           ,[PrimaryDesintation]
           ,[SecondaryDestination]
           ,[PrimaryActivity]
           ,[SecondaryActivity]
           ,Notes)
     VALUES
           (@ContactID,
		@CustomerTypeID,
           GETDATE(),
           @PrimaryDest,
           @SecondaryDest,
           @PrimaryAct,
           @SecondaryAct,
           @Notes)
' 
END
GO
/****** Object:  StoredProcedure [dbo].[CreateCustomerfromContact]    Script Date: 12/16/2010 19:44:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CreateCustomerfromContact]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CreateCustomerfromContact] 

@contactID INT

AS

INSERT INTO customers (ContactID,customers.[InitialDate]) VALUES (@contactid,GETDATE())
INSERT INTO [ContactPersonalInfo] ([ContactID]) VALUES (@contactID)

SELECT     Customers.*, Contact.FirstName, Contact.LastName, Contact.Title, Contact.AddDate, 
                      Contact.ModifiedDate, CPI.BirthDate, CPI.HeightInches, CPI.WeightPounds, 
                      CPI.DietaryRestrictions
FROM         Customers INNER JOIN
                      Contact ON Customers.ContactID = Contact.ContactID INNER JOIN
                      ContactPersonalInfo CPI ON Customers.ContactID = CPI.ContactID
                      WHERE customers.contactid =@contactID
' 
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteCustomer]    Script Date: 12/16/2010 19:44:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DeleteCustomer]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[DeleteCustomer]
@ContactID INT,
 @CustomerTypeID INT,
           @PrimaryDest int,
           @SecondaryDest int,
           @PrimaryAct int,
           @SecondaryAct int

AS

--deleting a customer does not delete a contact
DELETE FROM [BreakAway].[dbo].Customers
      WHERE  contactid=@ContactID
' 
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteContact]    Script Date: 12/16/2010 19:44:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DeleteContact]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[DeleteContact]
@ContactID INT
 
AS

DELETE FROM Address WHERE contactid=@ContactID

DELETE FROM [BreakAway].[dbo].Contact
      WHERE  contactid=@ContactID
' 
END
GO
/****** Object:  Table [dbo].[Events]    Script Date: 12/16/2010 19:44:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Events]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Events](
	[EventID] [int] IDENTITY(1,1) NOT NULL,
	[LocationID] [int] NOT NULL,
	[LodgingID] [int] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[TripCostUSD] [int] NULL,
 CONSTRAINT [PK_Events] PRIMARY KEY CLUSTERED 
(
	[EventID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[Events] ON
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (1, 55, 245, CAST(0x00009A3700000000 AS DateTime), CAST(0x00009A3B00000000 AS DateTime), 1572)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (2, 62, 252, CAST(0x00009B1D00000000 AS DateTime), CAST(0x00009B2400000000 AS DateTime), 1252)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (3, 58, 248, CAST(0x00009A9F00000000 AS DateTime), CAST(0x00009AA600000000 AS DateTime), 1300)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (4, 42, 232, CAST(0x0000988600000000 AS DateTime), CAST(0x0000988D00000000 AS DateTime), 1500)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (5, 16, 206, CAST(0x0000950200000000 AS DateTime), CAST(0x0000950900000000 AS DateTime), 1200)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (6, 42, 232, CAST(0x0000988800000000 AS DateTime), CAST(0x0000988F00000000 AS DateTime), 2500)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (7, 68, 258, CAST(0x00009BFF00000000 AS DateTime), CAST(0x00009C0600000000 AS DateTime), 2000)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (8, 34, 224, CAST(0x0000975E00000000 AS DateTime), CAST(0x0000976500000000 AS DateTime), 1300)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (9, 74, 264, CAST(0x00009CB600000000 AS DateTime), CAST(0x00009CBD00000000 AS DateTime), 1500)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (10, 21, 211, CAST(0x000095AF00000000 AS DateTime), CAST(0x000095B600000000 AS DateTime), 2000)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (11, 22, 212, CAST(0x000095DE00000000 AS DateTime), CAST(0x000095E500000000 AS DateTime), 1500)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (12, 36, 226, CAST(0x0000979E00000000 AS DateTime), CAST(0x000097A500000000 AS DateTime), 850)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (13, 48, 238, CAST(0x0000994500000000 AS DateTime), CAST(0x0000994C00000000 AS DateTime), 2000)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (14, 36, 226, CAST(0x000097A400000000 AS DateTime), CAST(0x000097AB00000000 AS DateTime), 1100)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (15, 74, 264, CAST(0x00009CC200000000 AS DateTime), CAST(0x00009CC900000000 AS DateTime), 1300)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (16, 3, 193, CAST(0x0000934100000000 AS DateTime), CAST(0x0000934800000000 AS DateTime), 1900)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (17, 65, 255, CAST(0x00009B9000000000 AS DateTime), CAST(0x00009B9700000000 AS DateTime), 1500)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (18, 75, 265, CAST(0x00009CE400000000 AS DateTime), CAST(0x00009CEB00000000 AS DateTime), 2100)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (19, 51, 241, CAST(0x000099B600000000 AS DateTime), CAST(0x000099BD00000000 AS DateTime), 1500)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (20, 24, 214, CAST(0x0000961800000000 AS DateTime), CAST(0x0000961F00000000 AS DateTime), 1499)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (21, 62, 252, CAST(0x00009B1C00000000 AS DateTime), CAST(0x00009B2300000000 AS DateTime), 1500)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (22, 64, 254, CAST(0x00009B6B00000000 AS DateTime), CAST(0x00009B7200000000 AS DateTime), 2100)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (23, 75, 265, CAST(0x00009CDB00000000 AS DateTime), CAST(0x00009CE200000000 AS DateTime), 1500)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (24, 3, 193, CAST(0x0000934700000000 AS DateTime), CAST(0x0000934E00000000 AS DateTime), 2300)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (25, 53, 243, CAST(0x000099F100000000 AS DateTime), CAST(0x000099F800000000 AS DateTime), 1500)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (26, 40, 230, CAST(0x0000983500000000 AS DateTime), CAST(0x0000983C00000000 AS DateTime), 1300)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (27, 71, 261, CAST(0x00009C4700000000 AS DateTime), CAST(0x00009C4E00000000 AS DateTime), 1500)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (28, 52, 242, CAST(0x000099D100000000 AS DateTime), CAST(0x000099D800000000 AS DateTime), 1200)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (29, 42, 232, CAST(0x0000986900000000 AS DateTime), CAST(0x0000987000000000 AS DateTime), 1500)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (30, 7, 197, CAST(0x000093C300000000 AS DateTime), CAST(0x000093CA00000000 AS DateTime), 1200)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (31, 15, 205, CAST(0x000094D200000000 AS DateTime), CAST(0x000094D900000000 AS DateTime), 1500)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (32, 34, 224, CAST(0x0000977A00000000 AS DateTime), CAST(0x0000978100000000 AS DateTime), 1500)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (33, 23, 213, CAST(0x000095EB00000000 AS DateTime), CAST(0x000095F200000000 AS DateTime), 2000)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (34, 75, 265, CAST(0x00009CD200000000 AS DateTime), CAST(0x00009CD900000000 AS DateTime), 1500)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (35, 49, 239, CAST(0x0000995E00000000 AS DateTime), CAST(0x0000996500000000 AS DateTime), 1500)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (36, 58, 248, CAST(0x00009A9200000000 AS DateTime), CAST(0x00009A9900000000 AS DateTime), 1500)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (37, 3, 193, CAST(0x0000934100000000 AS DateTime), CAST(0x0000934800000000 AS DateTime), 1500)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (38, 29, 219, CAST(0x000096C100000000 AS DateTime), CAST(0x000096C800000000 AS DateTime), 1500)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (39, 26, 216, CAST(0x0000966100000000 AS DateTime), CAST(0x0000966800000000 AS DateTime), 2000)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (40, 72, 262, CAST(0x00009C8300000000 AS DateTime), CAST(0x00009C8A00000000 AS DateTime), 1500)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (41, 38, 228, CAST(0x000097FF00000000 AS DateTime), CAST(0x0000980600000000 AS DateTime), 1500)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (42, 54, 244, CAST(0x00009A1A00000000 AS DateTime), CAST(0x00009A2100000000 AS DateTime), 1500)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (43, 9, 199, CAST(0x0000942400000000 AS DateTime), CAST(0x0000942B00000000 AS DateTime), 1500)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (44, 21, 211, CAST(0x000095AE00000000 AS DateTime), CAST(0x000095B500000000 AS DateTime), 2000)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (45, 69, 259, CAST(0x00009C0200000000 AS DateTime), CAST(0x00009C0900000000 AS DateTime), 1500)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (46, 60, 250, CAST(0x00009AE300000000 AS DateTime), CAST(0x00009AEA00000000 AS DateTime), 1500)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (47, 26, 216, CAST(0x0000965100000000 AS DateTime), CAST(0x0000965800000000 AS DateTime), 1500)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (48, 80, 215, CAST(0x0000978400000000 AS DateTime), CAST(0x0000979200000000 AS DateTime), 1200)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (49, 12, 202, CAST(0x0000946B00000000 AS DateTime), CAST(0x0000947200000000 AS DateTime), 1500)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (50, 17, 207, CAST(0x0000952900000000 AS DateTime), CAST(0x0000953000000000 AS DateTime), 1900)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (51, 31, 221, CAST(0x0000970C00000000 AS DateTime), CAST(0x0000971300000000 AS DateTime), 1500)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (52, 54, 244, CAST(0x00009A2100000000 AS DateTime), CAST(0x00009A2800000000 AS DateTime), 1200)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (53, 47, 237, CAST(0x0000992400000000 AS DateTime), CAST(0x0000992B00000000 AS DateTime), 750)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (54, 37, 36, CAST(0x000097D300000000 AS DateTime), CAST(0x000097DA00000000 AS DateTime), 1200)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (55, 15, 205, CAST(0x000094E600000000 AS DateTime), CAST(0x000094ED00000000 AS DateTime), 1500)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (56, 66, 256, CAST(0x00009BB800000000 AS DateTime), CAST(0x00009BBF00000000 AS DateTime), 1300)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (57, 62, 252, CAST(0x00009B3100000000 AS DateTime), CAST(0x00009B3800000000 AS DateTime), 1500)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (58, 56, 246, CAST(0x00009A4B00000000 AS DateTime), CAST(0x00009A5200000000 AS DateTime), 1500)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (59, 65, 255, CAST(0x00009B8500000000 AS DateTime), CAST(0x00009B8C00000000 AS DateTime), 1200)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (60, 51, 241, CAST(0x000099BD00000000 AS DateTime), CAST(0x000099C400000000 AS DateTime), 1500)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (61, 47, 237, CAST(0x0000993100000000 AS DateTime), CAST(0x0000993800000000 AS DateTime), 1800)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (62, 17, 207, CAST(0x0000952200000000 AS DateTime), CAST(0x0000952900000000 AS DateTime), 2100)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (63, 68, 258, CAST(0x00009BE400000000 AS DateTime), CAST(0x00009BEB00000000 AS DateTime), 1500)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (64, 68, 258, CAST(0x00009BE700000000 AS DateTime), CAST(0x00009BEE00000000 AS DateTime), 1300)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (65, 7, 197, CAST(0x000093D100000000 AS DateTime), CAST(0x000093D800000000 AS DateTime), 1500)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (66, 63, 253, CAST(0x00009B5300000000 AS DateTime), CAST(0x00009B5A00000000 AS DateTime), 2000)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (67, 13, 203, CAST(0x000094A600000000 AS DateTime), CAST(0x000094AD00000000 AS DateTime), 1500)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (68, 49, 239, CAST(0x0000996200000000 AS DateTime), CAST(0x0000996900000000 AS DateTime), 1300)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (69, 63, 253, CAST(0x00009B3500000000 AS DateTime), CAST(0x00009B3C00000000 AS DateTime), 2000)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (70, 17, 207, CAST(0x0000952400000000 AS DateTime), CAST(0x0000952B00000000 AS DateTime), 1300)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (73, 22, 243, CAST(0x00009B9700000000 AS DateTime), CAST(0x00009B9E00000000 AS DateTime), 1500)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (75, 22, 220, CAST(0x00009BFC00000000 AS DateTime), CAST(0x00009C0400000000 AS DateTime), 950)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (76, 10, 200, CAST(0x00009C8A00000000 AS DateTime), CAST(0x00009C8F00000000 AS DateTime), NULL)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (77, 78, 17, CAST(0x00009C8A00000000 AS DateTime), CAST(0x00009C9400000000 AS DateTime), NULL)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (78, 55, 245, CAST(0x00009E7F00000000 AS DateTime), CAST(0x00009E8300000000 AS DateTime), 1572)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (79, 62, 252, CAST(0x00009F6400000000 AS DateTime), CAST(0x00009F6B00000000 AS DateTime), 1252)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (80, 58, 248, CAST(0x00009EE600000000 AS DateTime), CAST(0x00009EED00000000 AS DateTime), 1300)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (81, 42, 232, CAST(0x00009CCE00000000 AS DateTime), CAST(0x00009CD500000000 AS DateTime), 1500)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (82, 16, 206, CAST(0x0000994900000000 AS DateTime), CAST(0x0000995000000000 AS DateTime), 1200)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (83, 42, 232, CAST(0x00009CD000000000 AS DateTime), CAST(0x00009CD700000000 AS DateTime), 2500)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (84, 68, 258, CAST(0x0000A04700000000 AS DateTime), CAST(0x0000A04E00000000 AS DateTime), 2000)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (85, 34, 224, CAST(0x00009BA600000000 AS DateTime), CAST(0x00009BAD00000000 AS DateTime), 1300)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (86, 74, 264, CAST(0x0000A0FE00000000 AS DateTime), CAST(0x0000A10500000000 AS DateTime), 1500)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (87, 21, 211, CAST(0x000099F600000000 AS DateTime), CAST(0x000099FD00000000 AS DateTime), 2000)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (88, 22, 212, CAST(0x00009A2500000000 AS DateTime), CAST(0x00009A2C00000000 AS DateTime), 1500)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (89, 36, 226, CAST(0x00009BE600000000 AS DateTime), CAST(0x00009BED00000000 AS DateTime), 850)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (90, 48, 238, CAST(0x00009D8D00000000 AS DateTime), CAST(0x00009D9400000000 AS DateTime), 2000)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (91, 36, 226, CAST(0x00009BEC00000000 AS DateTime), CAST(0x00009BF300000000 AS DateTime), 1100)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (92, 74, 264, CAST(0x0000A10A00000000 AS DateTime), CAST(0x0000A11100000000 AS DateTime), 1300)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (93, 3, 193, CAST(0x0000978900000000 AS DateTime), CAST(0x0000979000000000 AS DateTime), 1900)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (94, 65, 255, CAST(0x00009FD700000000 AS DateTime), CAST(0x00009FDE00000000 AS DateTime), 1500)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (95, 75, 265, CAST(0x0000A12C00000000 AS DateTime), CAST(0x0000A13300000000 AS DateTime), 2100)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (96, 51, 241, CAST(0x00009DFE00000000 AS DateTime), CAST(0x00009E0500000000 AS DateTime), 1500)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (97, 24, 214, CAST(0x00009A6000000000 AS DateTime), CAST(0x00009A6700000000 AS DateTime), 1499)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (98, 62, 252, CAST(0x00009F6300000000 AS DateTime), CAST(0x00009F6A00000000 AS DateTime), 1500)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (99, 64, 254, CAST(0x00009FB200000000 AS DateTime), CAST(0x00009FB900000000 AS DateTime), 2100)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (100, 75, 265, CAST(0x0000A12300000000 AS DateTime), CAST(0x0000A12A00000000 AS DateTime), 1500)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (101, 3, 193, CAST(0x0000978F00000000 AS DateTime), CAST(0x0000979600000000 AS DateTime), 2300)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (102, 53, 243, CAST(0x00009E3900000000 AS DateTime), CAST(0x00009E4000000000 AS DateTime), 1500)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (103, 40, 230, CAST(0x00009C7D00000000 AS DateTime), CAST(0x00009C8400000000 AS DateTime), 1300)
GO
print 'Processed 100 total records'
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (104, 71, 261, CAST(0x0000A08F00000000 AS DateTime), CAST(0x0000A09600000000 AS DateTime), 1500)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (105, 52, 242, CAST(0x00009E1900000000 AS DateTime), CAST(0x00009E2000000000 AS DateTime), 1200)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (106, 42, 232, CAST(0x00009CB100000000 AS DateTime), CAST(0x00009CB800000000 AS DateTime), 1500)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (107, 7, 197, CAST(0x0000980B00000000 AS DateTime), CAST(0x0000981200000000 AS DateTime), 1200)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (108, 15, 205, CAST(0x0000991900000000 AS DateTime), CAST(0x0000992000000000 AS DateTime), 1500)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (109, 34, 224, CAST(0x00009BC200000000 AS DateTime), CAST(0x00009BC900000000 AS DateTime), 1500)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (110, 23, 213, CAST(0x00009A3200000000 AS DateTime), CAST(0x00009A3900000000 AS DateTime), 2000)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (111, 75, 265, CAST(0x0000A11A00000000 AS DateTime), CAST(0x0000A12100000000 AS DateTime), 1500)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (112, 49, 239, CAST(0x00009DA600000000 AS DateTime), CAST(0x00009DAD00000000 AS DateTime), 1500)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (113, 58, 248, CAST(0x00009ED900000000 AS DateTime), CAST(0x00009EE000000000 AS DateTime), 1500)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (114, 3, 193, CAST(0x0000978900000000 AS DateTime), CAST(0x0000979000000000 AS DateTime), 1500)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (115, 29, 219, CAST(0x00009B0900000000 AS DateTime), CAST(0x00009B1000000000 AS DateTime), 1500)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (116, 26, 216, CAST(0x00009AA900000000 AS DateTime), CAST(0x00009AB000000000 AS DateTime), 2000)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (117, 72, 262, CAST(0x0000A0CB00000000 AS DateTime), CAST(0x0000A0D200000000 AS DateTime), 1500)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (118, 38, 228, CAST(0x00009C4700000000 AS DateTime), CAST(0x00009C4E00000000 AS DateTime), 1500)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (119, 54, 244, CAST(0x00009E6200000000 AS DateTime), CAST(0x00009E6900000000 AS DateTime), 1500)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (120, 9, 199, CAST(0x0000986C00000000 AS DateTime), CAST(0x0000987300000000 AS DateTime), 1500)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (121, 21, 211, CAST(0x000099F500000000 AS DateTime), CAST(0x000099FC00000000 AS DateTime), 2000)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (122, 69, 259, CAST(0x0000A04A00000000 AS DateTime), CAST(0x0000A05100000000 AS DateTime), 1500)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (123, 60, 250, CAST(0x00009F2A00000000 AS DateTime), CAST(0x00009F3100000000 AS DateTime), 1500)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (124, 26, 216, CAST(0x00009A9900000000 AS DateTime), CAST(0x00009AA000000000 AS DateTime), 1500)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (125, 79, 215, CAST(0x00009BCC00000000 AS DateTime), CAST(0x00009BD500000000 AS DateTime), 1200)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (126, 12, 202, CAST(0x000098B300000000 AS DateTime), CAST(0x000098BA00000000 AS DateTime), 1500)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (127, 17, 207, CAST(0x0000997000000000 AS DateTime), CAST(0x0000997700000000 AS DateTime), 1900)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (128, 31, 221, CAST(0x00009B5400000000 AS DateTime), CAST(0x00009B5B00000000 AS DateTime), 1500)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (129, 54, 244, CAST(0x00009E6900000000 AS DateTime), CAST(0x00009E7000000000 AS DateTime), 1200)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (130, 47, 237, CAST(0x00009D6C00000000 AS DateTime), CAST(0x00009D7300000000 AS DateTime), 750)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (131, 37, 36, CAST(0x00009C1B00000000 AS DateTime), CAST(0x00009C2200000000 AS DateTime), 1200)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (132, 15, 205, CAST(0x0000992D00000000 AS DateTime), CAST(0x0000993400000000 AS DateTime), 1500)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (133, 66, 256, CAST(0x00009FFF00000000 AS DateTime), CAST(0x0000A00700000000 AS DateTime), 1300)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (134, 62, 252, CAST(0x00009F7800000000 AS DateTime), CAST(0x00009F7F00000000 AS DateTime), 1500)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (135, 56, 246, CAST(0x00009E9300000000 AS DateTime), CAST(0x00009E9900000000 AS DateTime), 1500)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (136, 65, 255, CAST(0x00009FCC00000000 AS DateTime), CAST(0x00009FD300000000 AS DateTime), 1200)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (137, 51, 241, CAST(0x00009E0500000000 AS DateTime), CAST(0x00009E0C00000000 AS DateTime), 1500)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (138, 47, 237, CAST(0x00009D7900000000 AS DateTime), CAST(0x00009D8000000000 AS DateTime), 1800)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (139, 17, 207, CAST(0x0000996900000000 AS DateTime), CAST(0x0000997000000000 AS DateTime), 2100)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (140, 68, 258, CAST(0x0000A02C00000000 AS DateTime), CAST(0x0000A03300000000 AS DateTime), 1500)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (141, 68, 258, CAST(0x0000A02F00000000 AS DateTime), CAST(0x0000A03600000000 AS DateTime), 1300)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (142, 7, 197, CAST(0x0000981900000000 AS DateTime), CAST(0x0000982000000000 AS DateTime), 1500)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (143, 63, 253, CAST(0x00009F9A00000000 AS DateTime), CAST(0x00009FA100000000 AS DateTime), 2000)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (144, 13, 203, CAST(0x000098ED00000000 AS DateTime), CAST(0x000098F400000000 AS DateTime), 1500)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (145, 49, 239, CAST(0x00009DAA00000000 AS DateTime), CAST(0x00009DB100000000 AS DateTime), 1300)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (146, 63, 253, CAST(0x00009F7C00000000 AS DateTime), CAST(0x00009F8300000000 AS DateTime), 2000)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (147, 17, 207, CAST(0x0000996B00000000 AS DateTime), CAST(0x0000997200000000 AS DateTime), 1300)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (148, 22, 243, CAST(0x00009FDE00000000 AS DateTime), CAST(0x00009FE500000000 AS DateTime), 1500)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (149, 22, 220, CAST(0x0000A04400000000 AS DateTime), CAST(0x0000A04C00000000 AS DateTime), 950)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (150, 10, 200, CAST(0x0000A0D200000000 AS DateTime), CAST(0x0000A0D700000000 AS DateTime), NULL)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (151, 35, 17, CAST(0x0000A0D200000000 AS DateTime), CAST(0x0000A0D200000000 AS DateTime), NULL)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (152, 33, 223, CAST(0x00009D7600000000 AS DateTime), CAST(0x00009D8200000000 AS DateTime), NULL)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (153, 25, 13, CAST(0x00009D5500000000 AS DateTime), CAST(0x00009D5500000000 AS DateTime), NULL)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (154, 81, 36, CAST(0x00009D5500000000 AS DateTime), CAST(0x00009D5500000000 AS DateTime), NULL)
INSERT [dbo].[Events] ([EventID], [LocationID], [LodgingID], [StartDate], [EndDate], [TripCostUSD]) VALUES (155, 30, 220, CAST(0x00009D5500000000 AS DateTime), CAST(0x00009D5500000000 AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Events] OFF
/****** Object:  StoredProcedure [dbo].[EventLocationsInDateRange]    Script Date: 12/16/2010 19:44:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EventLocationsInDateRange]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[EventLocationsInDateRange]
@startdate DATETIME,
@enddate DATETIME

AS 

SELECT     Locations.*
FROM         Locations INNER JOIN
                      Events ON Locations.LocationID = Events.LocationID
WHERE      events.startdate>=@startdate AND events.startdate<=@enddate
GROUP BY Locations.Locationid,locations.[LocationName]
' 
END
GO
/****** Object:  Table [dbo].[EventActivities]    Script Date: 12/16/2010 19:44:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EventActivities]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EventActivities](
	[EventID] [int] NOT NULL,
	[ActivityID] [int] NOT NULL,
 CONSTRAINT [PK_EventActivities] PRIMARY KEY CLUSTERED 
(
	[EventID] ASC,
	[ActivityID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (1, 1)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (1, 3)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (1, 6)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (1, 8)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (2, 1)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (3, 1)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (3, 22)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (4, 14)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (5, 6)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (5, 7)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (5, 18)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (6, 3)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (7, 5)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (8, 3)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (9, 4)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (10, 5)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (11, 5)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (12, 6)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (13, 6)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (14, 6)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (15, 7)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (16, 17)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (17, 8)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (18, 7)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (19, 9)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (20, 8)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (21, 8)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (22, 9)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (23, 10)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (24, 21)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (25, 16)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (26, 12)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (27, 12)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (28, 11)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (29, 12)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (30, 14)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (31, 12)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (32, 12)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (33, 14)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (34, 13)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (35, 13)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (36, 17)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (37, 21)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (38, 14)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (39, 14)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (40, 16)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (41, 17)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (42, 18)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (43, 19)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (44, 16)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (45, 18)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (46, 17)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (46, 28)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (47, 10)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (47, 18)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (48, 8)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (48, 18)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (49, 20)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (50, 20)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (51, 19)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (52, 23)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (53, 21)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (54, 20)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (55, 21)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (56, 22)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (57, 22)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (58, 21)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (59, 23)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (60, 22)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (61, 22)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (62, 24)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (63, 24)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (64, 23)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (65, 23)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (66, 25)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (67, 25)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (68, 25)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (69, 25)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (70, 25)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (73, 10)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (73, 18)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (73, 20)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (73, 22)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (75, 7)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (75, 19)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (76, 15)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (76, 21)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (76, 25)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (150, 6)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (151, 7)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (151, 17)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (152, 7)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (154, 6)
INSERT [dbo].[EventActivities] ([EventID], [ActivityID]) VALUES (155, 5)
/****** Object:  StoredProcedure [dbo].[TripLocationsInDateRange]    Script Date: 12/16/2010 19:44:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TripLocationsInDateRange]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[TripLocationsInDateRange]
@startdate DATETIME,
@enddate DATETIME

AS 

SELECT     Locations.*
FROM         Locations INNER JOIN
                      Events ON Locations.LocationID = Events.LocationID
WHERE      events.startdate>=@startdate AND events.startdate<=@enddate
GROUP BY Locations.Locationid,locations.[LocationName]
' 
END
GO
/****** Object:  Table [dbo].[Reservations]    Script Date: 12/16/2010 19:44:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Reservations]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Reservations](
	[ReservationID] [int] IDENTITY(1,1) NOT NULL,
	[ReservationDate] [datetime] NOT NULL,
	[ContactID] [int] NOT NULL,
	[EventID] [int] NULL,
	[RowVersion] [timestamp] NOT NULL,
 CONSTRAINT [PK_Reservations] PRIMARY KEY CLUSTERED 
(
	[ReservationID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[Reservations] ON
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (2, CAST(0x00009D1B00CF3145 AS DateTime), 607, 40)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (3, CAST(0x00009AFC009952C8 AS DateTime), 569, 40)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (4, CAST(0x000094D20173DBEC AS DateTime), 420, 31)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (5, CAST(0x00009A46015EFD99 AS DateTime), 149, 20)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (6, CAST(0x000095CC00000000 AS DateTime), 420, 33)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (7, CAST(0x000097F301496B2C AS DateTime), 672, 33)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (8, CAST(0x00009B0800E9895B AS DateTime), 340, 3)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (10, CAST(0x000099F800F74190 AS DateTime), 199, 23)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (11, CAST(0x0000999F00000000 AS DateTime), 218, 60)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (12, CAST(0x00009877007A3AED AS DateTime), 360, 3)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (13, CAST(0x0000955D0009D3DB AS DateTime), 460, 37)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (14, CAST(0x0000987300B97F7E AS DateTime), 361, 49)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (16, CAST(0x0000975E00000000 AS DateTime), 20, 32)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (17, CAST(0x0000950600000000 AS DateTime), 647, 70)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (19, CAST(0x00009ACF01126F63 AS DateTime), 492, 27)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (20, CAST(0x0000987D00FFEC01 AS DateTime), 236, 68)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (21, CAST(0x000096ED00000000 AS DateTime), 607, 51)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (22, CAST(0x000095FC00000000 AS DateTime), 630, 20)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (24, CAST(0x000094700059E864 AS DateTime), 20, 33)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (25, CAST(0x000099B60188FBF1 AS DateTime), 507, 16)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (26, CAST(0x000096ED00000000 AS DateTime), 398, 51)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (27, CAST(0x000097C10075AC89 AS DateTime), 694, 35)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (28, CAST(0x00009A4A00BD7ABF AS DateTime), 504, 62)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (29, CAST(0x00009A0200000000 AS DateTime), 412, 52)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (30, CAST(0x000094FC00460C91 AS DateTime), 56, 48)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (31, CAST(0x0000972300A0E79D AS DateTime), 145, 16)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (32, CAST(0x000097B20054FD87 AS DateTime), 346, 63)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (33, CAST(0x00009B2400148525 AS DateTime), 220, 59)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (35, CAST(0x00009711012BBAC0 AS DateTime), 470, 16)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (36, CAST(0x0000968F008A7FBA AS DateTime), 568, 34)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (37, CAST(0x000096ED00000000 AS DateTime), 20, 51)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (38, CAST(0x000097AA0155D1FD AS DateTime), 308, 8)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (39, CAST(0x000096ED00000000 AS DateTime), 275, 51)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (41, CAST(0x000098DC00D90578 AS DateTime), 380, 34)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (42, CAST(0x00009A4600FEA1B0 AS DateTime), 533, 23)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (43, CAST(0x0000963200934CA9 AS DateTime), 88, 33)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (44, CAST(0x00009AB5008B8295 AS DateTime), 199, 57)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (45, CAST(0x000097F301496B2C AS DateTime), 672, 54)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (46, CAST(0x00009AFA013C4AC0 AS DateTime), 583, 21)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (47, CAST(0x000095BE014616F3 AS DateTime), 259, 47)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (48, CAST(0x00009AF300885E9C AS DateTime), 347, 21)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (49, CAST(0x000096B70097917A AS DateTime), 112, 16)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (50, CAST(0x000094E300000000 AS DateTime), 160, 5)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (51, CAST(0x00009416007BB50B AS DateTime), 325, 49)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (52, CAST(0x000094FE00C504F5 AS DateTime), 533, 65)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (53, CAST(0x00009A1300BA1DAD AS DateTime), 454, 66)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (54, CAST(0x000093FC012B6725 AS DateTime), 372, 64)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (55, CAST(0x000099A7009AF6A1 AS DateTime), 147, 7)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (56, CAST(0x00009916002C1268 AS DateTime), 650, 8)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (57, CAST(0x00009ADE00BE5B8E AS DateTime), 608, 67)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (58, CAST(0x000095BF00000000 AS DateTime), 556, 11)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (59, CAST(0x000096C600CAA8FF AS DateTime), 637, 40)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (60, CAST(0x00009ACF01126F63 AS DateTime), 492, 44)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (61, CAST(0x0000963B00F8B37B AS DateTime), 456, 38)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (62, CAST(0x000094C0012615C9 AS DateTime), 160, 60)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (63, CAST(0x000099C8004689E0 AS DateTime), 670, 20)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (64, CAST(0x000099C8004689E0 AS DateTime), 670, 68)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (65, CAST(0x00009AB101264732 AS DateTime), 57, 28)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (66, CAST(0x000098EF018102F7 AS DateTime), 624, 20)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (67, CAST(0x000096A200000000 AS DateTime), 129, 38)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (68, CAST(0x00009711012BBAC0 AS DateTime), 470, 20)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (69, CAST(0x00009A4E010430FB AS DateTime), 622, 60)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (70, CAST(0x0000973F00000000 AS DateTime), 160, 8)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (72, CAST(0x0000959000000000 AS DateTime), 370, 10)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (73, CAST(0x000099FB00DCC42D AS DateTime), 474, 44)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (74, CAST(0x0000976800000000 AS DateTime), 533, 48)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (75, CAST(0x0000992600000000 AS DateTime), 597, 13)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (76, CAST(0x000097A1017E2BD4 AS DateTime), 66, 43)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (77, CAST(0x000098290061BEA9 AS DateTime), 547, 70)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (78, CAST(0x000094E300000000 AS DateTime), 533, 5)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (79, CAST(0x0000952E0044BB77 AS DateTime), 95, 59)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (80, CAST(0x000097F301496B2C AS DateTime), 672, 46)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (81, CAST(0x0000954A00DA94D7 AS DateTime), 146, 68)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (82, CAST(0x000097F40178CFEC AS DateTime), 363, 36)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (83, CAST(0x00009AC1005E68F0 AS DateTime), 403, 57)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (84, CAST(0x000097C0006B74C5 AS DateTime), 257, 41)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (85, CAST(0x0000976C006DC038 AS DateTime), 488, 48)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (87, CAST(0x00009A44005888F3 AS DateTime), 623, 33)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (88, CAST(0x000096DD00E2ED48 AS DateTime), 597, 16)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (89, CAST(0x0000956500FFDAAD AS DateTime), 583, 17)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (90, CAST(0x0000972000000000 AS DateTime), 569, 32)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (91, CAST(0x000097DE00E3CFCB AS DateTime), 695, 2)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (92, CAST(0x00009434002C950A AS DateTime), 220, 58)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (93, CAST(0x000099F400304726 AS DateTime), 398, 64)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (94, CAST(0x00009A7400000000 AS DateTime), 480, 36)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (95, CAST(0x0000950600000000 AS DateTime), 258, 70)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (96, CAST(0x000099CD00B2716F AS DateTime), 204, 46)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (97, CAST(0x0000954E0022CE6C AS DateTime), 607, 68)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (98, CAST(0x000099C200AA3F60 AS DateTime), 164, 55)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (99, CAST(0x0000972300A0E79D AS DateTime), 145, 30)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (100, CAST(0x00009A0E00ABB62C AS DateTime), 43, 63)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (101, CAST(0x0000963B00F8B37B AS DateTime), 456, 18)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (102, CAST(0x0000988700050649 AS DateTime), 505, 63)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (103, CAST(0x0000955D0009D3DB AS DateTime), 460, 62)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (104, CAST(0x0000978301725E92 AS DateTime), 693, 55)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (105, CAST(0x00009565010257C7 AS DateTime), 160, 25)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (106, CAST(0x0000998A0036701C AS DateTime), 693, 3)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (107, CAST(0x00009AFF01281190 AS DateTime), 40, 9)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (108, CAST(0x0000942D00FA5B4C AS DateTime), 671, 35)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (109, CAST(0x00009ACF01126F63 AS DateTime), 492, 19)
GO
print 'Processed 100 total records'
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (110, CAST(0x0000976100E2B36B AS DateTime), 65, 17)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (111, CAST(0x000096B70097917A AS DateTime), 112, 10)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (112, CAST(0x0000997A00064730 AS DateTime), 79, 40)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (113, CAST(0x000099FF017831BE AS DateTime), 452, 24)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (114, CAST(0x000095D8015BA9A6 AS DateTime), 698, 7)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (115, CAST(0x0000950B00000000 AS DateTime), 372, 50)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (116, CAST(0x000098A20146B658 AS DateTime), 112, 46)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (117, CAST(0x00009ACF01126F63 AS DateTime), 492, 19)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (118, CAST(0x000094E30026C2D8 AS DateTime), 425, 14)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (119, CAST(0x000099C200AA3F60 AS DateTime), 164, 35)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (120, CAST(0x00009A0A00FC0501 AS DateTime), 453, 23)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (121, CAST(0x0000997C012F3FE6 AS DateTime), 2, 18)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (122, CAST(0x000097C200A2DF63 AS DateTime), 291, 43)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (123, CAST(0x000096AB0145BE33 AS DateTime), 635, 38)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (124, CAST(0x00009AB300D8562B AS DateTime), 39, 68)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (125, CAST(0x000097DD00811393 AS DateTime), 203, 55)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (126, CAST(0x00009A9000C50379 AS DateTime), 515, 14)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (129, CAST(0x000097D8013241F9 AS DateTime), 311, 45)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (130, CAST(0x0000951301690863 AS DateTime), 398, 17)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (131, CAST(0x000097CA014E3859 AS DateTime), 203, 61)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (132, CAST(0x0000977800F561BF AS DateTime), 380, 64)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (133, CAST(0x000095CC00000000 AS DateTime), 402, 33)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (134, CAST(0x00009A38011A6A42 AS DateTime), 38, 55)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (135, CAST(0x000099890023EC5F AS DateTime), 203, 46)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (136, CAST(0x000096B000BBD769 AS DateTime), 376, 43)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (137, CAST(0x0000958F00000000 AS DateTime), 630, 44)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (138, CAST(0x000099FF017831BE AS DateTime), 452, 62)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (139, CAST(0x0000994F0123B637 AS DateTime), 70, 10)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (140, CAST(0x0000988200F30692 AS DateTime), 559, 38)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (141, CAST(0x0000976800000000 AS DateTime), 323, 48)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (142, CAST(0x0000981C012FA26A AS DateTime), 694, 61)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (143, CAST(0x00009953013037C1 AS DateTime), 97, 56)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (144, CAST(0x000099B60188FBF1 AS DateTime), 507, 59)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (145, CAST(0x00009A0A00FC0501 AS DateTime), 453, 37)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (146, CAST(0x00009A4E010430FB AS DateTime), 622, 45)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (147, CAST(0x0000987B01471502 AS DateTime), 493, 23)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (148, CAST(0x0000970F00601F80 AS DateTime), 425, 57)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (149, CAST(0x00009533011D231C AS DateTime), 129, 65)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (150, CAST(0x0000978500000000 AS DateTime), 145, 14)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (151, CAST(0x000099FF017831BE AS DateTime), 452, 47)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (152, CAST(0x000096A200000000 AS DateTime), 187, 38)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (154, CAST(0x0000973F00000000 AS DateTime), 425, 8)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (155, CAST(0x00009AFF01281190 AS DateTime), 40, 9)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (156, CAST(0x0000977B00FFCA5F AS DateTime), 192, 40)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (157, CAST(0x00009A3001424AA3 AS DateTime), 626, 45)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (158, CAST(0x0000953C011828DC AS DateTime), 425, 40)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (159, CAST(0x00009711012BBAC0 AS DateTime), 470, 70)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (160, CAST(0x000095B8005DF3E3 AS DateTime), 384, 9)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (161, CAST(0x0000959800217256 AS DateTime), 708, 45)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (162, CAST(0x000098B901217621 AS DateTime), 56, 18)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (163, CAST(0x000099A8011ADEEE AS DateTime), 384, 1)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (164, CAST(0x00009A1E010CAF08 AS DateTime), 118, 21)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (165, CAST(0x000097C800517876 AS DateTime), 601, 58)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (166, CAST(0x00009711012BBAC0 AS DateTime), 470, 67)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (167, CAST(0x000099C6015FC29B AS DateTime), 434, 67)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (168, CAST(0x000096A3001111A2 AS DateTime), 415, 63)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (169, CAST(0x000097760137BD46 AS DateTime), 490, 60)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (171, CAST(0x000096EA0183E70C AS DateTime), 221, 30)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (172, CAST(0x00009AFF01281190 AS DateTime), 40, 30)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (174, CAST(0x00009AF501838BBD AS DateTime), 370, 64)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (175, CAST(0x000098CE0089F088 AS DateTime), 151, 48)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (176, CAST(0x00009A0E00ABB62C AS DateTime), 43, 33)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (177, CAST(0x000099060106ADDD AS DateTime), 172, 16)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (178, CAST(0x0000935500C427C2 AS DateTime), 113, 37)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (179, CAST(0x000095A900C210B8 AS DateTime), 345, 67)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (180, CAST(0x000097B20054FD87 AS DateTime), 346, 35)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (181, CAST(0x000095D300C401DD AS DateTime), 12, 14)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (182, CAST(0x000097D8013241F9 AS DateTime), 311, 44)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (183, CAST(0x000097C800517876 AS DateTime), 601, 64)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (184, CAST(0x000097AE0041BF23 AS DateTime), 148, 53)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (185, CAST(0x0000978F0126C4F6 AS DateTime), 674, 9)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (186, CAST(0x000094700059E864 AS DateTime), 20, 43)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (187, CAST(0x000099C900220290 AS DateTime), 383, 40)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (188, CAST(0x00009AC90086035D AS DateTime), 707, 61)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (190, CAST(0x000095B900000000 AS DateTime), 7, 47)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (191, CAST(0x000099FB00DCC42D AS DateTime), 474, 38)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (192, CAST(0x00009B180185EB54 AS DateTime), 202, 12)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (193, CAST(0x000093E200370C5E AS DateTime), 708, 5)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (194, CAST(0x00009A6200CB6DA3 AS DateTime), 437, 69)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (195, CAST(0x000097720078CB9F AS DateTime), 570, 29)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (196, CAST(0x000097C0006B74C5 AS DateTime), 257, 37)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (199, CAST(0x000095E0009758B5 AS DateTime), 668, 55)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (201, CAST(0x00009AD4016D9E14 AS DateTime), 190, 13)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (202, CAST(0x0000985B006C50C8 AS DateTime), 97, 13)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (203, CAST(0x00009A0200000000 AS DateTime), 670, 52)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (204, CAST(0x000096D9005B9DF3 AS DateTime), 131, 17)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (205, CAST(0x000098E3013AC958 AS DateTime), 654, 4)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (206, CAST(0x0000979D00A3AC97 AS DateTime), 406, 34)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (208, CAST(0x00009A3701095089 AS DateTime), 384, 56)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (209, CAST(0x00009A8B016C9325 AS DateTime), 282, 8)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (211, CAST(0x000097A400CDB588 AS DateTime), 20, 27)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (212, CAST(0x000095EB014E2CB0 AS DateTime), 505, 32)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (213, CAST(0x000097E100000000 AS DateTime), 95, 41)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (214, CAST(0x00009899008F364E AS DateTime), 147, 55)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (215, CAST(0x000096B000BBD769 AS DateTime), 376, 49)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (216, CAST(0x000097AB01373AB0 AS DateTime), 436, 33)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (217, CAST(0x0000985C010CEA13 AS DateTime), 192, 59)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (218, CAST(0x000097E6004315B2 AS DateTime), 228, 64)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (219, CAST(0x000099E200EBAD9F AS DateTime), 186, 58)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (221, CAST(0x000093B200000000 AS DateTime), 97, 65)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (222, CAST(0x000099FF017831BE AS DateTime), 452, 70)
GO
print 'Processed 200 total records'
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (223, CAST(0x0000960B01874EE5 AS DateTime), 420, 39)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (224, CAST(0x000099FB00DCC42D AS DateTime), 474, 68)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (225, CAST(0x00009A270025A7E7 AS DateTime), 271, 31)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (226, CAST(0x0000970E00000000 AS DateTime), 12, 4)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (227, CAST(0x000097A1017E2BD4 AS DateTime), 66, 22)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (228, CAST(0x00009916002C1268 AS DateTime), 650, 61)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (229, CAST(0x000093BB0166FA94 AS DateTime), 528, 47)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (230, CAST(0x0000950600000000 AS DateTime), 669, 70)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (231, CAST(0x00009839016D9582 AS DateTime), 471, 4)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (232, CAST(0x00009AD4016D9E14 AS DateTime), 190, 50)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (233, CAST(0x0000977B010F9EE2 AS DateTime), 192, 58)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (234, CAST(0x0000971300AE8FEA AS DateTime), 363, 37)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (235, CAST(0x00009899008F364E AS DateTime), 147, 36)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (236, CAST(0x0000989F0057B115 AS DateTime), 668, 27)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (237, CAST(0x000093FC012B6725 AS DateTime), 372, 27)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (238, CAST(0x00009A99010F1CDC AS DateTime), 466, 59)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (239, CAST(0x000099220126214A AS DateTime), 245, 52)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (241, CAST(0x000099E200EBAD9F AS DateTime), 186, 6)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (243, CAST(0x000099FF017831BE AS DateTime), 452, 46)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (244, CAST(0x00009A2A00000000 AS DateTime), 2, 17)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (246, CAST(0x00009AC90086035D AS DateTime), 707, 52)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (247, CAST(0x0000978100814375 AS DateTime), 118, 42)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (248, CAST(0x000097720078CB9F AS DateTime), 570, 13)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (249, CAST(0x0000950400000000 AS DateTime), 59, 62)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (250, CAST(0x00009760013B7F18 AS DateTime), 146, 17)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (251, CAST(0x00009AB300D8562B AS DateTime), 39, 45)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (252, CAST(0x000097A000C725B2 AS DateTime), 79, 66)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (253, CAST(0x00009A3E007CB03D AS DateTime), 552, 39)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (254, CAST(0x0000999700000000 AS DateTime), 70, 19)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (255, CAST(0x000098EF018102F7 AS DateTime), 624, 12)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (256, CAST(0x00009711012BBAC0 AS DateTime), 470, 51)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (257, CAST(0x00009543007083E1 AS DateTime), 430, 40)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (258, CAST(0x000099E200EBAD9F AS DateTime), 186, 44)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (259, CAST(0x000098EF018102F7 AS DateTime), 624, 68)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (260, CAST(0x0000970500312CDB AS DateTime), 637, 48)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (261, CAST(0x000095A900C210B8 AS DateTime), 345, 50)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (262, CAST(0x000097F301496B2C AS DateTime), 672, 44)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (263, CAST(0x0000996F012DD7F4 AS DateTime), 592, 45)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (264, CAST(0x00009ACF0169949A AS DateTime), 353, 66)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (265, CAST(0x00009A270025A7E7 AS DateTime), 271, 8)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (266, CAST(0x0000999E015C9591 AS DateTime), 578, 64)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (267, CAST(0x0000977F00000000 AS DateTime), 331, 12)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (268, CAST(0x00009711012BBAC0 AS DateTime), 470, 55)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (270, CAST(0x000099FF017831BE AS DateTime), 452, 17)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (271, CAST(0x00009582016B9A02 AS DateTime), 59, 40)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (272, CAST(0x0000976800000000 AS DateTime), 456, 48)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (274, CAST(0x0000977F00000000 AS DateTime), 649, 12)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (275, CAST(0x00009AC1005E68F0 AS DateTime), 403, 32)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (276, CAST(0x000097F800CC60E1 AS DateTime), 101, 6)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (277, CAST(0x000098BE009B1C52 AS DateTime), 1, 68)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (278, CAST(0x000095FE00DD3E34 AS DateTime), 420, 64)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (279, CAST(0x000095BF00000000 AS DateTime), 490, 11)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (280, CAST(0x000097AA0113CFE8 AS DateTime), 308, 29)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (281, CAST(0x0000982C01103DD1 AS DateTime), 648, 43)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (282, CAST(0x000097C0006B74C5 AS DateTime), 257, 64)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (284, CAST(0x0000987600F7E936 AS DateTime), 390, 7)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (285, CAST(0x00009A4E010430FB AS DateTime), 622, 55)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (286, CAST(0x0000996600AF364C AS DateTime), 406, 23)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (287, CAST(0x000094C900A4FE64 AS DateTime), 398, 49)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (288, CAST(0x000097E40067567E AS DateTime), 124, 30)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (289, CAST(0x0000989300EE9AF5 AS DateTime), 462, 1)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (290, CAST(0x000096A3001111A2 AS DateTime), 415, 24)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (291, CAST(0x000097E9012DDDB1 AS DateTime), 236, 35)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (292, CAST(0x0000950400000000 AS DateTime), 187, 62)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (293, CAST(0x0000945D00F6BFD4 AS DateTime), 588, 51)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (294, CAST(0x00009ACF0169949A AS DateTime), 353, 8)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (295, CAST(0x000099610057BF75 AS DateTime), 677, 2)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (296, CAST(0x000095BE014616F3 AS DateTime), 259, 10)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (297, CAST(0x000095CC00000000 AS DateTime), 146, 33)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (298, CAST(0x0000935500C427C2 AS DateTime), 113, 37)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (299, CAST(0x000098F20060040A AS DateTime), 478, 22)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (300, CAST(0x00009A46015EFD99 AS DateTime), 149, 23)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (301, CAST(0x00009A6900A18F39 AS DateTime), 582, 46)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (302, CAST(0x00009A6A00D5CBB5 AS DateTime), 363, 73)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (303, CAST(0x000096440153DDDC AS DateTime), 569, 8)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (304, CAST(0x00009A960170EEA8 AS DateTime), 579, 8)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (317, CAST(0x00009A9801630156 AS DateTime), 582, 2)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (321, CAST(0x00009B2800000000 AS DateTime), 570, 66)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (327, CAST(0x00009B100134B562 AS DateTime), 300, 10)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (330, CAST(0x000093EF00E773B4 AS DateTime), 570, 10)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (331, CAST(0x00009B1300AE98EA AS DateTime), 330, 45)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (334, CAST(0x00009AAE00000000 AS DateTime), 579, 21)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (335, CAST(0x00009B9D0106AC89 AS DateTime), 291, 75)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (336, CAST(0x00009C8D010458B8 AS DateTime), 1, 34)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (346, CAST(0x00009D1101190CD3 AS DateTime), 1, 1)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (371, CAST(0x00009D400122B801 AS DateTime), 20, 3)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (372, CAST(0x00009D400122FBB1 AS DateTime), 20, 3)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (373, CAST(0x00009D410118F68E AS DateTime), 20, 4)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (375, CAST(0x00009D7C00F0F51B AS DateTime), 20, 3)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (378, CAST(0x00009DD80159ADCA AS DateTime), 570, 96)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (379, CAST(0x00009DD80177DD6F AS DateTime), 360, 102)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (380, CAST(0x00009E0B00000000 AS DateTime), 20, 3)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (381, CAST(0x00009DF80155593C AS DateTime), 20, 4)
INSERT [dbo].[Reservations] ([ReservationID], [ReservationDate], [ContactID], [EventID]) VALUES (382, CAST(0x00009DF801569A74 AS DateTime), 20, 4)
SET IDENTITY_INSERT [dbo].[Reservations] OFF
/****** Object:  StoredProcedure [dbo].[CustomersWhoTravelledinDateRange]    Script Date: 12/16/2010 19:44:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CustomersWhoTravelledinDateRange]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE  [dbo].[CustomersWhoTravelledinDateRange]

--returns customer records with contact info for customers
@startdate DATETIME,
@enddate datetime

AS

SELECT     Customers.ContactID, Customers.PrimaryDesintation, Customers.CustomerTypeID, Customers.InitialDate, Customers.SecondaryDestination, 
                      Customers.PrimaryActivity, Customers.SecondaryActivity, Customers.Notes, Contact.FirstName, Contact.LastName, Contact.Title, Contact.AddDate, 
                      Contact.ModifiedDate, ContactPersonalInfo.BirthDate, ContactPersonalInfo.HeightInches, ContactPersonalInfo.WeightPounds, 
                      ContactPersonalInfo.DietaryRestrictions,Contact.RowVersion
FROM         Customers INNER JOIN
                      Contact ON Customers.ContactID = Contact.ContactID INNER JOIN
                      ContactPersonalInfo ON Customers.ContactID = ContactPersonalInfo.ContactID
                      WHERE customers.contactid IN 
(SELECT     Customers.COntactID
FROM          Customers INNER JOIN
                      Reservations ON Customers.ContactID = Reservations.ContactID INNER JOIN
                      Events ON Reservations.EventID = Events.EventID
WHERE     events.startdate>=@startdate AND events.startdate<=@enddate
                      GROUP BY CUstomers.contactid)
' 
END
GO
/****** Object:  View [dbo].[CustomersinPastYear]    Script Date: 12/16/2010 19:44:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[CustomersinPastYear]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[CustomersinPastYear]

--returns customer records with contact info for customers who have been on 
--any trips with startdate in the past year

AS

SELECT     Customers.COntactID,Customers.PrimaryDesintation, Customers.CustomerTypeID, Customers.InitialDate, Customers.SecondaryDestination, Customers.PrimaryActivity, 
                      Customers.SecondaryActivity, Customers.Notes, Contact.FirstName, Contact.LastName, Contact.Title, Contact.AddDate, Contact.ModifiedDate
FROM          Customers INNER JOIN
                      Contact ON Customers.ContactID = Contact.ContactID 
                      WHERE customers.contactid IN 
(SELECT     Customers.COntactID
FROM          Customers INNER JOIN
                      Reservations ON Customers.ContactID = Reservations.ContactID INNER JOIN
                      Events ON Reservations.EventID = Events.EventID
WHERE     events.startdate>=dateadd(yy,-1,GETDATE())
                      GROUP BY CUstomers.contactid)
'
GO
/****** Object:  StoredProcedure [dbo].[ActivitiesOnATrip]    Script Date: 12/16/2010 19:44:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ActivitiesOnATrip]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[ActivitiesOnATrip]
@tripID INT
AS 
SELECT * FROM [Activities] WHERE activityid IN (SELECT ActivityID FROM [EventActivities] WHERE eventid=@tripid)
' 
END
GO
/****** Object:  StoredProcedure [dbo].[TripSalesforDateRange]    Script Date: 12/16/2010 19:44:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TripSalesforDateRange]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- ================================================

CREATE PROCEDURE [dbo].[TripSalesforDateRange]
	@startdate DATETIME,
	@enddate datetime
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	 SELECT     SUM(Events.TripCostUSD) AS Expr1
FROM         Reservations INNER JOIN
                      Events ON Reservations.EventID = Events.EventID
                      WHERE reservationdate BETWEEN @startdate AND @enddate
END
' 
END
GO
/****** Object:  Table [dbo].[Payments]    Script Date: 12/16/2010 19:44:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Payments]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Payments](
	[PaymentID] [int] IDENTITY(1,1) NOT NULL,
	[PaymentDate] [datetime] NULL,
	[ReservationID] [int] NOT NULL,
	[Amount] [money] NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[RowVersion] [timestamp] NOT NULL,
 CONSTRAINT [PK_Payments] PRIMARY KEY CLUSTERED 
(
	[PaymentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[Payments] ON
INSERT [dbo].[Payments] ([PaymentID], [PaymentDate], [ReservationID], [Amount], [ModifiedDate]) VALUES (6, CAST(0x00009A7600000000 AS DateTime), 10, 800.0000, CAST(0x0000000000001390 AS DateTime))
INSERT [dbo].[Payments] ([PaymentID], [PaymentDate], [ReservationID], [Amount], [ModifiedDate]) VALUES (7, CAST(0x00009A1600000000 AS DateTime), 10, 1500.0000, CAST(0x000000000000138B AS DateTime))
INSERT [dbo].[Payments] ([PaymentID], [PaymentDate], [ReservationID], [Amount], [ModifiedDate]) VALUES (8, CAST(0x0000962900000000 AS DateTime), 90, 300.0000, CAST(0x0000962900000000 AS DateTime))
INSERT [dbo].[Payments] ([PaymentID], [PaymentDate], [ReservationID], [Amount], [ModifiedDate]) VALUES (9, CAST(0x0000964800000000 AS DateTime), 90, 1200.0000, CAST(0x0000964800000000 AS DateTime))
INSERT [dbo].[Payments] ([PaymentID], [PaymentDate], [ReservationID], [Amount], [ModifiedDate]) VALUES (11, CAST(0x0000981000000000 AS DateTime), 195, 1500.0000, CAST(0x00009AFD00FCCAE1 AS DateTime))
INSERT [dbo].[Payments] ([PaymentID], [PaymentDate], [ReservationID], [Amount], [ModifiedDate]) VALUES (12, CAST(0x000097A100000000 AS DateTime), 248, 2000.0000, CAST(0x00009AFD00FCCB07 AS DateTime))
INSERT [dbo].[Payments] ([PaymentID], [PaymentDate], [ReservationID], [Amount], [ModifiedDate]) VALUES (13, CAST(0x00009AEB00000000 AS DateTime), 321, 1000.0000, CAST(0x00009AFD00FCCB1A AS DateTime))
INSERT [dbo].[Payments] ([PaymentID], [PaymentDate], [ReservationID], [Amount], [ModifiedDate]) VALUES (14, CAST(0x00009A9000000000 AS DateTime), 301, 1200.0000, CAST(0x00009B3D015988B0 AS DateTime))
INSERT [dbo].[Payments] ([PaymentID], [PaymentDate], [ReservationID], [Amount], [ModifiedDate]) VALUES (17, CAST(0x00009A9000000000 AS DateTime), 301, 300.0000, CAST(0x00009B3D0162D282 AS DateTime))
INSERT [dbo].[Payments] ([PaymentID], [PaymentDate], [ReservationID], [Amount], [ModifiedDate]) VALUES (18, CAST(0x00009A9100000000 AS DateTime), 301, 50.0000, CAST(0x00009B3D0164F74A AS DateTime))
INSERT [dbo].[Payments] ([PaymentID], [PaymentDate], [ReservationID], [Amount], [ModifiedDate]) VALUES (22, CAST(0x00009CC900EF1AAD AS DateTime), 2, 20.0000, CAST(0x00009CC900EF1B3E AS DateTime))
INSERT [dbo].[Payments] ([PaymentID], [PaymentDate], [ReservationID], [Amount], [ModifiedDate]) VALUES (23, CAST(0x0000942400000000 AS DateTime), 330, 2000.0000, CAST(0x00009CD20123BB45 AS DateTime))
INSERT [dbo].[Payments] ([PaymentID], [PaymentDate], [ReservationID], [Amount], [ModifiedDate]) VALUES (24, CAST(0x0000973C00000000 AS DateTime), 303, 1300.0000, CAST(0x00009CD20124C1E2 AS DateTime))
INSERT [dbo].[Payments] ([PaymentID], [PaymentDate], [ReservationID], [Amount], [ModifiedDate]) VALUES (25, CAST(0x00009CFA00000000 AS DateTime), 2, 100.0000, CAST(0x00009CF100000000 AS DateTime))
INSERT [dbo].[Payments] ([PaymentID], [PaymentDate], [ReservationID], [Amount], [ModifiedDate]) VALUES (27, CAST(0x00009D0000D3932C AS DateTime), 2, 100.0000, CAST(0x00009D0000D3932C AS DateTime))
INSERT [dbo].[Payments] ([PaymentID], [PaymentDate], [ReservationID], [Amount], [ModifiedDate]) VALUES (28, CAST(0x00009D0000D3B204 AS DateTime), 2, 100.0000, CAST(0x00009D0000D3B204 AS DateTime))
INSERT [dbo].[Payments] ([PaymentID], [PaymentDate], [ReservationID], [Amount], [ModifiedDate]) VALUES (29, CAST(0x00009D1101190CD2 AS DateTime), 346, 500.0000, CAST(0x00009D1101190CD2 AS DateTime))
INSERT [dbo].[Payments] ([PaymentID], [PaymentDate], [ReservationID], [Amount], [ModifiedDate]) VALUES (30, CAST(0x00009D11011930B0 AS DateTime), 346, 25.0000, CAST(0x00009D11011930BF AS DateTime))
INSERT [dbo].[Payments] ([PaymentID], [PaymentDate], [ReservationID], [Amount], [ModifiedDate]) VALUES (31, CAST(0x00009D1B00CF3145 AS DateTime), 2, 100.1100, CAST(0x00009D1B00CF31FD AS DateTime))
INSERT [dbo].[Payments] ([PaymentID], [PaymentDate], [ReservationID], [Amount], [ModifiedDate]) VALUES (32, CAST(0x00009D3300DAB043 AS DateTime), 3, 400.0000, CAST(0x00009D3300DB46C4 AS DateTime))
INSERT [dbo].[Payments] ([PaymentID], [PaymentDate], [ReservationID], [Amount], [ModifiedDate]) VALUES (35, CAST(0x00009DE801424148 AS DateTime), 3, 400.0000, CAST(0x00009DE801425263 AS DateTime))
INSERT [dbo].[Payments] ([PaymentID], [PaymentDate], [ReservationID], [Amount], [ModifiedDate]) VALUES (36, CAST(0x00009DE801427ECF AS DateTime), 3, 400.0000, CAST(0x00009DE801428632 AS DateTime))
SET IDENTITY_INSERT [dbo].[Payments] OFF
/****** Object:  View [dbo].[vPaymentsforPeriod]    Script Date: 12/16/2010 19:44:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vPaymentsforPeriod]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[vPaymentsforPeriod]
AS
SELECT        dbo.Payments.PaymentDate, dbo.Payments.Amount, dbo.Reservations.ReservationDate, dbo.Contact.FirstName, dbo.Contact.LastName, 
                         dbo.Events.StartDate, dbo.Events.EndDate, dbo.Locations.LocationName
FROM            dbo.Payments INNER JOIN
                         dbo.Reservations ON dbo.Payments.ReservationID = dbo.Reservations.ReservationID INNER JOIN
                         dbo.Contact ON dbo.Reservations.ContactID = dbo.Contact.ContactID INNER JOIN
                         dbo.Events ON dbo.Reservations.EventID = dbo.Events.EventID INNER JOIN
                         dbo.Locations ON dbo.Events.LocationID = dbo.Locations.LocationID
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'vPaymentsforPeriod', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Payments"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 133
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Reservations"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 133
               Right = 420
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Contact"
            Begin Extent = 
               Top = 6
               Left = 458
               Bottom = 133
               Right = 628
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Events"
            Begin Extent = 
               Top = 138
               Left = 38
               Bottom = 265
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Locations"
            Begin Extent = 
               Top = 138
               Left = 246
               Bottom = 231
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vPaymentsforPeriod'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane2' , N'SCHEMA',N'dbo', N'VIEW',N'vPaymentsforPeriod', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'= 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vPaymentsforPeriod'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'vPaymentsforPeriod', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vPaymentsforPeriod'
GO
/****** Object:  StoredProcedure [dbo].[UpdatePayment]    Script Date: 12/16/2010 19:44:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UpdatePayment]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[UpdatePayment]
@PaymentID INT,
@date DATETIME,
@reservationID INT,
@amount MONEY,
@modifiedDate DATETIME,
@rowversion timestamp

AS


UPDATE payments
SET paymentdate=@date,reservationID=@reservationID,amount=@amount, modifieddate=@modifiedDate
WHERE
paymentid=@paymentid AND ROWVERSION=@rowversion	
IF @@ROWCOUNT>0
  SELECT RowVersion AS newTimeStamp FROM payments WHERE paymentid=@paymentid
' 
END
GO
/****** Object:  StoredProcedure [dbo].[PaymentsforPeriod]    Script Date: 12/16/2010 19:44:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PaymentsforPeriod]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[PaymentsforPeriod]
--returns payment, reservation, trip and contact information
@startDate AS DATETIME,
@endDate AS DATETIME

AS

SELECT     Payments.PaymentDate, Payments.Amount, Reservations.ReservationDate, Contact.FirstName, Contact.LastName, Events.StartDate, Events.EndDate, 
                      Locations.LocationName
FROM         Payments INNER JOIN
                      Reservations ON Payments.ReservationID = Reservations.ReservationID INNER JOIN
                      Contact ON Reservations.ContactID = Contact.ContactID INNER JOIN
                      Events ON Reservations.EventID = Events.EventID INNER JOIN
                      Locations ON Events.LocationID = Locations.LocationID
WHERE payments.[PaymentDate] BETWEEN @startdate AND @enddate
' 
END
GO
/****** Object:  StoredProcedure [dbo].[DeletePayment]    Script Date: 12/16/2010 19:44:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DeletePayment]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[DeletePayment]
@PaymentID INT,
@rowversion timestamp
AS

DELETE From payments
WHERE
paymentid=@paymentid and rowversion=@rowversion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[InsertPayment]    Script Date: 12/16/2010 19:44:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InsertPayment]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[InsertPayment]
@date DATETIME,
@reservationID INT,
@amount MONEY 


AS

INSERT INTO [Payments]
           ([PaymentDate]
           ,[ReservationID]
           ,[Amount]
			,ModifiedDate)
     VALUES
           (@date,@reservationID,@amount,GetDate())
           
select SCOPE_IDENTITY() as NewPaymentID
' 
END
GO
/****** Object:  Default [DF_Contact_AddDate]    Script Date: 12/16/2010 19:44:54 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Contact_AddDate]') AND parent_object_id = OBJECT_ID(N'[dbo].[Contact]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Contact_AddDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Contact] ADD  CONSTRAINT [DF_Contact_AddDate]  DEFAULT (getdate()) FOR [AddDate]
END


End
GO
/****** Object:  Default [DF_Customers_CustomerType]    Script Date: 12/16/2010 19:44:54 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Customers_CustomerType]') AND parent_object_id = OBJECT_ID(N'[dbo].[Customers]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Customers_CustomerType]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Customers] ADD  CONSTRAINT [DF_Customers_CustomerType]  DEFAULT ((1)) FOR [CustomerTypeID]
END


End
GO
/****** Object:  Default [DF_Customers_InitialDate]    Script Date: 12/16/2010 19:44:54 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Customers_InitialDate]') AND parent_object_id = OBJECT_ID(N'[dbo].[Customers]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Customers_InitialDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Customers] ADD  CONSTRAINT [DF_Customers_InitialDate]  DEFAULT (getdate()) FOR [InitialDate]
END


End
GO
/****** Object:  Default [DF_Lodging_Resort]    Script Date: 12/16/2010 19:44:54 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Lodging_Resort]') AND parent_object_id = OBJECT_ID(N'[dbo].[Lodging]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Lodging_Resort]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Lodging] ADD  CONSTRAINT [DF_Lodging_Resort]  DEFAULT ((0)) FOR [Resort]
END


End
GO
/****** Object:  Default [DF_Lodging_LuxuryResort]    Script Date: 12/16/2010 19:44:54 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Lodging_LuxuryResort]') AND parent_object_id = OBJECT_ID(N'[dbo].[Lodging]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Lodging_LuxuryResort]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Lodging] ADD  CONSTRAINT [DF_Lodging_LuxuryResort]  DEFAULT ((0)) FOR [LuxuryResort]
END


End
GO
/****** Object:  Default [DF_Payments_ModifiedDate]    Script Date: 12/16/2010 19:44:54 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Payments_ModifiedDate]') AND parent_object_id = OBJECT_ID(N'[dbo].[Payments]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Payments_ModifiedDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Payments] ADD  CONSTRAINT [DF_Payments_ModifiedDate]  DEFAULT (getdate()) FOR [ModifiedDate]
END


End
GO
/****** Object:  ForeignKey [FK_ActivityEquipment_Activities]    Script Date: 12/16/2010 19:44:54 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ActivityEquipment_Activities]') AND parent_object_id = OBJECT_ID(N'[dbo].[ActivityEquipment]'))
ALTER TABLE [dbo].[ActivityEquipment]  WITH CHECK ADD  CONSTRAINT [FK_ActivityEquipment_Activities] FOREIGN KEY([ActivityID])
REFERENCES [dbo].[Activities] ([ActivityID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ActivityEquipment_Activities]') AND parent_object_id = OBJECT_ID(N'[dbo].[ActivityEquipment]'))
ALTER TABLE [dbo].[ActivityEquipment] CHECK CONSTRAINT [FK_ActivityEquipment_Activities]
GO
/****** Object:  ForeignKey [FK_ActivityEquipment_Equipment]    Script Date: 12/16/2010 19:44:54 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ActivityEquipment_Equipment]') AND parent_object_id = OBJECT_ID(N'[dbo].[ActivityEquipment]'))
ALTER TABLE [dbo].[ActivityEquipment]  WITH CHECK ADD  CONSTRAINT [FK_ActivityEquipment_Equipment] FOREIGN KEY([EquipmentID])
REFERENCES [dbo].[Equipment] ([EquipmentID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ActivityEquipment_Equipment]') AND parent_object_id = OBJECT_ID(N'[dbo].[ActivityEquipment]'))
ALTER TABLE [dbo].[ActivityEquipment] CHECK CONSTRAINT [FK_ActivityEquipment_Equipment]
GO
/****** Object:  ForeignKey [FK_Address_Contact]    Script Date: 12/16/2010 19:44:54 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Address_Contact]') AND parent_object_id = OBJECT_ID(N'[dbo].[Address]'))
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK_Address_Contact] FOREIGN KEY([ContactID])
REFERENCES [dbo].[Contact] ([ContactID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Address_Contact]') AND parent_object_id = OBJECT_ID(N'[dbo].[Address]'))
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK_Address_Contact]
GO
/****** Object:  ForeignKey [FK_Customers_Activities]    Script Date: 12/16/2010 19:44:54 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Customers_Activities]') AND parent_object_id = OBJECT_ID(N'[dbo].[Customers]'))
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [FK_Customers_Activities] FOREIGN KEY([PrimaryActivity])
REFERENCES [dbo].[Activities] ([ActivityID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Customers_Activities]') AND parent_object_id = OBJECT_ID(N'[dbo].[Customers]'))
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [FK_Customers_Activities]
GO
/****** Object:  ForeignKey [FK_Customers_Activities1]    Script Date: 12/16/2010 19:44:54 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Customers_Activities1]') AND parent_object_id = OBJECT_ID(N'[dbo].[Customers]'))
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [FK_Customers_Activities1] FOREIGN KEY([SecondaryActivity])
REFERENCES [dbo].[Activities] ([ActivityID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Customers_Activities1]') AND parent_object_id = OBJECT_ID(N'[dbo].[Customers]'))
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [FK_Customers_Activities1]
GO
/****** Object:  ForeignKey [FK_Customers_Contact]    Script Date: 12/16/2010 19:44:54 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Customers_Contact]') AND parent_object_id = OBJECT_ID(N'[dbo].[Customers]'))
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [FK_Customers_Contact] FOREIGN KEY([ContactID])
REFERENCES [dbo].[Contact] ([ContactID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Customers_Contact]') AND parent_object_id = OBJECT_ID(N'[dbo].[Customers]'))
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [FK_Customers_Contact]
GO
/****** Object:  ForeignKey [FK_Customers_CustomerTypes]    Script Date: 12/16/2010 19:44:54 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Customers_CustomerTypes]') AND parent_object_id = OBJECT_ID(N'[dbo].[Customers]'))
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [FK_Customers_CustomerTypes] FOREIGN KEY([CustomerTypeID])
REFERENCES [dbo].[CustomerTypes] ([CustomerTypeID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Customers_CustomerTypes]') AND parent_object_id = OBJECT_ID(N'[dbo].[Customers]'))
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [FK_Customers_CustomerTypes]
GO
/****** Object:  ForeignKey [FK_Customers_Locations]    Script Date: 12/16/2010 19:44:54 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Customers_Locations]') AND parent_object_id = OBJECT_ID(N'[dbo].[Customers]'))
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [FK_Customers_Locations] FOREIGN KEY([PrimaryDesintation])
REFERENCES [dbo].[Locations] ([LocationID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Customers_Locations]') AND parent_object_id = OBJECT_ID(N'[dbo].[Customers]'))
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [FK_Customers_Locations]
GO
/****** Object:  ForeignKey [FK_Customers_Locations1]    Script Date: 12/16/2010 19:44:54 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Customers_Locations1]') AND parent_object_id = OBJECT_ID(N'[dbo].[Customers]'))
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [FK_Customers_Locations1] FOREIGN KEY([SecondaryDestination])
REFERENCES [dbo].[Locations] ([LocationID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Customers_Locations1]') AND parent_object_id = OBJECT_ID(N'[dbo].[Customers]'))
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [FK_Customers_Locations1]
GO
/****** Object:  ForeignKey [FK_EventActivities_Activities]    Script Date: 12/16/2010 19:44:54 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_EventActivities_Activities]') AND parent_object_id = OBJECT_ID(N'[dbo].[EventActivities]'))
ALTER TABLE [dbo].[EventActivities]  WITH CHECK ADD  CONSTRAINT [FK_EventActivities_Activities] FOREIGN KEY([ActivityID])
REFERENCES [dbo].[Activities] ([ActivityID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_EventActivities_Activities]') AND parent_object_id = OBJECT_ID(N'[dbo].[EventActivities]'))
ALTER TABLE [dbo].[EventActivities] CHECK CONSTRAINT [FK_EventActivities_Activities]
GO
/****** Object:  ForeignKey [FK_EventActivities_Events]    Script Date: 12/16/2010 19:44:54 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_EventActivities_Events]') AND parent_object_id = OBJECT_ID(N'[dbo].[EventActivities]'))
ALTER TABLE [dbo].[EventActivities]  WITH CHECK ADD  CONSTRAINT [FK_EventActivities_Events] FOREIGN KEY([EventID])
REFERENCES [dbo].[Events] ([EventID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_EventActivities_Events]') AND parent_object_id = OBJECT_ID(N'[dbo].[EventActivities]'))
ALTER TABLE [dbo].[EventActivities] CHECK CONSTRAINT [FK_EventActivities_Events]
GO
/****** Object:  ForeignKey [FK_Events_Locations]    Script Date: 12/16/2010 19:44:54 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Events_Locations]') AND parent_object_id = OBJECT_ID(N'[dbo].[Events]'))
ALTER TABLE [dbo].[Events]  WITH CHECK ADD  CONSTRAINT [FK_Events_Locations] FOREIGN KEY([LocationID])
REFERENCES [dbo].[Locations] ([LocationID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Events_Locations]') AND parent_object_id = OBJECT_ID(N'[dbo].[Events]'))
ALTER TABLE [dbo].[Events] CHECK CONSTRAINT [FK_Events_Locations]
GO
/****** Object:  ForeignKey [FK_Events_Lodging]    Script Date: 12/16/2010 19:44:54 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Events_Lodging]') AND parent_object_id = OBJECT_ID(N'[dbo].[Events]'))
ALTER TABLE [dbo].[Events]  WITH CHECK ADD  CONSTRAINT [FK_Events_Lodging] FOREIGN KEY([LodgingID])
REFERENCES [dbo].[Lodging] ([LodgingID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Events_Lodging]') AND parent_object_id = OBJECT_ID(N'[dbo].[Events]'))
ALTER TABLE [dbo].[Events] CHECK CONSTRAINT [FK_Events_Lodging]
GO
/****** Object:  ForeignKey [FK_Lodging_Contact]    Script Date: 12/16/2010 19:44:54 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Lodging_Contact]') AND parent_object_id = OBJECT_ID(N'[dbo].[Lodging]'))
ALTER TABLE [dbo].[Lodging]  WITH CHECK ADD  CONSTRAINT [FK_Lodging_Contact] FOREIGN KEY([ContactID])
REFERENCES [dbo].[Contact] ([ContactID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Lodging_Contact]') AND parent_object_id = OBJECT_ID(N'[dbo].[Lodging]'))
ALTER TABLE [dbo].[Lodging] CHECK CONSTRAINT [FK_Lodging_Contact]
GO
/****** Object:  ForeignKey [FK_Lodging_Locations]    Script Date: 12/16/2010 19:44:54 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Lodging_Locations]') AND parent_object_id = OBJECT_ID(N'[dbo].[Lodging]'))
ALTER TABLE [dbo].[Lodging]  WITH CHECK ADD  CONSTRAINT [FK_Lodging_Locations] FOREIGN KEY([LocationID])
REFERENCES [dbo].[Locations] ([LocationID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Lodging_Locations]') AND parent_object_id = OBJECT_ID(N'[dbo].[Lodging]'))
ALTER TABLE [dbo].[Lodging] CHECK CONSTRAINT [FK_Lodging_Locations]
GO
/****** Object:  ForeignKey [FK_Payments_Reservations]    Script Date: 12/16/2010 19:44:54 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Payments_Reservations]') AND parent_object_id = OBJECT_ID(N'[dbo].[Payments]'))
ALTER TABLE [dbo].[Payments]  WITH CHECK ADD  CONSTRAINT [FK_Payments_Reservations] FOREIGN KEY([ReservationID])
REFERENCES [dbo].[Reservations] ([ReservationID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Payments_Reservations]') AND parent_object_id = OBJECT_ID(N'[dbo].[Payments]'))
ALTER TABLE [dbo].[Payments] CHECK CONSTRAINT [FK_Payments_Reservations]
GO
/****** Object:  ForeignKey [FK_Reservations_Customers]    Script Date: 12/16/2010 19:44:54 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Reservations_Customers]') AND parent_object_id = OBJECT_ID(N'[dbo].[Reservations]'))
ALTER TABLE [dbo].[Reservations]  WITH CHECK ADD  CONSTRAINT [FK_Reservations_Customers] FOREIGN KEY([ContactID])
REFERENCES [dbo].[Customers] ([ContactID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Reservations_Customers]') AND parent_object_id = OBJECT_ID(N'[dbo].[Reservations]'))
ALTER TABLE [dbo].[Reservations] CHECK CONSTRAINT [FK_Reservations_Customers]
GO
/****** Object:  ForeignKey [FK_Reservations_Events]    Script Date: 12/16/2010 19:44:54 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Reservations_Events]') AND parent_object_id = OBJECT_ID(N'[dbo].[Reservations]'))
ALTER TABLE [dbo].[Reservations]  WITH CHECK ADD  CONSTRAINT [FK_Reservations_Events] FOREIGN KEY([EventID])
REFERENCES [dbo].[Events] ([EventID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Reservations_Events]') AND parent_object_id = OBJECT_ID(N'[dbo].[Reservations]'))
ALTER TABLE [dbo].[Reservations] CHECK CONSTRAINT [FK_Reservations_Events]
GO
