USE [Siparis_Otomasyonu]
GO
/****** Object:  Table [dbo].[kategori_bilgi]    Script Date: 26.12.2021 22:52:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kategori_bilgi](
	[kategori] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[kullanici]    Script Date: 26.12.2021 22:52:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kullanici](
	[adsoyad] [nvarchar](30) NULL,
	[kullaniciadi] [nvarchar](20) NULL,
	[sifre] [nvarchar](20) NULL,
	[mail] [nvarchar](50) NULL,
	[telefon] [nvarchar](20) NULL,
	[adres] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[marka_bilgi]    Script Date: 26.12.2021 22:52:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[marka_bilgi](
	[kategori] [nvarchar](50) NULL,
	[marka] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[musteri]    Script Date: 26.12.2021 22:52:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[musteri](
	[adsoyad] [nvarchar](30) NULL,
	[kullaniciadi] [nvarchar](20) NULL,
	[sifre] [nvarchar](20) NULL,
	[mail] [nvarchar](50) NULL,
	[telefon] [nvarchar](20) NULL,
	[adres] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[satis]    Script Date: 26.12.2021 22:52:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[satis](
	[urunId] [int] NULL,
	[kategori] [nvarchar](50) NULL,
	[marka] [nvarchar](50) NULL,
	[miktar] [nvarchar](50) NULL,
	[urunadi] [nvarchar](50) NULL,
	[tarih] [nvarchar](50) NULL,
	[aciklama] [nvarchar](50) NULL,
	[fiyat] [decimal](18, 2) NULL,
	[toplamfiyat] [decimal](18, 2) NULL,
	[KDV] [decimal](18, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sepet]    Script Date: 26.12.2021 22:52:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sepet](
	[urunId] [int] NULL,
	[kategori] [nvarchar](50) NULL,
	[marka] [nvarchar](50) NULL,
	[miktar] [nvarchar](50) NULL,
	[urunadi] [nvarchar](50) NULL,
	[tarih] [nvarchar](50) NULL,
	[aciklama] [nvarchar](50) NULL,
	[fiyat] [decimal](18, 2) NULL,
	[toplamfiyat] [decimal](18, 2) NULL,
	[KDV] [decimal](18, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[urun]    Script Date: 26.12.2021 22:52:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[urun](
	[urunId] [int] IDENTITY(1,1) NOT NULL,
	[kategori] [nvarchar](50) NULL,
	[marka] [nvarchar](50) NULL,
	[miktar] [nvarchar](50) NULL,
	[fiyat] [decimal](18, 2) NULL,
	[KDV] [decimal](18, 2) NULL,
	[urunadi] [nvarchar](50) NULL,
	[tarih] [nvarchar](50) NULL,
	[aciklama] [nvarchar](80) NULL,
	[toplamfiyat] [decimal](18, 2) NULL
) ON [PRIMARY]
GO
