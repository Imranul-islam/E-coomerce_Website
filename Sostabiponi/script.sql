USE [master]
GO
/****** Object:  Database [Sostabiponi]    Script Date: 12/6/2016 8:07:53 PM ******/
CREATE DATABASE [Sostabiponi]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Kahreedo', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.IMRAN\MSSQL\DATA\Kahreedo.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Kahreedo_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.IMRAN\MSSQL\DATA\Kahreedo_log.ldf' , SIZE = 1856KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Sostabiponi] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Sostabiponi].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Sostabiponi] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Sostabiponi] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Sostabiponi] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Sostabiponi] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Sostabiponi] SET ARITHABORT OFF 
GO
ALTER DATABASE [Sostabiponi] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Sostabiponi] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Sostabiponi] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Sostabiponi] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Sostabiponi] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Sostabiponi] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Sostabiponi] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Sostabiponi] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Sostabiponi] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Sostabiponi] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Sostabiponi] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Sostabiponi] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Sostabiponi] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Sostabiponi] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Sostabiponi] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Sostabiponi] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Sostabiponi] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Sostabiponi] SET RECOVERY FULL 
GO
ALTER DATABASE [Sostabiponi] SET  MULTI_USER 
GO
ALTER DATABASE [Sostabiponi] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Sostabiponi] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Sostabiponi] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Sostabiponi] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Sostabiponi] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Sostabiponi', N'ON'
GO
USE [Sostabiponi]
GO
/****** Object:  Table [dbo].[admin_Employee]    Script Date: 12/6/2016 8:07:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[admin_Employee](
	[EmpID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](20) NOT NULL,
	[LastName] [varchar](20) NULL,
	[Age] [int] NULL,
	[DateofBirth] [date] NULL,
	[Gender] [varchar](10) NULL,
	[Email] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
	[Phone] [varchar](15) NULL,
	[Mobile] [varchar](15) NOT NULL,
	[PhotoPath] [varchar](500) NULL,
 CONSTRAINT [PK_admin_Employee] PRIMARY KEY CLUSTERED 
(
	[EmpID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[admin_Login]    Script Date: 12/6/2016 8:07:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[admin_Login](
	[LoginID] [int] IDENTITY(1,1) NOT NULL,
	[EmpID] [int] NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[RoleType] [int] NULL,
	[Notes] [varchar](255) NULL,
 CONSTRAINT [PK_admin_Login] PRIMARY KEY CLUSTERED 
(
	[LoginID] ASC,
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 12/6/2016 8:07:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](20) NOT NULL,
	[Description] [varchar](50) NULL,
	[Picture1] [varchar](255) NULL,
	[Picture2] [varchar](250) NULL,
	[isActive] [bit] NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 12/6/2016 8:07:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customers](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[First Name] [varchar](50) NOT NULL,
	[Last Name] [varchar](50) NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Age] [int] NULL,
	[Gender] [varchar](50) NULL,
	[DateofBirth] [date] NULL,
	[Organization] [varchar](50) NULL,
	[Country] [varchar](50) NULL,
	[State] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[PostalCode] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[AltEmail] [varchar](50) NULL,
	[Phone1] [varchar](50) NULL,
	[Phone2] [varchar](20) NULL,
	[Mobile1] [varchar](50) NULL,
	[Mobile2] [varchar](50) NULL,
	[Address1] [varchar](50) NULL,
	[Address2] [varchar](50) NULL,
	[Picture] [varchar](250) NULL,
	[status] [varchar](50) NULL,
	[LastLogin] [datetime] NULL,
	[Created] [date] NULL,
	[Notes] [varchar](250) NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[genMainSlider]    Script Date: 12/6/2016 8:07:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[genMainSlider](
	[MainSliderID] [int] IDENTITY(1,1) NOT NULL,
	[ImageURL] [varchar](500) NULL,
	[AltText] [varchar](255) NULL,
	[OfferTag] [varchar](50) NULL,
	[Title] [varchar](50) NULL,
	[Description] [varchar](255) NULL,
	[BtnText] [varchar](50) NULL,
	[isDeleted] [bit] NULL,
 CONSTRAINT [PK_genMainSlider] PRIMARY KEY CLUSTERED 
(
	[MainSliderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[genPromoRight]    Script Date: 12/6/2016 8:07:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[genPromoRight](
	[PromoRightID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NOT NULL,
	[ImageURL] [varchar](500) NULL,
	[AltText] [varchar](500) NULL,
	[OfferTag] [varchar](50) NULL,
	[Title] [varchar](50) NULL,
	[isDeleted] [bit] NULL,
 CONSTRAINT [PK_genPromoRight] PRIMARY KEY CLUSTERED 
(
	[PromoRightID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Order]    Script Date: 12/6/2016 8:07:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [int] NOT NULL,
	[CustomerID] [int] NOT NULL,
	[PaymentID] [int] NULL,
	[ShippingID] [int] NULL,
	[Discount] [int] NULL CONSTRAINT [DF_Order_Discount]  DEFAULT ((0)),
	[Taxes] [int] NULL CONSTRAINT [DF_Order_Taxes]  DEFAULT ((0)),
	[TotalAmount] [int] NULL,
	[isCompleted] [bit] NULL CONSTRAINT [DF_Order_isCompleted]  DEFAULT ((0)),
	[OrderDate] [datetime] NULL,
	[DIspatched] [bit] NULL CONSTRAINT [DF_Order_DIspatched]  DEFAULT ((0)),
	[DispatchedDate] [datetime] NULL,
	[Shipped] [bit] NULL CONSTRAINT [DF_Order_Shipped]  DEFAULT ((0)),
	[ShippingDate] [datetime] NULL,
	[Deliver] [bit] NULL CONSTRAINT [DF_Order_Deliver]  DEFAULT ((0)),
	[DeliveryDate] [datetime] NULL,
	[Notes] [varchar](500) NULL,
	[CancelOrder] [bit] NULL CONSTRAINT [DF_Order_CancelOrder]  DEFAULT ((0)),
 CONSTRAINT [PK_Oder] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 12/6/2016 8:07:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[OrderDetailsID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[UnitPrice] [decimal](18, 0) NULL,
	[Quantity] [int] NULL,
	[Discount] [decimal](18, 0) NULL,
	[TotalAmount] [decimal](18, 0) NULL,
	[OrderDate] [datetime] NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[OrderDetailsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Payment]    Script Date: 12/6/2016 8:07:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[PaymentID] [int] NOT NULL,
	[Type] [int] NOT NULL,
	[CreditAmount] [money] NULL,
	[DebitAmount] [money] NULL,
	[Balance] [money] NULL,
	[PaymentDateTime] [datetime] NULL,
 CONSTRAINT [PK_Payment] PRIMARY KEY CLUSTERED 
(
	[PaymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PaymentType]    Script Date: 12/6/2016 8:07:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PaymentType](
	[PayTypeID] [int] IDENTITY(1,1) NOT NULL,
	[TypeName] [varchar](50) NOT NULL,
	[Description] [varchar](500) NULL,
 CONSTRAINT [PK_PaymentType] PRIMARY KEY CLUSTERED 
(
	[PayTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Products]    Script Date: 12/6/2016 8:07:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Products](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[SupplierID] [int] NOT NULL,
	[CategoryID] [int] NOT NULL,
	[SubCategoryID] [int] NULL,
	[QuantityPerUnit] [varchar](50) NULL,
	[UnitPrice] [decimal](18, 0) NOT NULL,
	[OldPrice] [decimal](18, 0) NULL,
	[UnitWeight] [varchar](50) NULL,
	[Size] [varchar](50) NULL,
	[Discount] [decimal](18, 0) NULL,
	[UnitInStock] [int] NULL,
	[UnitOnOrder] [int] NULL,
	[ProductAvailable] [bit] NULL,
	[ImageURL] [varchar](500) NULL,
	[AltText] [varchar](50) NULL,
	[AddBadge] [bit] NULL,
	[OfferTitle] [varchar](50) NULL,
	[OfferBadgeClass] [varchar](50) NULL,
	[ShortDescription] [varchar](300) NULL,
	[LongDescription] [varchar](2000) NULL,
	[Picture1] [varchar](500) NULL,
	[Picture2] [varchar](500) NULL,
	[Picture3] [varchar](500) NULL,
	[Picture4] [varchar](500) NULL,
	[Note] [varchar](250) NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RecentlyViews]    Script Date: 12/6/2016 8:07:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RecentlyViews](
	[RViewID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[ViewDate] [datetime] NOT NULL,
	[Note] [varchar](255) NULL,
 CONSTRAINT [PK_RecentlyViews] PRIMARY KEY CLUSTERED 
(
	[RViewID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Review]    Script Date: 12/6/2016 8:07:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Review](
	[ReviewID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NULL,
	[ProductID] [int] NULL,
	[Name] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Review] [varchar](500) NULL,
	[Rate] [int] NULL,
	[DateTime] [datetime] NULL,
	[isDelete] [bit] NULL,
 CONSTRAINT [PK_Review] PRIMARY KEY CLUSTERED 
(
	[ReviewID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 12/6/2016 8:07:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Roles](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [varchar](50) NOT NULL,
	[Description] [varchar](500) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ShippingDetails]    Script Date: 12/6/2016 8:07:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ShippingDetails](
	[ShippingID] [int] NOT NULL,
	[FirstName] [varchar](20) NOT NULL,
	[LastName] [varchar](20) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Mobile] [varchar](20) NOT NULL,
	[Address] [varchar](100) NOT NULL,
	[Province] [varchar](20) NULL,
	[City] [varchar](20) NULL,
	[PostCode] [varchar](10) NULL,
 CONSTRAINT [PK_ShippingDetails] PRIMARY KEY CLUSTERED 
(
	[ShippingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SubCategory]    Script Date: 12/6/2016 8:07:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SubCategory](
	[SubCategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NOT NULL,
	[Name] [nchar](20) NOT NULL,
	[Description] [varchar](250) NULL,
	[Picture1] [varchar](500) NULL,
	[Picture2] [varchar](500) NULL,
	[isActive] [bit] NULL,
 CONSTRAINT [PK_SubCategory] PRIMARY KEY CLUSTERED 
(
	[SubCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 12/6/2016 8:07:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Suppliers](
	[SupplierID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [varchar](50) NOT NULL,
	[ContactName] [varchar](50) NULL,
	[ContactTitle] [varchar](50) NULL,
	[Address] [varchar](128) NULL,
	[Mobile] [varchar](15) NULL,
	[Phone] [varchar](15) NOT NULL,
	[Fax] [varchar](20) NULL,
	[Email] [varchar](50) NOT NULL,
	[City] [varchar](20) NULL,
	[Country] [varchar](20) NULL,
 CONSTRAINT [PK_Supplier] PRIMARY KEY CLUSTERED 
(
	[SupplierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Wishlist]    Script Date: 12/6/2016 8:07:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Wishlist](
	[WishlistID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[isActive] [bit] NULL CONSTRAINT [DF_Wishlist_isActive]  DEFAULT ((1)),
 CONSTRAINT [PK_Wishlist] PRIMARY KEY CLUSTERED 
(
	[WishlistID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[admin_Login]  WITH CHECK ADD  CONSTRAINT [FK_admin_Login_admin_Employee] FOREIGN KEY([EmpID])
REFERENCES [dbo].[admin_Employee] ([EmpID])
GO
ALTER TABLE [dbo].[admin_Login] CHECK CONSTRAINT [FK_admin_Login_admin_Employee]
GO
ALTER TABLE [dbo].[admin_Login]  WITH CHECK ADD  CONSTRAINT [FK_admin_Login_Roles] FOREIGN KEY([RoleType])
REFERENCES [dbo].[Roles] ([RoleID])
GO
ALTER TABLE [dbo].[admin_Login] CHECK CONSTRAINT [FK_admin_Login_Roles]
GO
ALTER TABLE [dbo].[genPromoRight]  WITH CHECK ADD  CONSTRAINT [FK_genPromoRight_Categories] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([CategoryID])
GO
ALTER TABLE [dbo].[genPromoRight] CHECK CONSTRAINT [FK_genPromoRight_Categories]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Customers] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([CustomerID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Customers]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Payment] FOREIGN KEY([PaymentID])
REFERENCES [dbo].[Payment] ([PaymentID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Payment]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_ShippingDetails] FOREIGN KEY([ShippingID])
REFERENCES [dbo].[ShippingDetails] ([ShippingID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_ShippingDetails]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Order] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([OrderID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Order]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products]
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD  CONSTRAINT [FK_Payment_PaymentType] FOREIGN KEY([Type])
REFERENCES [dbo].[PaymentType] ([PayTypeID])
GO
ALTER TABLE [dbo].[Payment] CHECK CONSTRAINT [FK_Payment_PaymentType]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([CategoryID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_SubCategory] FOREIGN KEY([SubCategoryID])
REFERENCES [dbo].[SubCategory] ([SubCategoryID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_SubCategory]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Suppliers] FOREIGN KEY([SupplierID])
REFERENCES [dbo].[Suppliers] ([SupplierID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Suppliers]
GO
ALTER TABLE [dbo].[RecentlyViews]  WITH CHECK ADD  CONSTRAINT [FK_RecentlyViews_Customers] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([CustomerID])
GO
ALTER TABLE [dbo].[RecentlyViews] CHECK CONSTRAINT [FK_RecentlyViews_Customers]
GO
ALTER TABLE [dbo].[RecentlyViews]  WITH CHECK ADD  CONSTRAINT [FK_RecentlyViews_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
GO
ALTER TABLE [dbo].[RecentlyViews] CHECK CONSTRAINT [FK_RecentlyViews_Products]
GO
ALTER TABLE [dbo].[Review]  WITH CHECK ADD  CONSTRAINT [FK_Review_Customers] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([CustomerID])
GO
ALTER TABLE [dbo].[Review] CHECK CONSTRAINT [FK_Review_Customers]
GO
ALTER TABLE [dbo].[Review]  WITH CHECK ADD  CONSTRAINT [FK_Review_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
GO
ALTER TABLE [dbo].[Review] CHECK CONSTRAINT [FK_Review_Products]
GO
ALTER TABLE [dbo].[SubCategory]  WITH CHECK ADD  CONSTRAINT [FK_SubCategory_Categories] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([CategoryID])
GO
ALTER TABLE [dbo].[SubCategory] CHECK CONSTRAINT [FK_SubCategory_Categories]
GO
ALTER TABLE [dbo].[Wishlist]  WITH CHECK ADD  CONSTRAINT [FK_Wishlist_Customers] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([CustomerID])
GO
ALTER TABLE [dbo].[Wishlist] CHECK CONSTRAINT [FK_Wishlist_Customers]
GO
ALTER TABLE [dbo].[Wishlist]  WITH CHECK ADD  CONSTRAINT [FK_Wishlist_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
GO
ALTER TABLE [dbo].[Wishlist] CHECK CONSTRAINT [FK_Wishlist_Products]
GO
USE [master]
GO
ALTER DATABASE [Sostabiponi] SET  READ_WRITE 
GO
