USE [master]
GO
/****** Object:  Database [DigitalWare]    Script Date: 16/02/2021 12:08:40 p. m. ******/
CREATE DATABASE [DigitalWare]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DigitalWare', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS01\MSSQL\DATA\DigitalWare.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DigitalWare_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS01\MSSQL\DATA\DigitalWare_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DigitalWare] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DigitalWare].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DigitalWare] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DigitalWare] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DigitalWare] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DigitalWare] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DigitalWare] SET ARITHABORT OFF 
GO
ALTER DATABASE [DigitalWare] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DigitalWare] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DigitalWare] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DigitalWare] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DigitalWare] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DigitalWare] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DigitalWare] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DigitalWare] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DigitalWare] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DigitalWare] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DigitalWare] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DigitalWare] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DigitalWare] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DigitalWare] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DigitalWare] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DigitalWare] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DigitalWare] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DigitalWare] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DigitalWare] SET  MULTI_USER 
GO
ALTER DATABASE [DigitalWare] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DigitalWare] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DigitalWare] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DigitalWare] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DigitalWare] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DigitalWare] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [DigitalWare] SET QUERY_STORE = OFF
GO
USE [DigitalWare]
GO
/****** Object:  Table [dbo].[aeronave]    Script Date: 16/02/2021 12:08:40 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aeronave](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[marca] [nvarchar](50) NOT NULL,
	[modelo] [nvarchar](50) NOT NULL,
	[capacidad] [int] NOT NULL,
 CONSTRAINT [PK_aeronave] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[estado]    Script Date: 16/02/2021 12:08:40 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[estado](
	[id] [int] NOT NULL,
	[nombre_estado] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_estado] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pasajeros]    Script Date: 16/02/2021 12:08:40 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pasajeros](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_vuelo] [int] NOT NULL,
	[nombres] [nvarchar](50) NOT NULL,
	[apellidos] [nvarchar](50) NOT NULL,
	[id_sexo] [int] NOT NULL,
 CONSTRAINT [PK_pasajeros] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[roles]    Script Date: 16/02/2021 12:08:40 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[roles](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre_roll] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_roles] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuario]    Script Date: 16/02/2021 12:08:40 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuario](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_roll] [int] NOT NULL,
	[nombre] [nvarchar](50) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[password] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_usuario] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vuelo]    Script Date: 16/02/2021 12:08:40 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vuelo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_aeronave] [int] NOT NULL,
	[id_usuario] [int] NULL,
	[destino] [nvarchar](50) NOT NULL,
	[fecha_salida] [datetime] NOT NULL,
	[fecha_llegada] [datetime] NOT NULL,
	[estado] [int] NOT NULL,
 CONSTRAINT [PK_vuelo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vuelo_usuario]    Script Date: 16/02/2021 12:08:40 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vuelo_usuario](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_vuelo] [int] NOT NULL,
	[id_usuario] [int] NOT NULL,
 CONSTRAINT [PK_vuelo_usuario] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[aeronave] ON 

INSERT [dbo].[aeronave] ([id], [marca], [modelo], [capacidad]) VALUES (1, N'Airbus', N'AS-550', 95)
INSERT [dbo].[aeronave] ([id], [marca], [modelo], [capacidad]) VALUES (2, N'Lenac', N'PM-300', 60)
INSERT [dbo].[aeronave] ([id], [marca], [modelo], [capacidad]) VALUES (1014, N'Airbus', N'4-40', 40)
SET IDENTITY_INSERT [dbo].[aeronave] OFF
GO
SET IDENTITY_INSERT [dbo].[pasajeros] ON 

INSERT [dbo].[pasajeros] ([id], [id_vuelo], [nombres], [apellidos], [id_sexo]) VALUES (1, 1, N'Andres', N'Romero', 1)
INSERT [dbo].[pasajeros] ([id], [id_vuelo], [nombres], [apellidos], [id_sexo]) VALUES (2, 1, N'Diana', N'Medina', 2)
INSERT [dbo].[pasajeros] ([id], [id_vuelo], [nombres], [apellidos], [id_sexo]) VALUES (4, 2, N'Sebastian', N'Rodriguez', 1)
INSERT [dbo].[pasajeros] ([id], [id_vuelo], [nombres], [apellidos], [id_sexo]) VALUES (5, 7, N'María', N'Padilla', 2)
INSERT [dbo].[pasajeros] ([id], [id_vuelo], [nombres], [apellidos], [id_sexo]) VALUES (7, 7, N'Julian', N'Hernandez', 1)
INSERT [dbo].[pasajeros] ([id], [id_vuelo], [nombres], [apellidos], [id_sexo]) VALUES (13, 7, N'Fabian', N'Romero', 1)
SET IDENTITY_INSERT [dbo].[pasajeros] OFF
GO
SET IDENTITY_INSERT [dbo].[roles] ON 

INSERT [dbo].[roles] ([id], [nombre_roll]) VALUES (1, N'Administrador')
INSERT [dbo].[roles] ([id], [nombre_roll]) VALUES (2, N'Piloto')
INSERT [dbo].[roles] ([id], [nombre_roll]) VALUES (3, N'Vendedor')
SET IDENTITY_INSERT [dbo].[roles] OFF
GO
SET IDENTITY_INSERT [dbo].[usuario] ON 

INSERT [dbo].[usuario] ([id], [id_roll], [nombre], [email], [password]) VALUES (1, 1, N'camilo', N'camilo@gmail.com', N'ca978112ca1bbdcafac231b39a23dc4da786eff8147c4e72b9807785afee48bb')
INSERT [dbo].[usuario] ([id], [id_roll], [nombre], [email], [password]) VALUES (2, 2, N'andres', N'andres@gmail.com', N'3e23e8160039594a33894f6564e1b1348bbd7a0088d42c4acb73eeaed59c009d')
INSERT [dbo].[usuario] ([id], [id_roll], [nombre], [email], [password]) VALUES (1002, 2, N'pepe', N'pepe@gmail.com', N'2e7d2c03a9507ae265ecf5b5356885a53393a2029d241394997265a1a25aefc6')
SET IDENTITY_INSERT [dbo].[usuario] OFF
GO
SET IDENTITY_INSERT [dbo].[vuelo] ON 

INSERT [dbo].[vuelo] ([id], [id_aeronave], [id_usuario], [destino], [fecha_salida], [fecha_llegada], [estado]) VALUES (1, 1, 1, N'próxima centauri', CAST(N'2021-05-03T00:00:00.000' AS DateTime), CAST(N'2022-02-08T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[vuelo] ([id], [id_aeronave], [id_usuario], [destino], [fecha_salida], [fecha_llegada], [estado]) VALUES (2, 2, 2, N'mu-cephei', CAST(N'2021-05-05T00:00:00.000' AS DateTime), CAST(N'2023-08-02T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[vuelo] ([id], [id_aeronave], [id_usuario], [destino], [fecha_salida], [fecha_llegada], [estado]) VALUES (7, 1014, 1, N'prueba2', CAST(N'2021-02-26T05:00:00.000' AS DateTime), CAST(N'2021-02-26T05:00:00.000' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[vuelo] OFF
GO
SET IDENTITY_INSERT [dbo].[vuelo_usuario] ON 

INSERT [dbo].[vuelo_usuario] ([id], [id_vuelo], [id_usuario]) VALUES (7, 1, 1)
SET IDENTITY_INSERT [dbo].[vuelo_usuario] OFF
GO
ALTER TABLE [dbo].[pasajeros]  WITH CHECK ADD  CONSTRAINT [FK_pasajeros_vuelo] FOREIGN KEY([id_vuelo])
REFERENCES [dbo].[vuelo] ([id])
GO
ALTER TABLE [dbo].[pasajeros] CHECK CONSTRAINT [FK_pasajeros_vuelo]
GO
ALTER TABLE [dbo].[vuelo]  WITH CHECK ADD  CONSTRAINT [FK_vuelo_aeronave] FOREIGN KEY([id_aeronave])
REFERENCES [dbo].[aeronave] ([id])
GO
ALTER TABLE [dbo].[vuelo] CHECK CONSTRAINT [FK_vuelo_aeronave]
GO
ALTER TABLE [dbo].[vuelo_usuario]  WITH CHECK ADD  CONSTRAINT [FK_vuelo_usuario_usuario] FOREIGN KEY([id_usuario])
REFERENCES [dbo].[usuario] ([id])
GO
ALTER TABLE [dbo].[vuelo_usuario] CHECK CONSTRAINT [FK_vuelo_usuario_usuario]
GO
ALTER TABLE [dbo].[vuelo_usuario]  WITH CHECK ADD  CONSTRAINT [FK_vuelo_usuario_vuelo] FOREIGN KEY([id_vuelo])
REFERENCES [dbo].[vuelo] ([id])
GO
ALTER TABLE [dbo].[vuelo_usuario] CHECK CONSTRAINT [FK_vuelo_usuario_vuelo]
GO
USE [master]
GO
ALTER DATABASE [DigitalWare] SET  READ_WRITE 
GO
