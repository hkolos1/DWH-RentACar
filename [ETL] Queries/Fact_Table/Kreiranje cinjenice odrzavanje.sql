CREATE TABLE dbo.Fact_Odrzavanje(
id int not null,
id_automobila int not null,
id_lokacija int not null,
id_vrijeme int not null,
iznos real not null,
id_odrzavanja int not null,
CONSTRAINT PK_Fact_Odrzavanje PRIMARY KEY (id)
);
GO