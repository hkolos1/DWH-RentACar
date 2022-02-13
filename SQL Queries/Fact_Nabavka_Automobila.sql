select db.naziv, db.lokacija from Dim_Dobavljac as db, Dim_Vrijeme as v, Dim_Automobil as a, Fact_Nabavka_Automobila as na
where na.id_automobila = a.id_automobila
and na.id_dobavljaca = db.id_dobavljaca
and na.id_vrijeme = v.id_vrijeme

and v.datum = '2019-03-26';