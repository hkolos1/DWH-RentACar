CREATE TABLE dbo.Dim_Vozac(
id_vozaca int not null,
ime varchar(50) not null,
prezime varchar(50) not null,
datum_rodjenja date not null,
broj_telefona int not null,
broj_vozacke_dozvole int not null,
CONSTRAINT PK_Vozac PRIMARY KEY (id_vozaca)
);
GO