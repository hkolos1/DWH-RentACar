CREATE TABLE dbo.Dim_Lokacija(
id_lokacija int not null,
grad varchar(50) not null,
adresa varchar(50) not null,
CONSTRAINT PK_Lokacija PRIMARY KEY(id_lokacija)
);
GO
