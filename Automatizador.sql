
/*Nombre: Orance Rafael Aquino; Matricula: 19-MIIN-1-101; Sección: 0541 */

USE [master]
GO
/****** Object:  Database [FOURCONTRYCORPORATION]    Script Date: 20/12/2020 17:25:02 ******/
CREATE DATABASE [FOURCONTRYCORPORATION]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FOURCONTRYCORPORATION', FILENAME = N'C:\Users\ALDELSA AQUINO\Desktop\orance\5to CUATRIMESTRE\BASE DE DATOS\Nueva carpeta\MSSQL14.SQLEXPRESS\MSSQL\DATA\FOURCONTRYCORPORATION.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'FOURCONTRYCORPORATION_log', FILENAME = N'C:\Users\ALDELSA AQUINO\Desktop\orance\5to CUATRIMESTRE\BASE DE DATOS\Nueva carpeta\MSSQL14.SQLEXPRESS\MSSQL\DATA\FOURCONTRYCORPORATION_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [FOURCONTRYCORPORATION] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FOURCONTRYCORPORATION].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FOURCONTRYCORPORATION] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FOURCONTRYCORPORATION] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FOURCONTRYCORPORATION] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FOURCONTRYCORPORATION] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FOURCONTRYCORPORATION] SET ARITHABORT OFF 
GO
ALTER DATABASE [FOURCONTRYCORPORATION] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [FOURCONTRYCORPORATION] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FOURCONTRYCORPORATION] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FOURCONTRYCORPORATION] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FOURCONTRYCORPORATION] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FOURCONTRYCORPORATION] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FOURCONTRYCORPORATION] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FOURCONTRYCORPORATION] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FOURCONTRYCORPORATION] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FOURCONTRYCORPORATION] SET  ENABLE_BROKER 
GO
ALTER DATABASE [FOURCONTRYCORPORATION] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FOURCONTRYCORPORATION] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FOURCONTRYCORPORATION] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FOURCONTRYCORPORATION] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FOURCONTRYCORPORATION] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FOURCONTRYCORPORATION] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FOURCONTRYCORPORATION] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FOURCONTRYCORPORATION] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [FOURCONTRYCORPORATION] SET  MULTI_USER 
GO
ALTER DATABASE [FOURCONTRYCORPORATION] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FOURCONTRYCORPORATION] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FOURCONTRYCORPORATION] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FOURCONTRYCORPORATION] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [FOURCONTRYCORPORATION] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [FOURCONTRYCORPORATION] SET QUERY_STORE = OFF
GO
USE [FOURCONTRYCORPORATION]
GO
/****** Object:  Table [dbo].[ALMACEN]    Script Date: 20/12/2020 17:25:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ALMACEN](
	[cantidad] [int] NULL,
	[descripcion] [varchar](30) NULL,
	[marca] [varchar](30) NULL,
	[modelo] [varchar](30) NULL,
	[costo] [int] NULL,
	[id_producto] [int] NOT NULL,
	[id_pro] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CLIENTES]    Script Date: 20/12/2020 17:25:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLIENTES](
	[id_cliente] [int] NOT NULL,
	[nombre] [varchar](30) NULL,
	[id_empleado] [varchar](8) NULL,
	[direccion] [varchar](30) NULL,
	[telefono] [int] NULL,
	[RFC] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 20/12/2020 17:25:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleado](
	[id_empleado] [varchar](8) NOT NULL,
	[nombre] [varchar](40) NOT NULL,
	[direccion] [varchar](40) NULL,
	[cod_dis] [varchar](8) NOT NULL,
	[cargo] [varchar](40) NOT NULL,
	[edad] [varchar](2) NULL,
	[tel] [int] NOT NULL,
	[cel] [int] NULL,
	[ingreso] [datetime] NOT NULL,
	[clave] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PROVEEDORES]    Script Date: 20/12/2020 17:25:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PROVEEDORES](
	[id_pro] [int] NOT NULL,
	[nombre] [varchar](30) NULL,
	[direccion] [varchar](60) NULL,
	[telefono] [int] NULL,
	[cuenta] [int] NULL,
	[RFC] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_pro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VENTA]    Script Date: 20/12/2020 17:25:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VENTA](
	[id_venta] [int] NOT NULL,
	[fecha] [date] NULL,
	[id_cliente] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_venta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VENTA_PRODUCTO]    Script Date: 20/12/2020 17:25:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VENTA_PRODUCTO](
	[id_venta] [int] NULL,
	[id_producto] [int] NULL,
	[cantidad] [int] NULL,
	[precio] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[ALMACEN] ([cantidad], [descripcion], [marca], [modelo], [costo], [id_producto], [id_pro]) VALUES (100, N'SOFTWER AUTOMATIZADO 1 EQUIPO', N'DELL', N'A1', 1500, 20051, 90091)
INSERT [dbo].[ALMACEN] ([cantidad], [descripcion], [marca], [modelo], [costo], [id_producto], [id_pro]) VALUES (100, N'SOFTWER AUTOMATIZADO 2 EQUIPO', N'DELL', N'A2', 1800, 20052, 90092)
INSERT [dbo].[ALMACEN] ([cantidad], [descripcion], [marca], [modelo], [costo], [id_producto], [id_pro]) VALUES (100, N'SOFTWER AUTOMATIZADO 3 EQUIPO', N'DELL', N'A3', 2100, 20053, 90093)
INSERT [dbo].[ALMACEN] ([cantidad], [descripcion], [marca], [modelo], [costo], [id_producto], [id_pro]) VALUES (100, N'SOFTWER AUTOMATIZADO 4 EQUIPO', N'DELL', N'A4', 2400, 20054, 90094)
INSERT [dbo].[ALMACEN] ([cantidad], [descripcion], [marca], [modelo], [costo], [id_producto], [id_pro]) VALUES (100, N'SOFTWER AUTOMATIZADO 5 EQUIPO', N'DELL', N'A5', 2700, 20055, 90095)
INSERT [dbo].[ALMACEN] ([cantidad], [descripcion], [marca], [modelo], [costo], [id_producto], [id_pro]) VALUES (100, N'SOFTWER AUTOMATIZADO 6 EQUIPO', N'DELL', N'A6', 3000, 20056, 90096)
INSERT [dbo].[ALMACEN] ([cantidad], [descripcion], [marca], [modelo], [costo], [id_producto], [id_pro]) VALUES (100, N'SOFTWER AUTOMATIZADO 7 EQUIPO', N'DELL', N'A7', 3300, 20057, 90097)
INSERT [dbo].[ALMACEN] ([cantidad], [descripcion], [marca], [modelo], [costo], [id_producto], [id_pro]) VALUES (100, N'SOFTWER AUTOMATIZADO 8 EQUIPO', N'DELL', N'A8', 3600, 20058, 90098)
INSERT [dbo].[ALMACEN] ([cantidad], [descripcion], [marca], [modelo], [costo], [id_producto], [id_pro]) VALUES (100, N'SOFTWER AUTOMATIZADO 9 EQUIPO', N'DELL', N'A9', 3900, 20059, 90099)
INSERT [dbo].[ALMACEN] ([cantidad], [descripcion], [marca], [modelo], [costo], [id_producto], [id_pro]) VALUES (100, N'SOFTWER AUTOMATIZADO 10 EQUIPO', N'DELL', N'A10', 4200, 20060, 90100)
GO
INSERT [dbo].[CLIENTES] ([id_cliente], [nombre], [id_empleado], [direccion], [telefono], [RFC]) VALUES (1001, N'RAMON POLANCO', N'18465222', N'CALLE SANTA 2 STO DOMINGO R.D', 809591777, 80)
INSERT [dbo].[CLIENTES] ([id_cliente], [nombre], [id_empleado], [direccion], [telefono], [RFC]) VALUES (1002, N'RASA DUARTE', N'18560554', N'CALLE BALAGUER STG. REP. DOM.', 809472202, 81)
INSERT [dbo].[CLIENTES] ([id_cliente], [nombre], [id_empleado], [direccion], [telefono], [RFC]) VALUES (1003, N'JULIO MORA', N'20055522', N'CALLE GIGANTE ST. DOMI REP.DOM', 809142532, 82)
INSERT [dbo].[CLIENTES] ([id_cliente], [nombre], [id_empleado], [direccion], [telefono], [RFC]) VALUES (1004, N'MIRA LULA', N'21054061', N'BARAHONA ST DOMINGO REP.DOM', 809554785, 83)
INSERT [dbo].[CLIENTES] ([id_cliente], [nombre], [id_empleado], [direccion], [telefono], [RFC]) VALUES (1005, N'LULI QUEZADA', N'94364339', N'S/N ST. DOMINGO RP.DOM.', 809545555, 84)
INSERT [dbo].[CLIENTES] ([id_cliente], [nombre], [id_empleado], [direccion], [telefono], [RFC]) VALUES (1006, N'LUMI CASA', N'18560554', N'CALLE GIGANTE ST. DOMI REP.DOM', 849525555, 85)
INSERT [dbo].[CLIENTES] ([id_cliente], [nombre], [id_empleado], [direccion], [telefono], [RFC]) VALUES (1007, N'ANA GRANDE', N'20055522', N'BARAHONA ST DOMINGO REP.DOM', 829555555, 86)
INSERT [dbo].[CLIENTES] ([id_cliente], [nombre], [id_empleado], [direccion], [telefono], [RFC]) VALUES (1008, N'TEO VARGAS', N'18560554', N'CALLE SANTA 2 STO DOMINGO R.D', 809644888, 87)
INSERT [dbo].[CLIENTES] ([id_cliente], [nombre], [id_empleado], [direccion], [telefono], [RFC]) VALUES (1009, N'SANTA CASTILLO', N'18465222', N'CALLE BALAGUER STG. REP. DOM.', 809595444, 88)
INSERT [dbo].[CLIENTES] ([id_cliente], [nombre], [id_empleado], [direccion], [telefono], [RFC]) VALUES (1010, N'KAKY VARGAS', N'18560554', N'S/N ST. DOMINGO RP.DOM.', 809587655, 89)
GO
INSERT [dbo].[Empleado] ([id_empleado], [nombre], [direccion], [cod_dis], [cargo], [edad], [tel], [cel], [ingreso], [clave]) VALUES (N'18465222', N'SANTIAGO RODRIGUEZ', N'REP. DOM. ST. DOMI. SERAZOTA 2', N'251', N'VENTA', N'33', 8095455, 809594333, CAST(N'2020-10-21T00:00:00.000' AS DateTime), N'1245')
INSERT [dbo].[Empleado] ([id_empleado], [nombre], [direccion], [cod_dis], [cargo], [edad], [tel], [cel], [ingreso], [clave]) VALUES (N'18560554', N'SANTIAGO RIVERON', N'REP. DOM. ST. DOMI. INDEPENDENCIA 1', N'253', N'VENTA', N'43', 8094648, 809564777, CAST(N'2020-10-21T00:00:00.000' AS DateTime), N'1523')
INSERT [dbo].[Empleado] ([id_empleado], [nombre], [direccion], [cod_dis], [cargo], [edad], [tel], [cel], [ingreso], [clave]) VALUES (N'20055522', N'RAMON VARGAS', N'REP. DOM. ST. DOMI. CASIMIRO DE MOL', N'054', N'VENTA', N'31', 8095943, 809602111, CAST(N'2020-10-21T00:00:00.000' AS DateTime), N'2522')
INSERT [dbo].[Empleado] ([id_empleado], [nombre], [direccion], [cod_dis], [cargo], [edad], [tel], [cel], [ingreso], [clave]) VALUES (N'20140152', N'HARRY VARGAS', N'REP. DOM. ST. DOMI. JOSEFA BREA', N'062', N'SUPERVISOR', N'24', 8346543, 137287431, CAST(N'2020-11-21T00:00:00.000' AS DateTime), N'1234')
INSERT [dbo].[Empleado] ([id_empleado], [nombre], [direccion], [cod_dis], [cargo], [edad], [tel], [cel], [ingreso], [clave]) VALUES (N'20566162', N'MANOLO MANILIN', N'REP. DOM. ST. DOMI. KENEDY', N'065', N'GERENTE', N'24', 2224562, 137287253, CAST(N'2020-11-21T00:00:00.000' AS DateTime), N'1234')
INSERT [dbo].[Empleado] ([id_empleado], [nombre], [direccion], [cod_dis], [cargo], [edad], [tel], [cel], [ingreso], [clave]) VALUES (N'21054061', N'MARINO DE LA CRUZ', N'REO. DOM. ST. DOMI. BEISBOLISTA', N'054', N'VENTA', N'28', 8095555, 80956455, CAST(N'2020-10-20T00:00:00.000' AS DateTime), N'1580')
INSERT [dbo].[Empleado] ([id_empleado], [nombre], [direccion], [cod_dis], [cargo], [edad], [tel], [cel], [ingreso], [clave]) VALUES (N'24360992', N'APONTE VENGAS', N'REP. DOM. ST. DOMI. AUP. DUARTE', N'065', N'ADMIN', N'24', 8346543, 997287215, CAST(N'2020-11-21T00:00:00.000' AS DateTime), N'1234')
INSERT [dbo].[Empleado] ([id_empleado], [nombre], [direccion], [cod_dis], [cargo], [edad], [tel], [cel], [ingreso], [clave]) VALUES (N'28748376', N'JOSE CONDOR', N'REP. DOM. ST. DOMI. MAXIMO GOMEZ', N'034', N'DIRECTOR', N'24', 2224561, 997287215, CAST(N'2020-10-21T00:00:00.000' AS DateTime), N'1234')
INSERT [dbo].[Empleado] ([id_empleado], [nombre], [direccion], [cod_dis], [cargo], [edad], [tel], [cel], [ingreso], [clave]) VALUES (N'65646454', N'LUIS CASTILLO', N'REP. DOM. ST. DOMI. LUPERON 2', N'034', N'SERVI', N'24', 8346543, 137287223, CAST(N'2020-10-21T00:00:00.000' AS DateTime), N'1234')
INSERT [dbo].[Empleado] ([id_empleado], [nombre], [direccion], [cod_dis], [cargo], [edad], [tel], [cel], [ingreso], [clave]) VALUES (N'94360139', N'FREDY QUISPE', N'REP. DOM. ST. DOMI. AV. MELLA 1', N'056', N'SUPERVISOR', N'25', 9994556, 137987223, CAST(N'2020-10-21T00:00:00.000' AS DateTime), N'1234')
INSERT [dbo].[Empleado] ([id_empleado], [nombre], [direccion], [cod_dis], [cargo], [edad], [tel], [cel], [ingreso], [clave]) VALUES (N'94364339', N'ERIK LOCAL', N'REP. DOM. ST. DOMI. CARRTERA MELLA', N'054', N'VENTA', N'27', 9994576, 137987923, CAST(N'2020-10-21T00:00:00.000' AS DateTime), N'1934')
GO
INSERT [dbo].[PROVEEDORES] ([id_pro], [nombre], [direccion], [telefono], [cuenta], [RFC]) VALUES (90091, N'TECNOLOGY AVANZADO SA', N'CALLE COSTA RICA STO. DOMINGO REP. DOM.', 809594333, 620000001, 123001592)
INSERT [dbo].[PROVEEDORES] ([id_pro], [nombre], [direccion], [telefono], [cuenta], [RFC]) VALUES (90092, N'TECNOLOGY AVANZADO SA', N'CALLE COSTA RICA STO. DOMINGO REP. DOM.', 809594333, 620000001, 123001592)
INSERT [dbo].[PROVEEDORES] ([id_pro], [nombre], [direccion], [telefono], [cuenta], [RFC]) VALUES (90093, N'TECNOLOGY AVANZADO SA', N'CALLE COSTA RICA STO. DOMINGO REP. DOM.', 809594333, 620000001, 123001592)
INSERT [dbo].[PROVEEDORES] ([id_pro], [nombre], [direccion], [telefono], [cuenta], [RFC]) VALUES (90094, N'TECNOLOGY AVANZADO SA', N'CALLE COSTA RICA STO. DOMINGO REP. DOM.', 809594333, 620000001, 123001592)
INSERT [dbo].[PROVEEDORES] ([id_pro], [nombre], [direccion], [telefono], [cuenta], [RFC]) VALUES (90095, N'TECNOLOGY AVANZADO SA', N'CALLE COSTA RICA STO. DOMINGO REP. DOM.', 809594333, 620000001, 123001592)
INSERT [dbo].[PROVEEDORES] ([id_pro], [nombre], [direccion], [telefono], [cuenta], [RFC]) VALUES (90096, N'REOUBLICA DIGITAL', N'AV. KENEDY STO. DOMINGO REP. DOM.', 809742202, 790000009, 101805374)
INSERT [dbo].[PROVEEDORES] ([id_pro], [nombre], [direccion], [telefono], [cuenta], [RFC]) VALUES (90097, N'TECNOLOGY AVANZADO SA', N'AV. KENEDY STO. DOMINGO REP. DOM.', 809742202, 790000009, 101805374)
INSERT [dbo].[PROVEEDORES] ([id_pro], [nombre], [direccion], [telefono], [cuenta], [RFC]) VALUES (90098, N'TECNOLOGY AVANZADO SA', N'AV. KENEDY STO. DOMINGO REP. DOM.', 809742202, 790000009, 101805374)
INSERT [dbo].[PROVEEDORES] ([id_pro], [nombre], [direccion], [telefono], [cuenta], [RFC]) VALUES (90099, N'TECNOLOGY AVANZADO SA', N'AV. KENEDY STO. DOMINGO REP. DOM.', 809742202, 790000009, 101805374)
INSERT [dbo].[PROVEEDORES] ([id_pro], [nombre], [direccion], [telefono], [cuenta], [RFC]) VALUES (90100, N'TECNOLOGY AVANZADO SA', N'AV. KENEDY STO. DOMINGO REP. DOM.', 809742202, 790000009, 101805374)
GO
INSERT [dbo].[VENTA] ([id_venta], [fecha], [id_cliente]) VALUES (1501, CAST(N'2020-10-12' AS Date), 1001)
INSERT [dbo].[VENTA] ([id_venta], [fecha], [id_cliente]) VALUES (1502, CAST(N'2020-10-11' AS Date), 1002)
INSERT [dbo].[VENTA] ([id_venta], [fecha], [id_cliente]) VALUES (1503, CAST(N'2020-10-09' AS Date), 1003)
INSERT [dbo].[VENTA] ([id_venta], [fecha], [id_cliente]) VALUES (1504, CAST(N'2020-10-08' AS Date), 1004)
INSERT [dbo].[VENTA] ([id_venta], [fecha], [id_cliente]) VALUES (1505, CAST(N'2020-10-07' AS Date), 1005)
INSERT [dbo].[VENTA] ([id_venta], [fecha], [id_cliente]) VALUES (1506, CAST(N'2020-10-06' AS Date), 1006)
INSERT [dbo].[VENTA] ([id_venta], [fecha], [id_cliente]) VALUES (1507, CAST(N'2020-10-05' AS Date), 1007)
INSERT [dbo].[VENTA] ([id_venta], [fecha], [id_cliente]) VALUES (1508, CAST(N'2020-10-04' AS Date), 1008)
INSERT [dbo].[VENTA] ([id_venta], [fecha], [id_cliente]) VALUES (1509, CAST(N'2020-10-03' AS Date), 1009)
INSERT [dbo].[VENTA] ([id_venta], [fecha], [id_cliente]) VALUES (1510, CAST(N'2020-10-02' AS Date), 1010)
GO
INSERT [dbo].[VENTA_PRODUCTO] ([id_venta], [id_producto], [cantidad], [precio]) VALUES (1501, 20060, 1, 6500)
INSERT [dbo].[VENTA_PRODUCTO] ([id_venta], [id_producto], [cantidad], [precio]) VALUES (1502, 20059, 1, 6000)
INSERT [dbo].[VENTA_PRODUCTO] ([id_venta], [id_producto], [cantidad], [precio]) VALUES (1503, 20058, 1, 5500)
INSERT [dbo].[VENTA_PRODUCTO] ([id_venta], [id_producto], [cantidad], [precio]) VALUES (1504, 20057, 1, 5000)
INSERT [dbo].[VENTA_PRODUCTO] ([id_venta], [id_producto], [cantidad], [precio]) VALUES (1505, 20056, 1, 4500)
INSERT [dbo].[VENTA_PRODUCTO] ([id_venta], [id_producto], [cantidad], [precio]) VALUES (1506, 20055, 1, 4000)
INSERT [dbo].[VENTA_PRODUCTO] ([id_venta], [id_producto], [cantidad], [precio]) VALUES (1507, 20054, 1, 3500)
INSERT [dbo].[VENTA_PRODUCTO] ([id_venta], [id_producto], [cantidad], [precio]) VALUES (1508, 20053, 1, 3000)
INSERT [dbo].[VENTA_PRODUCTO] ([id_venta], [id_producto], [cantidad], [precio]) VALUES (1509, 20052, 1, 2500)
INSERT [dbo].[VENTA_PRODUCTO] ([id_venta], [id_producto], [cantidad], [precio]) VALUES (1510, 20051, 1, 2000)
GO
ALTER TABLE [dbo].[ALMACEN]  WITH CHECK ADD  CONSTRAINT [FK_ALMACEN_PROVEEDORES] FOREIGN KEY([id_pro])
REFERENCES [dbo].[PROVEEDORES] ([id_pro])
GO
ALTER TABLE [dbo].[ALMACEN] CHECK CONSTRAINT [FK_ALMACEN_PROVEEDORES]
GO
ALTER TABLE [dbo].[CLIENTES]  WITH CHECK ADD  CONSTRAINT [FK_CLIENTES_Empleado] FOREIGN KEY([id_empleado])
REFERENCES [dbo].[Empleado] ([id_empleado])
GO
ALTER TABLE [dbo].[CLIENTES] CHECK CONSTRAINT [FK_CLIENTES_Empleado]
GO
ALTER TABLE [dbo].[VENTA]  WITH CHECK ADD  CONSTRAINT [FK_VENTA_CLIENTES] FOREIGN KEY([id_cliente])
REFERENCES [dbo].[CLIENTES] ([id_cliente])
GO
ALTER TABLE [dbo].[VENTA] CHECK CONSTRAINT [FK_VENTA_CLIENTES]
GO
ALTER TABLE [dbo].[VENTA_PRODUCTO]  WITH CHECK ADD  CONSTRAINT [FK_VENTA_PRODUCTO_ALMACEN] FOREIGN KEY([id_producto])
REFERENCES [dbo].[ALMACEN] ([id_producto])
GO
ALTER TABLE [dbo].[VENTA_PRODUCTO] CHECK CONSTRAINT [FK_VENTA_PRODUCTO_ALMACEN]
GO
ALTER TABLE [dbo].[VENTA_PRODUCTO]  WITH CHECK ADD  CONSTRAINT [FK_VENTA_PRODUCTO_VENTA] FOREIGN KEY([id_venta])
REFERENCES [dbo].[VENTA] ([id_venta])
GO
ALTER TABLE [dbo].[VENTA_PRODUCTO] CHECK CONSTRAINT [FK_VENTA_PRODUCTO_VENTA]
GO
USE [master]
GO
ALTER DATABASE [FOURCONTRYCORPORATION] SET  READ_WRITE 
GO
