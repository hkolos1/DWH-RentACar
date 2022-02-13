CREATE TABLE dbo.Dim_Vrijeme(
id_vrijeme int not null,
datum date not null,
godina int not null,
mjesec int not null,
dan int not null,
sat int not null,
CONSTRAINT PK_Vrijeme PRIMARY KEY(id_vrijeme)
);
GO