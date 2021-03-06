USE [bdeli]
GO
/****** Object:  Table [dbo].[bD.Booking]    Script Date: 10/21/2018 12:11:53 PM ******/
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
/****** Object:  Table [dbo].[bD.Contacts]    Script Date: 10/21/2018 12:11:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bD.Contacts](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](50) NULL,
	[Sdt] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[bD.Images]    Script Date: 10/21/2018 12:11:54 PM ******/
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
/****** Object:  Table [dbo].[bD.Introduce]    Script Date: 10/21/2018 12:11:54 PM ******/
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
/****** Object:  Table [dbo].[bD.Service]    Script Date: 10/21/2018 12:11:54 PM ******/
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
/****** Object:  Table [dbo].[bD.Slide]    Script Date: 10/21/2018 12:11:54 PM ******/
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
/****** Object:  Table [dbo].[bD.Video]    Script Date: 10/21/2018 12:11:54 PM ******/
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

INSERT [dbo].[bD.Introduce] ([id], [Title], [Images], [Subtitle], [Description]) VALUES (1, N'My restaurant true story', N'gallery-img-01.png', N'vhqiv', NULL)
SET IDENTITY_INSERT [dbo].[bD.Introduce] OFF
SET IDENTITY_INSERT [dbo].[bD.Service] ON 

INSERT [dbo].[bD.Service] ([id], [Images], [Title], [Description]) VALUES (1, N's', N'Food Court', N'Hệ thống cung cấp ẩm thực theo phong cách tự chọn')
INSERT [dbo].[bD.Service] ([id], [Images], [Title], [Description]) VALUES (2, NULL, N'Tea & Coffee', N'Hệ thống cung cấp nước giải khát với nguyên liệu hoàn toàn tự nhiên')
INSERT [dbo].[bD.Service] ([id], [Images], [Title], [Description]) VALUES (3, NULL, N'Gift', N'Hệ thống cung cấp quà tặng vào các dịp lễ và cuối tuần cho các khách hàng thân thiết')
SET IDENTITY_INSERT [dbo].[bD.Service] OFF
SET IDENTITY_INSERT [dbo].[bD.Slide] ON 

INSERT [dbo].[bD.Slide] ([id], [Title], [Description], [Images]) VALUES (1, N'b.Deli Restaurant', N'Nhà hàng theo phong cách châu Âu cổ điển, đa dạng các món.', N'wp1874155.jpg')
SET IDENTITY_INSERT [dbo].[bD.Slide] OFF
SET IDENTITY_INSERT [dbo].[bD.Video] ON 

INSERT [dbo].[bD.Video] ([id], [Title], [Description]) VALUES (1, N'b.Deli Restaurant', N'Nhà hàng theo phong cách châu Âu cổ điển, đa dạng các món.')
SET IDENTITY_INSERT [dbo].[bD.Video] OFF
