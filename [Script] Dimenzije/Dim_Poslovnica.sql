USE [rent a car]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Dim_Poslovnica](
	[id_poslovnice] [int] NOT NULL,
	[naziv_poslovnice] [varchar](50) NOT NULL,
	[postanski_broj] [int] NOT NULL,
	[grad] [varchar](50) NOT NULL,
	[drzava] [varchar](50) NOT NULL,
	[broj_telefona] [int] NOT NULL,
 CONSTRAINT [PK_Poslovnica] PRIMARY KEY CLUSTERED 
(
	[id_poslovnice] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

