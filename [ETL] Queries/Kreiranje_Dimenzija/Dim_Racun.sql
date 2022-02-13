CREATE TABLE dbo.Dim_Racun(
id_racuna int not null,
iznos int not null,
popust int not null,
datum_placanja date not null,
vrijeme_placanja time not null,
CONSTRAINT PK_Racun PRIMARY KEY(id_racuna)
);
GO