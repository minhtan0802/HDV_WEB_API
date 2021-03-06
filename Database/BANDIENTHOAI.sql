USE [BANDIENTHOAI]
GO
/****** Object:  Table [dbo].[CartItem]    Script Date: 15/03/2022 2:47:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CartItem](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[prod_id] [int] NULL,
	[quantity] [int] NULL,
	[price] [float] NULL,
	[user_id] [varchar](50) NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_Cart_Item] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 15/03/2022 2:47:05 PM ******/
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
/****** Object:  Table [dbo].[Order]    Script Date: 15/03/2022 2:47:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [varchar](50) NOT NULL,
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
/****** Object:  Table [dbo].[OrderItem]    Script Date: 15/03/2022 2:47:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderItem](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[quantity] [int] NULL,
	[prod_id] [int] NOT NULL,
	[order_id] [int] NOT NULL,
	[price] [float] NOT NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 15/03/2022 2:47:05 PM ******/
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
/****** Object:  Table [dbo].[User]    Script Date: 15/03/2022 2:47:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
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
 CONSTRAINT [PK_User_1] PRIMARY KEY CLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CartItem] ON 

INSERT [dbo].[CartItem] ([id], [prod_id], [quantity], [price], [user_id], [status]) VALUES (1, 1, 5, 10000, N'minhtan0802@gmail.com', NULL)
SET IDENTITY_INSERT [dbo].[CartItem] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([id], [name], [image], [status]) VALUES (1, N'Mobile Phone', N'https://img.icons8.com/office/60/000000/iphone.png', 1)
INSERT [dbo].[Category] ([id], [name], [image], [status]) VALUES (2, N'Digital Device', N'https://img.icons8.com/external-parzival-1997-flat-parzival-1997/50/000000/external-digital-digital-asset-and-intangible-product-parzival-1997-flat-parzival-1997-2.png', 1)
INSERT [dbo].[Category] ([id], [name], [image], [status]) VALUES (3, N'Consumer Electronics', N'https://img.icons8.com/fluency/48/000000/multiple-devices.png', 1)
SET IDENTITY_INSERT [dbo].[Category] OFF
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
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
INSERT [dbo].[User] ([email], [firstname], [lastname], [password], [address], [phone], [sex], [birthday], [avatar], [role_id], [status], [IsVerify]) VALUES (N'minhtan0802@gmail.com', N'Tan', N'Truong Minh', N'123456', N'HCM', N'0977777777', 1, CAST(N'2000-01-01' AS Date), N'https://img.icons8.com/office/60/000000/iphone.png', 1, 1, 1)
GO
ALTER TABLE [dbo].[CartItem]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Item_User] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([email])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[CartItem] CHECK CONSTRAINT [FK_Cart_Item_User]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_User] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([email])
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
/****** Object:  StoredProcedure [dbo].[getListCartItem]    Script Date: 15/03/2022 2:47:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getListCartItem]
@email nvarchar(50)
as
select c.id,c.quantity,c.prod_id,p.[name],c.price  from CartItem as c, Product as p where [user_id]=@email and c.prod_id=p.id
GO
/****** Object:  StoredProcedure [dbo].[getListCategory]    Script Date: 15/03/2022 2:47:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[getListCategory]
as
select * from Category
where status<>0
GO
/****** Object:  StoredProcedure [dbo].[getListOrderByUser]    Script Date: 15/03/2022 2:47:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getListOrderByUser]
@email nvarchar(50)
as
SELECT * FROM [Order] where [user_id]=@email and [status]<>-1
-- status=0: chưa xu ly, -1: da huy, -1: da giao

GO
/****** Object:  StoredProcedure [dbo].[getListOrderChuaXuLy]    Script Date: 15/03/2022 2:47:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getListOrderChuaXuLy]
@page int=1,
@page_size int=5
as
SELECT * FROM [Order]
WHERE [STATUS]=0
ORDER BY buyDate
OFFSET (@page-1) * @page_size ROWS
FETCH NEXT @page_size ROWS ONLY
GO
/****** Object:  StoredProcedure [dbo].[getListOrderDaXuLy]    Script Date: 15/03/2022 2:47:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getListOrderDaXuLy]
@page int=1,
@page_size int=5
as
SELECT * FROM [Order] 
WHERE [STATUS]<>0
ORDER BY [STATUS]
OFFSET (@page-1) * @page_size ROWS
FETCH NEXT @page_size ROWS ONLY
GO
/****** Object:  StoredProcedure [dbo].[getListProduct]    Script Date: 15/03/2022 2:47:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getListProduct]
@page int=1,
@page_size int=5
as
SELECT id, [name],price,discount,[image],unit,quantity,detail FROM Product where [status]<>0
order by id
OFFSET (@page-1) * @page_size ROWS
FETCH NEXT @page_size ROWS ONLY
GO
/****** Object:  StoredProcedure [dbo].[getListProductByCategory]    Script Date: 15/03/2022 2:47:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getListProductByCategory]
@page int=1,
@page_size int=5,
@cate_id int
as
SELECT id, [name],price,discount,[image],unit,quantity,detail FROM Product where [status]<>0 and cate_id=@cate_id
order by id
OFFSET (@page-1) * @page_size ROWS
FETCH NEXT @page_size ROWS ONLY
GO
/****** Object:  StoredProcedure [dbo].[getListUser]    Script Date: 15/03/2022 2:47:05 PM ******/
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
/****** Object:  StoredProcedure [dbo].[getUserByEmail]    Script Date: 15/03/2022 2:47:05 PM ******/
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
