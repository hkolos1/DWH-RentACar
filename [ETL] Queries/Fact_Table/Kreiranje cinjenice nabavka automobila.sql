CREATE TABLE dbo.Fact_Nabavka_Automobila(
id int not null,
id_poslovnice int not null,
id_automobila int not null,
id_vrijeme int not null,
id_dobavljaca int not null,
CONSTRAINT PK_Fact_Nabavka_Automobila PRIMARY KEY (id)
);
GO