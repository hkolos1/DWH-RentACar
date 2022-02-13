ALTER TABLE dbo.Fact_Odrzavanje ADD CONSTRAINT FK_Fact_Odrzavanje_Dim_Automobil FOREIGN KEY (id_automobila) REFERENCES dbo.Dim_Automobil (id_automobila);

ALTER TABLE dbo.Fact_Odrzavanje ADD CONSTRAINT FK_Fact_Odrzavanje_Dim_Lokacija FOREIGN KEY (id_lokacija) REFERENCES dbo.Dim_Lokacija (id_lokacija);

ALTER TABLE dbo.Fact_Odrzavanje ADD CONSTRAINT FK_Fact_Odrzavanje_Dim_Vrijeme FOREIGN KEY (id_vrijeme) REFERENCES dbo.Dim_Vrijeme (id_vrijeme);

ALTER TABLE dbo.Fact_Odrzavanje ADD CONSTRAINT FK_Fact_Odrzavanje_Dim_Odrzavanje FOREIGN KEY (id_odrzavanja) REFERENCES dbo.Dim_Odrzavanje(id_odrzavanja);