SELECT l.id_Lokacija, g.naziv AS grad, l.naziv_ulice AS adresa
FROM [rent a car].dbo.Lokacija l, [rent a car].dbo.Grad g
WHERE l.id_grad = g.id_grad;