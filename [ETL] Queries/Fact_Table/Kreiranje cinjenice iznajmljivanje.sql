CREATE TABLE dbo.Fact_Iznajmljivanje(
id_iznajmljivanja int not null,
id_automobila int not null,
id_vozaca int not null,
id_racuna int not null,
id_ugovora int not null,
id_poslovnice int not null,
lokacija_preuzimanja varchar(50) not null,
lokacija_vracanja varchar(50) not null,
CONSTRAINT PK_Iznajmljivanje PRIMARY KEY (id_iznajmljivanja)
);
GO
