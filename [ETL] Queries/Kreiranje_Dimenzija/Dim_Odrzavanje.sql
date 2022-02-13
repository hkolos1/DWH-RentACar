CREATE TABLE dbo.Dim_Odrzavanje(
id_odrzavanja int not null,
tip_odrzavanja varchar(50) not null,
CONSTRAINT PK_Odrzavanje PRIMARY KEY(id_odrzavanja)
);
GO