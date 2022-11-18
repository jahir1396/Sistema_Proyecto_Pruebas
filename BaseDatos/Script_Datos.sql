USE [DB_SISTEMA_PROYECTO]
GO
SET IDENTITY_INSERT [dbo].[CatCategoria] ON 
GO
INSERT [dbo].[CatCategoria] ([IdCategoria], [Nombre], [Descripcion], [EstaActivo]) VALUES (1, N'Celulares', N'Todos los celulares', 1)
GO
INSERT [dbo].[CatCategoria] ([IdCategoria], [Nombre], [Descripcion], [EstaActivo]) VALUES (2, N'Computadoras', N'Todas las computadoras', 1)
GO
INSERT [dbo].[CatCategoria] ([IdCategoria], [Nombre], [Descripcion], [EstaActivo]) VALUES (3, N'Categoria de prueba', N'Esta categoria es para realizar pruebas', 1)
GO
SET IDENTITY_INSERT [dbo].[CatCategoria] OFF
GO
SET IDENTITY_INSERT [dbo].[CatArticulo] ON 
GO
INSERT [dbo].[CatArticulo] ([IdArticulo], [IdCategoria], [Codigo], [Nombre], [PrecioVenta], [Stock], [Descripcion], [EstaActivo]) VALUES (1, 1, N'131296', N'IPhone 11', CAST(20000.00 AS Decimal(18, 2)), 13, N'Celular gama alta', 1)
GO
INSERT [dbo].[CatArticulo] ([IdArticulo], [IdCategoria], [Codigo], [Nombre], [PrecioVenta], [Stock], [Descripcion], [EstaActivo]) VALUES (2, 2, N'121234', N'Dell', CAST(21000.00 AS Decimal(18, 2)), 11, N'Laptop Dell', 1)
GO
INSERT [dbo].[CatArticulo] ([IdArticulo], [IdCategoria], [Codigo], [Nombre], [PrecioVenta], [Stock], [Descripcion], [EstaActivo]) VALUES (3, 3, N'234567', N'articulo de prueba', CAST(356.00 AS Decimal(18, 2)), 5, N'Este articulo es para realizar pruebas', 1)
GO
SET IDENTITY_INSERT [dbo].[CatArticulo] OFF
GO
SET IDENTITY_INSERT [dbo].[CatEstatusVentaIngreso] ON 
GO
INSERT [dbo].[CatEstatusVentaIngreso] ([IdEstatusVentaIngreso], [Nombre]) VALUES (1, N'Aprobado')
GO
INSERT [dbo].[CatEstatusVentaIngreso] ([IdEstatusVentaIngreso], [Nombre]) VALUES (2, N'Rechazado')
GO
SET IDENTITY_INSERT [dbo].[CatEstatusVentaIngreso] OFF
GO
SET IDENTITY_INSERT [dbo].[CatRol] ON 
GO
INSERT [dbo].[CatRol] ([IdRol], [Nombre], [Descripcion], [EstaActivo]) VALUES (1, N'Administrador', N'Administrador del sistema', 1)
GO
INSERT [dbo].[CatRol] ([IdRol], [Nombre], [Descripcion], [EstaActivo]) VALUES (2, N'Vendedor', N'Vendedor del sistema', 1)
GO
INSERT [dbo].[CatRol] ([IdRol], [Nombre], [Descripcion], [EstaActivo]) VALUES (3, N'Almacenero', N'Almacenero del sistema', 1)
GO
SET IDENTITY_INSERT [dbo].[CatRol] OFF
GO
SET IDENTITY_INSERT [dbo].[CatUsuario] ON 
GO
INSERT [dbo].[CatUsuario] ([IdUsuario], [IdRol], [FolioUsuario], [Nombre], [TipoDocumento], [NumDocumento], [Direccion], [Telefono], [Email], [PasswordHash], [PasswordSalt], [EstaActivo]) VALUES (1, 1, N'JAHIR-292-2022', N'Jahir Lopez', N'pdf', N'abc-123', N'CDMx, Mexico', N'55 55 55 55 55', N'jahir.ilv13@gmail.com', 0xF26B2595333B88FDE9DDA269038B70567070E5963567604A14EB7EEEC78F90BAF963CBBCA958C4577E8CCDC778E87EA749B6807B20A44A10AFE4100FCEA0C54D, 0x431FBE58495FACD9FE0AA02E749D57C94A2A925417637AF48AB76D8B6B3184431449C2D35AB18919DF196CCCB49BCC687E25F1B570D1FF60D3DCF8239873871177279E4A85594C5EA6B071539F07517B181920347314CB9F322C360558334785EAC09E01BF15D1999D4FC8653BC18B0E012B31AFDA85D5F6012723B3B3733D62, 1)
GO
INSERT [dbo].[CatUsuario] ([IdUsuario], [IdRol], [FolioUsuario], [Nombre], [TipoDocumento], [NumDocumento], [Direccion], [Telefono], [Email], [PasswordHash], [PasswordSalt], [EstaActivo]) VALUES (2, 2, N'MANUE-605-2022', N'Manuel Lopez', N'pdf', N'abc-123', N'CDMx, Mexico', N'55 55 55 55 55', N'juan.lopez@gmail.com', 0x0B3C0A01B1EDD427736CABAD7354F5A17FB2A679841679ABB54D86DF75AC5662D650C9069E2BF082732B333A64577F4754376CEF8DE68457FCE0AAFE69CDAF2D, 0xB099C9B106ECFF293C13308B59AF0931BCA0502F67798961AD1027B94F169E688D2F4E3CF004FAEF5FBB32DE7A8210CB76C52B16EAF01401E4E486539660F3D3B82A81F30C34076CEBCE6EAFBBFA335CDB2686B8C92DFEAE9C0A3100653DBD76C054F3B1A386ED5C6B48B9F5F2507884D776B76C3764D783B9941815164B530B, 1)
GO
SET IDENTITY_INSERT [dbo].[CatUsuario] OFF
GO
SET IDENTITY_INSERT [dbo].[CatTipoPersona] ON 
GO
INSERT [dbo].[CatTipoPersona] ([IdTipoPersona], [Nombre]) VALUES (1, N'Cliente')
GO
INSERT [dbo].[CatTipoPersona] ([IdTipoPersona], [Nombre]) VALUES (2, N'Proveedor')
GO
SET IDENTITY_INSERT [dbo].[CatTipoPersona] OFF
GO
INSERT [dbo].[CatPlantillaCorreo] ([IdPlantillaCorreo], [Nombre], [Asunto], [Plantilla], [DestinatarioCC], [DestinatarioCCO]) VALUES (1, N'PlantillaEjemplo', N'PlantillaEjemplo', N'PlantillaEjemplo', N'PlantillaEjemplo', N'PlantillaEjemplo')
GO
SET IDENTITY_INSERT [dbo].[OpeNotificacion] ON 
GO
INSERT [dbo].[OpeNotificacion] ([IdNotificacion], [IdPlantillaCorreo], [IdUsuarioRegistro], [FechaRegistro], [EstaEnviada]) VALUES (1, 1, 1, CAST(N'2022-08-28T18:06:38.5633333' AS DateTime2), 0)
GO
INSERT [dbo].[OpeNotificacion] ([IdNotificacion], [IdPlantillaCorreo], [IdUsuarioRegistro], [FechaRegistro], [EstaEnviada]) VALUES (2, 1, 1, CAST(N'2022-08-28T18:37:36.5966667' AS DateTime2), 0)
GO
SET IDENTITY_INSERT [dbo].[OpeNotificacion] OFF
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220827223025_INITDB', N'6.0.8')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220828225002_DBUpdate', N'6.0.8')
GO
