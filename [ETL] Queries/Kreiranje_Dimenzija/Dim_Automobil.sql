CREATE TABLE dbo.Dim_Automobil(
id_automobila int not null,
kategorija int not null ,
proizvodjac varchar(50) not null,
model varchar(50) not null,
registracija int not null,
gorivo varchar(50) not null,
vrsta_upravljanja int not null,
datum_zadnjeg_servisa date not null,
CONSTRAINT PK_Automobil PRIMARY KEY (id_automobila)
);
GO