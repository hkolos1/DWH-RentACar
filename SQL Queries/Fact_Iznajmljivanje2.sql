select TOP 5 a.id_automobila,a.kategorija, a.proizvodjac, a.model, a.registracija, a.gorivo, a.vrsta_upravljanja, a.datum_zadnjeg_servisa, r.iznos as iznos  from
Dim_Automobil as a, Dim_Racun as r, Fact_Iznajmljivanje as f
where f.id_automobila = a.id_automobila
and f.id_racuna = r.id_racuna
order by
r.iznos ASC;

select TOP 5 a.id_automobila,a.kategorija, a.proizvodjac, a.model, a.registracija, a.gorivo, a.vrsta_upravljanja, a.datum_zadnjeg_servisa, r.iznos as iznos  from
Dim_Automobil as a, Dim_Racun as r, Fact_Iznajmljivanje as f
where f.id_automobila = a.id_automobila
and f.id_racuna = r.id_racuna
order by
r.iznos DESC;
