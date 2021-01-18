
/****** Object:  Table [dbo].[Servicios]    Script Date: 25/10/2018 10:36:50 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Servicios](
	[ID_Servicio] [int] IDENTITY(1,1) NOT NULL,
	[Descripción] [varchar](max) NOT NULL,
	[Monto] [int] NOT NULL,
 CONSTRAINT [PK_Servicios] PRIMARY KEY CLUSTERED 
(
	[ID_Servicio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Vehiculo]    Script Date: 25/10/2018 10:36:50 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehiculo](
	[ID_Vehiculo] [int] IDENTITY(1,1) NOT NULL,
	[Placa] [varchar](30) NOT NULL,
	[Dueño] [varchar](max) NOT NULL,
	[Marca] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Vehiculo] PRIMARY KEY CLUSTERED 
(
	[ID_Vehiculo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Vehiculo-Servicio]    Script Date: 25/10/2018 10:36:50 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehiculo-Servicio](
	[ID_Vehiculo-Servicio] [int] IDENTITY(1,1) NOT NULL,
	[ID_Servicio] [int] NOT NULL,
	[ID_Vehiculo] [int] NOT NULL,
 CONSTRAINT [PK_Vehiculo-Servicio] PRIMARY KEY CLUSTERED 
(
	[ID_Vehiculo-Servicio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Servicios] ON 

GO
INSERT [dbo].[Servicios] ([ID_Servicio], [Descripción], [Monto]) VALUES (1, N'Lavado Interno', 5000)
GO
INSERT [dbo].[Servicios] ([ID_Servicio], [Descripción], [Monto]) VALUES (2, N'Lavado Normal', 7500)
GO
INSERT [dbo].[Servicios] ([ID_Servicio], [Descripción], [Monto]) VALUES (3, N'Pulido', 4500)
GO
INSERT [dbo].[Servicios] ([ID_Servicio], [Descripción], [Monto]) VALUES (4, N'Encerado', 5000)
GO
INSERT [dbo].[Servicios] ([ID_Servicio], [Descripción], [Monto]) VALUES (5, N'Lavado de Motor', 5000)
GO
INSERT [dbo].[Servicios] ([ID_Servicio], [Descripción], [Monto]) VALUES (6, N'Lavado de Chasis', 5000)
GO
SET IDENTITY_INSERT [dbo].[Servicios] OFF
GO
SET IDENTITY_INSERT [dbo].[Vehiculo] ON 

GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (1, N' ABC 002 ', N' Cairo R. Byers ', N' Subaru ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (2, N' ABC 003 ', N' Libby W. Powell ', N' Nissan ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (3, N' ABC 004 ', N' Tad P. Rodriquez ', N' Hyundai ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (4, N' ABC 005 ', N' Jamal N. Fitzpatrick ', N' Dodge ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (5, N' ABC 006 ', N' Jamal I. Brewer ', N' Honda ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (6, N' ABC 007 ', N' Justin H. Harper ', N' Toyota ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (7, N' ABC 008 ', N' Perry N. Deleon ', N' Subaru ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (8, N' ABC 009 ', N' Sharon J. Myers ', N' Nissan ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (9, N' ABC 010 ', N' Lester G. Potter ', N' Hyundai ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (10, N' ABC 011 ', N' Uma B. Merrill ', N' Dodge ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (11, N' ABC 012 ', N' Daryl H. Morse ', N' Honda ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (12, N' ABC 013 ', N' Otto I. Dalton ', N' Toyota ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (13, N' ABC 014 ', N' Palmer R. Blanchard ', N' Subaru ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (14, N' ABC 015 ', N' Isaiah C. Barrett ', N' Nissan ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (15, N' ABC 016 ', N' Naida R. Miranda ', N' Hyundai ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (16, N' ABC 017 ', N' Kermit Q. Lott ', N' Dodge ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (17, N' ABC 018 ', N' Gwendolyn I. Simmons ', N' Honda ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (18, N' ABC 019 ', N' Shaeleigh Y. Morrison ', N' Toyota ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (19, N' ABC 020 ', N' Mona I. Sandoval ', N' Subaru ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (20, N' ABC 021 ', N' Josiah Z. Powers ', N' Nissan ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (21, N' ABC 022 ', N' Leigh U. Gibbs ', N' Hyundai ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (22, N' ABC 023 ', N' Hamish N. Eaton ', N' Dodge ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (23, N' ABC 024 ', N' Lionel Q. Briggs ', N' Honda ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (24, N' ABC 025 ', N' Lucy J. Acevedo ', N' Toyota ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (25, N' ABC 026 ', N' Forrest A. Oconnor ', N' Subaru ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (26, N' ABC 027 ', N' Aspen U. Hubbard ', N' Nissan ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (27, N' ABC 028 ', N' Ora R. Oliver ', N' Hyundai ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (28, N' ABC 029 ', N' Dominique D. Hewitt ', N' Dodge ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (29, N' ABC 030 ', N' Ignacia P. Mcintosh ', N' Honda ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (30, N' ABC 031 ', N' Ignacia Z. Holder ', N' Toyota ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (31, N' ABC 032 ', N' Ria Z. Hernandez ', N' Subaru ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (32, N' ABC 033 ', N' Hall A. Armstrong ', N' Nissan ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (33, N' ABC 034 ', N' Talon O. Hebert ', N' Hyundai ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (34, N' ABC 035 ', N' Constance V. Strickland ', N' Dodge ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (35, N' ABC 036 ', N' Connor T. Preston ', N' Honda ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (36, N' ABC 037 ', N' Mollie J. Brennan ', N' Toyota ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (37, N' ABC 038 ', N' Matthew I. Hart ', N' Subaru ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (38, N' ABC 039 ', N' Quamar E. Mack ', N' Nissan ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (39, N' ABC 040 ', N' Seth K. Tyler ', N' Hyundai ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (40, N' ABC 041 ', N' Portia D. Hays ', N' Dodge ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (41, N' ABC 042 ', N' Kathleen A. Holcomb ', N' Honda ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (42, N' ABC 043 ', N' Isaac N. Rhodes ', N' Toyota ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (43, N' ABC 044 ', N' Shafira Q. Kemp ', N' Subaru ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (44, N' ABC 045 ', N' Lev H. Gardner ', N' Nissan ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (45, N' ABC 046 ', N' Nigel J. Elliott ', N' Hyundai ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (46, N' ABC 047 ', N' Brett E. Spears ', N' Dodge ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (47, N' ABC 048 ', N' Dana M. Coleman ', N' Honda ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (48, N' ABC 049 ', N' Hashim O. Anthony ', N' Toyota ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (49, N' ABC 050 ', N' Quail P. Allison ', N' Subaru ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (50, N' ABC 051 ', N' Dean S. Miles ', N' Nissan ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (51, N' ABC 052 ', N' Thaddeus U. Fox ', N' Hyundai ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (52, N' ABC 053 ', N' Hakeem I. Ware ', N' Dodge ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (53, N' ABC 054 ', N' Elizabeth U. Ward ', N' Honda ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (54, N' ABC 055 ', N' Yoshio Q. Wyatt ', N' Toyota ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (55, N' ABC 056 ', N' Francis Q. Munoz ', N' Subaru ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (56, N' ABC 057 ', N' Amir S. Hicks ', N' Nissan ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (57, N' ABC 058 ', N' Hu U. Knapp ', N' Hyundai ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (58, N' ABC 059 ', N' Cade U. Acevedo ', N' Dodge ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (59, N' ABC 060 ', N' Sage R. Carney ', N' Honda ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (60, N' ABC 061 ', N' Sacha B. Pena ', N' Toyota ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (61, N' ABC 062 ', N' Guinevere B. Kemp ', N' Subaru ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (62, N' ABC 063 ', N' Ross L. Fitzpatrick ', N' Nissan ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (63, N' ABC 064 ', N' Lacy N. Mccall ', N' Hyundai ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (64, N' ABC 065 ', N' Macey U. Ware ', N' Dodge ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (65, N' ABC 066 ', N' Ivana Q. Schwartz ', N' Honda ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (66, N' ABC 067 ', N' Cassady H. Fletcher ', N' Toyota ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (67, N' ABC 068 ', N' Neil M. Keller ', N' Subaru ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (68, N' ABC 069 ', N' Zelenia H. Daniel ', N' Nissan ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (69, N' ABC 070 ', N' Myra K. Stark ', N' Hyundai ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (70, N' ABC 071 ', N' Kerry S. Mullins ', N' Dodge ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (71, N' ABC 072 ', N' Jorden P. Rodriquez ', N' Honda ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (72, N' ABC 073 ', N' Callum J. Dennis ', N' Toyota ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (73, N' ABC 074 ', N' Vance S. Jefferson ', N' Subaru ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (74, N' ABC 075 ', N' Brianna N. Gentry ', N' Nissan ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (75, N' ABC 076 ', N' Tanya U. Camacho ', N' Hyundai ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (76, N' ABC 077 ', N' Yasir I. Wiggins ', N' Dodge ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (77, N' ABC 078 ', N' Oprah M. Preston ', N' Honda ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (78, N' ABC 079 ', N' Neve K. Mcdaniel ', N' Toyota ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (79, N' ABC 080 ', N' Francis V. Hawkins ', N' Subaru ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (80, N' ABC 081 ', N' Hall W. Schroeder ', N' Nissan ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (81, N' ABC 082 ', N' Basil P. Juarez ', N' Hyundai ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (82, N' ABC 083 ', N' Kennan U. Glover ', N' Dodge ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (83, N' ABC 084 ', N' Arthur Y. Blackburn ', N' Honda ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (84, N' ABC 085 ', N' Patience K. Porter ', N' Toyota ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (85, N' ABC 086 ', N' Rudyard G. Rosa ', N' Subaru ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (86, N' ABC 087 ', N' Nelle P. Mullen ', N' Nissan ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (87, N' ABC 088 ', N' Brooke F. Case ', N' Hyundai ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (88, N' ABC 089 ', N' Wang F. Hobbs ', N' Dodge ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (89, N' ABC 090 ', N' Megan X. Mendez ', N' Honda ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (90, N' ABC 091 ', N' Forrest O. Buck ', N' Toyota ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (91, N' ABC 092 ', N' Tanek E. Vang ', N' Subaru ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (92, N' ABC 093 ', N' Fuller N. Rivers ', N' Nissan ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (93, N' ABC 094 ', N' Shelley M. Hurst ', N' Hyundai ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (94, N' ABC 095 ', N' Jaden A. Petersen ', N' Dodge ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (95, N' ABC 096 ', N' Donna Q. Britt ', N' Honda ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (96, N' ABC 097 ', N' Alexandra O. Estrada ', N' Toyota ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (97, N' ABC 098 ', N' Drew H. Mitchell ', N' Subaru ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (98, N' ABC 099 ', N' Alisa Z. Sutton ', N' Nissan ')
GO
INSERT [dbo].[Vehiculo] ([ID_Vehiculo], [Placa], [Dueño], [Marca]) VALUES (99, N' ABC 100 ', N' Colby W. Powers ', N' Hyundai ')
GO
SET IDENTITY_INSERT [dbo].[Vehiculo] OFF
GO
SET IDENTITY_INSERT [dbo].[Vehiculo-Servicio] ON 

GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (1, 1, 1)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (2, 2, 2)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (3, 3, 3)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (4, 4, 4)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (5, 5, 5)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (6, 6, 6)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (7, 1, 7)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (8, 2, 8)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (9, 3, 9)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (10, 4, 10)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (11, 5, 11)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (12, 6, 12)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (13, 1, 13)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (14, 2, 14)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (15, 3, 15)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (16, 4, 16)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (17, 5, 17)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (18, 6, 18)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (19, 1, 19)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (20, 2, 20)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (21, 3, 21)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (22, 4, 22)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (23, 5, 23)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (24, 6, 24)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (25, 1, 25)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (26, 2, 26)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (27, 3, 27)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (28, 4, 28)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (29, 5, 29)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (30, 6, 30)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (31, 1, 31)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (32, 2, 32)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (33, 3, 33)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (34, 4, 34)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (35, 5, 35)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (36, 6, 36)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (37, 1, 37)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (38, 2, 38)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (39, 3, 39)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (40, 4, 40)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (41, 5, 41)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (42, 6, 42)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (43, 1, 43)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (44, 2, 44)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (45, 3, 45)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (46, 4, 46)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (47, 5, 47)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (48, 6, 48)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (49, 1, 49)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (50, 2, 50)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (51, 3, 51)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (52, 4, 52)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (53, 5, 53)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (54, 6, 54)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (55, 1, 55)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (56, 2, 56)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (57, 3, 57)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (58, 4, 58)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (59, 5, 59)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (60, 6, 60)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (61, 1, 61)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (62, 2, 62)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (63, 3, 63)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (64, 4, 64)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (65, 5, 65)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (66, 6, 66)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (67, 1, 67)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (68, 2, 68)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (69, 3, 69)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (70, 4, 70)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (71, 5, 71)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (72, 6, 72)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (73, 1, 73)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (74, 2, 74)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (75, 3, 75)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (76, 4, 76)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (77, 5, 77)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (78, 6, 78)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (79, 1, 79)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (80, 2, 80)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (81, 3, 81)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (82, 4, 82)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (83, 5, 83)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (84, 6, 84)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (85, 1, 85)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (86, 2, 86)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (87, 3, 87)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (88, 4, 88)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (89, 5, 89)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (90, 6, 90)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (91, 1, 91)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (92, 2, 92)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (93, 3, 93)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (94, 4, 94)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (95, 5, 95)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (96, 6, 96)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (97, 1, 97)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (98, 2, 98)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (99, 3, 99)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (100, 4, 99)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (101, 5, 98)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (102, 6, 97)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (103, 1, 96)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (104, 2, 95)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (105, 3, 94)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (106, 4, 93)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (107, 5, 92)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (108, 6, 91)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (109, 1, 90)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (110, 2, 89)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (111, 3, 88)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (112, 4, 87)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (113, 5, 86)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (114, 6, 85)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (115, 1, 84)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (116, 2, 83)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (117, 3, 82)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (118, 4, 81)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (119, 5, 80)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (120, 6, 79)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (121, 1, 78)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (122, 2, 77)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (123, 3, 76)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (124, 4, 75)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (125, 5, 74)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (126, 6, 73)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (127, 1, 72)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (128, 2, 71)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (129, 3, 70)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (130, 4, 69)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (131, 5, 68)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (132, 6, 67)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (133, 1, 66)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (134, 2, 65)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (135, 3, 64)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (136, 4, 63)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (137, 5, 62)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (138, 6, 61)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (139, 1, 60)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (140, 2, 59)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (141, 3, 58)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (142, 4, 57)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (143, 5, 56)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (144, 6, 55)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (145, 1, 54)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (146, 2, 53)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (147, 3, 52)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (148, 4, 51)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (149, 5, 50)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (150, 6, 49)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (151, 1, 48)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (152, 2, 47)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (153, 3, 46)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (154, 4, 45)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (155, 5, 44)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (156, 6, 43)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (157, 1, 42)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (158, 2, 41)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (159, 3, 40)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (160, 4, 39)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (161, 5, 38)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (162, 6, 37)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (163, 1, 36)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (164, 2, 35)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (165, 3, 34)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (166, 4, 33)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (167, 5, 32)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (168, 6, 31)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (169, 1, 30)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (170, 2, 29)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (171, 3, 28)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (172, 4, 27)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (173, 5, 26)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (174, 6, 25)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (175, 1, 24)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (176, 2, 23)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (177, 3, 22)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (178, 4, 21)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (179, 5, 20)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (180, 6, 19)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (181, 1, 18)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (182, 2, 17)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (183, 3, 16)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (184, 4, 15)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (185, 5, 14)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (186, 6, 13)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (187, 1, 12)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (188, 2, 11)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (189, 3, 10)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (190, 4, 9)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (191, 5, 8)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (192, 6, 7)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (193, 1, 6)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (194, 2, 5)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (195, 3, 4)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (196, 4, 3)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (197, 5, 2)
GO
INSERT [dbo].[Vehiculo-Servicio] ([ID_Vehiculo-Servicio], [ID_Servicio], [ID_Vehiculo]) VALUES (198, 6, 1)
GO
SET IDENTITY_INSERT [dbo].[Vehiculo-Servicio] OFF
GO
ALTER TABLE [dbo].[Vehiculo-Servicio]  WITH CHECK ADD  CONSTRAINT [FK_Servicio] FOREIGN KEY([ID_Servicio])
REFERENCES [dbo].[Servicios] ([ID_Servicio])
GO
ALTER TABLE [dbo].[Vehiculo-Servicio] CHECK CONSTRAINT [FK_Servicio]
GO
ALTER TABLE [dbo].[Vehiculo-Servicio]  WITH CHECK ADD  CONSTRAINT [FK_Vehiculo] FOREIGN KEY([ID_Vehiculo])
REFERENCES [dbo].[Vehiculo] ([ID_Vehiculo])
GO
ALTER TABLE [dbo].[Vehiculo-Servicio] CHECK CONSTRAINT [FK_Vehiculo]
GO