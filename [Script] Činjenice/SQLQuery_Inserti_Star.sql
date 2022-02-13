insert into Dim_Automobil 
select id_automobila, kategorija, proizvodjac, model, registracija, gorivo, vrsta_upravljanja, datum_zadnjeg_servisa from Automobil;

insert into Dim_Lokacija select l.id_Lokacija, g.naziv, l.naziv_ulice
						 from Lokacija as l, Grad as g
						 where l.id_Grad = g.id_Grad;

insert into Dim_Poslovnica select p.id_poslovnice, p.naziv, l.postanski_broj, g.naziv, d.naziv, broj_telefona
						   from Poslovnica as p, Lokacija as l, Grad as g, Drzava as d
						   where p.id_Lokacija = l.id_Lokacija
						   and l.id_Grad = g.id_Grad
						   and g.id_Drzava = d.id_Drzava;

insert into Dim_Dobavljac select d.id_dobavljaca,d.naziv, g.naziv + ' ' + l.naziv_ulice as lokacija
						  from Dobavljac as d, Lokacija as l, Grad as g
						  where d.id_dobavljaca = l.id_Lokacija
						  and l.id_Grad = g.id_grad;

insert into Dim_Racun select id_racuna, iznos, popust, datum_placanja 
		      from Racun;

insert into Dim_Ugovor select * from Ugovor;

insert into Dim_Vozac select v.id_vozaca, f.ime, f.prezime, f.datum_rodjenja, v.broj_telefona, v.broj_vozacke_dozvole
					  from Vozac as v, Fizicko_lice as f
					  where v.id_vozaca = f.id_Fizicko_lice;

INSERT INTO Dim_Vrijeme([id_vrijeme],[datum],[godina],[mjesec],[dan],[sat]) VALUES(1,'Aug 23, 2018',2018,8,23,'03:14:08');
INSERT INTO Dim_Vrijeme([id_vrijeme],[datum],[godina],[mjesec],[dan],[sat]) VALUES(2,'Dec 6, 2015',2015,12,6,'05:19:08');
INSERT INTO Dim_Vrijeme([id_vrijeme],[datum],[godina],[mjesec],[dan],[sat]) VALUES(3,'Dec 13, 2018',2018,12,13,'01:14:08');
INSERT INTO Dim_Vrijeme([id_vrijeme],[datum],[godina],[mjesec],[dan],[sat]) VALUES(4,'Jun 10, 2018',2018,6,10,'03:14:08');
INSERT INTO Dim_Vrijeme([id_vrijeme],[datum],[godina],[mjesec],[dan],[sat]) VALUES(5,'Jan 6, 2017',2017,1,6,'06:14:08');
INSERT INTO Dim_Vrijeme([id_vrijeme],[datum],[godina],[mjesec],[dan],[sat]) VALUES(6,'Mar 26, 2019',2019,3,26,'08:14:08');
INSERT INTO Dim_Vrijeme([id_vrijeme],[datum],[godina],[mjesec],[dan],[sat]) VALUES(7,'May 28, 2016',2016,5,28,'09:25:10');
INSERT INTO Dim_Vrijeme([id_vrijeme],[datum],[godina],[mjesec],[dan],[sat]) VALUES(8,'May 22, 2016',2016,5,22,'11:32:08');
INSERT INTO Dim_Vrijeme([id_vrijeme],[datum],[godina],[mjesec],[dan],[sat]) VALUES(9,'Feb 11, 2015',2015,2,11,'15:14:08');
INSERT INTO Dim_Vrijeme([id_vrijeme],[datum],[godina],[mjesec],[dan],[sat]) VALUES(10,'Mar 5, 2018',2018,3,5,'12:56:15');


INSERT INTO Fact_Iznajmljivanje([id_iznajmljivanja],[id_automobila],[id_vozaca],[id_racuna],[id_ugovora],[id_poslovnice],[lokacija_preuzimanja],[lokacija_vracanja]) VALUES(1,2,5,8,4,1,'adresa1','adresa2');
INSERT INTO Fact_Iznajmljivanje([id_iznajmljivanja],[id_automobila],[id_vozaca],[id_racuna],[id_ugovora],[id_poslovnice],[lokacija_preuzimanja],[lokacija_vracanja]) VALUES(2,3,4,8,9,10,'adresa3','adresa4');
INSERT INTO Fact_Iznajmljivanje([id_iznajmljivanja],[id_automobila],[id_vozaca],[id_racuna],[id_ugovora],[id_poslovnice],[lokacija_preuzimanja],[lokacija_vracanja]) VALUES(3,4,5,7,10,9,'adresa5','adresa6');
INSERT INTO Fact_Iznajmljivanje([id_iznajmljivanja],[id_automobila],[id_vozaca],[id_racuna],[id_ugovora],[id_poslovnice],[lokacija_preuzimanja],[lokacija_vracanja]) VALUES(4,2,1,3,2,2,'adresa7','adresa8');
INSERT INTO Fact_Iznajmljivanje([id_iznajmljivanja],[id_automobila],[id_vozaca],[id_racuna],[id_ugovora],[id_poslovnice],[lokacija_preuzimanja],[lokacija_vracanja]) VALUES(5,2,1,6,7,6,'adresa9','adresa10');
INSERT INTO Fact_Iznajmljivanje([id_iznajmljivanja],[id_automobila],[id_vozaca],[id_racuna],[id_ugovora],[id_poslovnice],[lokacija_preuzimanja],[lokacija_vracanja]) VALUES(6,3,1,1,2,3,'adresa11','adresa12');
INSERT INTO Fact_Iznajmljivanje([id_iznajmljivanja],[id_automobila],[id_vozaca],[id_racuna],[id_ugovora],[id_poslovnice],[lokacija_preuzimanja],[lokacija_vracanja]) VALUES(7,4,5,6,5,8,'adresa13','adresa14');
INSERT INTO Fact_Iznajmljivanje([id_iznajmljivanja],[id_automobila],[id_vozaca],[id_racuna],[id_ugovora],[id_poslovnice],[lokacija_preuzimanja],[lokacija_vracanja]) VALUES(8,9,10,1,10,8,'adresa15','adresa16');
INSERT INTO Fact_Iznajmljivanje([id_iznajmljivanja],[id_automobila],[id_vozaca],[id_racuna],[id_ugovora],[id_poslovnice],[lokacija_preuzimanja],[lokacija_vracanja]) VALUES(9,3,4,5,4,3,'adresa17','adresa18');
INSERT INTO Fact_Iznajmljivanje([id_iznajmljivanja],[id_automobila],[id_vozaca],[id_racuna],[id_ugovora],[id_poslovnice],[lokacija_preuzimanja],[lokacija_vracanja]) VALUES(10,8,7,6,5,1,'adresa19','adresa20');

INSERT INTO Dim_Odrzavanje([id_odrzavanja],[tip_odrzavanja]) VALUES(1,'generalni servis');
INSERT INTO Dim_Odrzavanje([id_odrzavanja],[tip_odrzavanja]) VALUES(2,'zamjena dijelova');
INSERT INTO Dim_Odrzavanje([id_odrzavanja],[tip_odrzavanja]) VALUES(3,'provjera stanja');
INSERT INTO Dim_Odrzavanje([id_odrzavanja],[tip_odrzavanja]) VALUES(4,'mali servis');
INSERT INTO Dim_Odrzavanje([id_odrzavanja],[tip_odrzavanja]) VALUES(5,'ciscenje');
INSERT INTO Dim_Odrzavanje([id_odrzavanja],[tip_odrzavanja]) VALUES(6,'popravka');
INSERT INTO Dim_Odrzavanje([id_odrzavanja],[tip_odrzavanja]) VALUES(7,'zamjena guma');
INSERT INTO Dim_Odrzavanje([id_odrzavanja],[tip_odrzavanja]) VALUES(8,'poliranje');
INSERT INTO Dim_Odrzavanje([id_odrzavanja],[tip_odrzavanja]) VALUES(9,'tehnički pregled');
INSERT INTO Dim_Odrzavanje([id_odrzavanja],[tip_odrzavanja]) VALUES(10,'kozmetičke prepravke');

INSERT INTO Fact_Odrzavanje([id],[id_automobila],[id_lokacija],[id_vrijeme],[iznos],[id_odrzavanja]) VALUES(1,2,5,8,'577.50',6);
INSERT INTO Fact_Odrzavanje([id],[id_automobila],[id_lokacija],[id_vrijeme],[iznos],[id_odrzavanja]) VALUES(2,3,1,2,'252',5);
INSERT INTO Fact_Odrzavanje([id],[id_automobila],[id_lokacija],[id_vrijeme],[iznos],[id_odrzavanja]) VALUES(3,4,1,2,'911',3);
INSERT INTO Fact_Odrzavanje([id],[id_automobila],[id_lokacija],[id_vrijeme],[iznos],[id_odrzavanja]) VALUES(4,8,1,6,'473',7);
INSERT INTO Fact_Odrzavanje([id],[id_automobila],[id_lokacija],[id_vrijeme],[iznos],[id_odrzavanja]) VALUES(5,9,6,8,'956',5);
INSERT INTO Fact_Odrzavanje([id],[id_automobila],[id_lokacija],[id_vrijeme],[iznos],[id_odrzavanja]) VALUES(6,1,1,5,'238',9);
INSERT INTO Fact_Odrzavanje([id],[id_automobila],[id_lokacija],[id_vrijeme],[iznos],[id_odrzavanja]) VALUES(7,1,9,10,'120',10);
INSERT INTO Fact_Odrzavanje([id],[id_automobila],[id_lokacija],[id_vrijeme],[iznos],[id_odrzavanja]) VALUES(8,8,4,3,'715',2);
INSERT INTO Fact_Odrzavanje([id],[id_automobila],[id_lokacija],[id_vrijeme],[iznos],[id_odrzavanja]) VALUES(9,10,9,6,'832',2);
INSERT INTO Fact_Odrzavanje([id],[id_automobila],[id_lokacija],[id_vrijeme],[iznos],[id_odrzavanja]) VALUES(10,6,1,5,'191',1);

INSERT INTO dbo.Fact_Nabavka_Automobila([id],[id_poslovnice],[id_automobila],[id_vrijeme],[id_dobavljaca]) VALUES(1,2,4,6,9);
INSERT INTO dbo.Fact_Nabavka_Automobila([id],[id_poslovnice],[id_automobila],[id_vrijeme],[id_dobavljaca]) VALUES(2,1,3,4,5);
INSERT INTO dbo.Fact_Nabavka_Automobila([id],[id_poslovnice],[id_automobila],[id_vrijeme],[id_dobavljaca]) VALUES(3,6,10,1,2);
INSERT INTO dbo.Fact_Nabavka_Automobila([id],[id_poslovnice],[id_automobila],[id_vrijeme],[id_dobavljaca]) VALUES(4,5,6,1,9);
INSERT INTO dbo.Fact_Nabavka_Automobila([id],[id_poslovnice],[id_automobila],[id_vrijeme],[id_dobavljaca]) VALUES(5,7,10,2,9);
INSERT INTO dbo.Fact_Nabavka_Automobila([id],[id_poslovnice],[id_automobila],[id_vrijeme],[id_dobavljaca]) VALUES(6,2,7,8,3);
INSERT INTO dbo.Fact_Nabavka_Automobila([id],[id_poslovnice],[id_automobila],[id_vrijeme],[id_dobavljaca]) VALUES(7,2,10,5,6);
INSERT INTO dbo.Fact_Nabavka_Automobila([id],[id_poslovnice],[id_automobila],[id_vrijeme],[id_dobavljaca]) VALUES(8,1,3,10,2);
INSERT INTO dbo.Fact_Nabavka_Automobila([id],[id_poslovnice],[id_automobila],[id_vrijeme],[id_dobavljaca]) VALUES(9,10,8,2,1);
INSERT INTO dbo.Fact_Nabavka_Automobila([id],[id_poslovnice],[id_automobila],[id_vrijeme],[id_dobavljaca]) VALUES(10,2,3,9,2);