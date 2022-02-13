SELECT d.id_dobavljaca, d.naziv, l.naziv_ulice
FROM [rent a car].dbo.Dobavljac d, [rent a car].dbo.Lokacija l
WHERE d.id_lokacija = l.id_Lokacija;