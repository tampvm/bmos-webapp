use master
create database BMOS
USE [BMOS]
GO
/****** Object:  Table [dbo].[Tbl_Address]    Script Date: 8/29/2023 2:35:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Address](
	[address_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [varchar](10) NULL,
	[address] [nvarchar](max) NULL,
	[city_province] [nvarchar](100) NULL,
	[district] [nvarchar](100) NULL,
	[block_village] [nvarchar](100) NULL,
	[is_default] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[address_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Blog]    Script Date: 8/29/2023 2:35:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Blog](
	[blog_id] [varchar](10) NOT NULL,
	[name] [varchar](100) NULL,
	[description] [nvarchar](max) NULL,
	[date] [datetime] NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[blog_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Favourite_List]    Script Date: 8/29/2023 2:35:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Favourite_List](
	[favourite_list_id] [varchar](10) NOT NULL,
	[user_id] [varchar](10) NULL,
	[product_id] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[favourite_list_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Feedback]    Script Date: 8/29/2023 2:35:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Feedback](
	[feedback_id] [varchar](10) NOT NULL,
	[user_id] [varchar](10) NULL,
	[product_id] [varchar](10) NULL,
	[date] [datetime] NULL,
	[content] [nvarchar](200) NULL,
	[star] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[feedback_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Image]    Script Date: 8/29/2023 2:35:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Image](
	[image_id] [varchar](10) NOT NULL,
	[name] [varchar](100) NULL,
	[relation_id] [varchar](10) NULL,
	[type] [varchar](20) NULL,
	[url] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[image_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Order]    Script Date: 8/29/2023 2:35:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Order](
	[order_id] [varchar](10) NOT NULL,
	[user_id] [varchar](10) NULL,
	[phone] [varchar](10) NULL,
	[address] [nvarchar](max) NULL,
	[date] [datetime] NULL,
	[point] [real] NULL,
	[total_price] [real] NULL,
	[payment_type] [varchar](50) NULL,
	[status] [int] NULL,
	[note] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Order_Detail]    Script Date: 8/29/2023 2:35:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Order_Detail](
	[order_detail_id] [varchar](10) NOT NULL,
	[order_id] [varchar](10) NULL,
	[product_id] [varchar](10) NULL,
	[quantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[order_detail_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Permission]    Script Date: 8/29/2023 2:35:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Permission](
	[permission_id] [int] IDENTITY(1,1) NOT NULL,
	[user_role_id] [int] NULL,
	[permission_name] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[permission_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Product]    Script Date: 8/29/2023 2:35:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Product](
	[product_id] [varchar](10) NOT NULL,
	[name] [varchar](100) NULL,
	[quantity] [int] NULL,
	[description] [nvarchar](max) NULL,
	[weight] [float] NULL,
	[price] [float] NULL,
	[type] [varchar](50) NULL,
	[status] [bit] NULL,
	[is_loved] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Product_In_Routing]    Script Date: 8/29/2023 2:35:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Product_In_Routing](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[routing_id] [varchar](10) NULL,
	[product_id] [varchar](10) NULL,
	[quantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Refund]    Script Date: 8/29/2023 2:35:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Refund](
	[refund_id] [varchar](10) NOT NULL,
	[user_id] [varchar](10) NULL,
	[order_id] [varchar](10) NULL,
	[date] [datetime] NULL,
	[description] [nvarchar](200) NULL,
	[is_confirm] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[refund_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Role]    Script Date: 8/29/2023 2:35:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Role](
	[user_role_id] [int] IDENTITY(1,1) NOT NULL,
	[role_name] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[user_role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Routing]    Script Date: 8/29/2023 2:35:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Routing](
	[routing_id] [varchar](10) NOT NULL,
	[name] [nvarchar](100) NULL,
	[description] [nvarchar](max) NULL,
	[quantity] [int] NULL,
	[price] [float] NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[routing_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_User]    Script Date: 8/29/2023 2:35:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_User](
	[user_id] [varchar](10) NOT NULL,
	[username] [varchar](100) NULL,
	[password] [varchar](16) NULL,
	[number_phone] [varchar](10) NULL,
	[lastname] [nvarchar](50) NULL,
	[firstname] [nvarchar](50) NULL,
	[date_create] [datetime] NULL,
	[last_activity] [datetime] NULL,
	[point] [float] NULL,
	[status] [bit] NULL,
	[user_role_id] [int] NOT NULL,
	[is_confirm] [bit] NULL,
	[google_id] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Tbl_Role] ON 

INSERT [dbo].[Tbl_Role] ([user_role_id], [role_name]) VALUES (1, N'admin')
INSERT [dbo].[Tbl_Role] ([user_role_id], [role_name]) VALUES (2, N'staff')
INSERT [dbo].[Tbl_Role] ([user_role_id], [role_name]) VALUES (3, N'delivery')
INSERT [dbo].[Tbl_Role] ([user_role_id], [role_name]) VALUES (4, N'customer')
SET IDENTITY_INSERT [dbo].[Tbl_Role] OFF
GO
INSERT [dbo].[Tbl_User] ([user_id], [username], [password], [number_phone], [firstname], [lastname], [date_create], [last_activity], [point], [status], [user_role_id], [is_confirm], [google_id]) VALUES (N'1111111111', N'admin@123', N'1', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, NULL)
INSERT [dbo].[Tbl_User] ([user_id], [username], [password], [number_phone], [firstname], [lastname], [date_create], [last_activity], [point], [status], [user_role_id], [is_confirm], [google_id]) VALUES (N'2222222222', N'staff@123', N'1', NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 1, NULL)
INSERT [dbo].[Tbl_User] ([user_id], [username], [password], [number_phone], [firstname], [lastname], [date_create], [last_activity], [point], [status], [user_role_id], [is_confirm], [google_id]) VALUES (N'3333333333', N'delivery@123', N'1', NULL, NULL, NULL, NULL, NULL, NULL, 1, 3, 1, NULL)
GO
ALTER TABLE [dbo].[Tbl_Address]  WITH CHECK ADD  CONSTRAINT [FKlo13i087wmqhi0h7ffjxoljrb] FOREIGN KEY([user_id])
REFERENCES [dbo].[Tbl_User] ([user_id])
GO
ALTER TABLE [dbo].[Tbl_Address] CHECK CONSTRAINT [FKlo13i087wmqhi0h7ffjxoljrb]
GO
ALTER TABLE [dbo].[Tbl_Favourite_List]  WITH CHECK ADD  CONSTRAINT [FKm2xqd3qtvhpqas0sjhbmtrs6n] FOREIGN KEY([user_id])
REFERENCES [dbo].[Tbl_User] ([user_id])
GO
ALTER TABLE [dbo].[Tbl_Favourite_List] CHECK CONSTRAINT [FKm2xqd3qtvhpqas0sjhbmtrs6n]
GO
ALTER TABLE [dbo].[Tbl_Favourite_List]  WITH CHECK ADD  CONSTRAINT [FKpq62nrgc3olny4daatxvqfmwu] FOREIGN KEY([product_id])
REFERENCES [dbo].[Tbl_Product] ([product_id])
GO
ALTER TABLE [dbo].[Tbl_Favourite_List] CHECK CONSTRAINT [FKpq62nrgc3olny4daatxvqfmwu]
GO
ALTER TABLE [dbo].[Tbl_Feedback]  WITH CHECK ADD  CONSTRAINT [FKlu1yip7pjxni2mmfx2qgfi07p] FOREIGN KEY([user_id])
REFERENCES [dbo].[Tbl_User] ([user_id])
GO
ALTER TABLE [dbo].[Tbl_Feedback] CHECK CONSTRAINT [FKlu1yip7pjxni2mmfx2qgfi07p]
GO
ALTER TABLE [dbo].[Tbl_Feedback]  WITH CHECK ADD  CONSTRAINT [FKshkfuiqol3wuqjl9mt8t7ravl] FOREIGN KEY([product_id])
REFERENCES [dbo].[Tbl_Product] ([product_id])
GO
ALTER TABLE [dbo].[Tbl_Feedback] CHECK CONSTRAINT [FKshkfuiqol3wuqjl9mt8t7ravl]
GO
ALTER TABLE [dbo].[Tbl_Order]  WITH CHECK ADD  CONSTRAINT [FKhyolniflkctr0p6bp4t8me9vj] FOREIGN KEY([user_id])
REFERENCES [dbo].[Tbl_User] ([user_id])
GO
ALTER TABLE [dbo].[Tbl_Order] CHECK CONSTRAINT [FKhyolniflkctr0p6bp4t8me9vj]
GO
ALTER TABLE [dbo].[Tbl_Order_Detail]  WITH CHECK ADD  CONSTRAINT [FKnjncq9emp0cdhj0xbe3kk06h8] FOREIGN KEY([order_id])
REFERENCES [dbo].[Tbl_Order] ([order_id])
GO
ALTER TABLE [dbo].[Tbl_Order_Detail] CHECK CONSTRAINT [FKnjncq9emp0cdhj0xbe3kk06h8]
GO
ALTER TABLE [dbo].[Tbl_Order_Detail]  WITH CHECK ADD  CONSTRAINT [FKh1jxpk342vagdcrf5o8lpxd1c] FOREIGN KEY([product_id])
REFERENCES [dbo].[Tbl_Product] ([product_id])
GO
ALTER TABLE [dbo].[Tbl_Order_Detail] CHECK CONSTRAINT [FKh1jxpk342vagdcrf5o8lpxd1c]
GO
ALTER TABLE [dbo].[Tbl_Permission]  WITH CHECK ADD  CONSTRAINT [FKde6uamit1tn6v0lp0k5u3kqbl] FOREIGN KEY([user_role_id])
REFERENCES [dbo].[Tbl_Role] ([user_role_id])
GO
ALTER TABLE [dbo].[Tbl_Permission] CHECK CONSTRAINT [FKde6uamit1tn6v0lp0k5u3kqbl]
GO
ALTER TABLE [dbo].[Tbl_Product_In_Routing]  WITH CHECK ADD  CONSTRAINT [FK9ckquj7ni7puajd1edgyf24ow] FOREIGN KEY([routing_id])
REFERENCES [dbo].[Tbl_Routing] ([routing_id])
GO
ALTER TABLE [dbo].[Tbl_Product_In_Routing] CHECK CONSTRAINT [FK9ckquj7ni7puajd1edgyf24ow]
GO
ALTER TABLE [dbo].[Tbl_Product_In_Routing]  WITH CHECK ADD  CONSTRAINT [FKt746yhvtomjuobuhch9n5oy8d] FOREIGN KEY([product_id])
REFERENCES [dbo].[Tbl_Product] ([product_id])
GO
ALTER TABLE [dbo].[Tbl_Product_In_Routing] CHECK CONSTRAINT [FKt746yhvtomjuobuhch9n5oy8d]
GO
ALTER TABLE [dbo].[Tbl_Refund]  WITH CHECK ADD  CONSTRAINT [FKsdfamkik35952itxb5l248x63] FOREIGN KEY([user_id])
REFERENCES [dbo].[Tbl_User] ([user_id])
GO
ALTER TABLE [dbo].[Tbl_Refund] CHECK CONSTRAINT [FKsdfamkik35952itxb5l248x63]
GO
ALTER TABLE [dbo].[Tbl_Refund]  WITH CHECK ADD  CONSTRAINT [FKhp0g5mbk7wum240mny5nfso72] FOREIGN KEY([order_id])
REFERENCES [dbo].[Tbl_Order] ([order_id])
GO
ALTER TABLE [dbo].[Tbl_Refund] CHECK CONSTRAINT [FKhp0g5mbk7wum240mny5nfso72]
GO
ALTER TABLE [dbo].[Tbl_User]  WITH CHECK ADD  CONSTRAINT [FKt88m2w8tauo5eqj20yacctl69] FOREIGN KEY([user_role_id])
REFERENCES [dbo].[Tbl_Role] ([user_role_id])
GO
ALTER TABLE [dbo].[Tbl_User] CHECK CONSTRAINT [FKt88m2w8tauo5eqj20yacctl69]
GO
