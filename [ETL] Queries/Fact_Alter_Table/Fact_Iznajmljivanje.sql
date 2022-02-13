ALTER TABLE dbo.Fact_Iznajmljivanje ADD CONSTRAINT FK_Iznajmljivanje_Automobila FOREIGN KEY (id_automobila) REFERENCES dbo.Dim_Automobil (id_automobila);

ALTER TABLE dbo.Fact_Iznajmljivanje ADD CONSTRAINT FK_Iznajmljivanje_Poslovnica FOREIGN KEY (id_poslovnice) REFERENCES dbo.Dim_Poslovnica (id_poslovnice);

ALTER TABLE dbo.Fact_Iznajmljivanje ADD CONSTRAINT FK_Iznajmljivanje_Racun FOREIGN KEY (id_racuna) REFERENCES dbo.Dim_Racun (id_racuna);

ALTER TABLE dbo.Fact_Iznajmljivanje ADD CONSTRAINT FK_Iznajmljivanje_Ugovor FOREIGN KEY (id_ugovora) REFERENCES dbo.Dim_Ugovor (id_ugovora);

ALTER TABLE dbo.Fact_Iznajmljivanje ADD CONSTRAINT FK_Iznajmljivanje_Vozac FOREIGN KEY (id_vozaca) REFERENCES dbo.Dim_Vozac (id_vozaca);


