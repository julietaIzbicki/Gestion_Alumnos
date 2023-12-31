USE [GestionAlumnos]
GO
/****** Object:  User [alumno]    Script Date: 20/9/2023 08:33:08 ******/
CREATE USER [alumno] FOR LOGIN [alumno] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Alumnos]    Script Date: 20/9/2023 08:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alumnos](
	[Nombre] [varchar](max) NOT NULL,
	[Apellido] [varchar](max) NOT NULL,
	[Legajo] [int] NOT NULL,
	[Curso] [varchar](50) NOT NULL,
	[idNota] [int] NULL,
 CONSTRAINT [PK_Alumnos] PRIMARY KEY CLUSTERED 
(
	[Legajo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notas]    Script Date: 20/9/2023 08:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notas](
	[idNota] [int] IDENTITY(1,1) NOT NULL,
	[Nota] [int] NOT NULL,
 CONSTRAINT [PK_Notas] PRIMARY KEY CLUSTERED 
(
	[idNota] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Alumnos] ([Nombre], [Apellido], [Legajo], [Curso], [idNota]) VALUES (N'Maia', N'Kup', 21, N'4IC', 1)
INSERT [dbo].[Alumnos] ([Nombre], [Apellido], [Legajo], [Curso], [idNota]) VALUES (N'Juli', N'Izbi', 89, N'4IC', 2)
GO
SET IDENTITY_INSERT [dbo].[Notas] ON 

INSERT [dbo].[Notas] ([idNota], [Nota]) VALUES (1, 10)
INSERT [dbo].[Notas] ([idNota], [Nota]) VALUES (2, 10)
SET IDENTITY_INSERT [dbo].[Notas] OFF
GO
ALTER TABLE [dbo].[Alumnos]  WITH CHECK ADD  CONSTRAINT [FK_Alumnos_Notas] FOREIGN KEY([idNota])
REFERENCES [dbo].[Notas] ([idNota])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Alumnos] CHECK CONSTRAINT [FK_Alumnos_Notas]
GO
