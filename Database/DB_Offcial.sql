USE [master]
GO
/****** Object:  Database [BANDIENTHOAI]    Script Date: 18/03/2022 9:01:28 PM ******/
CREATE DATABASE [BANDIENTHOAI]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BANDIENTHOAI', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SERVER\MSSQL\DATA\BANDIENTHOAI.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BANDIENTHOAI_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SERVER\MSSQL\DATA\BANDIENTHOAI_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [BANDIENTHOAI] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BANDIENTHOAI].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BANDIENTHOAI] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BANDIENTHOAI] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BANDIENTHOAI] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BANDIENTHOAI] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BANDIENTHOAI] SET ARITHABORT OFF 
GO
ALTER DATABASE [BANDIENTHOAI] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BANDIENTHOAI] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BANDIENTHOAI] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BANDIENTHOAI] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BANDIENTHOAI] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BANDIENTHOAI] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BANDIENTHOAI] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BANDIENTHOAI] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BANDIENTHOAI] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BANDIENTHOAI] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BANDIENTHOAI] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BANDIENTHOAI] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BANDIENTHOAI] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BANDIENTHOAI] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BANDIENTHOAI] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BANDIENTHOAI] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BANDIENTHOAI] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BANDIENTHOAI] SET RECOVERY FULL 
GO
ALTER DATABASE [BANDIENTHOAI] SET  MULTI_USER 
GO
ALTER DATABASE [BANDIENTHOAI] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BANDIENTHOAI] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BANDIENTHOAI] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BANDIENTHOAI] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [BANDIENTHOAI] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'BANDIENTHOAI', N'ON'
GO
USE [BANDIENTHOAI]
GO
/****** Object:  Table [dbo].[Banner]    Script Date: 18/03/2022 9:01:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Banner](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NOT NULL,
	[image] [nvarchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CartItem]    Script Date: 18/03/2022 9:01:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CartItem](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[prod_id] [int] NULL,
	[quantity] [int] NULL,
	[user_id] [int] NULL,
 CONSTRAINT [PK_Cart_Item] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 18/03/2022 9:01:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[image] [nvarchar](max) NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK__Category__34EAD1739391B752] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 18/03/2022 9:01:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[deliveryAddress] [nvarchar](50) NULL,
	[buyDate] [date] NULL,
	[deliveryCancelDay] [date] NULL,
	[status] [int] NULL,
 CONSTRAINT [PK__Cart__3213E83FE45A8835] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderItem]    Script Date: 18/03/2022 9:01:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderItem](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[quantity] [int] NULL,
	[prod_id] [int] NOT NULL,
	[order_id] [int] NOT NULL,
	[price] [int] NOT NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK__OrderIte__3213E83FF44AF2CA] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 18/03/2022 9:01:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[price] [float] NULL,
	[discount] [float] NULL,
	[cate_id] [int] NOT NULL,
	[image] [nvarchar](max) NULL,
	[unit] [nvarchar](20) NULL,
	[status] [bit] NULL,
	[quantity] [int] NULL,
	[detail] [nvarchar](max) NULL,
 CONSTRAINT [PK__Product__3213E83FDB02C7A9] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StatusOrder]    Script Date: 18/03/2022 9:01:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StatusOrder](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NULL,
 CONSTRAINT [PK_StatusOrder] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 18/03/2022 9:01:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[firstname] [nvarchar](50) NULL,
	[lastname] [nvarchar](50) NULL,
	[password] [varchar](50) NULL,
	[address] [nvarchar](50) NULL,
	[phone] [varchar](11) NULL,
	[sex] [int] NULL,
	[birthday] [date] NULL,
	[avatar] [varchar](max) NULL,
	[role_id] [int] NULL,
	[status] [bit] NULL,
	[IsVerify] [int] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CartItem] ON 

INSERT [dbo].[CartItem] ([id], [prod_id], [quantity], [user_id]) VALUES (2, 4, 12, 1)
INSERT [dbo].[CartItem] ([id], [prod_id], [quantity], [user_id]) VALUES (3, 6, 3, 1)
INSERT [dbo].[CartItem] ([id], [prod_id], [quantity], [user_id]) VALUES (4, 7, 2, 1)
INSERT [dbo].[CartItem] ([id], [prod_id], [quantity], [user_id]) VALUES (5, 3, 10, 1)
SET IDENTITY_INSERT [dbo].[CartItem] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([id], [name], [image], [status]) VALUES (1, N'Mobile Phone', N'https://img.icons8.com/office/60/000000/iphone.png', 1)
INSERT [dbo].[Category] ([id], [name], [image], [status]) VALUES (2, N'Digital Device 1', N'string', 0)
INSERT [dbo].[Category] ([id], [name], [image], [status]) VALUES (3, N'Consumer Electronics', N'https://img.icons8.com/fluency/48/000000/multiple-devices.png', 1)
INSERT [dbo].[Category] ([id], [name], [image], [status]) VALUES (4, N'string', N'string', 1)
INSERT [dbo].[Category] ([id], [name], [image], [status]) VALUES (5, N'Ði?n tho?i', NULL, 0)
INSERT [dbo].[Category] ([id], [name], [image], [status]) VALUES (6, N'Laptop', NULL, 1)
INSERT [dbo].[Category] ([id], [name], [image], [status]) VALUES (7, N'Máy tính b?ng', NULL, 1)
INSERT [dbo].[Category] ([id], [name], [image], [status]) VALUES (8, N'Ph?n m?m', NULL, 1)
INSERT [dbo].[Category] ([id], [name], [image], [status]) VALUES (10, N'ghg', N'string', 1)
INSERT [dbo].[Category] ([id], [name], [image], [status]) VALUES (11, N'phần mềm', N'string', 1)
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([id], [user_id], [deliveryAddress], [buyDate], [deliveryCancelDay], [status]) VALUES (3, 1, N'Long An', CAST(N'2022-02-18' AS Date), NULL, 0)
INSERT [dbo].[Order] ([id], [user_id], [deliveryAddress], [buyDate], [deliveryCancelDay], [status]) VALUES (4, 1, N'Long An', CAST(N'2018-05-11' AS Date), NULL, 0)
INSERT [dbo].[Order] ([id], [user_id], [deliveryAddress], [buyDate], [deliveryCancelDay], [status]) VALUES (5, 1, N'Sài Gòn', CAST(N'2022-03-18' AS Date), NULL, 0)
INSERT [dbo].[Order] ([id], [user_id], [deliveryAddress], [buyDate], [deliveryCancelDay], [status]) VALUES (6, 1, N'Long An', CAST(N'2022-03-18' AS Date), NULL, 0)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderItem] ON 

INSERT [dbo].[OrderItem] ([id], [quantity], [prod_id], [order_id], [price], [status]) VALUES (4, 10, 2, 4, 1520, 1)
INSERT [dbo].[OrderItem] ([id], [quantity], [prod_id], [order_id], [price], [status]) VALUES (8, 15, 3, 4, 12000, 1)
INSERT [dbo].[OrderItem] ([id], [quantity], [prod_id], [order_id], [price], [status]) VALUES (9, 12, 4, 4, 15000, 1)
INSERT [dbo].[OrderItem] ([id], [quantity], [prod_id], [order_id], [price], [status]) VALUES (11, 4, 2, 5, 12000, 1)
INSERT [dbo].[OrderItem] ([id], [quantity], [prod_id], [order_id], [price], [status]) VALUES (13, 5, 3, 5, 11000, 1)
INSERT [dbo].[OrderItem] ([id], [quantity], [prod_id], [order_id], [price], [status]) VALUES (14, 2, 4, 5, 160000, 1)
INSERT [dbo].[OrderItem] ([id], [quantity], [prod_id], [order_id], [price], [status]) VALUES (15, 2, 3, 6, 1500000, 0)
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([id], [name], [price], [discount], [cate_id], [image], [unit], [status], [quantity], [detail]) VALUES (2, N'Samsung Galaxy Fold', 200000, 10, 1, N'https://cdn.tgdd.vn/Products/Images/42/226935/samsung-galaxy-z-fold-3-1-1-org.jpg', N'cái', 1, 100, N'Galaxy Z Fold3 5G, chiếc điện thoại được nâng cấp toàn diện về nhiều mặt, đặc biệt đây là điện thoại màn hình gập đầu tiên trên thế giới có camera ẩn (08/2021). Sản phẩm sẽ là một “cú hit” của Samsung góp phần mang đến những trải nghiệm mới cho người dùng.')
INSERT [dbo].[Product] ([id], [name], [price], [discount], [cate_id], [image], [unit], [status], [quantity], [detail]) VALUES (3, N'Xiaomi Redmi Note 11S', 6990000, 30, 1, N'https://cdn.tgdd.vn/Products/Images/42/267871/xiaomi-redmi-note-11s-trang-thumb-600x600.jpg', N'cái', 1, 50, N'Điện thoại Redmi xịn xò')
INSERT [dbo].[Product] ([id], [name], [price], [discount], [cate_id], [image], [unit], [status], [quantity], [detail]) VALUES (4, N'Realme 9 Pro 5G', 7990000, 20, 1, N'https://cdn.tgdd.vn/Products/Images/42/250190/realme-9-Pro-blue-thumb-600x600.jpg', N'cái', 1, 20, N'Điện thoại Realme xịn xò')
INSERT [dbo].[Product] ([id], [name], [price], [discount], [cate_id], [image], [unit], [status], [quantity], [detail]) VALUES (5, N'Iphone 11 Pro 64GB', 16990000, 5, 1, N'https://cdn.tgdd.vn/Products/Images/42/153856/iphone-xi-do-600x600.jpg', N'cái', 1, 60, N'Điện thoại Iphone 11 xịn xò')
INSERT [dbo].[Product] ([id], [name], [price], [discount], [cate_id], [image], [unit], [status], [quantity], [detail]) VALUES (7, N'Laptop Lenovo Ideapad 3', 13290000, 10, 2, N'https://cdn.tgdd.vn/Products/Images/44/239552/macbook-air-m1-2020-gray-600x600.jpg', N'máy', 1, 50, N'Laptop Lenovo xịn xò')
INSERT [dbo].[Product] ([id], [name], [price], [discount], [cate_id], [image], [unit], [status], [quantity], [detail]) VALUES (8, N'Tai nghe Bluetooth AirPods Pro MagSafe Charge Apple MLWK3 Trắng', 6790000, 5, 2, N'https://cdn.tgdd.vn/Products/Images/54/253802/bluetooth-airpods-pro-magsafe-charge-apple-mlwk3-thumb-600x600.jpeg', N'cái', 1, 80, N'Tai nghe AirPods xịn xò')
INSERT [dbo].[Product] ([id], [name], [price], [discount], [cate_id], [image], [unit], [status], [quantity], [detail]) VALUES (10, N'Tai nghe AKG Samsung', 5000000, 10, 2, N'https://cdn.tgdd.vn/Products/Images/54/253802/bluetooth-airpods-pro-magsafe-charge-apple-mlwk3-thumb-600x600.jpeg', N'cái', 1, 20, N'Tai nghe AKG xịn xò')
INSERT [dbo].[Product] ([id], [name], [price], [discount], [cate_id], [image], [unit], [status], [quantity], [detail]) VALUES (11, N'Máy sấy tóc', 360000, 5, 3, N'https://cdn.tgdd.vn/Products/Images/1991/230377/bluestone-hdb-1827-3-org.jpg', N'cái', 1, 30, N'Máy sấy tóc bao khô')
INSERT [dbo].[Product] ([id], [name], [price], [discount], [cate_id], [image], [unit], [status], [quantity], [detail]) VALUES (12, N'Ấm điện', 400000, 7, 3, N'https://cdn.tgdd.vn/Products/Images/1989/231767/midea-mk-317dw-231767.jpg', N'cái', 1, 20, N'Ấm điện bao nhanh')
INSERT [dbo].[Product] ([id], [name], [price], [discount], [cate_id], [image], [unit], [status], [quantity], [detail]) VALUES (13, N'Bàn là', 199000, 5, 3, N'https://cdn.tgdd.vn/Products/Images/1988/194001/-avatar-1-600x600.jpg', N'cái', 1, 59, N'Bàn là bao phẳng quần áo')
INSERT [dbo].[Product] ([id], [name], [price], [discount], [cate_id], [image], [unit], [status], [quantity], [detail]) VALUES (14, N'Laptop ABC', 10000, NULL, 1, NULL, NULL, 1, 10, NULL)
INSERT [dbo].[Product] ([id], [name], [price], [discount], [cate_id], [image], [unit], [status], [quantity], [detail]) VALUES (15, N'Laptop EF', 2500000, NULL, 1, NULL, NULL, 1, 10, NULL)
INSERT [dbo].[Product] ([id], [name], [price], [discount], [cate_id], [image], [unit], [status], [quantity], [detail]) VALUES (16, N'Laptop FG', 1000000, NULL, 1, NULL, NULL, 1, 10, NULL)
INSERT [dbo].[Product] ([id], [name], [price], [discount], [cate_id], [image], [unit], [status], [quantity], [detail]) VALUES (17, N'string', 124000, 0, 3, N'string', N'string', 1, 10, N'string')
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
INSERT [dbo].[StatusOrder] ([id], [name]) VALUES (-1, N'Đã hủy')
INSERT [dbo].[StatusOrder] ([id], [name]) VALUES (0, N'Chưa xử lý')
INSERT [dbo].[StatusOrder] ([id], [name]) VALUES (1, N'Đã giao')
INSERT [dbo].[StatusOrder] ([id], [name]) VALUES (2, N'Đang giao')
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([ID], [email], [firstname], [lastname], [password], [address], [phone], [sex], [birthday], [avatar], [role_id], [status], [IsVerify]) VALUES (1, N'minhtan0902@gmail.com', N'string', N'string', N'123456', N'string', NULL, 0, CAST(N'2022-03-18' AS Date), N'string', 0, 0, 0)
INSERT [dbo].[User] ([ID], [email], [firstname], [lastname], [password], [address], [phone], [sex], [birthday], [avatar], [role_id], [status], [IsVerify]) VALUES (2, N'minhtan2000@gmail.com', N'string', N'string', N'123456', N'string', NULL, 0, CAST(N'2022-03-18' AS Date), N'string', 0, 1, 0)
INSERT [dbo].[User] ([ID], [email], [firstname], [lastname], [password], [address], [phone], [sex], [birthday], [avatar], [role_id], [status], [IsVerify]) VALUES (3, N'minhtan@gmail.com', N'string', N'string', N'B3J9I4qqbpZ3RoKZYLUV2A==', N'string', NULL, 0, CAST(N'2022-03-18' AS Date), N'string', 0, 1, 0)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Category__72E12F1BFBD27E91]    Script Date: 18/03/2022 9:01:28 PM ******/
ALTER TABLE [dbo].[Category] ADD UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Product__72E12F1B5D3C9D73]    Script Date: 18/03/2022 9:01:28 PM ******/
ALTER TABLE [dbo].[Product] ADD UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [email]    Script Date: 18/03/2022 9:01:28 PM ******/
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [email] UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CartItem]  WITH CHECK ADD  CONSTRAINT [FK_CartItem_User] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([ID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[CartItem] CHECK CONSTRAINT [FK_CartItem_User]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_StatusOrder] FOREIGN KEY([status])
REFERENCES [dbo].[StatusOrder] ([id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_StatusOrder]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_User] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([ID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_User]
GO
ALTER TABLE [dbo].[OrderItem]  WITH CHECK ADD  CONSTRAINT [FK_OrderItem_Order] FOREIGN KEY([order_id])
REFERENCES [dbo].[Order] ([id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[OrderItem] CHECK CONSTRAINT [FK_OrderItem_Order]
GO
ALTER TABLE [dbo].[OrderItem]  WITH CHECK ADD  CONSTRAINT [FK_OrderItem_Product] FOREIGN KEY([prod_id])
REFERENCES [dbo].[Product] ([id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[OrderItem] CHECK CONSTRAINT [FK_OrderItem_Product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK__Product__cate_id__15502E78] FOREIGN KEY([cate_id])
REFERENCES [dbo].[Category] ([id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK__Product__cate_id__15502E78]
GO
/****** Object:  StoredProcedure [dbo].[getDetailOrder]    Script Date: 18/03/2022 9:01:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getDetailOrder] 
@order_id int
as
select o.id,o.quantity,o.prod_id,p.[name],order_id,o.price,o.[status]
from OrderItem o
left join Product p on p.id=o.prod_id
where order_id=@order_id
GO
/****** Object:  StoredProcedure [dbo].[getListCartItem]    Script Date: 18/03/2022 9:01:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getListCartItem]
@user_id int=1
as
select c.id,c.quantity,c.prod_id,p.[name] from CartItem as c, Product as p where user_id=@user_id and c.prod_id=p.id
GO
/****** Object:  StoredProcedure [dbo].[getListCategory]    Script Date: 18/03/2022 9:01:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[getListCategory]
as
select * from Category
where status<>0
GO
/****** Object:  StoredProcedure [dbo].[getListOrderByUser]    Script Date: 18/03/2022 9:01:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getListOrderByUser]
@page int=1,
@page_size int=5,
@user_id int=1
as
SELECT * FROM [Order] where [user_id]=@user_id and [status]<>-1
-- status=0: chưa xu ly, -1: da huy, 1: da giao, 2:đang giao

GO
/****** Object:  StoredProcedure [dbo].[getListOrderChuaXuLy]    Script Date: 18/03/2022 9:01:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getListOrderChuaXuLy]
@page int=1,
@page_size int=5
as
SELECT o.id,o.user_id,o.deliveryAddress,o.buyDate,o.deliveryCancelDay,s.name as name_status, s.id as status
FROM [Order] o, StatusOrder s
WHERE o.status= s.id and s.id=0
ORDER BY buyDate
OFFSET (@page-1) * @page_size ROWS
FETCH NEXT @page_size ROWS ONLY
GO
/****** Object:  StoredProcedure [dbo].[getListOrderDaXuLy]    Script Date: 18/03/2022 9:01:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getListOrderDaXuLy]
@page int=1,
@page_size int=5
as
SELECT o.id,o.user_id,o.deliveryAddress,o.buyDate,o.deliveryCancelDay,s.name as name_status, s.id as status
FROM [Order] o, StatusOrder s
WHERE o.status= s.id and (s.id=-1 or s.id=1 or s.id=2)
ORDER BY buyDate
OFFSET (@page-1) * @page_size ROWS
FETCH NEXT @page_size ROWS ONLY
GO
/****** Object:  StoredProcedure [dbo].[getListProduct]    Script Date: 18/03/2022 9:01:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getListProduct]
@page int=1,
@page_size int=5
as
SELECT id, [name],price,discount,[image],unit,quantity,detail,[status] FROM Product where [status]<>0
order by id
OFFSET (@page-1) * @page_size ROWS
FETCH NEXT @page_size ROWS ONLY
GO
/****** Object:  StoredProcedure [dbo].[getListProductByCategory]    Script Date: 18/03/2022 9:01:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getListProductByCategory]
@page int=1,
@page_size int=5,
@type int
as
SELECT id, [name],price,discount,[image],unit,quantity,detail,[status] FROM Product where [status]<>0 and cate_id=@type
order by id
OFFSET (@page-1) * @page_size ROWS
FETCH NEXT @page_size ROWS ONLY
GO
/****** Object:  StoredProcedure [dbo].[getListProductByID]    Script Date: 18/03/2022 9:01:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getListProductByID]
@page int=1,
@page_size int=5,
@id int=3
as
SELECT * FROM PRODUCT WHERE id=@id
order by id
OFFSET (@page-1) * @page_size ROWS
FETCH NEXT @page_size ROWS ONLY
GO
/****** Object:  StoredProcedure [dbo].[getListUser]    Script Date: 18/03/2022 9:01:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getListUser]
@page int,
@page_size int
as
SELECT email,firstname,lastname,[address],phone,sex,birthday,avatar
FROM [User] where [status]<>0
order by email
OFFSET (@page-1) * @page_size ROWS
FETCH NEXT @page_size ROWS ONLY
GO
/****** Object:  StoredProcedure [dbo].[getNewestProduct]    Script Date: 18/03/2022 9:01:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getNewestProduct]
@QUANTITY INT=10
AS
SELECT TOP (@QUANTITY) * 
FROM PRODUCT 
ORDER BY ID DESC

GO
/****** Object:  StoredProcedure [dbo].[getPriceProductByID]    Script Date: 18/03/2022 9:01:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getPriceProductByID]
@id int=3
as
SELECT price, discount, (price-price*discount) realPrice FROM PRODUCT WHERE id=@id
order by id
GO
/****** Object:  StoredProcedure [dbo].[getProductByName]    Script Date: 18/03/2022 9:01:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getProductByName]
@page int=1,
@page_size int=5,
@name nvarchar(250)
as
SELECT * FROM PRODUCT WHERE [NAME] LIKE N'%'+@name+'%'
order by id
OFFSET (@page-1) * @page_size ROWS
FETCH NEXT @page_size ROWS ONLY
GO
/****** Object:  StoredProcedure [dbo].[getTotalProduct]    Script Date: 18/03/2022 9:01:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getTotalProduct]
AS
SELECT COUNT(ID)total FROM PRODUCT
GO
/****** Object:  StoredProcedure [dbo].[getUserByEmail]    Script Date: 18/03/2022 9:01:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getUserByEmail]
@email nvarchar(50)
AS
SELECT email,firstname,lastname,[address],phone,sex,birthday,avatar
FROM [User] WHERE [status]<>0 and email=@email
GO
USE [master]
GO
ALTER DATABASE [BANDIENTHOAI] SET  READ_WRITE 
GO
