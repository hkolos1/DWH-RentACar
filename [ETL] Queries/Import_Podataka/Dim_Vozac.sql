SELECT v.id_vozaca, f.ime, f.prezime, f.datum_rodjenja,v.broj_telefona, v.broj_vozacke_dozvole
FROM [rent a car].dbo.Vozac v, [rent a car].dbo.Fizicko_lice f
WHERE id_vozaca = id_Fizicko_lice;