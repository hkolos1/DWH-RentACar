CREATE TABLE dbo.Dim_Dobavljac(
id_dobavljaca int not null,
naziv varchar(50) not null,
lokacija varchar(50) not null,
CONSTRAINT PK_Dobavljac PRIMARY KEY(id_dobavljaca)
);
GO