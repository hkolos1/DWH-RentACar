CREATE TABLE dbo.Dim_Ugovor(
id_ugovora int not null,
datum_iznajmljivanja date not null,
datum_vracanja date not null,
osiguranje int not null,
CONSTRAINT PK_Ugovor PRIMARY KEY(id_ugovora)
);
GO