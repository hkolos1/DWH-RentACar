IF OBJECT_ID('dbo.Fact_Iznajmljivanje', 'U') IS NOT NULL 
  DROP TABLE dbo.Fact_Iznajmljivanje; 

IF OBJECT_ID('dbo.Fact_Nabavka_Automobila', 'U') IS NOT NULL 
  DROP TABLE dbo.Fact_Nabavka_Automobila; 

IF OBJECT_ID('dbo.Fact_Odrzavanje', 'U') IS NOT NULL 
  DROP TABLE dbo.Fact_Odrzavanje; 

IF OBJECT_ID('dbo.Dim_Vozac', 'U') IS NOT NULL 
  DROP TABLE dbo.Dim_Vozac;

IF OBJECT_ID('dbo.Dim_Automobil', 'U') IS NOT NULL 
  DROP TABLE dbo.Dim_Automobil;

IF OBJECT_ID('dbo.Dim_Racun', 'U') IS NOT NULL 
  DROP TABLE dbo.Dim_Racun;

IF OBJECT_ID('dbo.Dim_Vrijeme', 'U') IS NOT NULL 
  DROP TABLE dbo.Dim_Vrijeme;

IF OBJECT_ID('dbo.Dim_Poslovnica', 'U') IS NOT NULL 
  DROP TABLE dbo.Dim_Poslovnica;

IF OBJECT_ID('dbo.Dim_Ugovor', 'U') IS NOT NULL 
  DROP TABLE dbo.Dim_Ugovor;

IF OBJECT_ID('dbo.Dim_Dobavljac', 'U') IS NOT NULL 
  DROP TABLE dbo.Dim_Dobavljac;

IF OBJECT_ID('dbo.Dim_Lokacija', 'U') IS NOT NULL 
  DROP TABLE dbo.Dim_Lokacija;

IF OBJECT_ID('dbo.Dim_Odrzavanje', 'U') IS NOT NULL 
  DROP TABLE dbo.Dim_Odrzavanje;