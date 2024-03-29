USE [master]
GO
/****** Object:  Database [webshop2]    Script Date: 3/3/2024 7:18:16 PM ******/
CREATE DATABASE [webshop2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'webshop2', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\webshop2.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'webshop2_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\webshop2_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [webshop2] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [webshop2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [webshop2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [webshop2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [webshop2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [webshop2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [webshop2] SET ARITHABORT OFF 
GO
ALTER DATABASE [webshop2] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [webshop2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [webshop2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [webshop2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [webshop2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [webshop2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [webshop2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [webshop2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [webshop2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [webshop2] SET  ENABLE_BROKER 
GO
ALTER DATABASE [webshop2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [webshop2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [webshop2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [webshop2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [webshop2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [webshop2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [webshop2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [webshop2] SET RECOVERY FULL 
GO
ALTER DATABASE [webshop2] SET  MULTI_USER 
GO
ALTER DATABASE [webshop2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [webshop2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [webshop2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [webshop2] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [webshop2] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [webshop2] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'webshop2', N'ON'
GO
ALTER DATABASE [webshop2] SET QUERY_STORE = OFF
GO
USE [webshop2]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 3/3/2024 7:18:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[avarta] [varchar](max) NULL,
	[user_name] [varchar](255) NOT NULL,
	[pass] [varchar](255) NULL,
	[full_name] [nvarchar](max) NULL,
	[is_admin] [int] NULL,
	[gender] [varchar](10) NULL,
	[birthday] [date] NULL,
	[email] [varchar](50) NULL,
	[staff_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[user_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Banner]    Script Date: 3/3/2024 7:18:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Banner](
	[id] [int] NOT NULL,
	[image1] [varchar](max) NULL,
	[image2] [varchar](max) NULL,
	[image3] [varchar](max) NULL,
 CONSTRAINT [PK_Banner] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 3/3/2024 7:18:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[user_name] [varchar](255) NOT NULL,
	[product_id] [int] NOT NULL,
	[size] [varchar](10) NOT NULL,
	[quantity] [int] NOT NULL,
	[total] [decimal](18, 2) NOT NULL,
	[cart_id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK__Cart__415B03D8C5D2AC78] PRIMARY KEY CLUSTERED 
(
	[cart_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 3/3/2024 7:18:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[cid] [int] IDENTITY(1,1) NOT NULL,
	[cname] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feed_back]    Script Date: 3/3/2024 7:18:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feed_back](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[image] [varchar](max) NOT NULL,
	[comment] [varchar](max) NOT NULL,
	[pro_id] [int] NOT NULL,
	[user_name] [varchar](255) NOT NULL,
 CONSTRAINT [PK_feedback] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 3/3/2024 7:18:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[order_id] [int] IDENTITY(1,1) NOT NULL,
	[user_name] [varchar](255) NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_Detail]    Script Date: 3/3/2024 7:18:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_Detail](
	[order_id] [int] NOT NULL,
	[order_date] [date] NOT NULL,
	[quantity] [int] NOT NULL,
	[total] [decimal](18, 0) NOT NULL,
	[address] [varchar](max) NOT NULL,
	[phone_number] [varchar](10) NOT NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[size] [int] NULL,
	[status] [varchar](max) NOT NULL,
	[product_id] [int] NULL,
	[staff_id] [int] NULL,
	[voucher_id] [int] NULL,
	[cancel] [bit] NULL,
 CONSTRAINT [PK_Order_Detail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 3/3/2024 7:18:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[image] [nvarchar](max) NOT NULL,
	[price] [money] NOT NULL,
	[title] [nvarchar](max) NOT NULL,
	[description] [nvarchar](max) NOT NULL,
	[cate_id] [int] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_Size]    Script Date: 3/3/2024 7:18:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Size](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[product_id] [int] NOT NULL,
	[size] [varchar](10) NOT NULL,
	[quantity] [nchar](10) NULL,
 CONSTRAINT [PK_Product_Size] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 3/3/2024 7:18:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[role] [varchar](255) NOT NULL,
 CONSTRAINT [PK_Staff] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Voucher]    Script Date: 3/3/2024 7:18:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Voucher](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[voucher_name] [varchar](255) NOT NULL,
	[discount] [decimal](18, 0) NOT NULL,
	[conditions] [numeric](18, 0) NOT NULL,
 CONSTRAINT [PK_Voucher] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Account] ([avarta], [user_name], [pass], [full_name], [is_admin], [gender], [birthday], [email], [staff_id]) VALUES (N'/images/92085810-b407-4eec-9a54-84f32f18c5fc.jpg', N'admin', N'202cb962ac59075b964b07152d234b70', N'Nhat Nguyen', 1, N'male', CAST(N'2024-02-01' AS Date), N'ngminhat24@gmail.com', 2)
INSERT [dbo].[Account] ([avarta], [user_name], [pass], [full_name], [is_admin], [gender], [birthday], [email], [staff_id]) VALUES (N'https://1.bp.blogspot.com/-_ICpStYV4jc/Xn7YHOr192I/AAAAAAAAaU8/3MMlXex_zs4iLkGQ9VQFgkT54UIW6lpugCLcBGAsYHQ/s1600/Anh-Dai-Dien-Giau-Mat%2B%252843%2529.jpg', N'asd', N'd41d8cd98f00b204e9800998ecf8427e', N'Nhat Nguyen', 1, N'male', CAST(N'2024-01-04' AS Date), N'ngminhat2sd4@gmail.com', 3)
INSERT [dbo].[Account] ([avarta], [user_name], [pass], [full_name], [is_admin], [gender], [birthday], [email], [staff_id]) VALUES (N'data:image/jpeg;base64,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', N'eva', N'fe860eaa870f0e3e7d13947f9fd42e2d', N'evaaaaaaaaa', 0, N'female', CAST(N'2023-11-03' AS Date), N'huyhtce171910@fpt.edu.vn ', 2)
INSERT [dbo].[Account] ([avarta], [user_name], [pass], [full_name], [is_admin], [gender], [birthday], [email], [staff_id]) VALUES (N'https://lh3.googleusercontent.com/a/ACg8ocJsfLZa6yilnJDNzkNgfdVAeYAMAknMoziDNoDiTt4O=s96-c', N'ngminhat24@gmail.com', N'7215ee9c7d9dc229d2921a40e899ec5f', N'Nhật Nguyễn', 0, N'female', CAST(N'2024-01-24' AS Date), N'ngminhat24345@gmail.com', 2)
INSERT [dbo].[Account] ([avarta], [user_name], [pass], [full_name], [is_admin], [gender], [birthday], [email], [staff_id]) VALUES (N'https://lh3.googleusercontent.com/a/ACg8ocLg9nFbSEouKJrSiMbKXPp0iJUqWp_7QK9LvZuOhSPpXg=s96-c', N'ngminhnhat24@gmail.com', NULL, N'Mặt Trời Bé Con', 0, NULL, NULL, N'ngminhnhat24@gmail.com', 2)
INSERT [dbo].[Account] ([avarta], [user_name], [pass], [full_name], [is_admin], [gender], [birthday], [email], [staff_id]) VALUES (N'https://th.bing.com/th/id/OIP.E1bMqGOkt1lb3b5JftaOzgHaHa?w=202&h=202&c=7&r=0&o=5&pid=1.7', N'nhat2', N'202cb962ac59075b964b07152d234b70', N'nhat nguyen minh', 0, N'male', CAST(N'2003-08-24' AS Date), N'ngminhat2àajfg4@gmail.com', 2)
INSERT [dbo].[Account] ([avarta], [user_name], [pass], [full_name], [is_admin], [gender], [birthday], [email], [staff_id]) VALUES (N'https://lh3.googleusercontent.com/a/ACg8ocIhccFo9wGuC_2-xhlfT5MnxwieYpGoPa8TMVTJ6TF_jg=s96-c', N'nhatnmce171939@fpt.edu.vn', N'd41d8cd98f00b204e9800998ecf8427e', N'Nguyen Minh Nhat (K17 CT)', 1, N'male', NULL, N'nhatnmce171939@fpt.edu.vn', 3)
GO
SET IDENTITY_INSERT [dbo].[Cart] ON 

INSERT [dbo].[Cart] ([user_name], [product_id], [size], [quantity], [total], [cart_id]) VALUES (N'nhatnmce171939@fpt.edu.vn', 10, N'38', 1, CAST(70.00 AS Decimal(18, 2)), 267)
INSERT [dbo].[Cart] ([user_name], [product_id], [size], [quantity], [total], [cart_id]) VALUES (N'admin', 11, N'38', 9, CAST(70.00 AS Decimal(18, 2)), 272)
INSERT [dbo].[Cart] ([user_name], [product_id], [size], [quantity], [total], [cart_id]) VALUES (N'nhat2', 27, N'38', 3, CAST(90.00 AS Decimal(18, 2)), 276)
INSERT [dbo].[Cart] ([user_name], [product_id], [size], [quantity], [total], [cart_id]) VALUES (N'nhat2', 11, N'38', 1, CAST(70.00 AS Decimal(18, 2)), 277)
INSERT [dbo].[Cart] ([user_name], [product_id], [size], [quantity], [total], [cart_id]) VALUES (N'admin', 14, N'38', 2, CAST(72.00 AS Decimal(18, 2)), 278)
SET IDENTITY_INSERT [dbo].[Cart] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([cid], [cname]) VALUES (2, N'GIÀY NIKE')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (3, N'GIÀY BITI''S')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (4, N'GIÀY CONVERSE')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (11, N'GIÀY ADIDAS')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Feed_back] ON 

INSERT [dbo].[Feed_back] ([id], [image], [comment], [pro_id], [user_name]) VALUES (1, N'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lkuhi0ip1rk090', N'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Eius consequatur nobis laboriosam culpa nesciunt. Ratione, magni, adipisci distinctio quo voluptatibus voluptatum aperiam nisi a amet expedita tempore accusantium voluptas ipsa!', 5, N'admin')
SET IDENTITY_INSERT [dbo].[Feed_back] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([order_id], [user_name]) VALUES (139, N'admin')
INSERT [dbo].[Order] ([order_id], [user_name]) VALUES (140, N'admin')
INSERT [dbo].[Order] ([order_id], [user_name]) VALUES (141, N'admin')
INSERT [dbo].[Order] ([order_id], [user_name]) VALUES (142, N'admin')
INSERT [dbo].[Order] ([order_id], [user_name]) VALUES (143, N'admin')
INSERT [dbo].[Order] ([order_id], [user_name]) VALUES (144, N'admin')
INSERT [dbo].[Order] ([order_id], [user_name]) VALUES (145, N'admin')
INSERT [dbo].[Order] ([order_id], [user_name]) VALUES (146, N'admin')
INSERT [dbo].[Order] ([order_id], [user_name]) VALUES (147, N'admin')
INSERT [dbo].[Order] ([order_id], [user_name]) VALUES (148, N'admin')
INSERT [dbo].[Order] ([order_id], [user_name]) VALUES (149, N'eva')
INSERT [dbo].[Order] ([order_id], [user_name]) VALUES (150, N'eva')
INSERT [dbo].[Order] ([order_id], [user_name]) VALUES (151, N'admin')
INSERT [dbo].[Order] ([order_id], [user_name]) VALUES (152, N'nhat2')
INSERT [dbo].[Order] ([order_id], [user_name]) VALUES (153, N'nhat2')
INSERT [dbo].[Order] ([order_id], [user_name]) VALUES (154, N'nhat2')
INSERT [dbo].[Order] ([order_id], [user_name]) VALUES (155, N'nhat2')
INSERT [dbo].[Order] ([order_id], [user_name]) VALUES (156, N'nhat2')
INSERT [dbo].[Order] ([order_id], [user_name]) VALUES (157, N'nhat2')
INSERT [dbo].[Order] ([order_id], [user_name]) VALUES (158, N'nhat2')
INSERT [dbo].[Order] ([order_id], [user_name]) VALUES (159, N'nhat2')
INSERT [dbo].[Order] ([order_id], [user_name]) VALUES (160, N'admin')
INSERT [dbo].[Order] ([order_id], [user_name]) VALUES (161, N'ngminhat24@gmail.com')
INSERT [dbo].[Order] ([order_id], [user_name]) VALUES (162, N'admin')
INSERT [dbo].[Order] ([order_id], [user_name]) VALUES (163, N'nhat2')
INSERT [dbo].[Order] ([order_id], [user_name]) VALUES (164, N'admin')
INSERT [dbo].[Order] ([order_id], [user_name]) VALUES (165, N'admin')
INSERT [dbo].[Order] ([order_id], [user_name]) VALUES (166, N'admin')
INSERT [dbo].[Order] ([order_id], [user_name]) VALUES (167, N'admin')
INSERT [dbo].[Order] ([order_id], [user_name]) VALUES (168, N'admin')
INSERT [dbo].[Order] ([order_id], [user_name]) VALUES (169, N'admin')
INSERT [dbo].[Order] ([order_id], [user_name]) VALUES (170, N'admin')
INSERT [dbo].[Order] ([order_id], [user_name]) VALUES (171, N'admin')
INSERT [dbo].[Order] ([order_id], [user_name]) VALUES (172, N'admin')
INSERT [dbo].[Order] ([order_id], [user_name]) VALUES (173, N'admin')
INSERT [dbo].[Order] ([order_id], [user_name]) VALUES (174, N'admin')
INSERT [dbo].[Order] ([order_id], [user_name]) VALUES (175, N'admin')
INSERT [dbo].[Order] ([order_id], [user_name]) VALUES (176, N'admin')
INSERT [dbo].[Order] ([order_id], [user_name]) VALUES (177, N'admin')
INSERT [dbo].[Order] ([order_id], [user_name]) VALUES (178, N'admin')
INSERT [dbo].[Order] ([order_id], [user_name]) VALUES (179, N'admin')
INSERT [dbo].[Order] ([order_id], [user_name]) VALUES (180, N'admin')
INSERT [dbo].[Order] ([order_id], [user_name]) VALUES (181, N'nhatnmce171939@fpt.edu.vn')
INSERT [dbo].[Order] ([order_id], [user_name]) VALUES (182, N'admin')
INSERT [dbo].[Order] ([order_id], [user_name]) VALUES (183, N'nhat2')
INSERT [dbo].[Order] ([order_id], [user_name]) VALUES (184, N'nhat2')
INSERT [dbo].[Order] ([order_id], [user_name]) VALUES (185, N'nhat2')
INSERT [dbo].[Order] ([order_id], [user_name]) VALUES (186, N'nhatnmce171939@fpt.edu.vn')
INSERT [dbo].[Order] ([order_id], [user_name]) VALUES (187, N'nhat2')
INSERT [dbo].[Order] ([order_id], [user_name]) VALUES (188, N'nhat2')
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[Order_Detail] ON 

INSERT [dbo].[Order_Detail] ([order_id], [order_date], [quantity], [total], [address], [phone_number], [id], [size], [status], [product_id], [staff_id], [voucher_id], [cancel]) VALUES (158, CAST(N'2024-02-13' AS Date), 1, CAST(70 AS Decimal(18, 0)), N'LV,DT', N'123207456', 27, 38, N'dang x? lí', 12, NULL, NULL, 0)
INSERT [dbo].[Order_Detail] ([order_id], [order_date], [quantity], [total], [address], [phone_number], [id], [size], [status], [product_id], [staff_id], [voucher_id], [cancel]) VALUES (158, CAST(N'2024-03-07' AS Date), 1, CAST(110 AS Decimal(18, 0)), N'LV,DT', N'123207456', 28, 39, N'dang x? lí', 12, NULL, NULL, 0)
INSERT [dbo].[Order_Detail] ([order_id], [order_date], [quantity], [total], [address], [phone_number], [id], [size], [status], [product_id], [staff_id], [voucher_id], [cancel]) VALUES (159, CAST(N'2024-03-12' AS Date), 1, CAST(70 AS Decimal(18, 0)), N'sádas', N'0782870506', 29, 39, N'dang x? lí', 11, NULL, NULL, 0)
INSERT [dbo].[Order_Detail] ([order_id], [order_date], [quantity], [total], [address], [phone_number], [id], [size], [status], [product_id], [staff_id], [voucher_id], [cancel]) VALUES (160, CAST(N'2024-04-12' AS Date), 1, CAST(120 AS Decimal(18, 0)), N'sádas', N'0782870506', 30, 39, N'Refuse the order', 5, 2, NULL, 0)
INSERT [dbo].[Order_Detail] ([order_id], [order_date], [quantity], [total], [address], [phone_number], [id], [size], [status], [product_id], [staff_id], [voucher_id], [cancel]) VALUES (160, CAST(N'2024-02-12' AS Date), 1, CAST(75 AS Decimal(18, 0)), N'sádas', N'0782870506', 31, 39, N'da xac nhan', 9, NULL, NULL, 0)
INSERT [dbo].[Order_Detail] ([order_id], [order_date], [quantity], [total], [address], [phone_number], [id], [size], [status], [product_id], [staff_id], [voucher_id], [cancel]) VALUES (160, CAST(N'2024-05-12' AS Date), 1, CAST(100 AS Decimal(18, 0)), N'sádas', N'0782870506', 32, 40, N'dang x? lí', 26, NULL, NULL, 0)
INSERT [dbo].[Order_Detail] ([order_id], [order_date], [quantity], [total], [address], [phone_number], [id], [size], [status], [product_id], [staff_id], [voucher_id], [cancel]) VALUES (161, CAST(N'2024-05-13' AS Date), 3, CAST(210 AS Decimal(18, 0)), N'sádas', N'0782870506', 33, 40, N'dang x? lí', 10, NULL, NULL, 0)
INSERT [dbo].[Order_Detail] ([order_id], [order_date], [quantity], [total], [address], [phone_number], [id], [size], [status], [product_id], [staff_id], [voucher_id], [cancel]) VALUES (161, CAST(N'2024-06-13' AS Date), 1, CAST(75 AS Decimal(18, 0)), N'sádas', N'0782870506', 34, 40, N'dang x? lí', 9, NULL, NULL, 0)
INSERT [dbo].[Order_Detail] ([order_id], [order_date], [quantity], [total], [address], [phone_number], [id], [size], [status], [product_id], [staff_id], [voucher_id], [cancel]) VALUES (161, CAST(N'2024-06-13' AS Date), 1, CAST(75 AS Decimal(18, 0)), N'sádas', N'0782870506', 35, 40, N'dang x? lí', 9, NULL, NULL, 0)
INSERT [dbo].[Order_Detail] ([order_id], [order_date], [quantity], [total], [address], [phone_number], [id], [size], [status], [product_id], [staff_id], [voucher_id], [cancel]) VALUES (161, CAST(N'2024-07-13' AS Date), 1, CAST(72 AS Decimal(18, 0)), N'sádas', N'0782870506', 36, 40, N'dang x? lí', 14, NULL, NULL, 0)
INSERT [dbo].[Order_Detail] ([order_id], [order_date], [quantity], [total], [address], [phone_number], [id], [size], [status], [product_id], [staff_id], [voucher_id], [cancel]) VALUES (161, CAST(N'2024-08-13' AS Date), 1, CAST(100 AS Decimal(18, 0)), N'sádas', N'0782870506', 37, 40, N'dang x? lí', 31, NULL, NULL, 0)
INSERT [dbo].[Order_Detail] ([order_id], [order_date], [quantity], [total], [address], [phone_number], [id], [size], [status], [product_id], [staff_id], [voucher_id], [cancel]) VALUES (161, CAST(N'2024-09-13' AS Date), 1, CAST(150 AS Decimal(18, 0)), N'sádas', N'0782870506', 38, 40, N'dang x? lí', 48, NULL, NULL, 0)
INSERT [dbo].[Order_Detail] ([order_id], [order_date], [quantity], [total], [address], [phone_number], [id], [size], [status], [product_id], [staff_id], [voucher_id], [cancel]) VALUES (162, CAST(N'2024-01-13' AS Date), 2, CAST(140 AS Decimal(18, 0)), N'LV,DT', N'123207456', 39, 40, N'dang x? lí', 10, NULL, NULL, 0)
INSERT [dbo].[Order_Detail] ([order_id], [order_date], [quantity], [total], [address], [phone_number], [id], [size], [status], [product_id], [staff_id], [voucher_id], [cancel]) VALUES (162, CAST(N'2024-01-13' AS Date), 1, CAST(110 AS Decimal(18, 0)), N'LV,DT', N'123207456', 40, 40, N'dang x? lí', 24, NULL, NULL, 0)
INSERT [dbo].[Order_Detail] ([order_id], [order_date], [quantity], [total], [address], [phone_number], [id], [size], [status], [product_id], [staff_id], [voucher_id], [cancel]) VALUES (163, CAST(N'2024-02-13' AS Date), 1, CAST(70 AS Decimal(18, 0)), N'sádas', N'0782870506', 41, 40, N'dang x? lí', 11, NULL, NULL, 0)
INSERT [dbo].[Order_Detail] ([order_id], [order_date], [quantity], [total], [address], [phone_number], [id], [size], [status], [product_id], [staff_id], [voucher_id], [cancel]) VALUES (164, CAST(N'2024-02-15' AS Date), 1, CAST(75 AS Decimal(18, 0)), N'sádas', N'0782870506', 42, 40, N'dang x? lí', 9, NULL, NULL, 0)
INSERT [dbo].[Order_Detail] ([order_id], [order_date], [quantity], [total], [address], [phone_number], [id], [size], [status], [product_id], [staff_id], [voucher_id], [cancel]) VALUES (164, CAST(N'2024-02-15' AS Date), 1, CAST(70 AS Decimal(18, 0)), N'sádas', N'0782870506', 43, 40, N'dang x? lí', 10, NULL, NULL, 0)
INSERT [dbo].[Order_Detail] ([order_id], [order_date], [quantity], [total], [address], [phone_number], [id], [size], [status], [product_id], [staff_id], [voucher_id], [cancel]) VALUES (165, CAST(N'2024-02-18' AS Date), 1, CAST(55 AS Decimal(18, 0)), N'Tan Hoa Thuong, Xã Tân M?, Huy?n L?p Vò, T?nh Ð?ng Tháp', N'0782870506', 44, 40, N'dang x? lí', 11, NULL, NULL, 0)
INSERT [dbo].[Order_Detail] ([order_id], [order_date], [quantity], [total], [address], [phone_number], [id], [size], [status], [product_id], [staff_id], [voucher_id], [cancel]) VALUES (165, CAST(N'2024-02-18' AS Date), 1, CAST(115 AS Decimal(18, 0)), N'Tan Hoa Thuong, Xã Tân M?, Huy?n L?p Vò, T?nh Ð?ng Tháp', N'0782870506', 45, 40, N'dang x? lí', 28, NULL, NULL, 0)
INSERT [dbo].[Order_Detail] ([order_id], [order_date], [quantity], [total], [address], [phone_number], [id], [size], [status], [product_id], [staff_id], [voucher_id], [cancel]) VALUES (166, CAST(N'2024-02-20' AS Date), 1, CAST(62 AS Decimal(18, 0)), N'sádas, Xã B?ch Ðích, Huy?n Yên Minh, T?nh Hà Giang', N'0782870506', 46, 38, N'dang x? lí', 14, NULL, NULL, 0)
INSERT [dbo].[Order_Detail] ([order_id], [order_date], [quantity], [total], [address], [phone_number], [id], [size], [status], [product_id], [staff_id], [voucher_id], [cancel]) VALUES (166, CAST(N'2024-02-20' AS Date), 1, CAST(60 AS Decimal(18, 0)), N'sádas, Xã B?ch Ðích, Huy?n Yên Minh, T?nh Hà Giang', N'0782870506', 47, 38, N'dang x? lí', 11, NULL, NULL, 0)
INSERT [dbo].[Order_Detail] ([order_id], [order_date], [quantity], [total], [address], [phone_number], [id], [size], [status], [product_id], [staff_id], [voucher_id], [cancel]) VALUES (158, CAST(N'2024-02-02' AS Date), 1, CAST(234 AS Decimal(18, 0)), N'23', N'12312', 54, 39, N'2', 24, NULL, NULL, 0)
INSERT [dbo].[Order_Detail] ([order_id], [order_date], [quantity], [total], [address], [phone_number], [id], [size], [status], [product_id], [staff_id], [voucher_id], [cancel]) VALUES (167, CAST(N'2024-02-21' AS Date), 1, CAST(52 AS Decimal(18, 0)), N'sádas, Xã Lang Can, Huy?n Lâm Bình, T?nh Tuyên Quang', N'0782870506', 55, 38, N'dang x? lí', 14, NULL, NULL, 0)
INSERT [dbo].[Order_Detail] ([order_id], [order_date], [quantity], [total], [address], [phone_number], [id], [size], [status], [product_id], [staff_id], [voucher_id], [cancel]) VALUES (168, CAST(N'2024-02-21' AS Date), 1, CAST(100 AS Decimal(18, 0)), N'sádas, Xã Giáo Hi?u, Huy?n Pác N?m, T?nh B?c K?n', N'0782870506', 56, 38, N'dang x? lí', 5, NULL, NULL, 0)
INSERT [dbo].[Order_Detail] ([order_id], [order_date], [quantity], [total], [address], [phone_number], [id], [size], [status], [product_id], [staff_id], [voucher_id], [cancel]) VALUES (169, CAST(N'2024-02-21' AS Date), 1, CAST(100 AS Decimal(18, 0)), N'sádas, Xã Yên Ð?, Huy?n Phú Luong, T?nh Thái Nguyên', N'0782870506', 57, 38, N'dang x? lí', 5, NULL, NULL, 0)
INSERT [dbo].[Order_Detail] ([order_id], [order_date], [quantity], [total], [address], [phone_number], [id], [size], [status], [product_id], [staff_id], [voucher_id], [cancel]) VALUES (170, CAST(N'2024-02-21' AS Date), 1, CAST(100 AS Decimal(18, 0)), N'sádas, Xã Ð?c Vân, Huy?n Ngân Son, T?nh B?c K?n', N'0782870506', 58, 38, N'dang x? lí', 5, NULL, NULL, 0)
INSERT [dbo].[Order_Detail] ([order_id], [order_date], [quantity], [total], [address], [phone_number], [id], [size], [status], [product_id], [staff_id], [voucher_id], [cancel]) VALUES (171, CAST(N'2024-02-24' AS Date), 1, CAST(50 AS Decimal(18, 0)), N'sádas, Xã B?c B?, Huy?n Pác N?m, T?nh B?c K?n', N'0782870506', 59, 38, N'dang x? lí', 11, NULL, NULL, 0)
INSERT [dbo].[Order_Detail] ([order_id], [order_date], [quantity], [total], [address], [phone_number], [id], [size], [status], [product_id], [staff_id], [voucher_id], [cancel]) VALUES (172, CAST(N'2024-02-24' AS Date), 1, CAST(50 AS Decimal(18, 0)), N'sádas, Xã Nam M?u, Huy?n Ba B?, T?nh B?c K?n', N'0782870506', 60, 38, N'dang x? lí', 11, NULL, NULL, 0)
INSERT [dbo].[Order_Detail] ([order_id], [order_date], [quantity], [total], [address], [phone_number], [id], [size], [status], [product_id], [staff_id], [voucher_id], [cancel]) VALUES (173, CAST(N'2024-02-24' AS Date), 1, CAST(50 AS Decimal(18, 0)), N'sádas, Xã Nguyên Phúc, Huy?n B?ch Thông, T?nh B?c K?n', N'0782870506', 61, 38, N'dang x? lí', 11, NULL, NULL, 0)
INSERT [dbo].[Order_Detail] ([order_id], [order_date], [quantity], [total], [address], [phone_number], [id], [size], [status], [product_id], [staff_id], [voucher_id], [cancel]) VALUES (174, CAST(N'2024-02-24' AS Date), 1, CAST(50 AS Decimal(18, 0)), N'sádas, Xã B?c B?, Huy?n Pác N?m, T?nh B?c K?n', N'0782870506', 62, 38, N'dang x? lí', 11, NULL, NULL, 0)
INSERT [dbo].[Order_Detail] ([order_id], [order_date], [quantity], [total], [address], [phone_number], [id], [size], [status], [product_id], [staff_id], [voucher_id], [cancel]) VALUES (175, CAST(N'2024-02-24' AS Date), 1, CAST(50 AS Decimal(18, 0)), N'sádas, Xã Công B?ng, Huy?n Pác N?m, T?nh B?c K?n', N'0782870506', 63, 38, N'dang x? lí', 11, NULL, NULL, 0)
INSERT [dbo].[Order_Detail] ([order_id], [order_date], [quantity], [total], [address], [phone_number], [id], [size], [status], [product_id], [staff_id], [voucher_id], [cancel]) VALUES (176, CAST(N'2024-02-24' AS Date), 1, CAST(50 AS Decimal(18, 0)), N'sádas, Xã Giáo Hi?u, Huy?n Pác N?m, T?nh B?c K?n', N'0782870506', 64, 38, N'dang x? lí', 11, NULL, NULL, 0)
INSERT [dbo].[Order_Detail] ([order_id], [order_date], [quantity], [total], [address], [phone_number], [id], [size], [status], [product_id], [staff_id], [voucher_id], [cancel]) VALUES (177, CAST(N'2024-02-24' AS Date), 1, CAST(50 AS Decimal(18, 0)), N'sádas, Xã B?ng Vân, Huy?n Ngân Son, T?nh B?c K?n', N'0782870506', 65, 38, N'dang x? lí', 11, NULL, NULL, 0)
INSERT [dbo].[Order_Detail] ([order_id], [order_date], [quantity], [total], [address], [phone_number], [id], [size], [status], [product_id], [staff_id], [voucher_id], [cancel]) VALUES (178, CAST(N'2024-02-24' AS Date), 1, CAST(60 AS Decimal(18, 0)), N'sádas, Xã Khang Ninh, Huy?n Ba B?, T?nh B?c K?n', N'0782870506', 66, 38, N'dang x? lí', 11, NULL, NULL, 0)
INSERT [dbo].[Order_Detail] ([order_id], [order_date], [quantity], [total], [address], [phone_number], [id], [size], [status], [product_id], [staff_id], [voucher_id], [cancel]) VALUES (178, CAST(N'2024-02-24' AS Date), 1, CAST(62 AS Decimal(18, 0)), N'sádas, Xã Khang Ninh, Huy?n Ba B?, T?nh B?c K?n', N'0782870506', 67, 38, N'dang x? lí', 14, NULL, NULL, 0)
INSERT [dbo].[Order_Detail] ([order_id], [order_date], [quantity], [total], [address], [phone_number], [id], [size], [status], [product_id], [staff_id], [voucher_id], [cancel]) VALUES (179, CAST(N'2024-02-24' AS Date), 1, CAST(60 AS Decimal(18, 0)), N'sádas, Xã Vân Tùng, Huy?n Ngân Son, T?nh B?c K?n', N'0782870506', 68, 38, N'dang x? lí', 11, NULL, NULL, 0)
INSERT [dbo].[Order_Detail] ([order_id], [order_date], [quantity], [total], [address], [phone_number], [id], [size], [status], [product_id], [staff_id], [voucher_id], [cancel]) VALUES (179, CAST(N'2024-02-24' AS Date), 1, CAST(62 AS Decimal(18, 0)), N'sádas, Xã Vân Tùng, Huy?n Ngân Son, T?nh B?c K?n', N'0782870506', 69, 38, N'dang x? lí', 14, NULL, NULL, 0)
INSERT [dbo].[Order_Detail] ([order_id], [order_date], [quantity], [total], [address], [phone_number], [id], [size], [status], [product_id], [staff_id], [voucher_id], [cancel]) VALUES (180, CAST(N'2024-02-24' AS Date), 1, CAST(65 AS Decimal(18, 0)), N'sádas, Xã Cao Thu?ng, Huy?n Ba B?, T?nh B?c K?n', N'0782870506', 70, 38, N'dang x? lí', 12, NULL, NULL, 0)
INSERT [dbo].[Order_Detail] ([order_id], [order_date], [quantity], [total], [address], [phone_number], [id], [size], [status], [product_id], [staff_id], [voucher_id], [cancel]) VALUES (180, CAST(N'2024-02-24' AS Date), 1, CAST(80 AS Decimal(18, 0)), N'sádas, Xã Cao Thu?ng, Huy?n Ba B?, T?nh B?c K?n', N'0782870506', 71, 38, N'dang x? lí', 27, NULL, NULL, 0)
INSERT [dbo].[Order_Detail] ([order_id], [order_date], [quantity], [total], [address], [phone_number], [id], [size], [status], [product_id], [staff_id], [voucher_id], [cancel]) VALUES (182, CAST(N'2024-02-26' AS Date), 1, CAST(100 AS Decimal(18, 0)), N'sádas, Xã Thu?ng Quan, Huy?n Ngân Son, T?nh B?c K?n', N'0782870506', 73, 38, N'dang x? lí', 5, NULL, NULL, 0)
INSERT [dbo].[Order_Detail] ([order_id], [order_date], [quantity], [total], [address], [phone_number], [id], [size], [status], [product_id], [staff_id], [voucher_id], [cancel]) VALUES (183, CAST(N'2024-02-26' AS Date), 1, CAST(60 AS Decimal(18, 0)), N'sádas, Xã Công B?ng, Huy?n Pác N?m, T?nh B?c K?n', N'0782870506', 74, 38, N'dang x? lí', 10, NULL, NULL, 0)
INSERT [dbo].[Order_Detail] ([order_id], [order_date], [quantity], [total], [address], [phone_number], [id], [size], [status], [product_id], [staff_id], [voucher_id], [cancel]) VALUES (183, CAST(N'2024-02-26' AS Date), 3, CAST(215 AS Decimal(18, 0)), N'sádas, Xã Công B?ng, Huy?n Pác N?m, T?nh B?c K?n', N'0782870506', 75, 38, N'dang x? lí', 9, NULL, NULL, 0)
INSERT [dbo].[Order_Detail] ([order_id], [order_date], [quantity], [total], [address], [phone_number], [id], [size], [status], [product_id], [staff_id], [voucher_id], [cancel]) VALUES (183, CAST(N'2024-02-26' AS Date), 1, CAST(60 AS Decimal(18, 0)), N'sádas, Xã Công B?ng, Huy?n Pác N?m, T?nh B?c K?n', N'0782870506', 76, 38, N'dang x? lí', 10, NULL, NULL, 0)
INSERT [dbo].[Order_Detail] ([order_id], [order_date], [quantity], [total], [address], [phone_number], [id], [size], [status], [product_id], [staff_id], [voucher_id], [cancel]) VALUES (186, CAST(N'2024-02-27' AS Date), 1, CAST(55 AS Decimal(18, 0)), N'sádas, Xã Cao Thu?ng, Huy?n Ba B?, T?nh B?c K?n', N'0782870506', 79, 38, N'Completly payment', 9, NULL, NULL, 0)
INSERT [dbo].[Order_Detail] ([order_id], [order_date], [quantity], [total], [address], [phone_number], [id], [size], [status], [product_id], [staff_id], [voucher_id], [cancel]) VALUES (187, CAST(N'2024-03-01' AS Date), 1, CAST(50 AS Decimal(18, 0)), N'can tho, Xã Xuân Tru?ng, Huy?n B?o L?c, T?nh Cao B?ng', N'7828923', 80, 38, N'dang x? lí', 11, NULL, NULL, 0)
INSERT [dbo].[Order_Detail] ([order_id], [order_date], [quantity], [total], [address], [phone_number], [id], [size], [status], [product_id], [staff_id], [voucher_id], [cancel]) VALUES (188, CAST(N'2024-03-01' AS Date), 1, CAST(52 AS Decimal(18, 0)), N'can tho, Xã Ng?c Ð?ng, Huy?n Hà Qu?ng, T?nh Cao B?ng', N'7828923', 81, 38, N'dang x? lí', 14, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[Order_Detail] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([id], [image], [price], [title], [description], [cate_id]) VALUES (5, N'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lr476wtvlo61fa', 120.0000, N'Giày thể thao nam Nike Air Max 270', N'Nike Air Max 270 là biểu tượng của phong cách và hiệu suất. Với đệm Max Air lớn dưới đế, đôi giày này mang đến cảm giác êm ái và sự hỗ trợ tối đa trong mọi hoạt động thể thao. Hãy tự tin bước đi cùng Nike Air Max 270.', 2)
INSERT [dbo].[Product] ([id], [image], [price], [title], [description], [cate_id]) VALUES (9, N'https://down-vn.img.susercontent.com/file/vn-11134207-7qukw-lh5x6797gpo372', 75.0000, N'Giày Converse nữ Chuck Taylor Dainty', N'Chuck Taylor Dainty là phiên bản thon gọn của Chuck Taylor. Với sự kết hợp giữa phong cách và thoải mái, đây là lựa chọn hoàn hảo cho phụ nữ yêu thời trang.', 4)
INSERT [dbo].[Product] ([id], [image], [price], [title], [description], [cate_id]) VALUES (10, N'https://down-vn.img.susercontent.com/file/873c40a34cb88a0ca617a1265a597665', 70.0000, N'Giày Converse Chuck Taylor Street', N'Chuck Taylor Street mang đến phong cách và thoải mái cho cả gia đình. Với thiết kế đơn giản và sự thoải mái.', 4)
INSERT [dbo].[Product] ([id], [image], [price], [title], [description], [cate_id]) VALUES (11, N'https://down-vn.img.susercontent.com/file/sg-11134201-22110-ssxyfjrki2jvff', 70.0000, N'Giày thể thao nam Biti''s Hunter X1', N'Biti''s Hunter X1 là một trong những sản phẩm nổi bật của Biti''s. Với thiết kế thời trang và đệm êm ái, đôi giày này là sự lựa chọn hoàn hảo cho các hoạt động ngoài trời.', 3)
INSERT [dbo].[Product] ([id], [image], [price], [title], [description], [cate_id]) VALUES (12, N'https://down-vn.img.susercontent.com/file/sg-11134201-22110-ssxyfjrki2jvff', 75.0000, N'Giày thể thao nữ Biti''s Star Runner1', N'Biti''s Star Runner1 là sự kết hợp giữa phong cách và thoải mái. Với đệm mềm mại và kiểu dáng thời trang, đây là đôi giày dành cho phụ nữ yêu thời trang.', 3)
INSERT [dbo].[Product] ([id], [image], [price], [title], [description], [cate_id]) VALUES (13, N'https://th.bing.com/th/id/R.7e952912351de8bd2b7a2e3f8742ab52?rik=9odlmrQF%2fofZrw&pid=ImgRaw&r=0', 85.0000, N'Giày thể thao nam Biti''s Explorer1', N'Biti''s Explorer1 là lựa chọn hoàn hảo cho các hoạt động ngoại trời. Sản phẩm này sử dụng chất liệu chống nước và có đế êm ái giúp bạn thoải mái trong mọi điều kiện.', 3)
INSERT [dbo].[Product] ([id], [image], [price], [title], [description], [cate_id]) VALUES (14, N'https://product.hstatic.net/1000230642/product/9_4af2a89ef6a8461184dda8b5339a0787_large.jpg', 72.0000, N'Giày thể thao nam Biti''s Hunter X2', N'Biti''s Hunter X2 là một trong những sản phẩm nổi bật của Biti''s. Với thiết kế thời trang và đệm êm ái, đôi giày này là sự lựa chọn hoàn hảo cho các hoạt động ngoài trời.', 3)
INSERT [dbo].[Product] ([id], [image], [price], [title], [description], [cate_id]) VALUES (24, N'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lrwku7j7dbyc75', 110.0000, N'Adidas Men''s Running Shoes', N'Description of Adidas Men''s Running Shoes', 11)
INSERT [dbo].[Product] ([id], [image], [price], [title], [description], [cate_id]) VALUES (25, N'https://down-vn.img.susercontent.com/file/14c00d4ea0d7f7d6d75c907fffd1f182', 120.0000, N'Adidas Women''s Athletic Shoes', N'Description of Adidas Women''s Athletic Shoes', 11)
INSERT [dbo].[Product] ([id], [image], [price], [title], [description], [cate_id]) VALUES (26, N'https://down-vn.img.susercontent.com/file/14c00d4ea0d7f7d6d75c907fffd1f182', 100.0000, N'Adidas Men''s Basketball Sneakers', N'Description of Adidas Men''s Basketball Sneakers', 11)
INSERT [dbo].[Product] ([id], [image], [price], [title], [description], [cate_id]) VALUES (27, N'https://down-vn.img.susercontent.com/file/14c00d4ea0d7f7d6d75c907fffd1f182', 90.0000, N'Adidas Women''s Running Shoes', N'Description of Adidas Women''s Running Shoes', 11)
INSERT [dbo].[Product] ([id], [image], [price], [title], [description], [cate_id]) VALUES (28, N'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lmseliwk0s0v63', 130.0000, N'Nike Men''s Air Zoom Pegasus', N'Description of Nike Men''s Air Zoom Pegasus', 2)
INSERT [dbo].[Product] ([id], [image], [price], [title], [description], [cate_id]) VALUES (29, N'https://down-vn.img.susercontent.com/file/vn-11134201-7r98o-lm791uy333z347', 120.0000, N'Nike Women''s React Infinity Run', N'Description of Nike Women''s React Infinity Run', 2)
INSERT [dbo].[Product] ([id], [image], [price], [title], [description], [cate_id]) VALUES (30, N'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lmseliwk0s0v63', 110.0000, N'Nike Men''s LeBron Witness VI', N'Description of Nike Men''s LeBron Witness VI', 2)
INSERT [dbo].[Product] ([id], [image], [price], [title], [description], [cate_id]) VALUES (31, N'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lmseliwk0s0v63', 100.0000, N'Nike Women''s Free RN', N'Description of Nike Women''s Free RN', 2)
INSERT [dbo].[Product] ([id], [image], [price], [title], [description], [cate_id]) VALUES (32, N'https://down-vn.img.susercontent.com/file/sg-11134201-22110-j656i7jfsckv42', 70.0000, N'Biti''s Men''s Active Running', N'Description of Biti''s Men''s Active Running', 3)
INSERT [dbo].[Product] ([id], [image], [price], [title], [description], [cate_id]) VALUES (33, N'https://down-vn.img.susercontent.com/file/sg-11134201-22110-ssxyfjrki2jvff', 75.0000, N'Biti''s Women''s Fashion Sneakers', N'Description of Biti''s Women''s Fashion Sneakers', 3)
INSERT [dbo].[Product] ([id], [image], [price], [title], [description], [cate_id]) VALUES (34, N'https://down-vn.img.susercontent.com/file/sg-11134201-22110-ssxyfjrki2jvff', 65.0000, N'Biti''s Men''s Urban Style', N'Description of Biti''s Men''s Urban Style', 3)
INSERT [dbo].[Product] ([id], [image], [price], [title], [description], [cate_id]) VALUES (35, N'https://down-vn.img.susercontent.com/file/sg-11134201-22110-ssxyfjrki2jvff', 80.0000, N'Biti''s Women''s Classic Slip-Ons', N'Description of Biti''s Women''s Classic Slip-Ons', 3)
INSERT [dbo].[Product] ([id], [image], [price], [title], [description], [cate_id]) VALUES (36, N'https://down-vn.img.susercontent.com/file/73d00bbfa4bd5b5b563c8d3e0fa011fd', 65.0000, N'Converse Men''s Chuck Taylor All Star', N'Description of Converse Men''s Chuck Taylor All Star', 4)
INSERT [dbo].[Product] ([id], [image], [price], [title], [description], [cate_id]) VALUES (37, N'https://down-vn.img.susercontent.com/file/73d00bbfa4bd5b5b563c8d3e0fa011fd', 70.0000, N'Converse Women''s Chuck Taylor Shoreline', N'Description of Converse Women''s Chuck Taylor Shoreline', 4)
INSERT [dbo].[Product] ([id], [image], [price], [title], [description], [cate_id]) VALUES (38, N'https://down-vn.img.susercontent.com/file/73d00bbfa4bd5b5b563c8d3e0fa011fd', 60.0000, N'Converse Men''s Jack Purcell', N'Description of Converse Men''s Jack Purcell', 4)
INSERT [dbo].[Product] ([id], [image], [price], [title], [description], [cate_id]) VALUES (39, N'https://down-vn.img.susercontent.com/file/73d00bbfa4bd5b5b563c8d3e0fa011fd', 75.0000, N'Converse Women''s Chuck Taylor All Star Dainty', N'Description of Converse Women''s Chuck Taylor All Star Dainty', 4)
INSERT [dbo].[Product] ([id], [image], [price], [title], [description], [cate_id]) VALUES (48, N'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lpbykjz3n77y09', 150.0000, N'Giày_Nike Air Force 1 nam nữ', N'[Hàng Chính Hãng] Giày_Nike Air Force 1 nam nữ, Sneaker Vệt Nâu,Móc Nâu đế Air cao cấp bestquality full phụ kiện', 2)
INSERT [dbo].[Product] ([id], [image], [price], [title], [description], [cate_id]) VALUES (82, N'https://down-vn.img.susercontent.com/file/vn-11134201-7r98o-lm791uy333z347', 123.0000, N'giày mới của tôiiszxvzxccv', N'[Hàng Chính Hãng] Giày_Nike Air Force 1 nam nữ, Sneaker Vệt Nâu,Móc Nâu đế Air cao cấp bestquality full phụ kiện', 2)
INSERT [dbo].[Product] ([id], [image], [price], [title], [description], [cate_id]) VALUES (85, N'https://down-vn.img.susercontent.com/file/vn-11134201-7qukw-lj1hcq98ga8idb', 123.0000, N'Giày_Nike Air Force 1 nam nữ', N'[Hàng Chính Hãng] Giày_Nike Air Force 1 nam nữ, Sneaker Vệt Nâu,Móc Nâu đế Air cao cấp bestquality full phụ kiện', 4)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Product_Size] ON 

INSERT [dbo].[Product_Size] ([id], [product_id], [size], [quantity]) VALUES (1, 5, N'40', N'2         ')
INSERT [dbo].[Product_Size] ([id], [product_id], [size], [quantity]) VALUES (2, 5, N'41', N'4         ')
INSERT [dbo].[Product_Size] ([id], [product_id], [size], [quantity]) VALUES (3, 9, N'40', N'4         ')
INSERT [dbo].[Product_Size] ([id], [product_id], [size], [quantity]) VALUES (4, 9, N'41', N'12        ')
INSERT [dbo].[Product_Size] ([id], [product_id], [size], [quantity]) VALUES (39, 82, N'39', N'1         ')
INSERT [dbo].[Product_Size] ([id], [product_id], [size], [quantity]) VALUES (40, 82, N'40', N'2         ')
INSERT [dbo].[Product_Size] ([id], [product_id], [size], [quantity]) VALUES (41, 82, N'41', N'0         ')
INSERT [dbo].[Product_Size] ([id], [product_id], [size], [quantity]) VALUES (42, 82, N'42', N'2         ')
INSERT [dbo].[Product_Size] ([id], [product_id], [size], [quantity]) VALUES (51, 85, N'39', N'1         ')
INSERT [dbo].[Product_Size] ([id], [product_id], [size], [quantity]) VALUES (52, 85, N'40', N'2         ')
INSERT [dbo].[Product_Size] ([id], [product_id], [size], [quantity]) VALUES (53, 85, N'41', N'0         ')
INSERT [dbo].[Product_Size] ([id], [product_id], [size], [quantity]) VALUES (54, 85, N'42', N'2         ')
SET IDENTITY_INSERT [dbo].[Product_Size] OFF
GO
SET IDENTITY_INSERT [dbo].[Staff] ON 

INSERT [dbo].[Staff] ([id], [role]) VALUES (1, N'admin')
INSERT [dbo].[Staff] ([id], [role]) VALUES (2, N'staff')
INSERT [dbo].[Staff] ([id], [role]) VALUES (3, N' ')
SET IDENTITY_INSERT [dbo].[Staff] OFF
GO
SET IDENTITY_INSERT [dbo].[Voucher] ON 

INSERT [dbo].[Voucher] ([id], [voucher_name], [discount], [conditions]) VALUES (1, N'voucher 1', CAST(30 AS Decimal(18, 0)), CAST(200 AS Numeric(18, 0)))
INSERT [dbo].[Voucher] ([id], [voucher_name], [discount], [conditions]) VALUES (2, N'voucher 2', CAST(20 AS Decimal(18, 0)), CAST(70 AS Numeric(18, 0)))
SET IDENTITY_INSERT [dbo].[Voucher] OFF
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Staff] FOREIGN KEY([staff_id])
REFERENCES [dbo].[Staff] ([id])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Staff]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Account] FOREIGN KEY([user_name])
REFERENCES [dbo].[Account] ([user_name])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Account]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Product] FOREIGN KEY([product_id])
REFERENCES [dbo].[Product] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Product]
GO
ALTER TABLE [dbo].[Feed_back]  WITH CHECK ADD  CONSTRAINT [FK_feedback_Product] FOREIGN KEY([pro_id])
REFERENCES [dbo].[Product] ([id])
GO
ALTER TABLE [dbo].[Feed_back] CHECK CONSTRAINT [FK_feedback_Product]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Account] FOREIGN KEY([user_name])
REFERENCES [dbo].[Account] ([user_name])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Account]
GO
ALTER TABLE [dbo].[Order_Detail]  WITH CHECK ADD  CONSTRAINT [FK_Order_Detail_Product] FOREIGN KEY([product_id])
REFERENCES [dbo].[Product] ([id])
GO
ALTER TABLE [dbo].[Order_Detail] CHECK CONSTRAINT [FK_Order_Detail_Product]
GO
ALTER TABLE [dbo].[Order_Detail]  WITH CHECK ADD  CONSTRAINT [FK_Order_Detail_Staff] FOREIGN KEY([staff_id])
REFERENCES [dbo].[Staff] ([id])
GO
ALTER TABLE [dbo].[Order_Detail] CHECK CONSTRAINT [FK_Order_Detail_Staff]
GO
ALTER TABLE [dbo].[Order_Detail]  WITH CHECK ADD  CONSTRAINT [FK_Order_Detail_Voucher] FOREIGN KEY([voucher_id])
REFERENCES [dbo].[Voucher] ([id])
GO
ALTER TABLE [dbo].[Order_Detail] CHECK CONSTRAINT [FK_Order_Detail_Voucher]
GO
ALTER TABLE [dbo].[Order_Detail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Order] FOREIGN KEY([order_id])
REFERENCES [dbo].[Order] ([order_id])
GO
ALTER TABLE [dbo].[Order_Detail] CHECK CONSTRAINT [FK_OrderDetail_Order]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([cate_id])
REFERENCES [dbo].[Category] ([cid])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[Product_Size]  WITH CHECK ADD  CONSTRAINT [FK_Product_Size_Product] FOREIGN KEY([product_id])
REFERENCES [dbo].[Product] ([id])
GO
ALTER TABLE [dbo].[Product_Size] CHECK CONSTRAINT [FK_Product_Size_Product]
GO
USE [master]
GO
ALTER DATABASE [webshop2] SET  READ_WRITE 
GO
