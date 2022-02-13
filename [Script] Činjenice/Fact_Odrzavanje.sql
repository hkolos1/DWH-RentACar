USE [rent a car]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Fact_Odrzavanje](
	[id] [int] NOT NULL,
	[id_automobila] [int] NOT NULL,
	[id_lokacija] [int] NOT NULL,
	[id_vrijeme] [int] NOT NULL,
	[iznos] [real] NOT NULL,
	[id_odrzavanja] [int] NOT NULL,
 CONSTRAINT [PK_Fact_Odrzavanje] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Fact_Odrzavanje]  WITH CHECK ADD  CONSTRAINT [FK_Fact_Odrzavanje_Dim_Automobil] FOREIGN KEY([id_automobila])
REFERENCES [dbo].[Dim_Automobil] ([id_automobila])
GO

ALTER TABLE [dbo].[Fact_Odrzavanje] CHECK CONSTRAINT [FK_Fact_Odrzavanje_Dim_Automobil]
GO

ALTER TABLE [dbo].[Fact_Odrzavanje]  WITH CHECK ADD  CONSTRAINT [FK_Fact_Odrzavanje_Dim_Lokacija] FOREIGN KEY([id_lokacija])
REFERENCES [dbo].[Dim_Lokacija] ([id_lokacija])
GO

ALTER TABLE [dbo].[Fact_Odrzavanje] CHECK CONSTRAINT [FK_Fact_Odrzavanje_Dim_Lokacija]
GO

ALTER TABLE [dbo].[Fact_Odrzavanje]  WITH CHECK ADD  CONSTRAINT [FK_Fact_Odrzavanje_Dim_Odrzavanje] FOREIGN KEY([id_odrzavanja])
REFERENCES [dbo].[Dim_Odrzavanje] ([id_odrzavanja])
GO

ALTER TABLE [dbo].[Fact_Odrzavanje] CHECK CONSTRAINT [FK_Fact_Odrzavanje_Dim_Odrzavanje]
GO

ALTER TABLE [dbo].[Fact_Odrzavanje]  WITH CHECK ADD  CONSTRAINT [FK_Fact_Odrzavanje_Dim_Vrijeme] FOREIGN KEY([id_vrijeme])
REFERENCES [dbo].[Dim_Vrijeme] ([id_vrijeme])
GO

ALTER TABLE [dbo].[Fact_Odrzavanje] CHECK CONSTRAINT [FK_Fact_Odrzavanje_Dim_Vrijeme]
GO


