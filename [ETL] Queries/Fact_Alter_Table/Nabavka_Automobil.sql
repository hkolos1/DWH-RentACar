ALTER TABLE dbo.Fact_Nabavka_Automobila ADD CONSTRAINT FK_Fact_Nabavka_Automobila_Dim_Automobil FOREIGN KEY (id_automobila) REFERENCES dbo.Dim_Automobil (id_automobila);

ALTER TABLE dbo.Fact_Nabavka_Automobila ADD CONSTRAINT FK_Fact_Nabavka_Automobila_Dim_Dobavljac FOREIGN KEY (id_dobavljaca) REFERENCES dbo.Dim_Dobavljac (id_dobavljaca);

ALTER TABLE dbo.Fact_Nabavka_Automobila ADD CONSTRAINT FK_Fact_Nabavka_Automobila_Dim_Vrijeme FOREIGN KEY (id_vrijeme) REFERENCES dbo.Dim_Vrijeme (id_vrijeme);

ALTER TABLE dbo.Fact_Nabavka_Automobila ADD CONSTRAINT FK_Fact_Nabavka_Automobila_Dim_Poslovnica FOREIGN KEY (id_poslovnice) REFERENCES dbo.Dim_Poslovnica (id_poslovnice);