USE [rent a car]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Dim_Automobil](
	[id_automobila] [int] NOT NULL,
	[kategorija] [varchar](50) NOT NULL,
	[proizvodjac] [varchar](50) NOT NULL,
	[model] [varchar](50) NOT NULL,
	[registracija] [varchar](50) NOT NULL,
	[gorivo] [varchar](50) NOT NULL,
	[vrsta_upravljanja] [varchar](50) NOT NULL,
	[datum_zadnjeg_servisa] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_automobila] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
