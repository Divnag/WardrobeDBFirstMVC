USE [master]
GO
/****** Object:  Database [Wardrobe]    Script Date: 3/19/2018 12:11:21 AM ******/
CREATE DATABASE [Wardrobe]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Wardrobe', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Wardrobe.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Wardrobe_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Wardrobe_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Wardrobe] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Wardrobe].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Wardrobe] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Wardrobe] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Wardrobe] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Wardrobe] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Wardrobe] SET ARITHABORT OFF 
GO
ALTER DATABASE [Wardrobe] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Wardrobe] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Wardrobe] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Wardrobe] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Wardrobe] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Wardrobe] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Wardrobe] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Wardrobe] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Wardrobe] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Wardrobe] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Wardrobe] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Wardrobe] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Wardrobe] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Wardrobe] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Wardrobe] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Wardrobe] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Wardrobe] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Wardrobe] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Wardrobe] SET  MULTI_USER 
GO
ALTER DATABASE [Wardrobe] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Wardrobe] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Wardrobe] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Wardrobe] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Wardrobe] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Wardrobe]
GO
/****** Object:  Table [dbo].[Accessory]    Script Date: 3/19/2018 12:11:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accessory](
	[AccessID] [int] IDENTITY(1,1) NOT NULL,
	[AccessName] [nvarchar](50) NOT NULL,
	[AccessPhoto] [nvarchar](50) NOT NULL,
	[Color] [nvarchar](50) NOT NULL,
	[SeasonID] [int] NOT NULL,
	[OccassionID] [int] NOT NULL,
 CONSTRAINT [PK_Accessory] PRIMARY KEY CLUSTERED 
(
	[AccessID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Bottom]    Script Date: 3/19/2018 12:11:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bottom](
	[BottomID] [int] IDENTITY(1,1) NOT NULL,
	[BottomName] [nvarchar](50) NOT NULL,
	[BottomPhoto] [nvarchar](200) NOT NULL,
	[Color] [nvarchar](50) NOT NULL,
	[SesaonID] [int] NOT NULL,
	[OccassionID] [int] NOT NULL,
 CONSTRAINT [PK_Bottom] PRIMARY KEY CLUSTERED 
(
	[BottomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Occassion]    Script Date: 3/19/2018 12:11:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Occassion](
	[OccassionID] [int] IDENTITY(1,1) NOT NULL,
	[Occassion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Occassion] PRIMARY KEY CLUSTERED 
(
	[OccassionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Outfit]    Script Date: 3/19/2018 12:11:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Outfit](
	[OutfitID] [int] IDENTITY(1,1) NOT NULL,
	[TopID] [int] NOT NULL,
	[BottomID] [int] NOT NULL,
	[ShoeID] [int] NOT NULL,
	[AccessID] [int] NOT NULL,
	[SesonID] [int] NOT NULL,
	[OccassionID] [int] NOT NULL,
 CONSTRAINT [PK_Outfit] PRIMARY KEY CLUSTERED 
(
	[OutfitID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Seasons]    Script Date: 3/19/2018 12:11:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Seasons](
	[SeasonID] [int] IDENTITY(1,1) NOT NULL,
	[Season] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Seasons] PRIMARY KEY CLUSTERED 
(
	[SeasonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Shoe]    Script Date: 3/19/2018 12:11:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shoe](
	[ShoeID] [int] IDENTITY(1,1) NOT NULL,
	[ShoeName] [nvarchar](50) NOT NULL,
	[ShoePhoto] [nvarchar](200) NOT NULL,
	[Color] [nvarchar](50) NOT NULL,
	[SeasonID] [int] NOT NULL,
	[OccassionID] [int] NOT NULL,
 CONSTRAINT [PK_Shoe] PRIMARY KEY CLUSTERED 
(
	[ShoeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Top]    Script Date: 3/19/2018 12:11:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Top](
	[TopID] [int] IDENTITY(1,1) NOT NULL,
	[TopName] [nvarchar](50) NOT NULL,
	[TopPhoto] [nvarchar](200) NOT NULL,
	[Color] [nvarchar](50) NOT NULL,
	[SeasonID] [int] NOT NULL,
	[OccassionID] [int] NOT NULL,
 CONSTRAINT [PK_Top] PRIMARY KEY CLUSTERED 
(
	[TopID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Accessory] ON 

INSERT [dbo].[Accessory] ([AccessID], [AccessName], [AccessPhoto], [Color], [SeasonID], [OccassionID]) VALUES (1, N'Bracelet', N'/content/images/access1.png', N'silver', 5, 1)
INSERT [dbo].[Accessory] ([AccessID], [AccessName], [AccessPhoto], [Color], [SeasonID], [OccassionID]) VALUES (2, N'Braclet', N'/content/images/access2.png', N'Silver', 5, 2)
INSERT [dbo].[Accessory] ([AccessID], [AccessName], [AccessPhoto], [Color], [SeasonID], [OccassionID]) VALUES (3, N'Hand Bag', N'/content/images/bag1.jpg', N'Brown', 5, 1)
INSERT [dbo].[Accessory] ([AccessID], [AccessName], [AccessPhoto], [Color], [SeasonID], [OccassionID]) VALUES (4, N'Hand Bag', N'/content/images/bag2.jpg', N'Brown', 5, 1)
INSERT [dbo].[Accessory] ([AccessID], [AccessName], [AccessPhoto], [Color], [SeasonID], [OccassionID]) VALUES (5, N'Earing', N'/content/images/ear1.jpg', N'silver', 5, 1)
INSERT [dbo].[Accessory] ([AccessID], [AccessName], [AccessPhoto], [Color], [SeasonID], [OccassionID]) VALUES (6, N'Earing', N'/content/images/ear2.jpg', N'Gold', 5, 1)
INSERT [dbo].[Accessory] ([AccessID], [AccessName], [AccessPhoto], [Color], [SeasonID], [OccassionID]) VALUES (7, N'Necklace', N'/content/images/neck1.jpg', N'Silver', 1, 1)
INSERT [dbo].[Accessory] ([AccessID], [AccessName], [AccessPhoto], [Color], [SeasonID], [OccassionID]) VALUES (8, N'Necklace', N'/content/images/neck2.jpg', N'Blue', 1, 1)
INSERT [dbo].[Accessory] ([AccessID], [AccessName], [AccessPhoto], [Color], [SeasonID], [OccassionID]) VALUES (9, N'Scarf', N'/content/images/scarf.jpg', N'red', 5, 1)
INSERT [dbo].[Accessory] ([AccessID], [AccessName], [AccessPhoto], [Color], [SeasonID], [OccassionID]) VALUES (10, N'Scarf', N'/content/images/scarf2.jpg', N'red', 5, 1)
SET IDENTITY_INSERT [dbo].[Accessory] OFF
SET IDENTITY_INSERT [dbo].[Bottom] ON 

INSERT [dbo].[Bottom] ([BottomID], [BottomName], [BottomPhoto], [Color], [SesaonID], [OccassionID]) VALUES (3, N'Flare', N'/content/images/bottom2.png', N'Black', 4, 1)
INSERT [dbo].[Bottom] ([BottomID], [BottomName], [BottomPhoto], [Color], [SesaonID], [OccassionID]) VALUES (5, N'Cotton Formal', N'/content/images/cottonpant.jpg', N'Navy', 1, 1)
INSERT [dbo].[Bottom] ([BottomID], [BottomName], [BottomPhoto], [Color], [SesaonID], [OccassionID]) VALUES (10, N'Jeans', N'/content/images/crop jeans.jpg', N'Blue', 1, 1)
INSERT [dbo].[Bottom] ([BottomID], [BottomName], [BottomPhoto], [Color], [SesaonID], [OccassionID]) VALUES (12, N'Skirt', N'/content/images/skirt.jpeg', N'Black', 1, 1)
SET IDENTITY_INSERT [dbo].[Bottom] OFF
SET IDENTITY_INSERT [dbo].[Occassion] ON 

INSERT [dbo].[Occassion] ([OccassionID], [Occassion]) VALUES (1, N'Casual')
INSERT [dbo].[Occassion] ([OccassionID], [Occassion]) VALUES (2, N'Party')
INSERT [dbo].[Occassion] ([OccassionID], [Occassion]) VALUES (3, N'Formal')
INSERT [dbo].[Occassion] ([OccassionID], [Occassion]) VALUES (4, N'Normal')
SET IDENTITY_INSERT [dbo].[Occassion] OFF
SET IDENTITY_INSERT [dbo].[Outfit] ON 

INSERT [dbo].[Outfit] ([OutfitID], [TopID], [BottomID], [ShoeID], [AccessID], [SesonID], [OccassionID]) VALUES (1, 1, 5, 1, 1, 1, 1)
INSERT [dbo].[Outfit] ([OutfitID], [TopID], [BottomID], [ShoeID], [AccessID], [SesonID], [OccassionID]) VALUES (5, 2, 10, 3, 5, 1, 1)
SET IDENTITY_INSERT [dbo].[Outfit] OFF
SET IDENTITY_INSERT [dbo].[Seasons] ON 

INSERT [dbo].[Seasons] ([SeasonID], [Season]) VALUES (1, N'Summer')
INSERT [dbo].[Seasons] ([SeasonID], [Season]) VALUES (2, N'Winter')
INSERT [dbo].[Seasons] ([SeasonID], [Season]) VALUES (3, N'Fall')
INSERT [dbo].[Seasons] ([SeasonID], [Season]) VALUES (4, N'Spring')
INSERT [dbo].[Seasons] ([SeasonID], [Season]) VALUES (5, N'All Season')
SET IDENTITY_INSERT [dbo].[Seasons] OFF
SET IDENTITY_INSERT [dbo].[Shoe] ON 

INSERT [dbo].[Shoe] ([ShoeID], [ShoeName], [ShoePhoto], [Color], [SeasonID], [OccassionID]) VALUES (1, N'Sandal', N'/content/images/shoe1.png', N'beiege', 1, 1)
INSERT [dbo].[Shoe] ([ShoeID], [ShoeName], [ShoePhoto], [Color], [SeasonID], [OccassionID]) VALUES (2, N'Suede Mule', N'/content/images/suede mule.jpg', N'Black', 1, 2)
INSERT [dbo].[Shoe] ([ShoeID], [ShoeName], [ShoePhoto], [Color], [SeasonID], [OccassionID]) VALUES (3, N'Flat', N'/content/images/flat.jpg', N'Gold', 1, 1)
INSERT [dbo].[Shoe] ([ShoeID], [ShoeName], [ShoePhoto], [Color], [SeasonID], [OccassionID]) VALUES (4, N'Ankel Boots', N'/content/images/ankle boots.jpg', N'Black', 2, 1)
INSERT [dbo].[Shoe] ([ShoeID], [ShoeName], [ShoePhoto], [Color], [SeasonID], [OccassionID]) VALUES (5, N'Leather Pump', N'/content/images/leather pump.jpg', N'White', 1, 1)
INSERT [dbo].[Shoe] ([ShoeID], [ShoeName], [ShoePhoto], [Color], [SeasonID], [OccassionID]) VALUES (6, N'Sneakers', N'/content/images/shoe2.png', N'Cream', 5, 1)
SET IDENTITY_INSERT [dbo].[Shoe] OFF
SET IDENTITY_INSERT [dbo].[Top] ON 

INSERT [dbo].[Top] ([TopID], [TopName], [TopPhoto], [Color], [SeasonID], [OccassionID]) VALUES (1, N'Blouse', N'/Content/images/top1.jpg', N'Black', 1, 1)
INSERT [dbo].[Top] ([TopID], [TopName], [TopPhoto], [Color], [SeasonID], [OccassionID]) VALUES (2, N'Long Top', N'/content/images/top2.jpg', N'blue', 5, 1)
INSERT [dbo].[Top] ([TopID], [TopName], [TopPhoto], [Color], [SeasonID], [OccassionID]) VALUES (5, N'Jacket', N'/content/images/jtweedzipjacket.jpg', N'Cream', 5, 1)
INSERT [dbo].[Top] ([TopID], [TopName], [TopPhoto], [Color], [SeasonID], [OccassionID]) VALUES (6, N'Blazer', N'/content/images/blazer1.jpg', N'Black', 5, 3)
INSERT [dbo].[Top] ([TopID], [TopName], [TopPhoto], [Color], [SeasonID], [OccassionID]) VALUES (7, N'Scarf Halet', N'/content/images/scarfhaltertop.jpg', N'Cream', 1, 1)
INSERT [dbo].[Top] ([TopID], [TopName], [TopPhoto], [Color], [SeasonID], [OccassionID]) VALUES (8, N'Tunic', N'/content/images/tunic1.jpg', N'Blue', 3, 1)
INSERT [dbo].[Top] ([TopID], [TopName], [TopPhoto], [Color], [SeasonID], [OccassionID]) VALUES (9, N'Tunic Stripes', N'/content/images/tunic2.jpg', N'White black ', 3, 1)
INSERT [dbo].[Top] ([TopID], [TopName], [TopPhoto], [Color], [SeasonID], [OccassionID]) VALUES (10, N'Tunic', N'/content/images/tunic3.jpg', N'Pink', 4, 1)
INSERT [dbo].[Top] ([TopID], [TopName], [TopPhoto], [Color], [SeasonID], [OccassionID]) VALUES (11, N'Tunic', N'/content/images/tunic4.jpg', N'Green', 1, 1)
INSERT [dbo].[Top] ([TopID], [TopName], [TopPhoto], [Color], [SeasonID], [OccassionID]) VALUES (12, N'Vest', N'/content/images/sacrfvest.jpg', N'white,blue', 4, 1)
INSERT [dbo].[Top] ([TopID], [TopName], [TopPhoto], [Color], [SeasonID], [OccassionID]) VALUES (13, N'Dress', N'/content/images/dress.jpeg', N'Blue', 1, 2)
INSERT [dbo].[Top] ([TopID], [TopName], [TopPhoto], [Color], [SeasonID], [OccassionID]) VALUES (14, N'Jacket', N'/content/images/jacket.jpeg', N'Gray', 2, 1)
SET IDENTITY_INSERT [dbo].[Top] OFF
ALTER TABLE [dbo].[Accessory]  WITH CHECK ADD  CONSTRAINT [FK_Accessory_Occassion] FOREIGN KEY([OccassionID])
REFERENCES [dbo].[Occassion] ([OccassionID])
GO
ALTER TABLE [dbo].[Accessory] CHECK CONSTRAINT [FK_Accessory_Occassion]
GO
ALTER TABLE [dbo].[Accessory]  WITH CHECK ADD  CONSTRAINT [FK_Accessory_Seasons] FOREIGN KEY([SeasonID])
REFERENCES [dbo].[Seasons] ([SeasonID])
GO
ALTER TABLE [dbo].[Accessory] CHECK CONSTRAINT [FK_Accessory_Seasons]
GO
ALTER TABLE [dbo].[Bottom]  WITH CHECK ADD  CONSTRAINT [FK_Bottom_Occassion] FOREIGN KEY([OccassionID])
REFERENCES [dbo].[Occassion] ([OccassionID])
GO
ALTER TABLE [dbo].[Bottom] CHECK CONSTRAINT [FK_Bottom_Occassion]
GO
ALTER TABLE [dbo].[Bottom]  WITH CHECK ADD  CONSTRAINT [FK_Bottom_Seasons] FOREIGN KEY([SesaonID])
REFERENCES [dbo].[Seasons] ([SeasonID])
GO
ALTER TABLE [dbo].[Bottom] CHECK CONSTRAINT [FK_Bottom_Seasons]
GO
ALTER TABLE [dbo].[Outfit]  WITH CHECK ADD  CONSTRAINT [FK_Outfit_Accessory] FOREIGN KEY([AccessID])
REFERENCES [dbo].[Accessory] ([AccessID])
GO
ALTER TABLE [dbo].[Outfit] CHECK CONSTRAINT [FK_Outfit_Accessory]
GO
ALTER TABLE [dbo].[Outfit]  WITH CHECK ADD  CONSTRAINT [FK_Outfit_Bottom] FOREIGN KEY([BottomID])
REFERENCES [dbo].[Bottom] ([BottomID])
GO
ALTER TABLE [dbo].[Outfit] CHECK CONSTRAINT [FK_Outfit_Bottom]
GO
ALTER TABLE [dbo].[Outfit]  WITH CHECK ADD  CONSTRAINT [FK_Outfit_Occassion] FOREIGN KEY([OccassionID])
REFERENCES [dbo].[Occassion] ([OccassionID])
GO
ALTER TABLE [dbo].[Outfit] CHECK CONSTRAINT [FK_Outfit_Occassion]
GO
ALTER TABLE [dbo].[Outfit]  WITH CHECK ADD  CONSTRAINT [FK_Outfit_Seasons] FOREIGN KEY([SesonID])
REFERENCES [dbo].[Seasons] ([SeasonID])
GO
ALTER TABLE [dbo].[Outfit] CHECK CONSTRAINT [FK_Outfit_Seasons]
GO
ALTER TABLE [dbo].[Outfit]  WITH CHECK ADD  CONSTRAINT [FK_Outfit_Shoe] FOREIGN KEY([ShoeID])
REFERENCES [dbo].[Shoe] ([ShoeID])
GO
ALTER TABLE [dbo].[Outfit] CHECK CONSTRAINT [FK_Outfit_Shoe]
GO
ALTER TABLE [dbo].[Outfit]  WITH CHECK ADD  CONSTRAINT [FK_Outfit_Top] FOREIGN KEY([TopID])
REFERENCES [dbo].[Top] ([TopID])
GO
ALTER TABLE [dbo].[Outfit] CHECK CONSTRAINT [FK_Outfit_Top]
GO
ALTER TABLE [dbo].[Shoe]  WITH CHECK ADD  CONSTRAINT [FK_Shoe_Occassion] FOREIGN KEY([OccassionID])
REFERENCES [dbo].[Occassion] ([OccassionID])
GO
ALTER TABLE [dbo].[Shoe] CHECK CONSTRAINT [FK_Shoe_Occassion]
GO
ALTER TABLE [dbo].[Shoe]  WITH CHECK ADD  CONSTRAINT [FK_Shoe_Seasons] FOREIGN KEY([SeasonID])
REFERENCES [dbo].[Seasons] ([SeasonID])
GO
ALTER TABLE [dbo].[Shoe] CHECK CONSTRAINT [FK_Shoe_Seasons]
GO
ALTER TABLE [dbo].[Top]  WITH CHECK ADD  CONSTRAINT [FK_Top_Occassion] FOREIGN KEY([OccassionID])
REFERENCES [dbo].[Occassion] ([OccassionID])
GO
ALTER TABLE [dbo].[Top] CHECK CONSTRAINT [FK_Top_Occassion]
GO
ALTER TABLE [dbo].[Top]  WITH CHECK ADD  CONSTRAINT [FK_Top_Seasons] FOREIGN KEY([SeasonID])
REFERENCES [dbo].[Seasons] ([SeasonID])
GO
ALTER TABLE [dbo].[Top] CHECK CONSTRAINT [FK_Top_Seasons]
GO
USE [master]
GO
ALTER DATABASE [Wardrobe] SET  READ_WRITE 
GO
