USE [rent a car]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Fact_Nabavka_Automobila](
	[id] [int] NOT NULL,
	[id_poslovnice] [int] NOT NULL,
	[id_automobila] [int] NOT NULL,
	[id_vrijeme] [int] NOT NULL,
	[id_dobavljaca] [int] NOT NULL,
 CONSTRAINT [PK_Fact_Nabavka_Automobila] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Fact_Nabavka_Automobila]  WITH CHECK ADD  CONSTRAINT [FK_Fact_Nabavka_Automobila_Dim_Automobil] FOREIGN KEY([id_automobila])
REFERENCES [dbo].[Dim_Automobil] ([id_automobila])
GO

ALTER TABLE [dbo].[Fact_Nabavka_Automobila] CHECK CONSTRAINT [FK_Fact_Nabavka_Automobila_Dim_Automobil]
GO

ALTER TABLE [dbo].[Fact_Nabavka_Automobila]  WITH CHECK ADD  CONSTRAINT [FK_Fact_Nabavka_Automobila_Dim_Dobavljac] FOREIGN KEY([id_dobavljaca])
REFERENCES [dbo].[Dim_Dobavljac] ([id_dobavljaca])
GO

ALTER TABLE [dbo].[Fact_Nabavka_Automobila] CHECK CONSTRAINT [FK_Fact_Nabavka_Automobila_Dim_Dobavljac]
GO

ALTER TABLE [dbo].[Fact_Nabavka_Automobila]  WITH CHECK ADD  CONSTRAINT [FK_Fact_Nabavka_Automobila_Dim_Poslovnica] FOREIGN KEY([id_poslovnice])
REFERENCES [dbo].[Dim_Poslovnica] ([id_poslovnice])
GO

ALTER TABLE [dbo].[Fact_Nabavka_Automobila] CHECK CONSTRAINT [FK_Fact_Nabavka_Automobila_Dim_Poslovnica]
GO

ALTER TABLE [dbo].[Fact_Nabavka_Automobila]  WITH CHECK ADD  CONSTRAINT [FK_Fact_Nabavka_Automobila_Dim_Vrijeme] FOREIGN KEY([id_vrijeme])
REFERENCES [dbo].[Dim_Vrijeme] ([id_vrijeme])
GO

ALTER TABLE [dbo].[Fact_Nabavka_Automobila] CHECK CONSTRAINT [FK_Fact_Nabavka_Automobila_Dim_Vrijeme]
GO


