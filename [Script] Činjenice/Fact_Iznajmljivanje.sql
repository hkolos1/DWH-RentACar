USE [rent a car]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Fact_Iznajmljivanje](
	[id_iznajmljivanja] [int] NOT NULL,
	[id_automobila] [int] NOT NULL,
	[id_vozaca] [int] NOT NULL,
	[id_racuna] [int] NOT NULL,
	[id_ugovora] [int] NOT NULL,
	[id_poslovnice] [int] NOT NULL,
	[lokacija_preuzimanja] [varchar](50) NOT NULL,
	[lokacija_vracanja] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Iznajmljivanje] PRIMARY KEY CLUSTERED 
(
	[id_iznajmljivanja] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Fact_Iznajmljivanje]  WITH CHECK ADD  CONSTRAINT [FK_Iznajmljivanje_Automobil] FOREIGN KEY([id_automobila])
REFERENCES [dbo].[Dim_Automobil] ([id_automobila])
GO

ALTER TABLE [dbo].[Fact_Iznajmljivanje] CHECK CONSTRAINT [FK_Iznajmljivanje_Automobil]
GO

ALTER TABLE [dbo].[Fact_Iznajmljivanje]  WITH CHECK ADD  CONSTRAINT [FK_Iznajmljivanje_Poslovnica] FOREIGN KEY([id_poslovnice])
REFERENCES [dbo].[Dim_Poslovnica] ([id_poslovnice])
GO

ALTER TABLE [dbo].[Fact_Iznajmljivanje] CHECK CONSTRAINT [FK_Iznajmljivanje_Poslovnica]
GO

ALTER TABLE [dbo].[Fact_Iznajmljivanje]  WITH CHECK ADD  CONSTRAINT [FK_Iznajmljivanje_Racun] FOREIGN KEY([id_racuna])
REFERENCES [dbo].[Dim_Racun] ([id_racuna])
GO

ALTER TABLE [dbo].[Fact_Iznajmljivanje] CHECK CONSTRAINT [FK_Iznajmljivanje_Racun]
GO

ALTER TABLE [dbo].[Fact_Iznajmljivanje]  WITH CHECK ADD  CONSTRAINT [FK_Iznajmljivanje_Ugovor] FOREIGN KEY([id_ugovora])
REFERENCES [dbo].[Dim_Ugovor] ([id_ugovora])
GO

ALTER TABLE [dbo].[Fact_Iznajmljivanje] CHECK CONSTRAINT [FK_Iznajmljivanje_Ugovor]
GO

ALTER TABLE [dbo].[Fact_Iznajmljivanje]  WITH CHECK ADD  CONSTRAINT [FK_Iznajmljivanje_Vozac] FOREIGN KEY([id_vozaca])
REFERENCES [dbo].[Dim_Vozac] ([id_vozaca])
GO

ALTER TABLE [dbo].[Fact_Iznajmljivanje] CHECK CONSTRAINT [FK_Iznajmljivanje_Vozac]
GO