USE [master]
GO
/****** Object:  Database [PeriferiaDb]    Script Date: 9/03/2023 10:44:24 a. m. ******/
CREATE DATABASE [PeriferiaDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PeriferiaDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\PeriferiaDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PeriferiaDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\PeriferiaDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PeriferiaDb] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PeriferiaDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PeriferiaDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PeriferiaDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PeriferiaDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PeriferiaDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PeriferiaDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [PeriferiaDb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PeriferiaDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PeriferiaDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PeriferiaDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PeriferiaDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PeriferiaDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PeriferiaDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PeriferiaDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PeriferiaDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PeriferiaDb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PeriferiaDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PeriferiaDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PeriferiaDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PeriferiaDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PeriferiaDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PeriferiaDb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PeriferiaDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PeriferiaDb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PeriferiaDb] SET  MULTI_USER 
GO
ALTER DATABASE [PeriferiaDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PeriferiaDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PeriferiaDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PeriferiaDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PeriferiaDb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PeriferiaDb] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [PeriferiaDb] SET QUERY_STORE = OFF
GO
USE [PeriferiaDb]
GO
/****** Object:  Table [dbo].[Moneda]    Script Date: 9/03/2023 10:44:24 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Moneda](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](3) NOT NULL,
	[Moneda] [varchar](100) NOT NULL,
	[Enable] [bit] NULL,
 CONSTRAINT [PK_Moneda] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sucursales]    Script Date: 9/03/2023 10:44:24 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sucursales](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [int] NOT NULL,
	[Descripcion] [varchar](250) NOT NULL,
	[Direccion] [varchar](250) NOT NULL,
	[Identificacion] [varchar](50) NOT NULL,
	[FechasCreación] [datetime] NOT NULL,
	[IdMoneda] [int] NOT NULL,
 CONSTRAINT [PK_Sucursales] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Moneda] ON 

INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (1, N'AFN', N'Afgani afgano', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (2, N'ALL', N'Lek alban‚s', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (3, N'AMD', N'Dram armenio', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (4, N'ANG', N'Flor¡n antillano neerland‚s', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (5, N'AOA', N'Kwanza angole¤o', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (6, N'ARS', N'Peso argentino', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (7, N'AUD', N'D¢lar australiano', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (8, N'AWG', N'Flor¡n arube¤o', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (9, N'AZM', N'Manat azerbaiyano', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (10, N'BAM', N'Marco convertible de Bosnia-Herzegovina', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (11, N'BBD', N'D¢lar de Barbados', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (12, N'BDT', N'Taka de Bangladesh', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (13, N'BGN', N'Lev b£lgaro', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (14, N'BHD', N'Dinar bahrein¡', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (15, N'BIF', N'Franco burund‚s', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (16, N'BMD', N'D¢lar de Bermuda', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (17, N'BND', N'D¢lar de Brun‚i', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (18, N'BOB', N'Boliviano de Bolivia', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (19, N'BRL', N'Real brasile¤o', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (20, N'BSD', N'D¢lar bahame¤o', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (21, N'BTN', N'Ngultrum de But n', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (22, N'BWP', N'Pula de Botsuana', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (23, N'BYR', N'Rublo bielorruso', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (24, N'BZD', N'D¢lar de Belice', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (25, N'CAD', N'D¢lar canadiense', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (26, N'CDF', N'Franco congole¤o', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (27, N'CHF', N'Franco suizo', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (28, N'CLP', N'Peso chileno', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (29, N'CNY', N'Yuan Renminbi de China', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (30, N'COP', N'Peso colombiano', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (31, N'CRC', N'Col¢n costarricense', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (32, N'RSD', N'Dinar serbio ', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (33, N'CUP', N'Peso cubano', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (34, N'CUC', N'Peso cubano convertible', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (35, N'CVE', N'Escudo caboverdiano', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (36, N'CYP', N'Libra chipriota', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (37, N'CZK', N'Koruna checa', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (38, N'DJF', N'Franco yibutiano', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (39, N'DKK', N'Corona danesa', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (40, N'DOP', N'Peso dominicano', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (41, N'DZD', N'Dinar algerino', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (42, N'EEK', N'Corona estonia', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (43, N'EGP', N'Libra egipcia', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (44, N'ERN', N'Nakfa eritreo', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (45, N'ETB', N'Birr et¡ope', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (46, N'EUR', N'Euro', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (47, N'FJD', N'D¢lar fijiano', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (48, N'FKP', N'Libra malvinense', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (49, N'GBP', N'Libra esterlina (libra de Gran Breta¤a)', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (50, N'GEL', N'Lari georgiano', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (51, N'GHS', N'Cedi ghan‚s', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (52, N'GIP', N'Libra de Gibraltar', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (53, N'GMD', N'Dalasi gambiano', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (54, N'GNF', N'Franco guineano', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (55, N'GTQ', N'Quetzal guatemalteco', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (56, N'GYD', N'D¢lar guyan‚s', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (57, N'HKD', N'D¢lar de Hong Kong', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (58, N'HNL', N'Lempira hondure¤o', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (59, N'HRK', N'Kuna croata', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (60, N'HTG', N'Gourde haitiano', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (61, N'HUF', N'Forint h£ngaro', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (62, N'IDR', N'Rupiah indonesia', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (63, N'ILS', N'Nuevo sh‚quel israel¡', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (64, N'INR', N'Rupia india', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (65, N'IQD', N'Dinar iraqu¡', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (66, N'IRR', N'Rial iran¡', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (67, N'ISK', N'Kr¢na islandesa', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (68, N'JMD', N'D¢lar jamaicano', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (69, N'JOD', N'Dinar jordano', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (70, N'JPY', N'Yen japon‚s', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (71, N'KES', N'Chel¡n keniata', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (72, N'KGS', N'Som kirgu¡s (de Kirguist n)', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (73, N'KHR', N'Riel camboyano', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (74, N'KMF', N'Franco comoriano (de Comoras)', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (75, N'KPW', N'Won norcoreano', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (76, N'KRW', N'Won surcoreano', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (77, N'KWD', N'Dinar kuwait¡', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (78, N'KYD', N'D¢lar caimano (de Islas Caim n)', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (79, N'KZT', N'Tenge kazajo', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (80, N'LAK', N'Kip lao', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (81, N'LBP', N'Libra libanesa', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (82, N'LKR', N'Rupia de Sri Lanka', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (83, N'LRD', N'D¢lar liberiano', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (84, N'LSL', N'Loti lesotense', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (85, N'LTL', N'Litas lituano', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (86, N'LVL', N'Lat let¢n', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (87, N'LYD', N'Dinar libio', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (88, N'MAD', N'Dirham marroqu¡', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (89, N'MDL', N'Leu moldavo', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (90, N'MGA', N'Ariary malgache', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (91, N'MKD', N'Denar macedonio', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (92, N'MMK', N'Kyat birmano', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (93, N'MNT', N'Tughrik mongol', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (94, N'MOP', N'Pataca de Macao', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (95, N'MRO', N'Ouguiya mauritana', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (96, N'MTL', N'Lira maltesa', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (97, N'MUR', N'Rupia mauricia', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (98, N'MVR', N'Rufiyaa maldiva', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (99, N'MWK', N'Kwacha malauiano', NULL)
GO
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (100, N'MXN', N'Peso mexicano', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (101, N'MYR', N'Ringgit malayo', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (102, N'MZN', N'Metical mozambique¤o', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (103, N'NAD', N'D¢lar namibio', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (104, N'NGN', N'Naira nigeriana', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (105, N'NIO', N'C¢rdoba nicaragense', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (106, N'NOK', N'Corona noruega', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (107, N'NPR', N'Rupia nepalesa', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (108, N'NZD', N'D¢lar neozeland‚s', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (109, N'OMR', N'Rial oman¡', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (110, N'PAB', N'Balboa paname¤a', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (111, N'PEN', N'Nuevo sol peruano', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (112, N'PGK', N'Kina de Pap£a Nueva Guinea', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (113, N'PHP', N'Peso filipino', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (114, N'PKR', N'Rupia pakistan¡', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (115, N'PLN', N'zloty polaco', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (116, N'PYG', N'Guaran¡ paraguayo', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (117, N'QAR', N'Rial qatar¡', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (118, N'RON', N'Leu rumano', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (119, N'RUB', N'Rublo ruso', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (120, N'RWF', N'Franco ruand‚s', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (121, N'SAR', N'Riyal saud¡', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (122, N'SBD', N'D¢lar de las Islas Salom¢n', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (123, N'SCR', N'Rupia de Seychelles', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (124, N'SDG', N'Dinar sudan‚s', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (125, N'SEK', N'Corona sueca', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (126, N'SGD', N'D¢lar de Singapur', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (127, N'SHP', N'Libra de Santa Helena', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (128, N'SKK', N'Corona eslovaca', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (129, N'SLL', N'Leone de Sierra Leona', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (130, N'SOS', N'Chel¡n somal¡', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (131, N'SRD', N'D¢lar surinam‚s', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (132, N'STD', N'Dobra de Santo Tom‚ y Pr¡ncipe', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (133, N'SYP', N'Libra siria', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (134, N'SZL', N'Lilangeni suazi', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (135, N'THB', N'Baht tailand‚s', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (136, N'TJS', N'Somoni tayik (de Tayikist n)', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (137, N'TMT', N'Manat turcomano turcomano', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (138, N'TND', N'Dinar tunecino', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (139, N'TOP', N'Pa''anga tongano', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (140, N'TRY', N'Lira turca', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (141, N'TTD', N'D¢lar de Trinidad y Tobago', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (142, N'TWD', N'D¢lar taiwan‚s', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (143, N'TZS', N'Chel¡n tanzano', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (144, N'UAH', N'Grivna ucraniana', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (145, N'UGX', N'Chel¡n ugand‚s', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (146, N'USD', N'D¢lar estadounidense', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (147, N'UYU', N'Peso uruguayo', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (148, N'UZS', N'Som uzbeko', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (149, N'VEF', N'Bol¡var fuerte venezolano', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (150, N'VND', N'Dong vietnamita', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (151, N'VUV', N'Vatu vanuatense', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (152, N'WST', N'Tala samoana', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (153, N'XAF', N'Franco CFA de µfrica Central', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (154, N'XBA', N'European Composite Unit (EURCO) (unidad del mercado de bonos)', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (155, N'XBB', N'European Monetary Unit (E.M.U.-6) (unidad del mercado de bonos)', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (156, N'XBC', N'European Unit of Account 9 (E.U.A.-9) (unidad del mercado de bonos)', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (157, N'XBD', N'European Unit of Account 17 (E.U.A.-17) (unidad del mercado de bonos)', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (158, N'XCD', N'D¢lar del Caribe Oriental', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (159, N'XDR', N'Derecho Especial de Giro (DEG  -  FMI)', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (160, N'XFO', N'Franco de oro (Special settlement currency)', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (161, N'XFU', N'Franco UIC (Special settlement currency)', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (162, N'XOF', N'Franco CFA de µfrica Occidental', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (163, N'YER', N'Rial yemen¡ (de Yemen)', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (164, N'ZAR', N'Rand sudafricano', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (165, N'ZMK', N'Kwacha zambiano', NULL)
INSERT [dbo].[Moneda] ([Id], [Codigo], [Moneda], [Enable]) VALUES (166, N'ZWL', N'D¢lar zimbabuense', NULL)
SET IDENTITY_INSERT [dbo].[Moneda] OFF
GO
SET IDENTITY_INSERT [dbo].[Sucursales] ON 

INSERT [dbo].[Sucursales] ([Id], [Codigo], [Descripcion], [Direccion], [Identificacion], [FechasCreación], [IdMoneda]) VALUES (1, 11, N'Unos', N'1 no 1', N'11111111', CAST(N'2023-03-05T20:16:43.827' AS DateTime), 30)
INSERT [dbo].[Sucursales] ([Id], [Codigo], [Descripcion], [Direccion], [Identificacion], [FechasCreación], [IdMoneda]) VALUES (3, 2, N'dos', N'cll 100', N'12345', CAST(N'2023-03-06T14:33:00.000' AS DateTime), 30)
INSERT [dbo].[Sucursales] ([Id], [Codigo], [Descripcion], [Direccion], [Identificacion], [FechasCreación], [IdMoneda]) VALUES (10, 9999, N'99999', N'cll 100-1555', N'99999999', CAST(N'2023-03-08T14:42:00.000' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Sucursales] OFF
GO
ALTER TABLE [dbo].[Sucursales]  WITH CHECK ADD  CONSTRAINT [FK_Sucursales_Ciudad] FOREIGN KEY([IdMoneda])
REFERENCES [dbo].[Moneda] ([Id])
GO
ALTER TABLE [dbo].[Sucursales] CHECK CONSTRAINT [FK_Sucursales_Ciudad]
GO
USE [master]
GO
ALTER DATABASE [PeriferiaDb] SET  READ_WRITE 
GO
