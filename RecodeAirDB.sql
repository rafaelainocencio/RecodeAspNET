USE [RecodeAir]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 20/12/2021 18:15:12 ******/
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
/****** Object:  Table [dbo].[Clientes]    Script Date: 20/12/2021 18:15:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[IdCliente] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [nvarchar](max) NULL,
	[Telefone] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Cpf] [nvarchar](max) NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[IdCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Destinos]    Script Date: 20/12/2021 18:15:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Destinos](
	[IdDestino] [int] IDENTITY(1,1) NOT NULL,
	[NomeDestino] [nvarchar](max) NULL,
	[Descricao] [nvarchar](max) NULL,
	[Preco] [decimal](18, 2) NOT NULL,
	[Imagem] [nvarchar](max) NULL,
 CONSTRAINT [PK_Destinos] PRIMARY KEY CLUSTERED 
(
	[IdDestino] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pedidos]    Script Date: 20/12/2021 18:15:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pedidos](
	[IdPedido] [int] IDENTITY(1,1) NOT NULL,
	[DataViagem] [datetime2](7) NOT NULL,
	[Cliente] [int] NOT NULL,
	[ClienteIdCliente] [int] NULL,
	[Destino] [int] NOT NULL,
	[DestinoIdDestino] [int] NULL,
 CONSTRAINT [PK_Pedidos] PRIMARY KEY CLUSTERED 
(
	[IdPedido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211214180123_Initial Migration', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211214181903_test', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211214183216_testeOutro', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211215211652_update destinoClass', N'5.0.12')
GO
SET IDENTITY_INSERT [dbo].[Destinos] ON 

INSERT [dbo].[Destinos] ([IdDestino], [NomeDestino], [Descricao], [Preco], [Imagem]) VALUES (1, N'Belo Horizonte', N'Belo Horizonte é uma cidade bastante fácil de ser explorada. Com um pouco de organização e um mapinha na mão, você conhecerá os principais pontos turísticos da capital mineira em pouco tempo. A Lagoa da Pampulha, o Circuito Cultura da Praça da Liberdade, o Parque Municipal e o Mirante do Mangabeiras são bons pontos de referência para começar a explorar as principais regiões turísticas da cidade.', CAST(149.00 AS Decimal(18, 2)), N'BH.jpg')
INSERT [dbo].[Destinos] ([IdDestino], [NomeDestino], [Descricao], [Preco], [Imagem]) VALUES (2, N'Salvador', N'Os pontos turísticos de Salvador fazem da capital baiana um dos destinos mais encantadores do nosso país! Praias, construções históricos e gastronomia acima da média costuram o roteiro.', CAST(149.00 AS Decimal(18, 2)), N'Salvador.jpg')
INSERT [dbo].[Destinos] ([IdDestino], [NomeDestino], [Descricao], [Preco], [Imagem]) VALUES (3, N'Rio de Janeiro', N'As melhores praias do Rio de Janeiro atraem visitantes do mundo inteiro. A imensidão do mar carioca é o grande cartão de visita e entra no roteiro de viagem de todos os turistas. O clima quente da região sem dúvida pede um mergulho ao mar.   Na Zona Sul ficam as praias mais procuradas pelos turistas que visitam o Rio de Janeiro: Leblon, Ipanema e Copacabana. São praias que podem ser interessantes para diferentes atividades, desde um mergulho no mar até mesmo para caminhar ou pedalar pela orla aproveitando o som das ondas.', CAST(99.00 AS Decimal(18, 2)), N'RJ.jpg')
INSERT [dbo].[Destinos] ([IdDestino], [NomeDestino], [Descricao], [Preco], [Imagem]) VALUES (4, N'Manaus', N'Manaus não é uma cidade pacata no meio da selva. A metrópole, de 2 milhões de habitantes, já mostra os sintomas de um centro urbano que cresceu muito rapidamente (prepare-se para o trânsito carregado).   O Teatro Amazonas é um dos mais importantes teatros do Brasil e o principal cartão-postal da cidade de Manaus. Localizado no Largo de São Sebastião, no Centro Histórico, foi inaugurado em 1896 para atender ao desejo da elite amazonense da época, que idealizava a cidade à altura dos grandes centros culturais', CAST(259.00 AS Decimal(18, 2)), N'manaus.jpg')
INSERT [dbo].[Destinos] ([IdDestino], [NomeDestino], [Descricao], [Preco], [Imagem]) VALUES (5, N'Florianópolis', N'Florianópolis, capital de Santa Catarina, no Sul do país, está no alto da lista das cidades mais visitadas por estrangeiros no Brasil. A cidade encanta por sua variedade de praias e pela capacidade de agradar todo tipo de público.', CAST(129.00 AS Decimal(18, 2)), N'florianopolis.jpg')
SET IDENTITY_INSERT [dbo].[Destinos] OFF
GO
ALTER TABLE [dbo].[Pedidos] ADD  DEFAULT ((0)) FOR [Cliente]
GO
ALTER TABLE [dbo].[Pedidos] ADD  DEFAULT ((0)) FOR [Destino]
GO
ALTER TABLE [dbo].[Pedidos]  WITH CHECK ADD  CONSTRAINT [FK_Pedidos_Clientes_ClienteIdCliente] FOREIGN KEY([ClienteIdCliente])
REFERENCES [dbo].[Clientes] ([IdCliente])
GO
ALTER TABLE [dbo].[Pedidos] CHECK CONSTRAINT [FK_Pedidos_Clientes_ClienteIdCliente]
GO
ALTER TABLE [dbo].[Pedidos]  WITH CHECK ADD  CONSTRAINT [FK_Pedidos_Destinos_DestinoIdDestino] FOREIGN KEY([DestinoIdDestino])
REFERENCES [dbo].[Destinos] ([IdDestino])
GO
ALTER TABLE [dbo].[Pedidos] CHECK CONSTRAINT [FK_Pedidos_Destinos_DestinoIdDestino]
GO
