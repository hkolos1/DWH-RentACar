select a.proizvodjac as proizvodjac, MAX(o.iznos) as iznos
from Dim_Automobil as a, Fact_Odrzavanje as o, Dim_Vrijeme as v
where a.id_automobila = o.id_automobila
and v.id_vrijeme = o.id_vrijeme
and v.godina = 2018
group by a.proizvodjac;