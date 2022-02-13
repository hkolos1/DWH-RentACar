select a.proizvodjac, Max(a.model) as model
from Dim_Automobil as a, Fact_Iznajmljivanje as f, Dim_Racun as r
where f.id_automobila = a.id_automobila
and f.id_racuna = r.id_racuna
and YEAR(r.datum_placanja) = 2018
group by a.proizvodjac;