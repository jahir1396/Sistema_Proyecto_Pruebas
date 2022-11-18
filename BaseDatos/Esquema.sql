USE [DB_SISTEMA_PROYECTO]
GO
ALTER TABLE [dbo].[OpeVentaTracking] DROP CONSTRAINT [FK_OpeVentaTracking_OpeVenta]
GO
ALTER TABLE [dbo].[OpeVentaTracking] DROP CONSTRAINT [FK_OpeVentaTracking_CatUsuario_IdUsuarioRegistro]
GO
ALTER TABLE [dbo].[OpeVenta] DROP CONSTRAINT [FK_OpeVenta_CatUsuario_IdUsuario]
GO
ALTER TABLE [dbo].[OpeVenta] DROP CONSTRAINT [FK_OpeVenta_CatPersona_IdPersona]
GO
ALTER TABLE [dbo].[OpeVenta] DROP CONSTRAINT [FK_OpeVenta_CatEstatusVentaIngreso_IdEstatusVentaIngreso]
GO
ALTER TABLE [dbo].[OpeNotificacion] DROP CONSTRAINT [FK_OpeNotificacion_CatUsuario_IdUsuarioRegistro]
GO
ALTER TABLE [dbo].[OpeNotificacion] DROP CONSTRAINT [FK_OpeNotificacion_CatPlantillaCorreo_IdPlantillaCorreo]
GO
ALTER TABLE [dbo].[OpeIngreso] DROP CONSTRAINT [FK_OpeIngreso_CatUsuario_IdUsuario]
GO
ALTER TABLE [dbo].[OpeIngreso] DROP CONSTRAINT [FK_OpeIngreso_CatPersona_IdPersona]
GO
ALTER TABLE [dbo].[OpeIngreso] DROP CONSTRAINT [FK_OpeIngreso_CatEstatusVentaIngreso_IdEstatusVentaIngreso]
GO
ALTER TABLE [dbo].[OpeDetalleVenta] DROP CONSTRAINT [FK_OpeDetalleVenta_OpeVenta_IdVenta]
GO
ALTER TABLE [dbo].[OpeDetalleVenta] DROP CONSTRAINT [FK_OpeDetalleVenta_CatArticulo_IdArticulo]
GO
ALTER TABLE [dbo].[OpeDetalleIngreso] DROP CONSTRAINT [FK_OpeDetalleIngreso_OpeIngreso_IdIngreso]
GO
ALTER TABLE [dbo].[OpeDetalleIngreso] DROP CONSTRAINT [FK_OpeDetalleIngreso_CatArticulo_IdArticulo]
GO
ALTER TABLE [dbo].[CatUsuario] DROP CONSTRAINT [FK_CatUsuario_CatRol_IdRol]
GO
ALTER TABLE [dbo].[CatPersona] DROP CONSTRAINT [FK_CatPersona_CatTipoPersona_IdTipoPersona]
GO
ALTER TABLE [dbo].[CatArticulo] DROP CONSTRAINT [FK_CatArticulo_CatCategoria_IdCategoria]
GO
/****** Object:  Table [dbo].[OpeVentaTracking]    Script Date: 18/11/2022 03:12:04 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OpeVentaTracking]') AND type in (N'U'))
DROP TABLE [dbo].[OpeVentaTracking]
GO
/****** Object:  Table [dbo].[OpeVenta]    Script Date: 18/11/2022 03:12:04 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OpeVenta]') AND type in (N'U'))
DROP TABLE [dbo].[OpeVenta]
GO
/****** Object:  Table [dbo].[OpeNotificacion]    Script Date: 18/11/2022 03:12:04 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OpeNotificacion]') AND type in (N'U'))
DROP TABLE [dbo].[OpeNotificacion]
GO
/****** Object:  Table [dbo].[OpeIngreso]    Script Date: 18/11/2022 03:12:04 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OpeIngreso]') AND type in (N'U'))
DROP TABLE [dbo].[OpeIngreso]
GO
/****** Object:  Table [dbo].[OpeDetalleVenta]    Script Date: 18/11/2022 03:12:04 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OpeDetalleVenta]') AND type in (N'U'))
DROP TABLE [dbo].[OpeDetalleVenta]
GO
/****** Object:  Table [dbo].[OpeDetalleIngreso]    Script Date: 18/11/2022 03:12:04 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OpeDetalleIngreso]') AND type in (N'U'))
DROP TABLE [dbo].[OpeDetalleIngreso]
GO
/****** Object:  Table [dbo].[CatUsuario]    Script Date: 18/11/2022 03:12:04 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CatUsuario]') AND type in (N'U'))
DROP TABLE [dbo].[CatUsuario]
GO
/****** Object:  Table [dbo].[CatTipoPersona]    Script Date: 18/11/2022 03:12:04 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CatTipoPersona]') AND type in (N'U'))
DROP TABLE [dbo].[CatTipoPersona]
GO
/****** Object:  Table [dbo].[CatRol]    Script Date: 18/11/2022 03:12:04 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CatRol]') AND type in (N'U'))
DROP TABLE [dbo].[CatRol]
GO
/****** Object:  Table [dbo].[CatPlantillaCorreo]    Script Date: 18/11/2022 03:12:04 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CatPlantillaCorreo]') AND type in (N'U'))
DROP TABLE [dbo].[CatPlantillaCorreo]
GO
/****** Object:  Table [dbo].[CatPersona]    Script Date: 18/11/2022 03:12:04 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CatPersona]') AND type in (N'U'))
DROP TABLE [dbo].[CatPersona]
GO
/****** Object:  Table [dbo].[CatParametro]    Script Date: 18/11/2022 03:12:04 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CatParametro]') AND type in (N'U'))
DROP TABLE [dbo].[CatParametro]
GO
/****** Object:  Table [dbo].[CatEstatusVentaIngreso]    Script Date: 18/11/2022 03:12:04 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CatEstatusVentaIngreso]') AND type in (N'U'))
DROP TABLE [dbo].[CatEstatusVentaIngreso]
GO
/****** Object:  Table [dbo].[CatCategoria]    Script Date: 18/11/2022 03:12:04 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CatCategoria]') AND type in (N'U'))
DROP TABLE [dbo].[CatCategoria]
GO
/****** Object:  Table [dbo].[CatArticulo]    Script Date: 18/11/2022 03:12:04 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CatArticulo]') AND type in (N'U'))
DROP TABLE [dbo].[CatArticulo]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 18/11/2022 03:12:04 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[__EFMigrationsHistory]') AND type in (N'U'))
DROP TABLE [dbo].[__EFMigrationsHistory]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 18/11/2022 03:12:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CatArticulo]    Script Date: 18/11/2022 03:12:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CatArticulo](
	[IdArticulo] [int] IDENTITY(1,1) NOT NULL,
	[IdCategoria] [int] NOT NULL,
	[Codigo] [varchar](50) NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[PrecioVenta] [decimal](18, 2) NOT NULL,
	[Stock] [int] NOT NULL,
	[Descripcion] [varchar](256) NOT NULL,
	[EstaActivo] [bit] NOT NULL,
 CONSTRAINT [PK_CatArticulo] PRIMARY KEY CLUSTERED 
(
	[IdArticulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CatCategoria]    Script Date: 18/11/2022 03:12:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CatCategoria](
	[IdCategoria] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Descripcion] [varchar](256) NOT NULL,
	[EstaActivo] [bit] NOT NULL,
 CONSTRAINT [PK_CatCategoria] PRIMARY KEY CLUSTERED 
(
	[IdCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CatEstatusVentaIngreso]    Script Date: 18/11/2022 03:12:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CatEstatusVentaIngreso](
	[IdEstatusVentaIngreso] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](20) NOT NULL,
 CONSTRAINT [PK_CatEstatusVentaIngreso] PRIMARY KEY CLUSTERED 
(
	[IdEstatusVentaIngreso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CatParametro]    Script Date: 18/11/2022 03:12:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CatParametro](
	[IdParametro] [varchar](200) NOT NULL,
	[ValorParametro] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CatPersona]    Script Date: 18/11/2022 03:12:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CatPersona](
	[IdPersona] [int] IDENTITY(1,1) NOT NULL,
	[IdTipoPersona] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[TipoDocumento] [varchar](20) NOT NULL,
	[NumDocumento] [varchar](20) NOT NULL,
	[Direccion] [varchar](70) NOT NULL,
	[Telefono] [varchar](20) NOT NULL,
	[Email] [varchar](50) NOT NULL,
 CONSTRAINT [PK_CatPersona] PRIMARY KEY CLUSTERED 
(
	[IdPersona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CatPlantillaCorreo]    Script Date: 18/11/2022 03:12:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CatPlantillaCorreo](
	[IdPlantillaCorreo] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Asunto] [varchar](50) NOT NULL,
	[Plantilla] [varchar](max) NOT NULL,
	[DestinatarioCC] [varchar](3000) NOT NULL,
	[DestinatarioCCO] [varchar](3000) NOT NULL,
 CONSTRAINT [PK_CatPlantillaCorreo] PRIMARY KEY CLUSTERED 
(
	[IdPlantillaCorreo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CatRol]    Script Date: 18/11/2022 03:12:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CatRol](
	[IdRol] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](30) NOT NULL,
	[Descripcion] [varchar](100) NOT NULL,
	[EstaActivo] [bit] NOT NULL,
 CONSTRAINT [PK_CatRol] PRIMARY KEY CLUSTERED 
(
	[IdRol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CatTipoPersona]    Script Date: 18/11/2022 03:12:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CatTipoPersona](
	[IdTipoPersona] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](20) NOT NULL,
 CONSTRAINT [PK_CatTipoPersona] PRIMARY KEY CLUSTERED 
(
	[IdTipoPersona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CatUsuario]    Script Date: 18/11/2022 03:12:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CatUsuario](
	[IdUsuario] [int] IDENTITY(1,1) NOT NULL,
	[IdRol] [int] NOT NULL,
	[FolioUsuario] [varchar](20) NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[TipoDocumento] [varchar](20) NOT NULL,
	[NumDocumento] [varchar](20) NOT NULL,
	[Direccion] [varchar](70) NOT NULL,
	[Telefono] [varchar](20) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[PasswordHash] [varbinary](max) NOT NULL,
	[PasswordSalt] [varbinary](max) NOT NULL,
	[EstaActivo] [bit] NOT NULL,
 CONSTRAINT [PK_CatUsuario] PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OpeDetalleIngreso]    Script Date: 18/11/2022 03:12:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OpeDetalleIngreso](
	[IdDetalleIngreso] [int] IDENTITY(1,1) NOT NULL,
	[IdIngreso] [int] NOT NULL,
	[IdArticulo] [int] NOT NULL,
	[Cantidad] [int] NOT NULL,
	[Precio] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_OpeDetalleIngreso] PRIMARY KEY CLUSTERED 
(
	[IdDetalleIngreso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OpeDetalleVenta]    Script Date: 18/11/2022 03:12:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OpeDetalleVenta](
	[IdDetalleVenta] [int] IDENTITY(1,1) NOT NULL,
	[IdVenta] [int] NOT NULL,
	[IdArticulo] [int] NOT NULL,
	[Cantidad] [int] NOT NULL,
	[Precio] [decimal](18, 2) NOT NULL,
	[Descuento] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_OpeDetalleVenta] PRIMARY KEY CLUSTERED 
(
	[IdDetalleVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OpeIngreso]    Script Date: 18/11/2022 03:12:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OpeIngreso](
	[IdIngreso] [int] IDENTITY(1,1) NOT NULL,
	[IdPersona] [int] NOT NULL,
	[IdUsuario] [int] NOT NULL,
	[IdEstatusVentaIngreso] [int] NOT NULL,
	[TipoComprobante] [varchar](20) NOT NULL,
	[SerieComprobante] [varchar](7) NOT NULL,
	[NumComprobante] [nvarchar](10) NOT NULL,
	[FechaRegistro] [datetime2](7) NOT NULL,
	[Impuesto] [decimal](18, 2) NOT NULL,
	[Total] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_OpeIngreso] PRIMARY KEY CLUSTERED 
(
	[IdIngreso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OpeNotificacion]    Script Date: 18/11/2022 03:12:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OpeNotificacion](
	[IdNotificacion] [int] IDENTITY(1,1) NOT NULL,
	[IdPlantillaCorreo] [int] NOT NULL,
	[IdUsuarioRegistro] [int] NOT NULL,
	[FechaRegistro] [datetime2](7) NOT NULL,
	[EstaEnviada] [bit] NOT NULL,
 CONSTRAINT [PK_OpeNotificacion] PRIMARY KEY CLUSTERED 
(
	[IdNotificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OpeVenta]    Script Date: 18/11/2022 03:12:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OpeVenta](
	[IdVenta] [int] IDENTITY(1,1) NOT NULL,
	[IdPersona] [int] NOT NULL,
	[IdUsuario] [int] NOT NULL,
	[IdEstatusVentaIngreso] [int] NOT NULL,
	[TipoComprobante] [varchar](20) NOT NULL,
	[SerieComprobante] [varchar](7) NOT NULL,
	[NumComprobante] [varchar](10) NOT NULL,
	[FechaRegistro] [datetime2](7) NOT NULL,
	[Impuesto] [decimal](18, 2) NOT NULL,
	[Total] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_OpeVenta] PRIMARY KEY CLUSTERED 
(
	[IdVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OpeVentaTracking]    Script Date: 18/11/2022 03:12:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OpeVentaTracking](
	[IdVentaTracking] [int] IDENTITY(1,1) NOT NULL,
	[IdUsuarioRegistro] [int] NOT NULL,
	[FechaRegistro] [datetime2](7) NOT NULL,
	[Movimiento] [varchar](200) NOT NULL,
	[IdVenta] [int] NOT NULL,
 CONSTRAINT [PK_OpeVentaTracking] PRIMARY KEY CLUSTERED 
(
	[IdVentaTracking] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CatArticulo]  WITH CHECK ADD  CONSTRAINT [FK_CatArticulo_CatCategoria_IdCategoria] FOREIGN KEY([IdCategoria])
REFERENCES [dbo].[CatCategoria] ([IdCategoria])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CatArticulo] CHECK CONSTRAINT [FK_CatArticulo_CatCategoria_IdCategoria]
GO
ALTER TABLE [dbo].[CatPersona]  WITH CHECK ADD  CONSTRAINT [FK_CatPersona_CatTipoPersona_IdTipoPersona] FOREIGN KEY([IdTipoPersona])
REFERENCES [dbo].[CatTipoPersona] ([IdTipoPersona])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CatPersona] CHECK CONSTRAINT [FK_CatPersona_CatTipoPersona_IdTipoPersona]
GO
ALTER TABLE [dbo].[CatUsuario]  WITH CHECK ADD  CONSTRAINT [FK_CatUsuario_CatRol_IdRol] FOREIGN KEY([IdRol])
REFERENCES [dbo].[CatRol] ([IdRol])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CatUsuario] CHECK CONSTRAINT [FK_CatUsuario_CatRol_IdRol]
GO
ALTER TABLE [dbo].[OpeDetalleIngreso]  WITH CHECK ADD  CONSTRAINT [FK_OpeDetalleIngreso_CatArticulo_IdArticulo] FOREIGN KEY([IdArticulo])
REFERENCES [dbo].[CatArticulo] ([IdArticulo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OpeDetalleIngreso] CHECK CONSTRAINT [FK_OpeDetalleIngreso_CatArticulo_IdArticulo]
GO
ALTER TABLE [dbo].[OpeDetalleIngreso]  WITH CHECK ADD  CONSTRAINT [FK_OpeDetalleIngreso_OpeIngreso_IdIngreso] FOREIGN KEY([IdIngreso])
REFERENCES [dbo].[OpeIngreso] ([IdIngreso])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OpeDetalleIngreso] CHECK CONSTRAINT [FK_OpeDetalleIngreso_OpeIngreso_IdIngreso]
GO
ALTER TABLE [dbo].[OpeDetalleVenta]  WITH CHECK ADD  CONSTRAINT [FK_OpeDetalleVenta_CatArticulo_IdArticulo] FOREIGN KEY([IdArticulo])
REFERENCES [dbo].[CatArticulo] ([IdArticulo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OpeDetalleVenta] CHECK CONSTRAINT [FK_OpeDetalleVenta_CatArticulo_IdArticulo]
GO
ALTER TABLE [dbo].[OpeDetalleVenta]  WITH CHECK ADD  CONSTRAINT [FK_OpeDetalleVenta_OpeVenta_IdVenta] FOREIGN KEY([IdVenta])
REFERENCES [dbo].[OpeVenta] ([IdVenta])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OpeDetalleVenta] CHECK CONSTRAINT [FK_OpeDetalleVenta_OpeVenta_IdVenta]
GO
ALTER TABLE [dbo].[OpeIngreso]  WITH CHECK ADD  CONSTRAINT [FK_OpeIngreso_CatEstatusVentaIngreso_IdEstatusVentaIngreso] FOREIGN KEY([IdEstatusVentaIngreso])
REFERENCES [dbo].[CatEstatusVentaIngreso] ([IdEstatusVentaIngreso])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OpeIngreso] CHECK CONSTRAINT [FK_OpeIngreso_CatEstatusVentaIngreso_IdEstatusVentaIngreso]
GO
ALTER TABLE [dbo].[OpeIngreso]  WITH CHECK ADD  CONSTRAINT [FK_OpeIngreso_CatPersona_IdPersona] FOREIGN KEY([IdPersona])
REFERENCES [dbo].[CatPersona] ([IdPersona])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OpeIngreso] CHECK CONSTRAINT [FK_OpeIngreso_CatPersona_IdPersona]
GO
ALTER TABLE [dbo].[OpeIngreso]  WITH CHECK ADD  CONSTRAINT [FK_OpeIngreso_CatUsuario_IdUsuario] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[CatUsuario] ([IdUsuario])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OpeIngreso] CHECK CONSTRAINT [FK_OpeIngreso_CatUsuario_IdUsuario]
GO
ALTER TABLE [dbo].[OpeNotificacion]  WITH CHECK ADD  CONSTRAINT [FK_OpeNotificacion_CatPlantillaCorreo_IdPlantillaCorreo] FOREIGN KEY([IdPlantillaCorreo])
REFERENCES [dbo].[CatPlantillaCorreo] ([IdPlantillaCorreo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OpeNotificacion] CHECK CONSTRAINT [FK_OpeNotificacion_CatPlantillaCorreo_IdPlantillaCorreo]
GO
ALTER TABLE [dbo].[OpeNotificacion]  WITH CHECK ADD  CONSTRAINT [FK_OpeNotificacion_CatUsuario_IdUsuarioRegistro] FOREIGN KEY([IdUsuarioRegistro])
REFERENCES [dbo].[CatUsuario] ([IdUsuario])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OpeNotificacion] CHECK CONSTRAINT [FK_OpeNotificacion_CatUsuario_IdUsuarioRegistro]
GO
ALTER TABLE [dbo].[OpeVenta]  WITH CHECK ADD  CONSTRAINT [FK_OpeVenta_CatEstatusVentaIngreso_IdEstatusVentaIngreso] FOREIGN KEY([IdEstatusVentaIngreso])
REFERENCES [dbo].[CatEstatusVentaIngreso] ([IdEstatusVentaIngreso])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OpeVenta] CHECK CONSTRAINT [FK_OpeVenta_CatEstatusVentaIngreso_IdEstatusVentaIngreso]
GO
ALTER TABLE [dbo].[OpeVenta]  WITH CHECK ADD  CONSTRAINT [FK_OpeVenta_CatPersona_IdPersona] FOREIGN KEY([IdPersona])
REFERENCES [dbo].[CatPersona] ([IdPersona])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OpeVenta] CHECK CONSTRAINT [FK_OpeVenta_CatPersona_IdPersona]
GO
ALTER TABLE [dbo].[OpeVenta]  WITH CHECK ADD  CONSTRAINT [FK_OpeVenta_CatUsuario_IdUsuario] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[CatUsuario] ([IdUsuario])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OpeVenta] CHECK CONSTRAINT [FK_OpeVenta_CatUsuario_IdUsuario]
GO
ALTER TABLE [dbo].[OpeVentaTracking]  WITH CHECK ADD  CONSTRAINT [FK_OpeVentaTracking_CatUsuario_IdUsuarioRegistro] FOREIGN KEY([IdUsuarioRegistro])
REFERENCES [dbo].[CatUsuario] ([IdUsuario])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OpeVentaTracking] CHECK CONSTRAINT [FK_OpeVentaTracking_CatUsuario_IdUsuarioRegistro]
GO
ALTER TABLE [dbo].[OpeVentaTracking]  WITH CHECK ADD  CONSTRAINT [FK_OpeVentaTracking_OpeVenta] FOREIGN KEY([IdVenta])
REFERENCES [dbo].[OpeVenta] ([IdVenta])
GO
ALTER TABLE [dbo].[OpeVentaTracking] CHECK CONSTRAINT [FK_OpeVentaTracking_OpeVenta]
GO
