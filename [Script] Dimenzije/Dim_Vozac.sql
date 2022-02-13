USE [rent a car]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Dim_Vozac](
	[id_vozaca] [int] NOT NULL,
	[ime] [varchar](50) NOT NULL,
	[prezime] [varchar](50) NOT NULL,
	[datum_rodjenja] [date] NOT NULL,
	[broj_telefona] [int] NOT NULL,
	[broj_vozacke_dozvole] [int] NOT NULL,
 CONSTRAINT [PK_Vozac] PRIMARY KEY CLUSTERED 
(
	[id_vozaca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
