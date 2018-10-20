USE [bdeli]
GO
/****** Object:  Table [dbo].[bD.Booking]    Script Date: 10/20/2018 5:45:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bD.Booking](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[DateBooking] [date] NULL,
	[TimeBooking] [nvarchar](50) NULL,
	[Amount] [int] NULL,
	[Note] [nvarchar](50) NULL,
 CONSTRAINT [PK_Booking] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[bD.Images]    Script Date: 10/20/2018 5:45:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bD.Images](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[image1] [nvarchar](50) NULL,
	[image2] [nvarchar](50) NULL,
	[image3] [nvarchar](50) NULL,
	[image4] [nvarchar](50) NULL,
	[image5] [nvarchar](50) NULL,
	[image6] [nvarchar](50) NULL,
	[image7] [nvarchar](50) NULL,
	[image8] [nvarchar](50) NULL,
 CONSTRAINT [PK_Images] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[bD.Introduce]    Script Date: 10/20/2018 5:45:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bD.Introduce](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](30) NULL,
	[Images] [nvarchar](200) NULL,
	[Subtitle] [nvarchar](30) NULL,
	[Description] [nvarchar](1000) NULL,
 CONSTRAINT [PK_b.Deli] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[bD.Service]    Script Date: 10/20/2018 5:45:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bD.Service](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Images] [nvarchar](50) NULL,
	[Title] [nvarchar](40) NULL,
	[Description] [nvarchar](200) NULL,
 CONSTRAINT [PK_Service] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[bD.Slide]    Script Date: 10/20/2018 5:45:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bD.Slide](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NULL,
	[Description] [nvarchar](1000) NULL,
	[Images] [nvarchar](50) NULL,
 CONSTRAINT [PK_Slide] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[bD.Video]    Script Date: 10/20/2018 5:45:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bD.Video](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NULL,
	[Description] [nvarchar](100) NULL,
 CONSTRAINT [PK_Video] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[bD.Introduce] ON 

INSERT [dbo].[bD.Introduce] ([id], [Title], [Images], [Subtitle], [Description]) VALUES (1, N'Welcome to my restaurant', N'27232565-restaurant-wallpapers.jpg', N'vhqiv', NULL)
SET IDENTITY_INSERT [dbo].[bD.Introduce] OFF
SET IDENTITY_INSERT [dbo].[bD.Slide] ON 

INSERT [dbo].[bD.Slide] ([id], [Title], [Description], [Images]) VALUES (1, N'Welcome to my restaurant', N'Nhà hàng châu Âu', N'27232565-restaurant-wallpapers.jpg')
SET IDENTITY_INSERT [dbo].[bD.Slide] OFF
