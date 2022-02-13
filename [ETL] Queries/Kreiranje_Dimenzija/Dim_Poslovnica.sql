CREATE TABLE dbo.Dim_Poslovnica(
id_poslovnice int not null,
naziv_poslovnice varchar(50) not null,
postanski_broj int not null,
grad varchar(50) not null,
drzava varchar(50) not null,
broj_telefona int not null,
CONSTRAINT PK_Poslovnica PRIMARY KEY(id_poslovnice)
);
GO