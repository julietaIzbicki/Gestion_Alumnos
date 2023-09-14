USE [GestionAlumnos]
GO
/****** Object:  Table [dbo].[Alumnos]    Script Date: 14/9/2023 13:43:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alumnos](
	[Nombre] [varchar](max) NOT NULL,
	[Apellido] [varchar](max) NOT NULL,
	[Legajo] [varchar](max) NOT NULL,
	[Curso] [varchar](50) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Alumnos] ([Nombre], [Apellido], [Legajo], [Curso]) VALUES (N'Maia', N'Kup', N's048', N'4IC')
INSERT [dbo].[Alumnos] ([Nombre], [Apellido], [Legajo], [Curso]) VALUES (N'Juli', N'Izbi', N'p455', N'4IC')
GO
