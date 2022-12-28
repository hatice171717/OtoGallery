USE [master]
GO
/****** Object:  Database [OtoGaleriProjesi]    Script Date: 20.11.2022 17:31:41 ******/
CREATE DATABASE [OtoGaleriProjesi]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'OtoGaleriProjesi', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\OtoGaleriProjesi.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'OtoGaleriProjesi_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\OtoGaleriProjesi_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [OtoGaleriProjesi] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [OtoGaleriProjesi].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [OtoGaleriProjesi] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [OtoGaleriProjesi] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [OtoGaleriProjesi] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [OtoGaleriProjesi] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [OtoGaleriProjesi] SET ARITHABORT OFF 
GO
ALTER DATABASE [OtoGaleriProjesi] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [OtoGaleriProjesi] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [OtoGaleriProjesi] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [OtoGaleriProjesi] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [OtoGaleriProjesi] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [OtoGaleriProjesi] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [OtoGaleriProjesi] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [OtoGaleriProjesi] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [OtoGaleriProjesi] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [OtoGaleriProjesi] SET  DISABLE_BROKER 
GO
ALTER DATABASE [OtoGaleriProjesi] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [OtoGaleriProjesi] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [OtoGaleriProjesi] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [OtoGaleriProjesi] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [OtoGaleriProjesi] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [OtoGaleriProjesi] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [OtoGaleriProjesi] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [OtoGaleriProjesi] SET RECOVERY FULL 
GO
ALTER DATABASE [OtoGaleriProjesi] SET  MULTI_USER 
GO
ALTER DATABASE [OtoGaleriProjesi] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [OtoGaleriProjesi] SET DB_CHAINING OFF 
GO
ALTER DATABASE [OtoGaleriProjesi] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [OtoGaleriProjesi] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [OtoGaleriProjesi] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [OtoGaleriProjesi] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [OtoGaleriProjesi] SET QUERY_STORE = OFF
GO
USE [OtoGaleriProjesi]
GO
/****** Object:  Table [dbo].[ARACLAR]    Script Date: 20.11.2022 17:31:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ARACLAR](
	[Arac_ID] [int] IDENTITY(1,1) NOT NULL,
	[Arac_Marka] [varchar](50) NOT NULL,
	[Arac_Model] [varchar](50) NOT NULL,
	[Arac_Renk] [varchar](50) NOT NULL,
	[Arac_Yil] [varchar](50) NOT NULL,
	[Arac_KM] [varchar](50) NOT NULL,
	[Arac_Kasa] [varchar](50) NOT NULL,
	[Arac_Durumu] [varchar](50) NOT NULL,
	[Arac_Fiyati] [varchar](50) NOT NULL,
	[Arac_Foto] [varchar](150) NOT NULL,
	[Arac_Vites] [varchar](50) NOT NULL,
	[Arac_Yakit] [varchar](50) NOT NULL,
	[Arac_Plaka] [varchar](50) NOT NULL,
	[Arac_SatılıkMi] [bit] NULL,
 CONSTRAINT [PK_ARACLAR] PRIMARY KEY CLUSTERED 
(
	[Arac_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ilceler]    Script Date: 20.11.2022 17:31:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ilceler](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ilce] [varchar](30) NULL,
	[sehir] [int] NOT NULL,
 CONSTRAINT [PK_ilceler] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[iller]    Script Date: 20.11.2022 17:31:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[iller](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sehir] [varchar](30) NULL,
 CONSTRAINT [PK_iller] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KULLANICI]    Script Date: 20.11.2022 17:31:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KULLANICI](
	[Kul_ID] [int] IDENTITY(1,1) NOT NULL,
	[Kul_Ad_Soyad] [varchar](50) NULL,
	[Kul_Mail] [varchar](50) NULL,
	[Kul_Tel] [varchar](30) NULL,
	[Kul_Sifre] [varchar](30) NULL,
	[Kul_Foto] [varchar](150) NULL,
 CONSTRAINT [PK_KULLANICI] PRIMARY KEY CLUSTERED 
(
	[Kul_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MUSTERI]    Script Date: 20.11.2022 17:31:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MUSTERI](
	[Musteri_ID] [int] IDENTITY(1,1) NOT NULL,
	[Musteri_TC] [varchar](50) NOT NULL,
	[Musteri_Ad_Soyad] [varchar](50) NOT NULL,
	[Musteri_Mail] [varchar](50) NOT NULL,
	[Musteri_Tel] [varchar](50) NOT NULL,
	[Musteri_İl] [int] NOT NULL,
	[Musteri_İlçe] [int] NOT NULL,
	[Musteri_Adres] [varchar](100) NOT NULL,
	[Arac_ID] [int] NOT NULL,
	[Ehliyet] [varchar](50) NOT NULL,
 CONSTRAINT [PK_MUSTERI] PRIMARY KEY CLUSTERED 
(
	[Musteri_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PERSONEL]    Script Date: 20.11.2022 17:31:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PERSONEL](
	[Personel_ID] [int] IDENTITY(1,1) NOT NULL,
	[Personel_TC] [varchar](50) NULL,
	[Personel_Ad_Soyad] [varchar](50) NULL,
	[Personel_Yas] [varchar](50) NULL,
	[Personel_Tel] [varchar](50) NULL,
	[Personel_Mail] [varchar](50) NULL,
	[Sube_ID] [int] NULL,
	[Personel_Foto] [varchar](150) NULL,
 CONSTRAINT [PK_PERSONEL] PRIMARY KEY CLUSTERED 
(
	[Personel_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SUBE]    Script Date: 20.11.2022 17:31:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SUBE](
	[Sube_ID] [int] IDENTITY(1,1) NOT NULL,
	[Sube_Ad] [varchar](50) NULL,
	[Sorumlı_Kisi] [varchar](50) NULL,
	[Sube_Tel] [varchar](50) NULL,
	[Sube_Mail] [varchar](50) NULL,
	[Sube_il] [int] NULL,
 CONSTRAINT [PK_SUBE] PRIMARY KEY CLUSTERED 
(
	[Sube_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ARACLAR] ON 

INSERT [dbo].[ARACLAR] ([Arac_ID], [Arac_Marka], [Arac_Model], [Arac_Renk], [Arac_Yil], [Arac_KM], [Arac_Kasa], [Arac_Durumu], [Arac_Fiyati], [Arac_Foto], [Arac_Vites], [Arac_Yakit], [Arac_Plaka], [Arac_SatılıkMi]) VALUES (1, N'Fiat ', N'Egea ', N'beyaz', N'2022', N'belirtilmemiş', N'SEDAN', N'İKİNCİ EL ARAÇ', N'12000', N'C:\Users\HATİCE KÜBRA\Desktop\OtoGaleri3\OtoGaleri\foto\araçlar\1911757.jpg', N'MANUEL VİTES', N'BENZİN', N'34 COP 227', 0)
INSERT [dbo].[ARACLAR] ([Arac_ID], [Arac_Marka], [Arac_Model], [Arac_Renk], [Arac_Yil], [Arac_KM], [Arac_Kasa], [Arac_Durumu], [Arac_Fiyati], [Arac_Foto], [Arac_Vites], [Arac_Yakit], [Arac_Plaka], [Arac_SatılıkMi]) VALUES (4, N'Mercedes - Benz ', N'C 180 BlueEfficiency Fascination ', N'siyah', N'2011', N'282000', N'SEDAN', N'İKİNCİ EL ARAÇ', N'545000', N'C:\Users\HATİCE KÜBRA\Desktop\OtoGaleri3\OtoGaleri\foto\araçlar\indir (2).jpg', N'YARI OTOMATİK VİTES', N'BENZİN', N'20 ss 523', 1)
INSERT [dbo].[ARACLAR] ([Arac_ID], [Arac_Marka], [Arac_Model], [Arac_Renk], [Arac_Yil], [Arac_KM], [Arac_Kasa], [Arac_Durumu], [Arac_Fiyati], [Arac_Foto], [Arac_Vites], [Arac_Yakit], [Arac_Plaka], [Arac_SatılıkMi]) VALUES (7, N'Renault ', N'1.5 dCi Touch ', N'beyaz', N'2017', N'129.700', N'HATCHBACK', N'İKİNCİ EL ARAÇ', N'413500', N'C:\Users\HATİCE KÜBRA\Desktop\OtoGaleri3\OtoGaleri\foto\araçlar\x5_1063545697omv.jpg', N'OTOMATİK VİTES', N'DİZEL', N'40 AAR 202', 1)
INSERT [dbo].[ARACLAR] ([Arac_ID], [Arac_Marka], [Arac_Model], [Arac_Renk], [Arac_Yil], [Arac_KM], [Arac_Kasa], [Arac_Durumu], [Arac_Fiyati], [Arac_Foto], [Arac_Vites], [Arac_Yakit], [Arac_Plaka], [Arac_SatılıkMi]) VALUES (8, N'Opel Insignia ', N'1.5 D Edition ', N'siyah', N'2021', N'50000', N'SEDAN', N'İKİNCİ EL ARAÇ', N'725000', N'C:\Users\HATİCE KÜBRA\Desktop\OtoGaleri3\OtoGaleri\foto\araçlar\Opel Insignia.jpg', N'OTOMATİK VİTES', N'DİZEL', N'06 CNZ 154', 1)
INSERT [dbo].[ARACLAR] ([Arac_ID], [Arac_Marka], [Arac_Model], [Arac_Renk], [Arac_Yil], [Arac_KM], [Arac_Kasa], [Arac_Durumu], [Arac_Fiyati], [Arac_Foto], [Arac_Vites], [Arac_Yakit], [Arac_Plaka], [Arac_SatılıkMi]) VALUES (9, N'Mercedes - Benz ', N'C 180 Fascination ', N'Beyaz', N'2016', N'43000', N'SEDAN', N'İKİNCİ EL ARAÇ', N'1020000', N'C:\Users\HATİCE KÜBRA\Desktop\OtoGaleri3\OtoGaleri\foto\araçlar\Mercedes - Benz.jpg', N'OTOMATİK VİTES', N'BENZİN', N'17 AE 596', 1)
INSERT [dbo].[ARACLAR] ([Arac_ID], [Arac_Marka], [Arac_Model], [Arac_Renk], [Arac_Yil], [Arac_KM], [Arac_Kasa], [Arac_Durumu], [Arac_Fiyati], [Arac_Foto], [Arac_Vites], [Arac_Yakit], [Arac_Plaka], [Arac_SatılıkMi]) VALUES (10, N'Renault ', N'Megane ', N'kırmızı', N'2018', N'belirtilmemiş', N'HATCHBACK', N'İKİNCİ EL ARAÇ', N'199', N'C:\Users\HATİCE KÜBRA\Desktop\OtoGaleri3\OtoGaleri\foto\araçlar\Megane.jpg', N'MANUEL VİTES', N'BENZİN', N'tr', 0)
INSERT [dbo].[ARACLAR] ([Arac_ID], [Arac_Marka], [Arac_Model], [Arac_Renk], [Arac_Yil], [Arac_KM], [Arac_Kasa], [Arac_Durumu], [Arac_Fiyati], [Arac_Foto], [Arac_Vites], [Arac_Yakit], [Arac_Plaka], [Arac_SatılıkMi]) VALUES (11, N'Ford ', N'Mustang ', N'mavi', N'1973', N'belirtilmemiş', N'DİĞER', N'İKİNCİ EL ARAÇ', N'8.000', N'C:\Users\HATİCE KÜBRA\Desktop\OtoGaleri3\OtoGaleri\foto\araçlar\Mustang.jpg', N'OTOMATİK VİTES', N'BENZİN', N'tr', 0)
INSERT [dbo].[ARACLAR] ([Arac_ID], [Arac_Marka], [Arac_Model], [Arac_Renk], [Arac_Yil], [Arac_KM], [Arac_Kasa], [Arac_Durumu], [Arac_Fiyati], [Arac_Foto], [Arac_Vites], [Arac_Yakit], [Arac_Plaka], [Arac_SatılıkMi]) VALUES (12, N'Volkswagen ', N'Beetle', N'gri', N'1973', N'belirtilmemiş', N'DİĞER', N'İKİNCİ EL ARAÇ', N'16.500', N'C:\Users\HATİCE KÜBRA\Desktop\OtoGaleri3\OtoGaleri\foto\araçlar\beetle.jpg', N'MANUEL VİTES', N'BENZİN', N'tr', 0)
INSERT [dbo].[ARACLAR] ([Arac_ID], [Arac_Marka], [Arac_Model], [Arac_Renk], [Arac_Yil], [Arac_KM], [Arac_Kasa], [Arac_Durumu], [Arac_Fiyati], [Arac_Foto], [Arac_Vites], [Arac_Yakit], [Arac_Plaka], [Arac_SatılıkMi]) VALUES (14, N'Chevrolet ', N'Impala ', N'kırmızı', N'1972', N'belirtilmemiş', N'DİĞER', N'İKİNCİ EL ARAÇ', N'5.000', N'C:\Users\HATİCE KÜBRA\Desktop\OtoGaleri3\OtoGaleri\foto\araçlar\ımpala.jpg', N'OTOMATİK VİTES', N'BENZİN', N'34 FJS 97', 0)
SET IDENTITY_INSERT [dbo].[ARACLAR] OFF
GO
SET IDENTITY_INSERT [dbo].[ilceler] ON 

INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (1, N'SEYHAN', 1)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (2, N'CEYHAN', 1)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (3, N'FEKE', 1)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (4, N'KARA?SALI', 1)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (5, N'KARATA?', 1)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (6, N'KOZAN', 1)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (7, N'POZANTI', 1)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (8, N'SA?MBEYL?', 1)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (9, N'TUFANBEYL?', 1)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (10, N'YUMURTALIK', 1)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (11, N'Y?RE??R', 1)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (12, N'ALADA?', 1)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (13, N'?MAMO?LU', 1)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (14, N'ADIYAMAN MERKEZ', 2)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (15, N'BESN?', 2)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (16, N'?EL?KHAN', 2)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (17, N'GERGER', 2)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (18, N'G?LBA?I', 2)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (19, N'KAHTA', 2)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (20, N'SAMSAT', 2)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (21, N'S?NC?K', 2)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (22, N'TUT', 2)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (23, N'AFYONMERKEZ', 3)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (24, N'BOLVAD?N', 3)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (25, N'?AY', 3)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (26, N'DAZKIRI', 3)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (27, N'D?NAR', 3)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (28, N'EM?RDA?', 3)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (29, N'?HSAN?YE', 3)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (30, N'SANDIKLI', 3)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (31, N'S?NANPA?A', 3)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (32, N'SULDANDA?I', 3)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (33, N'?UHUT', 3)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (34, N'BA?MAK?I', 3)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (35, N'BAYAT', 3)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (36, N'??CEH?SAR', 3)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (37, N'?OBANLAR', 3)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (38, N'EVC?LER', 3)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (39, N'HOCALAR', 3)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (40, N'KIZIL?REN', 3)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (41, N'AKSARAY MERKEZ', 68)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (42, N'ORTAK?Y', 68)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (43, N'A?A??REN', 68)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (44, N'G?ZELYURT', 68)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (45, N'SARIYAH??', 68)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (46, N'ESK?L', 68)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (47, N'G?LA?A?', 68)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (48, N'AMASYA MERKEZ', 5)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (49, N'G?YN??EK', 5)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (50, N'G?M??HACIK?Y?', 5)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (51, N'MERZ?FON', 5)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (52, N'SULUOVA', 5)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (53, N'TA?OVA', 5)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (54, N'HAMAM?Z?', 5)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (55, N'ALTINDA?', 6)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (56, N'AYAS', 6)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (57, N'BALA', 6)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (58, N'BEYPAZARI', 6)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (59, N'?AMLIDERE', 6)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (60, N'?ANKAYA', 6)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (61, N'?UBUK', 6)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (62, N'ELMADA?', 6)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (63, N'G?D?L', 6)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (64, N'HAYMANA', 6)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (65, N'KALEC?K', 6)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (66, N'KIZILCAHAMAM', 6)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (67, N'NALLIHAN', 6)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (68, N'POLATLI', 6)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (69, N'?EREFL?KO?H?SAR', 6)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (70, N'YEN?MAHALLE', 6)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (71, N'G?LBA?I', 6)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (72, N'KE???REN', 6)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (73, N'MAMAK', 6)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (74, N'S?NCAN', 6)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (75, N'KAZAN', 6)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (76, N'AKYURT', 6)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (77, N'ET?MESGUT', 6)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (78, N'EVREN', 6)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (79, N'ANSEK?', 7)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (80, N'ALANYA', 7)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (81, N'ANTALYA MERKEZ?', 7)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (82, N'ELMALI', 7)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (83, N'F?N?KE', 7)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (84, N'GAZ?PA?A', 7)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (85, N'G?NDO?MU?', 7)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (86, N'KA?', 7)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (87, N'KORKUTEL?', 7)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (88, N'KUMLUCA', 7)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (89, N'MANAVGAT', 7)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (90, N'SER?K', 7)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (91, N'DEMRE', 7)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (92, N'?BRADI', 7)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (93, N'KEMER', 7)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (94, N'ARDAHAN MERKEZ', 75)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (95, N'G?LE', 75)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (96, N'?ILDIR', 75)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (97, N'HANAK', 75)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (98, N'POSOF', 75)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (99, N'DAMAL', 75)
GO
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (100, N'ARDANU?', 8)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (101, N'ARHAV?', 8)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (102, N'ARTV?N MERKEZ', 8)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (103, N'BOR?KA', 8)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (104, N'HOPA', 8)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (105, N'?AV?AT', 8)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (106, N'YUSUFEL?', 8)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (107, N'MURGUL', 8)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (108, N'AYDIN MERKEZ', 9)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (109, N'BOZDO?AN', 9)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (110, N'??NE', 9)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (111, N'GERMENC?K', 9)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (112, N'KARACASU', 9)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (113, N'KO?ARLI', 9)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (114, N'KU?ADASI', 9)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (115, N'KUYUCAK', 9)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (116, N'NAZ?LL?', 9)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (117, N'S?KE', 9)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (118, N'SULTANH?SAR', 9)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (119, N'YEN?PAZAR', 9)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (120, N'BUHARKENT', 9)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (121, N'?NC?RL?OVA', 9)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (122, N'KARPUZLU', 9)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (123, N'K??K', 9)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (124, N'D?D?M', 9)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (125, N'A?RI MERKEZ', 4)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (126, N'D?YAD?N', 4)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (127, N'DO?UBEYAZIT', 4)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (128, N'ELE?K?RT', 4)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (129, N'HAMUR', 4)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (130, N'PATNOS', 4)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (131, N'TA?LI?AY', 4)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (132, N'TUTAK', 4)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (133, N'AYVALIK', 10)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (134, N'BALIKES?R MERKEZ', 10)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (135, N'BALYA', 10)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (136, N'BANDIRMA', 10)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (137, N'B?GAD??', 10)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (138, N'BURHAN?YE', 10)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (139, N'DURSUNBEY', 10)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (140, N'EDREM?T', 10)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (141, N'ERDEK', 10)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (142, N'G?NEN', 10)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (143, N'HAVRAN', 10)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (144, N'?VR?ND?', 10)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (145, N'KEPSUT', 10)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (146, N'MANYAS', 10)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (147, N'SAVA?TEPE', 10)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (148, N'SINDIRGI', 10)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (149, N'SUSURLUK', 10)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (150, N'MARMARA', 10)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (151, N'G?ME?', 10)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (152, N'BARTIN MERKEZ', 74)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (153, N'KURUCA??LE', 74)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (154, N'ULUS', 74)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (155, N'AMASRA', 74)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (156, N'BATMAN MERKEZ', 72)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (157, N'BE??R?', 72)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (158, N'GERC??', 72)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (159, N'KOZLUK', 72)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (160, N'SASON', 72)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (161, N'HASANKEYF', 72)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (162, N'BAYBURT MERKEZ', 69)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (163, N'AYDINTEPE', 69)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (164, N'DEM?R?Z?', 69)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (165, N'BOLU MERKEZ', 14)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (166, N'GEREDE', 14)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (167, N'G?YN?K', 14)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (168, N'KIBRISCIK', 14)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (169, N'MENGEN', 14)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (170, N'MUDURNU', 14)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (171, N'SEBEN', 14)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (172, N'D?RTD?VAN', 14)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (173, N'YEN??A?A', 14)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (174, N'A?LASUN', 15)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (175, N'BUCAK', 15)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (176, N'BURDUR MERKEZ', 15)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (177, N'G?LH?SAR', 15)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (178, N'TEFENN?', 15)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (179, N'YE??LOVA', 15)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (180, N'KARAMANLI', 15)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (181, N'KEMER', 15)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (182, N'ALTINYAYLA', 15)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (183, N'?AVDIR', 15)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (184, N'?ELT?K??', 15)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (185, N'GEML?K', 16)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (186, N'?NEG?L', 16)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (187, N'?ZN?K', 16)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (188, N'KARACABEY', 16)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (189, N'KELES', 16)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (190, N'MUDANYA', 16)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (191, N'MUSTAFA K. PA?A', 16)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (192, N'ORHANEL?', 16)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (193, N'ORHANGAZ?', 16)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (194, N'YEN??EH?R', 16)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (195, N'B?Y?K ORHAN', 16)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (196, N'HARMANCIK', 16)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (197, N'N?L?FER', 16)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (198, N'OSMAN GAZ?', 16)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (199, N'YILDIRIM', 16)
GO
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (200, N'G?RSU', 16)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (201, N'KESTEL', 16)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (202, N'B?LEC?K MERKEZ', 11)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (203, N'BOZ?Y?K', 11)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (204, N'G?LPAZARI', 11)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (205, N'OSMANEL?', 11)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (206, N'PAZARYER?', 11)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (207, N'S???T', 11)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (208, N'YEN?PAZAR', 11)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (209, N'?NH?SAR', 11)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (210, N'B?NG?L MERKEZ', 12)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (211, N'GEN?', 12)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (212, N'KARLIOVA', 12)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (213, N'K?GI', 12)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (214, N'SOLHAN', 12)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (215, N'ADAKLI', 12)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (216, N'YAYLADERE', 12)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (217, N'YED?SU', 12)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (218, N'AD?LCEVAZ', 13)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (219, N'AHLAT', 13)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (220, N'B?TL?S MERKEZ', 13)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (221, N'H?ZAN', 13)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (222, N'MUTK?', 13)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (223, N'TATVAN', 13)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (224, N'G?ROYMAK', 13)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (225, N'DEN?ZL? MERKEZ', 20)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (226, N'ACIPAYAM', 20)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (227, N'BULDAN', 20)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (228, N'?AL', 20)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (229, N'?AMEL?', 20)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (230, N'?ARDAK', 20)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (231, N'??VR?L', 20)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (232, N'G?NEY', 20)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (233, N'KALE', 20)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (234, N'SARAYK?Y', 20)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (235, N'TAVAS', 20)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (236, N'BABADA?', 20)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (237, N'BEK?LL?', 20)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (238, N'HONAZ', 20)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (239, N'SER?NH?SAR', 20)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (240, N'AKK?Y', 20)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (241, N'BAKLAN', 20)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (242, N'BEYA?A?', 20)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (243, N'BOZKURT', 20)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (244, N'D?ZCE MERKEZ', 81)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (245, N'AK?AKOCA', 81)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (246, N'YI?ILCA', 81)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (247, N'CUMAYER?', 81)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (248, N'G?LYAKA', 81)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (249, N'??L?ML?', 81)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (250, N'G?M??OVA', 81)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (251, N'KAYNA?LI', 81)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (252, N'D?YARBAKIR MERKEZ', 21)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (253, N'B?SM?L', 21)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (254, N'?ERM?K', 21)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (255, N'?INAR', 21)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (256, N'??NG??', 21)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (257, N'D?CLE', 21)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (258, N'ERGAN?', 21)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (259, N'HAN?', 21)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (260, N'HAZRO', 21)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (261, N'KULP', 21)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (262, N'L?CE', 21)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (263, N'S?LVAN', 21)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (264, N'E??L', 21)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (265, N'KOCAK?Y', 21)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (266, N'ED?RNE MERKEZ', 22)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (267, N'ENEZ', 22)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (268, N'HAVSA', 22)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (269, N'?PSALA', 22)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (270, N'KE?AN', 22)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (271, N'LALAPA?A', 22)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (272, N'MER??', 22)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (273, N'UZUNK?PR?', 22)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (274, N'S?LO?LU', 22)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (275, N'ELAZI? MERKEZ', 23)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (276, N'A?IN', 23)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (277, N'BASK?L', 23)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (278, N'KARAKO?AN', 23)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (279, N'KEBAN', 23)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (280, N'MADEN', 23)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (281, N'PALU', 23)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (282, N'S?VR?CE', 23)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (283, N'ARICAK', 23)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (284, N'KOVANCILAR', 23)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (285, N'ALACAKAYA', 23)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (286, N'ERZURUM MERKEZ', 25)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (287, N'PALAND?KEN', 25)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (288, N'A?KALE', 25)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (289, N'?AT', 25)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (290, N'HINIS', 25)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (291, N'HORASAN', 25)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (292, N'OLTU', 25)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (293, N'?SP?R', 25)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (294, N'KARAYAZI', 25)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (295, N'NARMAN', 25)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (296, N'OLUR', 25)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (297, N'PAS?NLER', 25)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (298, N'?ENKAYA', 25)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (299, N'TEKMAN', 25)
GO
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (300, N'TORTUM', 25)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (301, N'KARA?OBAN', 25)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (302, N'UZUNDERE', 25)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (303, N'PAZARYOLU', 25)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (304, N'ILICA', 25)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (305, N'K?PR?K?Y', 25)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (306, N'?AYIRLI', 24)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (307, N'ERZ?NCAN MERKEZ', 24)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (308, N'?L??', 24)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (309, N'KEMAH', 24)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (310, N'KEMAL?YE', 24)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (311, N'REFAH?YE', 24)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (312, N'TERCAN', 24)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (313, N'OTLUKBEL?', 24)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (314, N'ESK??EH?R MERKEZ', 26)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (315, N'??FTELER', 26)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (316, N'MAHMUD?YE', 26)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (317, N'M?HALI?LIK', 26)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (318, N'SARICAKAYA', 26)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (319, N'SEY?TGAZ?', 26)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (320, N'S?VR?H?SAR', 26)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (321, N'ALPU', 26)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (322, N'BEYL?KOVA', 26)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (323, N'?N?N?', 26)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (324, N'G?NY?Z?', 26)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (325, N'HAN', 26)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (326, N'M?HALGAZ?', 26)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (327, N'ARABAN', 27)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (328, N'?SLAH?YE', 27)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (329, N'N?Z?P', 27)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (330, N'O?UZEL?', 27)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (331, N'YAVUZEL?', 27)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (332, N'?AH?NBEY', 27)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (333, N'?EH?T KAM?L', 27)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (334, N'KARKAMI?', 27)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (335, N'NURDA?I', 27)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (336, N'G?M??HANE MERKEZ', 29)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (337, N'KELK?T', 29)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (338, N'??RAN', 29)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (339, N'TORUL', 29)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (340, N'K?SE', 29)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (341, N'K?RT?N', 29)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (342, N'ALUCRA', 28)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (343, N'BULANCAK', 28)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (344, N'DEREL?', 28)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (345, N'ESP?YE', 28)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (346, N'EYNES?L', 28)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (347, N'G?RESUN MERKEZ', 28)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (348, N'G?RELE', 28)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (349, N'KE?AP', 28)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (350, N'?EB?NKARAH?SAR', 28)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (351, N'T?REBOLU', 28)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (352, N'P?PAZ?Z', 28)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (353, N'YA?LIDERE', 28)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (354, N'?AMOLUK', 28)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (355, N'?ANAK?I', 28)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (356, N'DO?ANKENT', 28)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (357, N'G?CE', 28)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (358, N'HAKKAR? MERKEZ', 30)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (359, N'?UKURCA', 30)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (360, N'?EMD?NL?', 30)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (361, N'Y?KSEKOVA', 30)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (362, N'ALTIN?Z?', 31)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (363, N'D?RTYOL', 31)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (364, N'HATAY MERKEZ', 31)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (365, N'HASSA', 31)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (366, N'?SKENDERUN', 31)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (367, N'KIRIKHAN', 31)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (368, N'REYHANLI', 31)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (369, N'SAMANDA?', 31)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (370, N'YAYLADA?', 31)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (371, N'ERZ?N', 31)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (372, N'BELEN', 31)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (373, N'KUMLU', 31)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (374, N'ISPARTA MERKEZ', 32)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (375, N'ATABEY', 32)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (376, N'KE??BORLU', 32)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (377, N'E??RD?R', 32)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (378, N'GELENDOST', 32)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (379, N'S?N?RKENT', 32)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (380, N'ULUBORLU', 32)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (381, N'YALVA?', 32)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (382, N'AKSU', 32)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (383, N'G?NEN', 32)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (384, N'YEN??AR BADEML?', 32)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (385, N'I?DIR MERKEZ', 76)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (386, N'ARALIK', 76)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (387, N'TUZLUCA', 76)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (388, N'KARAKOYUNLU', 76)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (389, N'AF??N', 46)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (390, N'ANDIRIN', 46)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (391, N'ELB?STAN', 46)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (392, N'G?KSUN', 46)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (393, N'KAHRAMANMARA? MERKEZ', 46)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (394, N'PAZARCIK', 46)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (395, N'T?RKO?LU', 46)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (396, N'?A?LAYANCER?T', 46)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (397, N'EK?N?Z?', 46)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (398, N'NURHAK', 46)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (399, N'EFLAN?', 78)
GO
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (400, N'ESK?PAZAR', 78)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (401, N'KARAB?K MERKEZ', 78)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (402, N'OVACIK', 78)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (403, N'SAFRANBOLU', 78)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (404, N'YEN?CE', 78)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (405, N'ERMENEK', 70)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (406, N'KARAMAN MERKEZ', 70)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (407, N'AYRANCI', 70)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (408, N'KAZIMKARABEK?R', 70)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (409, N'BA?YAYLA', 70)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (410, N'SARIVEL?LER', 70)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (411, N'KARS MERKEZ', 36)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (412, N'ARPA?AY', 36)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (413, N'D?GOR', 36)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (414, N'KA?IZMAN', 36)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (415, N'SARIKAMI?', 36)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (416, N'SEL?M', 36)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (417, N'SUSUZ', 36)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (418, N'AKYAKA', 36)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (419, N'ABANA', 37)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (420, N'KASTAMONU MERKEZ', 37)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (421, N'ARA?', 37)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (422, N'AZDAVAY', 37)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (423, N'BOZKURT', 37)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (424, N'C?DE', 37)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (425, N'?ATALZEYT?N', 37)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (426, N'DADAY', 37)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (427, N'DEVREKAN?', 37)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (428, N'?NEBOLU', 37)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (429, N'K?RE', 37)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (430, N'TA?K?PR?', 37)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (431, N'TOSYA', 37)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (432, N'?HSANGAZ?', 37)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (433, N'PINARBA?I', 37)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (434, N'?ENPAZAR', 37)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (435, N'A?LI', 37)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (436, N'DO?ANYURT', 37)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (437, N'HAN?N?', 37)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (438, N'SEYD?LER', 37)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (439, N'B?NYAN', 38)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (440, N'DEVEL?', 38)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (441, N'FELAH?YE', 38)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (442, N'?NCESU', 38)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (443, N'PINARBA?I', 38)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (444, N'SARIO?LAN', 38)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (445, N'SARIZ', 38)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (446, N'TOMARZA', 38)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (447, N'YAHYALI', 38)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (448, N'YE??LH?SAR', 38)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (449, N'AKKI?LA', 38)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (450, N'TALAS', 38)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (451, N'KOCAS?NAN', 38)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (452, N'MEL?KGAZ?', 38)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (453, N'HACILAR', 38)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (454, N'?ZVATAN', 38)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (455, N'DER?CE', 71)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (456, N'KESK?N', 71)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (457, N'KIRIKKALE MERKEZ', 71)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (458, N'SALAK YURT', 71)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (459, N'BAH??L?', 71)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (460, N'BALI?EYH', 71)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (461, N'?ELEB?', 71)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (462, N'KARAKE??L?', 71)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (463, N'YAH??HAN', 71)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (464, N'KIRKKLAREL? MERKEZ', 39)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (465, N'BABAESK?', 39)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (466, N'DEM?RK?Y', 39)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (467, N'KOF?AY', 39)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (468, N'L?LEBURGAZ', 39)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (469, N'V?ZE', 39)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (470, N'KIR?EH?R MERKEZ', 40)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (471, N'???EKDA?I', 40)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (472, N'KAMAN', 40)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (473, N'MUCUR', 40)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (474, N'AKPINAR', 40)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (475, N'AK?AKENT', 40)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (476, N'BOZTEPE', 40)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (477, N'KOCAEL? MERKEZ', 41)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (478, N'GEBZE', 41)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (479, N'G?LC?K', 41)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (480, N'KANDIRA', 41)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (481, N'KARAM?RSEL', 41)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (482, N'K?RFEZ', 41)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (483, N'DER?NCE', 41)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (484, N'KONYA MERKEZ', 42)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (485, N'AK?EH?R', 42)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (486, N'BEY?EH?R', 42)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (487, N'BOZKIR', 42)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (488, N'C?HANBEYL?', 42)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (489, N'?UMRA', 42)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (490, N'DO?ANH?SAR', 42)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (491, N'ERE?L?', 42)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (492, N'HAD?M', 42)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (493, N'ILGIN', 42)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (494, N'KADINHANI', 42)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (495, N'KARAPINAR', 42)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (496, N'KULU', 42)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (497, N'SARAY?N?', 42)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (498, N'SEYD??EH?R', 42)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (499, N'YUNAK', 42)
GO
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (500, N'AK?REN', 42)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (501, N'ALTINEK?N', 42)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (502, N'DEREBUCAK', 42)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (503, N'H?Y?K', 42)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (504, N'KARATAY', 42)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (505, N'MERAM', 42)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (506, N'SEL?UKLU', 42)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (507, N'TA?KENT', 42)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (508, N'AHIRLI', 42)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (509, N'?ELT?K', 42)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (510, N'DERBENT', 42)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (511, N'EM?RGAZ?', 42)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (512, N'G?NEYSINIR', 42)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (513, N'HALKAPINAR', 42)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (514, N'TUZLUK?U', 42)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (515, N'YALIH?Y?K', 42)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (516, N'K?TAHYA  MERKEZ', 43)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (517, N'ALTINTA?', 43)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (518, N'DOMAN??', 43)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (519, N'EMET', 43)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (520, N'GED?Z', 43)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (521, N'S?MAV', 43)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (522, N'TAV?ANLI', 43)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (523, N'ASLANAPA', 43)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (524, N'DUMLUPINAR', 43)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (525, N'H?SARCIK', 43)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (526, N'?APHANE', 43)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (527, N'?AVDARH?SAR', 43)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (528, N'PAZARLAR', 43)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (529, N'K?L?S MERKEZ', 79)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (530, N'ELBEYL?', 79)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (531, N'MUSABEYL?', 79)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (532, N'POLATEL?', 79)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (533, N'MALATYA MERKEZ', 44)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (534, N'AK?ADA?', 44)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (535, N'ARAPG?R', 44)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (536, N'ARGUVAN', 44)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (537, N'DARENDE', 44)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (538, N'DO?AN?EH?R', 44)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (539, N'HEK?MHAN', 44)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (540, N'P?T?RGE', 44)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (541, N'YE??LYURT', 44)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (542, N'BATTALGAZ?', 44)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (543, N'DO?ANYOL', 44)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (544, N'KALE', 44)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (545, N'KULUNCAK', 44)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (546, N'YAZIHAN', 44)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (547, N'AKH?SAR', 45)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (548, N'ALA?EH?R', 45)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (549, N'DEM?RC?', 45)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (550, N'G?RDES', 45)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (551, N'KIRKA?A?', 45)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (552, N'KULA', 45)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (553, N'MAN?SA MERKEZ', 45)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (554, N'SAL?HL?', 45)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (555, N'SARIG?L', 45)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (556, N'SARUHANLI', 45)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (557, N'SELEND?', 45)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (558, N'SOMA', 45)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (559, N'TURGUTLU', 45)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (560, N'AHMETL?', 45)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (561, N'G?LMARMARA', 45)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (562, N'K?PR?BA?I', 45)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (563, N'DER?K', 47)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (564, N'KIZILTEPE', 47)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (565, N'MARD?N MERKEZ', 47)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (566, N'MAZIDA?I', 47)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (567, N'M?DYAT', 47)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (568, N'NUSAYB?N', 47)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (569, N'?MERL?', 47)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (570, N'SAVUR', 47)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (571, N'YE??LL?', 47)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (572, N'MERS?N MERKEZ', 33)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (573, N'ANAMUR', 33)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (574, N'ERDEML?', 33)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (575, N'G?LNAR', 33)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (576, N'MUT', 33)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (577, N'S?L?FKE', 33)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (578, N'TARSUS', 33)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (579, N'AYDINCIK', 33)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (580, N'BOZYAZI', 33)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (581, N'?AMLIYAYLA', 33)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (582, N'BODRUM', 48)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (583, N'DAT?A', 48)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (584, N'FETH?YE', 48)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (585, N'K?YCE??Z', 48)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (586, N'MARMAR?S', 48)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (587, N'M?LAS', 48)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (588, N'MU?LA MERKEZ', 48)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (589, N'ULA', 48)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (590, N'YATA?AN', 48)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (591, N'DALAMAN', 48)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (592, N'KAVAKLI DERE', 48)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (593, N'ORTACA', 48)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (594, N'BULANIK', 49)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (595, N'MALAZG?RT', 49)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (596, N'MU? MERKEZ', 49)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (597, N'VARTO', 49)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (598, N'HASK?Y', 49)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (599, N'KORKUT', 49)
GO
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (600, N'NEV?EH?R MERKEZ', 50)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (601, N'AVANOS', 50)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (602, N'DER?NKUYU', 50)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (603, N'G?L?EH?R', 50)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (604, N'HACIBEKTA?', 50)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (605, N'KOZAKLI', 50)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (606, N'?RG?P', 50)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (607, N'ACIG?L', 50)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (608, N'N??DE MERKEZ', 51)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (609, N'BOR', 51)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (610, N'?AMARDI', 51)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (611, N'ULUKI?LA', 51)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (612, N'ALTUNH?SAR', 51)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (613, N'??FTL?K', 51)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (614, N'AKKU?', 52)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (615, N'AYBASTI', 52)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (616, N'FATSA', 52)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (617, N'G?LK?Y', 52)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (618, N'KORGAN', 52)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (619, N'KUMRU', 52)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (620, N'MESUD?YE', 52)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (621, N'ORDU MERKEZ', 52)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (622, N'PER?EMBE', 52)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (623, N'ULUBEY', 52)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (624, N'?NYE', 52)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (625, N'G?LYALI', 52)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (626, N'G?RGENTEPE', 52)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (627, N'?AMA?', 52)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (628, N'?ATALPINAR', 52)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (629, N'?AYBA?I', 52)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (630, N'?K?ZCE', 52)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (631, N'KABAD?Z', 52)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (632, N'KABATA?', 52)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (633, N'BAH?E', 80)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (634, N'KAD?RL?', 80)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (635, N'OSMAN?YE MERKEZ', 80)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (636, N'D?Z???', 80)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (637, N'HASANBEYL?', 80)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (638, N'SUMBA?', 80)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (639, N'TOPRAKKALE', 80)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (640, N'R?ZE MERKEZ', 53)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (641, N'ARDE?EN', 53)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (642, N'?AMLIHEM??N', 53)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (643, N'?AYEL?', 53)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (644, N'FINDIKLI', 53)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (645, N'?K?ZDERE', 53)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (646, N'KALKANDERE', 53)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (647, N'PAZAR', 53)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (648, N'G?NEYSU', 53)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (649, N'DEREPAZARI', 53)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (650, N'HEM??N', 53)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (651, N'?Y?DERE', 53)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (652, N'AKYAZI', 54)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (653, N'GEYVE', 54)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (654, N'HENDEK', 54)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (655, N'KARASU', 54)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (656, N'KAYNARCA', 54)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (657, N'SAKARYA MERKEZ', 54)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (658, N'PAMUKOVA', 54)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (659, N'TARAKLI', 54)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (660, N'FER?ZL?', 54)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (661, N'KARAP?R?EK', 54)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (662, N'S???TL?', 54)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (663, N'ALA?AM', 55)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (664, N'BAFRA', 55)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (665, N'?AR?AMBA', 55)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (666, N'HAVZA', 55)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (667, N'KAVAK', 55)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (668, N'LAD?K', 55)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (669, N'SAMSUN MERKEZ', 55)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (670, N'TERME', 55)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (671, N'VEZ?RK?PR?', 55)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (672, N'ASARCIK', 55)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (673, N'ONDOKUZMAYIS', 55)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (674, N'SALIPAZARI', 55)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (675, N'TEKKEK?Y', 55)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (676, N'AYVACIK', 55)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (677, N'YAKAKENT', 55)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (678, N'AYANCIK', 57)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (679, N'BOYABAT', 57)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (680, N'S?NOP MERKEZ', 57)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (681, N'DURA?AN', 57)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (682, N'ERGELEK', 57)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (683, N'GERZE', 57)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (684, N'T?RKEL?', 57)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (685, N'D?KMEN', 57)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (686, N'SARAYD?Z?', 57)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (687, N'D?VR???', 58)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (688, N'GEMEREK', 58)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (689, N'G?R?N', 58)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (690, N'HAF?K', 58)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (691, N'?MRANLI', 58)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (692, N'KANGAL', 58)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (693, N'KOYUL H?SAR', 58)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (694, N'S?VAS MERKEZ', 58)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (695, N'SU ?EHR?', 58)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (696, N'?ARKI?LA', 58)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (697, N'YILDIZEL?', 58)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (698, N'ZARA', 58)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (699, N'AKINCILAR', 58)
GO
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (700, N'ALTINYAYLA', 58)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (701, N'DO?AN?AR', 58)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (702, N'G?LOVA', 58)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (703, N'ULA?', 58)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (704, N'BAYKAN', 56)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (705, N'ERUH', 56)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (706, N'KURTALAN', 56)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (707, N'PERVAR?', 56)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (708, N'S??RT MERKEZ', 56)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (709, N'??RVAR?', 56)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (710, N'AYDINLAR', 56)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (711, N'TEK?RDA? MERKEZ', 59)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (712, N'?ERKEZK?Y', 59)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (713, N'?ORLU', 59)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (714, N'HAYRABOLU', 59)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (715, N'MALKARA', 59)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (716, N'MURATLI', 59)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (717, N'SARAY', 59)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (718, N'?ARK?Y', 59)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (719, N'MARAMARAERE?L?S?', 59)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (720, N'ALMUS', 60)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (721, N'ARTOVA', 60)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (722, N'TOKAT MERKEZ', 60)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (723, N'ERBAA', 60)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (724, N'N?KSAR', 60)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (725, N'RE?AD?YE', 60)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (726, N'TURHAL', 60)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (727, N'Z?LE', 60)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (728, N'PAZAR', 60)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (729, N'YE??LYURT', 60)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (730, N'BA???FTL?K', 60)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (731, N'SULUSARAY', 60)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (732, N'TRABZON MERKEZ', 61)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (733, N'AK?AABAT', 61)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (734, N'ARAKLI', 61)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (735, N'AR??N', 61)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (736, N'?AYKARA', 61)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (737, N'MA?KA', 61)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (738, N'OF', 61)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (739, N'S?RMENE', 61)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (740, N'TONYA', 61)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (741, N'VAKFIKEB?R', 61)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (742, N'YOMRA', 61)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (743, N'BE??KD?Z?', 61)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (744, N'?ALPAZARI', 61)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (745, N'?AR?IBA?I', 61)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (746, N'DERNEKPAZARI', 61)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (747, N'D?ZK?Y', 61)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (748, N'HAYRAT', 61)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (749, N'K?PR?BA?I', 61)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (750, N'TUNCEL? MERKEZ', 62)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (751, N'?EM??GEZEK', 62)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (752, N'HOZAT', 62)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (753, N'MAZG?RT', 62)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (754, N'NAZ?M?YE', 62)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (755, N'OVACIK', 62)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (756, N'PERTEK', 62)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (757, N'P?L?M?R', 62)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (758, N'BANAZ', 64)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (759, N'E?ME', 64)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (760, N'KARAHALLI', 64)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (761, N'S?VASLI', 64)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (762, N'ULUBEY', 64)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (763, N'U?AK MERKEZ', 64)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (764, N'BA?KALE', 65)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (765, N'VAN MERKEZ', 65)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (766, N'EDREM?T', 65)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (767, N'?ATAK', 65)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (768, N'ERC??', 65)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (769, N'GEVA?', 65)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (770, N'G?RPINAR', 65)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (771, N'MURAD?YE', 65)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (772, N'?ZALP', 65)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (773, N'BAH?ESARAY', 65)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (774, N'?ALDIRAN', 65)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (775, N'SARAY', 65)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (776, N'YALOVA MERKEZ', 77)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (777, N'ALTINOVA', 77)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (778, N'ARMUTLU', 77)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (779, N'?INARCIK', 77)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (780, N'??FTL?KK?Y', 77)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (781, N'TERMAL', 77)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (782, N'AKDA?MADEN?', 66)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (783, N'BO?AZLIYAN', 66)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (784, N'YOZGAT MERKEZ', 66)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (785, N'?AYIRALAN', 66)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (786, N'?EKEREK', 66)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (787, N'SARIKAYA', 66)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (788, N'SORGUN', 66)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (789, N'?EFAATLI', 66)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (790, N'YERK?Y', 66)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (791, N'KADI?EHR?', 66)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (792, N'SARAYKENT', 66)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (793, N'YEN?FAKILI', 66)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (794, N'?AYCUMA', 67)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (795, N'DEVREK', 67)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (796, N'ZONGULDAK MERKEZ', 67)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (797, N'ERE?L?', 67)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (798, N'ALAPLI', 67)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (799, N'G?K?EBEY', 67)
GO
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (800, N'?ANAKKALE MERKEZ', 17)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (801, N'AYVACIK', 17)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (802, N'BAYRAM??', 17)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (803, N'B?GA', 17)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (804, N'BOZCAADA', 17)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (805, N'?AN', 17)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (806, N'ECEABAT', 17)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (807, N'EZ?NE', 17)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (808, N'LAPSEK?', 17)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (809, N'YEN?CE', 17)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (810, N'?ANKIRI MERKEZ', 18)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (811, N'?ERKE?', 18)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (812, N'ELD?VAN', 18)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (813, N'ILGAZ', 18)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (814, N'KUR?UNLU', 18)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (815, N'ORTA', 18)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (816, N'?ABAN?Z?', 18)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (817, N'YAPRAKLI', 18)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (818, N'ATKARACALAR', 18)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (819, N'KIZILIRMAK', 18)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (820, N'BAYRAM?REN', 18)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (821, N'KORGUN', 18)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (822, N'ALACA', 19)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (823, N'BAYAT', 19)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (824, N'?ORUM MERKEZ', 19)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (825, N'?KS?PL?', 19)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (826, N'KARGI', 19)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (827, N'MEC?T?Z?', 19)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (828, N'ORTAK?Y', 19)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (829, N'OSMANCIK', 19)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (830, N'SUNGURLU', 19)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (831, N'DODURGA', 19)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (832, N'LA??N', 19)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (833, N'O?UZLAR', 19)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (834, N'ADALAR', 34)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (835, N'BAKIRK?Y', 34)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (836, N'BE??KTA?', 34)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (837, N'BEYKOZ', 34)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (838, N'BEYO?LU', 34)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (839, N'?ATALCA', 34)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (840, N'EM?N?N?', 34)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (841, N'EY?P', 34)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (842, N'FAT?H', 34)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (843, N'GAZ?OSMANPA?A', 34)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (844, N'KADIK?Y', 34)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (845, N'KARTAL', 34)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (846, N'SARIYER', 34)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (847, N'S?L?VR?', 34)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (848, N'??LE', 34)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (849, N'???L?', 34)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (850, N'?SK?DAR', 34)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (851, N'ZEYT?NBURNU', 34)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (852, N'B?Y?K?EKMECE', 34)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (853, N'KA?ITHANE', 34)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (854, N'K???K?EKMECE', 34)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (855, N'PEND?K', 34)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (856, N'?MRAN?YE', 34)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (857, N'BAYRAMPA?A', 34)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (858, N'AVCILAR', 34)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (859, N'BA?CILAR', 34)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (860, N'BAH?EL?EVLER', 34)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (861, N'G?NG?REN', 34)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (862, N'MALTEPE', 34)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (863, N'SULTANBEYL?', 34)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (864, N'TUZLA', 34)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (865, N'ESENLER', 34)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (866, N'AL?A?A', 35)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (867, N'BAYINDIR', 35)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (868, N'BERGAMA', 35)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (869, N'BORNOVA', 35)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (870, N'?E?ME', 35)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (871, N'D?K?L?', 35)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (872, N'FO?A', 35)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (873, N'KARABURUN', 35)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (874, N'KAR?IYAKA', 35)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (875, N'KEMALPA?A', 35)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (876, N'KINIK', 35)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (877, N'K?RAZ', 35)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (878, N'MENEMEN', 35)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (879, N'?DEM??', 35)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (880, N'SEFER?H?SAR', 35)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (881, N'SEL?UK', 35)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (882, N'T?RE', 35)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (883, N'TORBALI', 35)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (884, N'URLA', 35)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (885, N'BEYDA?', 35)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (886, N'BUCA', 35)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (887, N'KONAK', 35)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (888, N'MENDERES', 35)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (889, N'BAL?OVA', 35)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (890, N'??GL?', 35)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (891, N'GAZ?EM?R', 35)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (892, N'NARLIDERE', 35)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (893, N'G?ZELBAH?E', 35)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (894, N'?ANLIURFA MERKEZ', 63)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (895, N'AK?AKALE', 63)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (896, N'B?REC?K', 63)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (897, N'BOZOVA', 63)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (898, N'CEYLANPINAR', 63)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (899, N'HALFET?', 63)
GO
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (900, N'H?LVAN', 63)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (901, N'S?VEREK', 63)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (902, N'SURU?', 63)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (903, N'V?RAN?EH?R', 63)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (904, N'HARRAN', 63)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (905, N'BEYT???EBAP', 73)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (906, N'?IRNAK MERKEZ', 73)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (907, N'C?ZRE', 73)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (908, N'?D?L', 73)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (909, N'S?LOP?', 73)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (910, N'ULUDERE', 73)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (911, N'G??L?KONAK', 73)
SET IDENTITY_INSERT [dbo].[ilceler] OFF
GO
SET IDENTITY_INSERT [dbo].[iller] ON 

INSERT [dbo].[iller] ([id], [sehir]) VALUES (1, N'ADANA')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (2, N'ADIYAMAN')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (3, N'AFYON')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (4, N'AĞRI')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (5, N'AMASYA')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (6, N'ANKARA')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (7, N'ANTALYA')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (8, N'ARTVİN')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (9, N'AYDIN')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (10, N'BALIKESİR')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (11, N'BİLECİK')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (12, N'BİNGÖL')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (13, N'BİTLİS')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (14, N'BOLU')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (15, N'BURDUR')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (16, N'BURSA')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (17, N'ÇANAKKALE')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (18, N'ÇANKIRI')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (19, N'ÇORUM')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (20, N'DENİZLİ')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (21, N'DİYARBAKIR')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (22, N'EDİRNE')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (23, N'ELAZIĞ')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (24, N'ERZİNCAN')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (25, N'ERZURUM')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (26, N'ESKİŞEHİR')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (27, N'GAZİANTEP')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (28, N'GİRESUN')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (29, N'GÜMÜŞHANE')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (30, N'HAKKARİ')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (31, N'HATAY')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (32, N'ISPARTA')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (33, N'İÇEL')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (34, N'İSTANBUL')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (35, N'İZMİR')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (36, N'KARS')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (37, N'KASTAMONU')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (38, N'KAYSERİ')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (39, N'KIRKLARELİ')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (40, N'KIRSEHİR')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (41, N'KOCAELİ')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (42, N'KONYA')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (43, N'KÜTAHYA')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (44, N'MALATYA')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (45, N'MANİSA')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (46, N'KAHRAMANMARAS')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (47, N'MARDİN')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (48, N'MUĞLA')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (49, N'MUŞ')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (50, N'NEVSEHİR')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (51, N'NİĞDE')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (52, N'ORDU')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (53, N'RİZE')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (54, N'SAKARYA')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (55, N'SAMSUN')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (56, N'SİİRT')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (57, N'SİNOP')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (58, N'SİVAS')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (59, N'TEKİRDAĞ')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (60, N'TOKAT')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (61, N'TRABZON')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (62, N'TUNCELİ')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (63, N'ŞANLIURFA')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (64, N'UŞAK')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (65, N'VAN')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (66, N'YOZGAT')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (67, N'ZONGULDAK')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (68, N'AKSARAY')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (69, N'BAYBURT')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (70, N'KARAMAN')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (71, N'KIRIKKALE')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (72, N'BATMAN')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (73, N'ŞIRNAK')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (74, N'BARTIN')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (75, N'ARDAHAN')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (76, N'IĞDIR')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (77, N'YALOVA')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (78, N'KARABÜK')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (79, N'KİLİS')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (80, N'OSMANİYE')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (81, N'DÜZCE')
SET IDENTITY_INSERT [dbo].[iller] OFF
GO
SET IDENTITY_INSERT [dbo].[KULLANICI] ON 

INSERT [dbo].[KULLANICI] ([Kul_ID], [Kul_Ad_Soyad], [Kul_Mail], [Kul_Tel], [Kul_Sifre], [Kul_Foto]) VALUES (1, N'hatice albayrak', N'haticekbr17@gmail.com', N'(531) 311-2604', N'1453', N'C:\Users\HATİCE KÜBRA\Desktop\OtoGaleri3\OtoGaleri\foto\personel\p10.jpg')
SET IDENTITY_INSERT [dbo].[KULLANICI] OFF
GO
SET IDENTITY_INSERT [dbo].[MUSTERI] ON 

INSERT [dbo].[MUSTERI] ([Musteri_ID], [Musteri_TC], [Musteri_Ad_Soyad], [Musteri_Mail], [Musteri_Tel], [Musteri_İl], [Musteri_İlçe], [Musteri_Adres], [Arac_ID], [Ehliyet]) VALUES (3, N'11768822612', N'hatice', N'haticekbr17@gmail.com', N'(531) 311-2604', 1, 2, N'namik', 1, N'C 180 BlueEfficiency Fascination ')
INSERT [dbo].[MUSTERI] ([Musteri_ID], [Musteri_TC], [Musteri_Ad_Soyad], [Musteri_Mail], [Musteri_Tel], [Musteri_İl], [Musteri_İlçe], [Musteri_Adres], [Arac_ID], [Ehliyet]) VALUES (6, N'11768822612', N'hatice albayrak', N'haticekbr17@gmail.com', N'(531) 311-2604', 1, 2, N'namik', 1, N'C 180 BlueEfficiency Fascination ')
INSERT [dbo].[MUSTERI] ([Musteri_ID], [Musteri_TC], [Musteri_Ad_Soyad], [Musteri_Mail], [Musteri_Tel], [Musteri_İl], [Musteri_İlçe], [Musteri_Adres], [Arac_ID], [Ehliyet]) VALUES (7, N'11768822612', N'bahar', N'haticekbr17@gmail.com', N'(531) 311-2604', 1, 2, N'namik', 1, N'Egea ')
INSERT [dbo].[MUSTERI] ([Musteri_ID], [Musteri_TC], [Musteri_Ad_Soyad], [Musteri_Mail], [Musteri_Tel], [Musteri_İl], [Musteri_İlçe], [Musteri_Adres], [Arac_ID], [Ehliyet]) VALUES (8, N'12457893623', N'seyhan', N'gkfd', N'(531) 522-1450', 2, 2, N'gdfg', 1, N'VAR')
SET IDENTITY_INSERT [dbo].[MUSTERI] OFF
GO
SET IDENTITY_INSERT [dbo].[PERSONEL] ON 

INSERT [dbo].[PERSONEL] ([Personel_ID], [Personel_TC], [Personel_Ad_Soyad], [Personel_Yas], [Personel_Tel], [Personel_Mail], [Sube_ID], [Personel_Foto]) VALUES (2, N'11768822612', N'hatice albayrak', N'25', N'(531) 311-2604', N'haticekbr17@gmail.com', 3, N'C:\Users\HATİCE KÜBRA\Desktop\OtoGaleri3\OtoGaleri\foto\personel\P1.jpg')
INSERT [dbo].[PERSONEL] ([Personel_ID], [Personel_TC], [Personel_Ad_Soyad], [Personel_Yas], [Personel_Tel], [Personel_Mail], [Sube_ID], [Personel_Foto]) VALUES (3, N'11768822612', N'leyla', N'25', N'(531) 311-2604', N'dlgkdfg', 1, N'C:\Users\HATİCE KÜBRA\Desktop\OtoGaleri3\OtoGaleri\foto\personel\p10.jpg')
INSERT [dbo].[PERSONEL] ([Personel_ID], [Personel_TC], [Personel_Ad_Soyad], [Personel_Yas], [Personel_Tel], [Personel_Mail], [Sube_ID], [Personel_Foto]) VALUES (4, N'11768822612', N'pisi', N'25', N'(531) 311-2604', N'dlgkdfg', 1, N'C:\Users\HATİCE KÜBRA\Desktop\OtoGaleri3\OtoGaleri\foto\personel\p9.jpg')
INSERT [dbo].[PERSONEL] ([Personel_ID], [Personel_TC], [Personel_Ad_Soyad], [Personel_Yas], [Personel_Tel], [Personel_Mail], [Sube_ID], [Personel_Foto]) VALUES (8, N'11768822612', N'polat', N'25', N'(531) 311-2604', N'dlgkdfg', 1, N'C:\Users\HATİCE KÜBRA\Desktop\OtoGaleri3\OtoGaleri\foto\personel\p6.jpg')
SET IDENTITY_INSERT [dbo].[PERSONEL] OFF
GO
SET IDENTITY_INSERT [dbo].[SUBE] ON 

INSERT [dbo].[SUBE] ([Sube_ID], [Sube_Ad], [Sorumlı_Kisi], [Sube_Tel], [Sube_Mail], [Sube_il]) VALUES (1, N'Oto Kardeşler', N'Jon Snow', N'5312548521', N'info@otokardesler.com', 1)
INSERT [dbo].[SUBE] ([Sube_ID], [Sube_Ad], [Sorumlı_Kisi], [Sube_Tel], [Sube_Mail], [Sube_il]) VALUES (2, N'SmartPro Oto Galeri', N'Abdullah Seçkin', N'(531) 484-6621', N'apolex78@gmail.com', 73)
INSERT [dbo].[SUBE] ([Sube_ID], [Sube_Ad], [Sorumlı_Kisi], [Sube_Tel], [Sube_Mail], [Sube_il]) VALUES (3, N'Albayrak Oto', N'Hatice ALBAYRAK', N'(531) 311-2604', N'haticekbr17@gmail.com', 34)
SET IDENTITY_INSERT [dbo].[SUBE] OFF
GO
ALTER TABLE [dbo].[ilceler]  WITH CHECK ADD  CONSTRAINT [FK_ilceler_iller1] FOREIGN KEY([sehir])
REFERENCES [dbo].[iller] ([id])
GO
ALTER TABLE [dbo].[ilceler] CHECK CONSTRAINT [FK_ilceler_iller1]
GO
ALTER TABLE [dbo].[MUSTERI]  WITH CHECK ADD  CONSTRAINT [FK_MUSTERI_ARACLAR] FOREIGN KEY([Arac_ID])
REFERENCES [dbo].[ARACLAR] ([Arac_ID])
GO
ALTER TABLE [dbo].[MUSTERI] CHECK CONSTRAINT [FK_MUSTERI_ARACLAR]
GO
ALTER TABLE [dbo].[MUSTERI]  WITH CHECK ADD  CONSTRAINT [FK_MUSTERI_ilceler] FOREIGN KEY([Musteri_İlçe])
REFERENCES [dbo].[ilceler] ([id])
GO
ALTER TABLE [dbo].[MUSTERI] CHECK CONSTRAINT [FK_MUSTERI_ilceler]
GO
ALTER TABLE [dbo].[MUSTERI]  WITH CHECK ADD  CONSTRAINT [FK_MUSTERI_iller] FOREIGN KEY([Musteri_İl])
REFERENCES [dbo].[iller] ([id])
GO
ALTER TABLE [dbo].[MUSTERI] CHECK CONSTRAINT [FK_MUSTERI_iller]
GO
ALTER TABLE [dbo].[PERSONEL]  WITH CHECK ADD  CONSTRAINT [FK_PERSONEL_SUBE] FOREIGN KEY([Sube_ID])
REFERENCES [dbo].[SUBE] ([Sube_ID])
ON UPDATE SET NULL
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[PERSONEL] CHECK CONSTRAINT [FK_PERSONEL_SUBE]
GO
ALTER TABLE [dbo].[SUBE]  WITH CHECK ADD  CONSTRAINT [FK_SUBE_iller] FOREIGN KEY([Sube_il])
REFERENCES [dbo].[iller] ([id])
GO
ALTER TABLE [dbo].[SUBE] CHECK CONSTRAINT [FK_SUBE_iller]
GO
USE [master]
GO
ALTER DATABASE [OtoGaleriProjesi] SET  READ_WRITE 
GO
