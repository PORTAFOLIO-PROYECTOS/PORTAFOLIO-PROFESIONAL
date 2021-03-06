CREATE DATABASE portafolio;
GO
USE [portafolio]
GO
/****** Object:  Table [dbo].[Experiencia]    Script Date: 18/08/2015 6:50:11 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Experiencia](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Usuario_id] [int] NOT NULL,
	[Tipo] [tinyint] NOT NULL CONSTRAINT [DF_Experiencia_Tipo]  DEFAULT ((1)),
	[Nombre] [varchar](100) NOT NULL,
	[Titulo] [varchar](50) NOT NULL,
	[Desde] [varchar](10) NOT NULL,
	[Hasta] [varchar](10) NOT NULL,
	[Descripcion] [text] NULL,
 CONSTRAINT [PK_Experiencia] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Habilidad]    Script Date: 18/08/2015 6:50:11 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Habilidad](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Usuario_id] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Dominio] [int] NOT NULL CONSTRAINT [DF_Habilidad_Dominio]  DEFAULT ((0)),
 CONSTRAINT [PK_Habilidad] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TablaDato]    Script Date: 18/08/2015 6:50:11 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TablaDato](
	[Relacion] [varchar](20) NOT NULL,
	[Valor] [varchar](20) NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
	[Orden] [int] NOT NULL CONSTRAINT [DF_TablaDato_Orden]  DEFAULT ((1)),
 CONSTRAINT [PK_TablaDato] PRIMARY KEY CLUSTERED 
(
	[Relacion] ASC,
	[Valor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Testimonio]    Script Date: 18/08/2015 6:50:11 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Testimonio](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Usuario_id] [int] NOT NULL,
	[IP] [varchar](50) NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[Comentario] [text] NOT NULL,
	[Fecha] [varchar](10) NOT NULL,
 CONSTRAINT [PK_Testimonio] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 18/08/2015 6:50:11 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuario](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellido] [varchar](100) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[Password] [varchar](32) NOT NULL,
	[Direccion] [text] NULL,
	[Ciudad] [varchar](50) NULL,
	[Pais_id] [int] NULL,
	[Telefono] [varchar](50) NULL,
	[Facebook] [varchar](100) NULL,
	[Twitter] [varchar](100) NULL,
	[YouTube] [varchar](100) NULL,
	[Foto] [varchar](50) NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Experiencia] ON 

INSERT [dbo].[Experiencia] ([id], [Usuario_id], [Tipo], [Nombre], [Titulo], [Desde], [Hasta], [Descripcion]) VALUES (5, 3, 1, N'Microsoft', N'Analista Programador .NET y PHP', N'2014-02-11', N'2015-08-29', N'Analista programador a medida')
INSERT [dbo].[Experiencia] ([id], [Usuario_id], [Tipo], [Nombre], [Titulo], [Desde], [Hasta], [Descripcion]) VALUES (6, 3, 2, N'Ingles', N'Open English', N'2015-02-11', N'2015-04-11', N'Ingles básico con el pelado.')
INSERT [dbo].[Experiencia] ([id], [Usuario_id], [Tipo], [Nombre], [Titulo], [Desde], [Hasta], [Descripcion]) VALUES (9, 3, 1, N'Anexsoft', N'Analista Programador .NET', N'2015-02-11', N'2015-08-01', N'Desarrollo de sw a medida.')
INSERT [dbo].[Experiencia] ([id], [Usuario_id], [Tipo], [Nombre], [Titulo], [Desde], [Hasta], [Descripcion]) VALUES (10, 3, 2, N'ASP.NET MVC', N'Tecnico con conocimientos en ASP.NET MVC', N'2015-08-01', N'2015-08-01', NULL)
INSERT [dbo].[Experiencia] ([id], [Usuario_id], [Tipo], [Nombre], [Titulo], [Desde], [Hasta], [Descripcion]) VALUES (1002, 5, 1, N'Traba jo 1', N'Titulo 1', N'2015-08-01', N'2015-08-02', N'Descripcion')
SET IDENTITY_INSERT [dbo].[Experiencia] OFF
SET IDENTITY_INSERT [dbo].[Habilidad] ON 

INSERT [dbo].[Habilidad] ([id], [Usuario_id], [Nombre], [Dominio]) VALUES (1, 3, N'ASP.NET MVC', 94)
INSERT [dbo].[Habilidad] ([id], [Usuario_id], [Nombre], [Dominio]) VALUES (2, 3, N'jQuery', 100)
SET IDENTITY_INSERT [dbo].[Habilidad] OFF
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'1', N'Afganistán', 1)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'10', N'Antillas Holandesas', 10)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'100', N'Haití', 100)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'101', N'Islas Heard y McDonald', 101)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'102', N'Honduras', 102)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'103', N'Hong Kong', 103)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'104', N'Hungría', 104)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'105', N'India', 105)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'106', N'Indonesia', 106)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'107', N'Irán', 107)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'108', N'Iraq', 108)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'109', N'Irlanda', 109)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'11', N'Arabia Saudí', 11)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'110', N'Islandia', 110)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'111', N'Israel', 111)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'112', N'Italia', 112)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'113', N'Jamaica', 113)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'114', N'Japón', 114)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'115', N'Jordania', 115)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'116', N'Kazajstán', 116)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'117', N'Kenia', 117)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'118', N'Kirguistán', 118)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'119', N'Kiribati', 119)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'12', N'Argelia', 12)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'120', N'Kuwait', 120)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'121', N'Laos', 121)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'122', N'Lesotho', 122)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'123', N'Letonia', 123)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'124', N'Líbano', 124)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'125', N'Liberia', 125)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'126', N'Libia', 126)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'127', N'Liechtenstein', 127)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'128', N'Lituania', 128)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'129', N'Luxemburgo', 129)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'13', N'Argentina', 13)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'130', N'Macao', 130)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'131', N'ARY Macedonia', 131)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'132', N'Madagascar', 132)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'133', N'Malasia', 133)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'134', N'Malawi', 134)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'135', N'Maldivas', 135)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'136', N'Malí', 136)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'137', N'Malta', 137)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'138', N'Islas Malvinas', 138)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'139', N'Islas Marianas del Norte', 139)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'14', N'Armenia', 14)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'140', N'Marruecos', 140)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'141', N'Islas Marshall', 141)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'142', N'Martinica', 142)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'143', N'Mauricio', 143)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'144', N'Mauritania', 144)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'145', N'Mayotte', 145)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'146', N'México', 146)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'147', N'Micronesia', 147)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'148', N'Moldavia', 148)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'149', N'Mónaco', 149)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'15', N'Aruba', 15)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'150', N'Mongolia', 150)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'151', N'Montserrat', 151)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'152', N'Mozambique', 152)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'153', N'Myanmar', 153)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'154', N'Namibia', 154)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'155', N'Nauru', 155)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'156', N'Nepal', 156)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'157', N'Nicaragua', 157)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'158', N'Níger', 158)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'159', N'Nigeria', 159)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'16', N'Australia', 16)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'160', N'Niue', 160)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'161', N'Isla Norfolk', 161)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'162', N'Noruega', 162)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'163', N'Nueva Caledonia', 163)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'164', N'Nueva Zelanda', 164)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'165', N'Omán', 165)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'166', N'Países Bajos', 166)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'167', N'Pakistán', 167)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'168', N'Palau', 168)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'169', N'Palestina', 169)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'17', N'Austria', 17)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'170', N'Panamá', 170)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'171', N'Papúa Nueva Guinea', 171)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'172', N'Paraguay', 172)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'173', N'Perú', 173)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'174', N'Islas Pitcairn', 174)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'175', N'Polinesia Francesa', 175)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'176', N'Polonia', 176)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'177', N'Portugal', 177)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'178', N'Puerto Rico', 178)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'179', N'Qatar', 179)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'18', N'Azerbaiyán', 18)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'180', N'Reino Unido', 180)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'181', N'Reunión', 181)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'182', N'Ruanda', 182)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'183', N'Rumania', 183)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'184', N'Rusia', 184)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'185', N'Sahara Occidental', 185)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'186', N'Islas Salomón', 186)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'187', N'Samoa', 187)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'188', N'Samoa Americana', 188)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'189', N'San Cristóbal y Nevis', 189)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'19', N'Bahamas', 19)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'190', N'San Marino', 190)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'191', N'San Pedro y Miquelón', 191)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'192', N'San Vicente y las Granadinas', 192)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'193', N'Santa Helena', 193)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'194', N'Santa Lucía', 194)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'195', N'Santo Tomé y Príncipe', 195)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'196', N'Senegal', 196)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'197', N'Serbia y Montenegro', 197)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'198', N'Seychelles', 198)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'199', N'Sierra Leona', 199)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'2', N'Islas Gland', 2)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'20', N'Bahréin', 20)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'200', N'Singapur', 200)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'201', N'Siria', 201)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'202', N'Somalia', 202)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'203', N'Sri Lanka', 203)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'204', N'Suazilandia', 204)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'205', N'Sudáfrica', 205)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'206', N'Sudán', 206)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'207', N'Suecia', 207)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'208', N'Suiza', 208)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'209', N'Surinam', 209)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'21', N'Bangladesh', 21)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'210', N'Svalbard y Jan Mayen', 210)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'211', N'Tailandia', 211)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'212', N'Taiwán', 212)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'213', N'Tanzania', 213)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'214', N'Tayikistán', 214)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'215', N'Territorio Británico del Océano Índico', 215)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'216', N'Territorios Australes Franceses', 216)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'217', N'Timor Oriental', 217)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'218', N'Togo', 218)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'219', N'Tokelau', 219)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'22', N'Barbados', 22)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'220', N'Tonga', 220)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'221', N'Trinidad y Tobago', 221)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'222', N'Túnez', 222)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'223', N'Islas Turcas y Caicos', 223)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'224', N'Turkmenistán', 224)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'225', N'Turquía', 225)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'226', N'Tuvalu', 226)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'227', N'Ucrania', 227)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'228', N'Uganda', 228)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'229', N'Uruguay', 229)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'23', N'Bielorrusia', 23)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'230', N'Uzbekistán', 230)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'231', N'Vanuatu', 231)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'232', N'Venezuela', 232)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'233', N'Vietnam', 233)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'234', N'Islas Vírgenes Británicas', 234)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'235', N'Islas Vírgenes de los Estados Unidos', 235)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'236', N'Wallis y Futuna', 236)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'237', N'Yemen', 237)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'238', N'Yibuti', 238)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'239', N'Zambia', 239)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'24', N'Bélgica', 24)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'240', N'Zimbabue', 240)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'25', N'Belice', 25)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'26', N'Benin', 26)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'27', N'Bermudas', 27)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'28', N'Bhután', 28)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'29', N'Bolivia', 29)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'3', N'Albania', 3)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'30', N'Bosnia y Herzegovina', 30)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'31', N'Botsuana', 31)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'32', N'Isla Bouvet', 32)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'33', N'Brasil', 33)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'34', N'Brunéi', 34)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'35', N'Bulgaria', 35)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'36', N'Burkina Faso', 36)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'37', N'Burundi', 37)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'38', N'Cabo Verde', 38)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'39', N'Islas Caimán', 39)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'4', N'Alemania', 4)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'40', N'Camboya', 40)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'41', N'Camerún', 41)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'42', N'Canadá', 42)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'43', N'República Centroafricana', 43)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'44', N'Chad', 44)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'45', N'República Checa', 45)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'46', N'Chile', 46)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'47', N'China', 47)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'48', N'Chipre', 48)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'49', N'Isla de Navidad', 49)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'5', N'Andorra', 5)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'50', N'Ciudad del Vaticano', 50)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'51', N'Islas Cocos', 51)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'52', N'Colombia', 52)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'53', N'Comoras', 53)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'54', N'República Democrática del Congo', 54)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'55', N'Congo', 55)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'56', N'Islas Cook', 56)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'57', N'Corea del Norte', 57)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'58', N'Corea del Sur', 58)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'59', N'Costa de Marfil', 59)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'6', N'Angola', 6)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'60', N'Costa Rica', 60)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'61', N'Croacia', 61)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'62', N'Cuba', 62)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'63', N'Dinamarca', 63)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'64', N'Dominica', 64)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'65', N'República Dominicana', 65)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'66', N'Ecuador', 66)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'67', N'Egipto', 67)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'68', N'El Salvador', 68)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'69', N'Emiratos Árabes Unidos', 69)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'7', N'Anguilla', 7)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'70', N'Eritrea', 70)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'71', N'Eslovaquia', 71)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'72', N'Eslovenia', 72)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'73', N'España', 73)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'74', N'Islas ultramarinas de Estados Unidos', 74)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'75', N'Estados Unidos', 75)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'76', N'Estonia', 76)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'77', N'Etiopía', 77)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'78', N'Islas Feroe', 78)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'79', N'Filipinas', 79)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'8', N'Antártida', 8)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'80', N'Finlandia', 80)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'81', N'Fiyi', 81)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'82', N'Francia', 82)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'83', N'Gabón', 83)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'84', N'Gambia', 84)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'85', N'Georgia', 85)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'86', N'Islas Georgias del Sur y Sandwich del Sur', 86)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'87', N'Ghana', 87)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'88', N'Gibraltar', 88)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'89', N'Granada', 89)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'9', N'Antigua y Barbuda', 9)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'90', N'Grecia', 90)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'91', N'Groenlandia', 91)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'92', N'Guadalupe', 92)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'93', N'Guam', 93)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'94', N'Guatemala', 94)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'95', N'Guayana Francesa', 95)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'96', N'Guinea', 96)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'97', N'Guinea Ecuatorial', 97)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'98', N'Guinea-Bissau', 98)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'99', N'Guyana', 99)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'tema', N'anexsoft', N'Anexsoft', 1)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'testimonioestado', N'1', N'Pendiente', 1)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'testimonioestado', N'2', N'Aprobado', 2)
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'testimonioestado', N'3', N'Rechazado', 3)
SET IDENTITY_INSERT [dbo].[Testimonio] ON 

INSERT [dbo].[Testimonio] ([id], [Usuario_id], [IP], [Nombre], [Comentario], [Fecha]) VALUES (1, 3, N'190.192.1.15', N'Pedro', N'Excelente tu curso que estas brindando !!', N'2015-08-14')
INSERT [dbo].[Testimonio] ([id], [Usuario_id], [IP], [Nombre], [Comentario], [Fecha]) VALUES (2, 3, N'190.157.4.78', N'Miguel', N'Muy bueno el curso que nos brindas !!', N'2015-08-15')
INSERT [dbo].[Testimonio] ([id], [Usuario_id], [IP], [Nombre], [Comentario], [Fecha]) VALUES (3, 3, N'::1', N'Carlos', N'Excelente profesional, ha demostrado gran desempeño en la empresa COFISOFT.', N'2015-08-18')
INSERT [dbo].[Testimonio] ([id], [Usuario_id], [IP], [Nombre], [Comentario], [Fecha]) VALUES (4, 3, N'::1', N'Eduardo', N'Excelente profesional !!', N'2015-08-18')
SET IDENTITY_INSERT [dbo].[Testimonio] OFF
SET IDENTITY_INSERT [dbo].[Usuario] ON 

INSERT [dbo].[Usuario] ([id], [Nombre], [Apellido], [Email], [Password], [Direccion], [Ciudad], [Pais_id], [Telefono], [Facebook], [Twitter], [YouTube], [Foto]) VALUES (3, N'Eduardo', N'Rodriguez Patiño', N'hitogoroshi@outlook.com', N'e10adc3949ba59abbe56e057f20f883e', N'Av los informáticos 105', N'Lima', 173, N'999999999999', N'https://www.facebook.com/Anexsoft?ref=ts&fref=ts', N'http://twitter.com', N'https://www.youtube.com/c/AnexsoftVideos?sub_confirmation=1', N'yo.jpg')
INSERT [dbo].[Usuario] ([id], [Nombre], [Apellido], [Email], [Password], [Direccion], [Ciudad], [Pais_id], [Telefono], [Facebook], [Twitter], [YouTube], [Foto]) VALUES (5, N'Miguel', N'Gustamante', N'egustamante@hotmail.com', N'e10adc3949ba59abbe56e057f20f883e', N'Av Picairn 2015 - Ipcairn', N'Pitcaim', 174, N'123123123', NULL, NULL, NULL, N'20150818064259.jpg')
SET IDENTITY_INSERT [dbo].[Usuario] OFF
ALTER TABLE [dbo].[Experiencia]  WITH CHECK ADD  CONSTRAINT [FK_Experiencia_Usuario] FOREIGN KEY([Usuario_id])
REFERENCES [dbo].[Usuario] ([id])
GO
ALTER TABLE [dbo].[Experiencia] CHECK CONSTRAINT [FK_Experiencia_Usuario]
GO
ALTER TABLE [dbo].[Habilidad]  WITH CHECK ADD  CONSTRAINT [FK_Habilidad_Usuario] FOREIGN KEY([Usuario_id])
REFERENCES [dbo].[Usuario] ([id])
GO
ALTER TABLE [dbo].[Habilidad] CHECK CONSTRAINT [FK_Habilidad_Usuario]
GO
ALTER TABLE [dbo].[Testimonio]  WITH CHECK ADD  CONSTRAINT [FK_Testimonio_Usuario] FOREIGN KEY([Usuario_id])
REFERENCES [dbo].[Usuario] ([id])
GO
ALTER TABLE [dbo].[Testimonio] CHECK CONSTRAINT [FK_Testimonio_Usuario]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1 Trabajo 2 Estudios' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Experiencia', @level2type=N'COLUMN',@level2name=N'Tipo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Hasta el 10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Habilidad', @level2type=N'COLUMN',@level2name=N'Dominio'
GO
