CREATE TABLE Drzava (
  id_Drzava INT primary key NOT NULL ,
  naziv VARCHAR(45) NOT NULL
);

CREATE TABLE Grad (
  id_Grad INT NOT NULL ,
  id_Drzava INT NOT NULL,
  FOREIGN KEY(id_Drzava) REFERENCES Drzava(id_Drzava),
  naziv VARCHAR(45) NOT NULL,
  PRIMARY KEY (id_Grad) 
 );

CREATE TABLE Lokacija (
  id_Lokacija INT NOT NULL ,
  id_Grad INT NOT NULL,
  FOREIGN KEY(id_Grad) REFERENCES Grad(id_Grad),
  postanski_broj INT NOT NULL,
  naziv_ulice VARCHAR(45) NOT NULL,
  PRIMARY KEY (id_Lokacija)
     
     );

	 CREATE TABLE Poslovnica (
  id_poslovnice INT NOT NULL ,
  naziv VARCHAR(45) NOT NULL,
  id_Lokacija INT NOT NULL,
  FOREIGN KEY (id_Lokacija) REFERENCES Lokacija (id_Lokacija),
  broj_telefona INT NOT NULL,
  PRIMARY KEY (id_poslovnice)
 
     );

	 CREATE TABLE Fizicko_lice (
  id_Fizicko_lice INT primary key NOT NULL,
  ime VARCHAR(45) NOT NULL,
  prezime VARCHAR(45) NOT NULL,
  datum_rodjenja VARCHAR(45) NOT NULL,
  id_Lokacija INT NOT NULL,
  foreign key (id_Lokacija) REFERENCES Lokacija (id_Lokacija)

     
     );

	 CREATE TABLE Vozac (
  broj_telefona INT NOT NULL,
  broj_vozacke_dozvole INT NOT NULL,
  id_vozaca INT primary key NOT NULL,
  
    FOREIGN KEY (id_vozaca)
    REFERENCES Fizicko_lice (id_Fizicko_lice)
     
     );
	 
	 CREATE TABLE Odjel (
  id_odjel INT primary key NOT NULL ,
  naziv VARCHAR(45) NOT NULL
     );

	 CREATE TABLE Uposlenik (
  broj_telefona INT NOT NULL,
  plata INT NOT NULL,
  id_odjel INT NOT NULL,
  id_uposlenika INT primary key NOT NULL,
 
    FOREIGN KEY (id_uposlenika)
    REFERENCES Fizicko_lice (id_Fizicko_lice)
     ,
    FOREIGN KEY (id_odjel)
    REFERENCES Odjel (id_odjel)
     
     );

	 CREATE TABLE Automobil (
  id_automobila INT PRIMARY KEY NOT NULL ,
  kategorija INT NOT NULL,
  proizvodjac VARCHAR(45) NOT NULL,
  model VARCHAR(45) NOT NULL,
  registracija INT NOT NULL,
  gorivo VARCHAR(45) NOT NULL,
  vrsta_upravljanja INT NOT NULL,
  datum_zadnjeg_servisa VARCHAR(45) NOT NULL
  );

  CREATE TABLE Ugovor (
  id_ugovora INT NOT NULL,
  datum_iznajmljivanja VARCHAR(45) NOT NULL,
  datum_vracanja VARCHAR(45) NOT NULL,
  osiguranje INT NOT NULL,
  PRIMARY KEY (id_ugovora));

  CREATE TABLE Racun (
  id_racuna INT NOT NULL,
  iznos INT NOT NULL,
  popust INT NOT NULL,
  datum_placanja VARCHAR(45) NOT NULL,
  PRIMARY KEY (id_racuna));

  CREATE TABLE Iznajmljivanje (
  id_iznajmljivanja INT NOT NULL,
  id_automobila INT NOT NULL,
  id_vozaca INT NULL,
  id_ugovora INT NOT NULL,
  id_poslovnice INT NOT NULL,
  id_lokacija_preuzimanja INT NOT NULL,
  id_lokacija_vracanja INT NOT NULL,
  id_racuna INT NULL,
  PRIMARY KEY (id_iznajmljivanja),
  
  CONSTRAINT id_automobila
    FOREIGN KEY (id_automobila)
    REFERENCES Automobil (id_automobila)
  ,
  CONSTRAINT id_ugovora
    FOREIGN KEY (id_ugovora)
    REFERENCES Ugovor (id_ugovora)
    ,
  CONSTRAINT id_vozaca
    FOREIGN KEY (id_vozaca)
    REFERENCES Vozac (id_vozaca)
    ,
  CONSTRAINT id_poslovnice
    FOREIGN KEY (id_poslovnice)
    REFERENCES Poslovnica (id_poslovnice)
     
     ,
  CONSTRAINT id_lokacija_preuzimanja
    FOREIGN KEY (id_lokacija_preuzimanja)
    REFERENCES Lokacija (id_Lokacija)
     
     ,
  CONSTRAINT id_lokacija_vracanja
    FOREIGN KEY (id_lokacija_vracanja)
    REFERENCES Lokacija (id_Lokacija)
     
     ,
  CONSTRAINT id_racuna
    FOREIGN KEY (id_racuna)
    REFERENCES Racun (id_racuna)
     );
	
INSERT INTO Drzava(id_Drzava,naziv) VALUES(1,'Western Sahara');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(2,'Guinea');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(3,'Slovakia');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(4,'Netherlands');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(5,'Bermuda');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(6,'Hungary');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(7,'Somalia');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(8,'United States Minor Outlying Islands');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(9,'New Zealand');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(10,'Vanuatu');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(11,'Costa Rica');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(12,'Burkina Faso');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(13,'Uzbekistan');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(14,'Saint Pierre and Miquelon');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(15,'Åland Islands');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(16,'Kuwait');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(17,'Uganda');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(18,'Norfolk Island');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(19,'Kiribati');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(20,'Tunisia');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(21,'Faroe Islands');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(22,'Rwanda');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(23,'Benin');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(24,'Indonesia');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(25,'Taiwan');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(26,'Oman');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(27,'Dominica');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(28,'Denmark');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(29,'Morocco');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(30,'Gambia');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(31,'Algeria');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(32,'Austria');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(33,'Guernsey');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(34,'Maldives');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(35,'Austria');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(36,'Grenada');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(37,'Barbados');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(38,'Guyana');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(39,'Luxembourg');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(40,'Fiji');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(41,'Togo');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(42,'Libya');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(43,'Åland Islands');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(44,'Iran');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(45,'France');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(46,'Morocco');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(47,'French Polynesia');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(48,'Cambodia');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(49,'Seychelles');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(50,'Uzbekistan');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(51,'Jamaica');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(52,'Western Sahara');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(53,'Serbia');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(54,'Montenegro');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(55,'Belarus');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(56,'Heard Island and Mcdonald Islands');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(57,'Brazil');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(58,'Morocco');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(59,'Uruguay');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(60,'Hong Kong');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(61,'Reunion');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(62,'South Sudan');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(63,'Bahrain');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(64,'Indonesia');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(65,'Faroe Islands');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(66,'Mexico');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(67,'Liechtenstein');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(68,'Maldives');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(69,'Rwanda');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(70,'Saint Pierre and Miquelon');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(71,'United Arab Emirates');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(72,'Saint Lucia');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(73,'Solomon Islands');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(74,'Antarctica');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(75,'French Guiana');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(76,'Maldives');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(77,'Belize');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(78,'Thailand');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(79,'Rwanda');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(80,'French Southern Territories');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(81,'Sint Maarten');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(82,'Cambodia');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(83,'Brazil');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(84,'Benin');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(85,'French Guiana');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(86,'Guam');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(87,'Ecuador');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(88,'Trinidad and Tobago');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(89,'Ethiopia');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(90,'Hong Kong');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(91,'United Kingdom (Great Britain)');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(92,'Holy See (Vatican City State)');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(93,'Malta');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(94,'Turkmenistan');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(95,'French Polynesia');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(96,'Virgin Islands, British');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(97,'Thailand');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(98,'Saint Kitts and Nevis');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(99,'Virgin Islands, British');
INSERT INTO Drzava(id_Drzava,naziv) VALUES(100,'Russian Federation');

INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(1,1,'Sakhalin');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(2,2,'Pazarcık');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(3,3,'Rock Springs');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(4,4,'Kubinka');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(5,5,'Schwerin');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(6,6,'Kusa');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(7,7,'Würzburg');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(8,8,'Fratta Todina');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(9,9,'Concepción');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(10,10,'Kearney');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(11,11,'Anchorage');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(12,12,'Keumiee');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(13,13,'Grey County');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(14,14,'Camaragibe');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(15,15,'Montague');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(16,16,'HavrŽ');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(17,17,'Dessau');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(18,18,'Deschambault');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(19,19,'Sivry');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(20,20,'Baunatal');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(21,21,'Crewe');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(22,22,'Tregaron');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(23,23,'Arviat');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(24,24,'Shangla');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(25,25,'Kooigem');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(26,26,'Adria');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(27,27,'Anzegem');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(28,28,'Monte Santa Maria Tiberina');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(29,29,'Vidisha');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(30,30,'Fontanigorda');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(31,31,'Rum');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(32,32,'Billings');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(33,33,'Crewe');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(34,34,'Spokane');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(35,35,'Hindeloopen');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(36,36,'Shimla');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(37,37,'Leganés');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(38,38,'HavrŽ');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(39,39,'Gaithersburg');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(40,40,'Peumo');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(41,41,'Rivi�re-du-Loup');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(42,42,'Essen');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(43,43,'Orange');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(44,44,'Avellino');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(45,45,'Tollembeek');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(46,46,'Norfolk County');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(47,47,'Varena');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(48,48,'Leeuwarden');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(49,49,'Cardedu');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(50,50,'Veracruz');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(51,51,'Adria');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(52,52,'Beausejour');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(53,53,'Cartago');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(54,54,'Saint-L�onard');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(55,55,'Tewkesbury');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(56,56,'Civo');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(57,57,'Coaldale');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(58,58,'Raurkela');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(59,59,'Feira de Santana');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(60,60,'Pelago');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(61,61,'Valcourt');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(62,62,'SŽlange');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(63,63,'Albi');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(64,64,'Grande Prairie');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(65,65,'Badajoz');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(66,66,'Tuxtla Gutiérrez');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(67,67,'Galbiate');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(68,68,'Los Vilos');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(69,69,'Ferrandina');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(70,70,'Frankfurt');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(71,71,'Leeds');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(72,72,'Outremont');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(73,73,'Staßfurt');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(74,74,'Whithorn');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(75,75,'Kasur');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(76,76,'Ravensburg');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(77,77,'Rendsburg');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(78,78,'Barmouth');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(79,79,'San Francisco');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(80,80,'Gdynia');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(81,81,'Périgueux');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(82,82,'Lac Ste. Anne');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(83,83,'Jemappes');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(84,84,'Jeju');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(85,85,'Steendorp');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(86,86,'Jauchelette');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(87,87,'Santander de Quilichao');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(88,88,'Merbes-Sainte-Marie');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(89,89,'Celaya');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(90,90,'Sellano');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(91,91,'Hathras');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(92,92,'Emden');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(93,93,'Augusta');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(94,94,'Fogo');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(95,95,'Montgomery');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(96,96,'Mjölby');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(97,97,'Fabro');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(98,98,'Hillsboro');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(99,99,'Imst');
INSERT INTO Grad(id_Grad,id_Drzava,naziv) VALUES(100,100,'Garzón');

INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(1,1,77,'5991 Sit Road');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(2,2,45,'P.O. Box 538, 5962 Felis Road');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(3,3,45,'3981 Non Avenue');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(4,4,50,'P.O. Box 575, 1128 Egestas St.');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(5,5,59,'9570 Purus. Road');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(6,6,100,'Ap #665-7234 Consequat, Av.');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(7,7,85,'Ap #423-3154 Donec St.');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(8,8,55,'2773 Lorem Road');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(9,9,36,'416-9659 Dolor Street');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(10,10,20,'5066 Penatibus Avenue');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(11,11,61,'P.O. Box 949, 1578 Aliquam St.');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(12,12,15,'9708 Enim St.');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(13,13,45,'Ap #378-3011 Aliquam Rd.');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(14,14,6,'P.O. Box 339, 1393 Vel St.');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(15,15,92,'P.O. Box 419, 3680 Purus. Street');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(16,16,51,'P.O. Box 714, 7869 Ac Street');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(17,17,86,'Ap #959-3813 Sed Avenue');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(18,18,97,'P.O. Box 257, 2901 Bibendum Av.');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(19,19,55,'172-3802 In St.');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(20,20,22,'801-9695 Libero. Rd.');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(21,21,59,'P.O. Box 406, 9886 Quam St.');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(22,22,31,'P.O. Box 476, 4962 Non Street');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(23,23,35,'6717 Sit Rd.');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(24,24,71,'P.O. Box 269, 3249 Ac, Ave');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(25,25,8,'Ap #950-9835 Tincidunt St.');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(26,26,92,'P.O. Box 843, 9152 Semper Ave');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(27,27,48,'1082 Vel, Rd.');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(28,28,34,'4731 Odio Av.');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(29,29,92,'5960 Sem Rd.');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(30,30,63,'P.O. Box 299, 4957 Non Road');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(31,31,41,'Ap #147-7398 Tempor Street');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(32,32,4,'Ap #858-2368 Quis, St.');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(33,33,56,'881-4168 Turpis Avenue');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(34,34,27,'393-1844 Ligula. Rd.');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(35,35,50,'834-8127 Orci St.');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(36,36,65,'500-2894 Neque. Street');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(37,37,96,'766-1083 Consectetuer Street');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(38,38,56,'517-8305 Orci. Avenue');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(39,39,5,'Ap #637-6035 Id, Rd.');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(40,40,26,'406-7531 Mattis Rd.');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(41,41,57,'6261 Ut Ave');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(42,42,1,'379-5071 Blandit Rd.');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(43,43,64,'Ap #780-5736 Integer Rd.');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(44,44,38,'1335 Ornare, Street');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(45,45,79,'3017 Congue Avenue');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(46,46,29,'P.O. Box 283, 6100 Volutpat. Av.');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(47,47,90,'809-4620 Turpis. St.');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(48,48,47,'Ap #110-6750 Orci, St.');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(49,49,73,'Ap #335-6242 Metus. St.');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(50,50,23,'Ap #332-9161 Pede Av.');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(51,51,33,'464-5225 Pede. Ave');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(52,52,15,'Ap #654-4917 Risus. St.');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(53,53,71,'Ap #429-5472 Eget Street');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(54,54,49,'P.O. Box 524, 6489 Risus. Avenue');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(55,55,6,'1728 Sem Av.');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(56,56,3,'Ap #822-6424 A, Rd.');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(57,57,42,'634-4686 Metus. Rd.');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(58,58,95,'Ap #936-2621 Aliquam Rd.');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(59,59,39,'Ap #843-4859 Nec Ave');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(60,60,21,'531-9633 Mi Av.');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(61,61,87,'6346 Suspendisse Street');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(62,62,65,'890-1681 Odio Rd.');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(63,63,96,'Ap #601-5905 Arcu. Rd.');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(64,64,94,'7688 Velit St.');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(65,65,2,'P.O. Box 537, 1434 Dui. St.');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(66,66,44,'P.O. Box 820, 3586 Turpis. Street');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(67,67,32,'P.O. Box 604, 7275 Metus St.');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(68,68,38,'2336 Natoque St.');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(69,69,69,'2865 Leo. Rd.');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(70,70,47,'1023 Pede Road');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(71,71,85,'7147 Mattis. Street');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(72,72,43,'485-6818 Eget Ave');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(73,73,99,'P.O. Box 287, 4393 Tempus Street');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(74,74,100,'1335 Nulla St.');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(75,75,55,'P.O. Box 848, 7830 Est. Avenue');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(76,76,29,'659-1939 Porttitor St.');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(77,77,11,'384-8299 Malesuada Road');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(78,78,11,'696-5652 Habitant Street');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(79,79,92,'840-5139 Nostra, Av.');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(80,80,11,'Ap #581-7830 Ac Rd.');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(81,81,28,'Ap #683-402 Vitae Ave');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(82,82,6,'Ap #477-8784 Donec Rd.');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(83,83,10,'P.O. Box 895, 8822 Ligula. Rd.');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(84,84,2,'Ap #747-3755 At Ave');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(85,85,76,'P.O. Box 889, 9412 Felis St.');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(86,86,83,'7246 Lobortis. Rd.');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(87,87,1,'836 Tempor Av.');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(88,88,53,'531-3504 Nec St.');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(89,89,82,'P.O. Box 481, 1200 Aliquet Av.');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(90,90,83,'981-3947 Nunc St.');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(91,91,65,'437-3809 Non Street');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(92,92,35,'Ap #983-5163 Laoreet, Avenue');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(93,93,25,'8785 Dignissim Ave');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(94,94,52,'Ap #532-541 Non, Street');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(95,95,55,'P.O. Box 917, 2953 A, Road');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(96,96,60,'Ap #208-1639 Bibendum St.');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(97,97,64,'2442 Porttitor St.');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(98,98,12,'P.O. Box 600, 510 Hendrerit. Street');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(99,99,36,'Ap #216-8324 Enim St.');
INSERT INTO Lokacija(id_Lokacija,id_Grad,postanski_broj,naziv_ulice) VALUES(100,100,47,'9687 Non Street');

INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(1,'Lacus Aliquam Rutrum Foundation',1,'439');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(2,'Sed Tortor PC',2,'682');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(3,'Lectus Ante Dictum Inc.',3,'445');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(4,'A Incorporated',4,'229');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(5,'Sed Dictum Proin PC',5,'201');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(6,'Purus In Molestie Ltd',6,'292');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(7,'Ac Limited',7,'317');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(8,'Urna Justo Faucibus Inc.',8,'217');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(9,'Libero Nec Industries',9,'544');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(10,'Curabitur Ut Odio Limited',10,'930');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(11,'Sed Nulla Company',11,'781');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(12,'Lacus Mauris Consulting',12,'581');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(13,'Curae; Donec LLP',13,'295');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(14,'Urna Suscipit LLP',14,'754');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(15,'Lobortis Corporation',15,'438');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(16,'Adipiscing Corporation',16,'892');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(17,'Amet Dapibus Id Limited',17,'861');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(18,'Magna Duis LLP',18,'924');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(19,'Dictum Proin Eget Associates',19,'860');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(20,'Pellentesque Eget Consulting',20,'849');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(21,'Dolor Inc.',21,'462');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(22,'Nec Associates',22,'168');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(23,'Erat Eget Tincidunt Inc.',23,'704');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(24,'Volutpat Nulla Foundation',24,'631');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(25,'Penatibus Et Magnis Limited',25,'927');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(26,'Auctor Vitae Institute',26,'467');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(27,'Dui Fusce Diam Consulting',27,'516');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(28,'Eget Lacus Corp.',28,'944');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(29,'Sapien Cras Inc.',29,'209');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(30,'Aenean Sed Pede Corp.',30,'234');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(31,'Suspendisse Aliquet Molestie Incorporated',31,'382');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(32,'Erat Corporation',32,'749');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(33,'Nam Foundation',33,'551');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(34,'Eget Company',34,'306');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(35,'Diam Lorem LLC',35,'766');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(36,'Urna Ut Tincidunt Associates',36,'289');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(37,'Amet Orci Ut Foundation',37,'895');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(38,'Mattis Velit LLP',38,'468');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(39,'Duis Gravida Praesent Industries',39,'542');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(40,'Dis Parturient Limited',40,'630');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(41,'Auctor Ullamcorper Corp.',41,'916');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(42,'Erat PC',42,'332');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(43,'Sed Consequat Associates',43,'818');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(44,'Egestas Limited',44,'341');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(45,'Lobortis Quis Foundation',45,'235');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(46,'Cum Sociis Institute',46,'157');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(47,'Dui Industries',47,'682');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(48,'Proin Vel Industries',48,'949');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(49,'Lacus Ltd',49,'315');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(50,'Aliquet PC',50,'840');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(51,'Egestas Sed Pharetra LLP',51,'535');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(52,'Dolor Quisque LLC',52,'320');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(53,'Mollis Duis Sit Incorporated',53,'247');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(54,'Lectus Justo Corp.',54,'503');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(55,'Dapibus Limited',55,'649');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(56,'Phasellus Elit Pede PC',56,'252');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(57,'Nulla Interdum Ltd',57,'410');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(58,'Tortor Nibh Sit Associates',58,'621');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(59,'In Institute',59,'708');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(60,'Mollis LLP',60,'432');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(61,'Erat Semper Rutrum LLP',61,'855');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(62,'Quam Curabitur Vel Limited',62,'811');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(63,'Dolor Quam Elementum Company',63,'444');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(64,'Id Risus Quis Incorporated',64,'522');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(65,'Arcu Imperdiet Ullamcorper LLC',65,'141');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(66,'Vel Corp.',66,'296');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(67,'Massa Quisque Porttitor Consulting',67,'879');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(68,'Sem Egestas Blandit Inc.',68,'705');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(69,'Magna Sed Limited',69,'681');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(70,'Et Consulting',70,'367');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(71,'Venenatis Vel LLP',71,'367');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(72,'Magnis Dis Parturient Company',72,'755');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(73,'Lorem Ipsum PC',73,'175');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(74,'In Cursus Ltd',74,'574');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(75,'Semper Tellus Id Corporation',75,'465');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(76,'Ac Feugiat Non Inc.',76,'769');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(77,'Vitae Orci Company',77,'697');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(78,'A Tortor Nunc LLC',78,'312');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(79,'Vitae Odio Incorporated',79,'231');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(80,'Maecenas Mi PC',80,'458');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(81,'Iaculis Ltd',81,'778');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(82,'Nunc Sit Amet Corporation',82,'735');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(83,'Nec Corp.',83,'230');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(84,'Tristique Pellentesque Tellus Company',84,'288');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(85,'At Consulting',85,'901');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(86,'Sed Dictum Company',86,'717');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(87,'Eget Venenatis Consulting',87,'847');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(88,'Nec Orci Donec Industries',88,'891');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(89,'Turpis Non Enim PC',89,'508');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(90,'Phasellus Fermentum Company',90,'139');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(91,'Sed Hendrerit A Inc.',91,'447');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(92,'Ultrices A LLP',92,'662');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(93,'Sit PC',93,'480');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(94,'Feugiat Metus Foundation',94,'723');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(95,'Enim LLP',95,'378');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(96,'Eleifend Limited',96,'514');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(97,'Sed LLP',97,'656');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(98,'Leo Morbi Inc.',98,'235');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(99,'Interdum Company',99,'890');
INSERT INTO Poslovnica(id_poslovnice,naziv,id_lokacija,broj_telefona) VALUES(100,'Dignissim Magna Incorporated',100,'968');

INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(1,'Hedwig','Ingrid','Jul 31, 1990',1);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(2,'Kaseem','Donovan','Oct 16, 1991',2);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(3,'Giacomo','Hilel','Apr 20, 1969',3);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(4,'Sawyer','Brody','Jul 9, 1999',4);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(5,'Nicole','Karen','May 2, 1987',5);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(6,'Bo','Hammett','Nov 29, 1969',6);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(7,'Brennan','Brendan','Jan 17, 1970',7);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(8,'Miriam','Axel','Dec 20, 1994',8);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(9,'Leo','Benjamin','Sep 8, 1986',9);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(10,'Justina','Colton','Feb 19, 1982',10);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(11,'Summer','Kevyn','Feb 12, 1967',11);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(12,'Simon','Jeremy','Jun 9, 1994',12);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(13,'Axel','Maisie','Sep 5, 1988',13);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(14,'Todd','Kane','Aug 5, 1995',14);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(15,'Armand','Cade','Sep 28, 1968',15);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(16,'Tashya','Nina','Jun 9, 1992',16);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(17,'Jennifer','Colette','Jul 6, 1995',17);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(18,'Graiden','Jorden','Mar 13, 1968',18);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(19,'Debra','Jemima','Dec 12, 1988',19);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(20,'Olga','Caesar','Aug 4, 1988',20);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(21,'Quinlan','Brody','Dec 24, 1975',21);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(22,'Deacon','Demetrius','Jan 3, 1966',22);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(23,'Jakeem','Sydnee','Jul 22, 1979',23);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(24,'Deborah','Abel','Jun 11, 1979',24);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(25,'Justin','Nolan','Sep 7, 1994',25);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(26,'Salvador','Jescie','Sep 9, 1974',26);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(27,'Mallory','Cassady','Dec 27, 1974',27);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(28,'Scarlett','Urielle','Nov 29, 1996',28);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(29,'Edward','Madison','Oct 23, 1977',29);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(30,'Quentin','Armando','Feb 26, 1993',30);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(31,'Keith','Kaitlin','Sep 27, 1981',31);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(32,'Isaiah','Amelia','May 12, 1987',32);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(33,'Caesar','Germaine','Feb 4, 2000',33);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(34,'Zachary','Lee','Jun 11, 1970',34);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(35,'Veda','Yvette','Jan 29, 1966',35);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(36,'Wanda','Tatiana','Oct 31, 1973',36);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(37,'Leonard','Susan','Nov 14, 1970',37);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(38,'Gwendolyn','Xenos','Jun 19, 1970',38);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(39,'Ava','Lacey','Aug 9, 1999',39);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(40,'Stacey','Lara','Jan 26, 1986',40);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(41,'Lars','Tasha','Sep 22, 1991',41);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(42,'Linda','Brielle','Jul 10, 1969',42);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(43,'Reece','Hope','Jan 11, 1998',43);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(44,'Sonia','Fiona','Dec 29, 1974',44);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(45,'Laith','Lenore','Jul 23, 1992',45);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(46,'Sasha','Daniel','Aug 20, 1978',46);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(47,'Beatrice','Iliana','Jun 6, 1993',47);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(48,'Ursa','Cadman','Oct 1, 1979',48);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(49,'Rigel','Evelyn','Aug 5, 1977',49);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(50,'Madeson','April','Jul 13, 1984',50);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(51,'August','Marsden','Dec 15, 1981',51);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(52,'Josiah','Ryder','Mar 23, 1995',52);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(53,'Orson','Illana','Feb 21, 1997',53);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(54,'Joelle','Bernard','Oct 16, 1985',54);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(55,'Vance','Rose','Sep 22, 1977',55);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(56,'Cora','Neville','Aug 23, 1983',56);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(57,'Paula','Wyatt','Apr 5, 1977',57);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(58,'Ivy','Mary','Oct 8, 1993',58);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(59,'Kimberley','Beatrice','Jan 24, 1992',59);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(60,'Teegan','Octavius','Jun 21, 1996',60);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(61,'Zephania','Odysseus','Mar 30, 1971',61);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(62,'Declan','Patience','Aug 17, 1995',62);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(63,'Marsden','Montana','Mar 13, 1976',63);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(64,'Amir','Xenos','Jan 27, 1977',64);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(65,'Patrick','Elmo','Apr 7, 1982',65);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(66,'Celeste','Camden','Jul 17, 1998',66);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(67,'Helen','Keegan','Mar 29, 1973',67);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(68,'Wing','Acton','Oct 24, 1994',68);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(69,'Quinlan','Hu','Jul 19, 1991',69);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(70,'Kirestin','Nigel','Aug 25, 1984',70);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(71,'Winifred','Miranda','Sep 4, 1991',71);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(72,'Kevyn','Helen','Aug 8, 1980',72);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(73,'Rafael','Geraldine','Feb 17, 1987',73);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(74,'Wayne','Randall','Sep 14, 1965',74);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(75,'Idona','Cherokee','Jan 21, 1968',75);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(76,'Tanya','Bernard','Dec 21, 1976',76);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(77,'Flynn','Lacota','Dec 6, 1971',77);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(78,'Eden','Reese','Oct 3, 1984',78);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(79,'Diana','Price','Sep 20, 2000',79);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(80,'Elaine','Philip','Aug 11, 1968',80);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(81,'Beverly','Timon','Oct 19, 1972',81);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(82,'Shellie','Walker','Dec 27, 1966',82);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(83,'Hedda','Shea','May 3, 1989',83);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(84,'Elaine','Upton','Mar 13, 1967',84);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(85,'Jolie','Ira','Aug 28, 1981',85);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(86,'Claire','Barry','Jul 6, 1986',86);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(87,'Courtney','Charity','Oct 10, 1996',87);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(88,'Ulysses','Channing','Feb 10, 1992',88);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(89,'Chandler','Ora','Nov 28, 1985',89);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(90,'Dustin','Adena','Oct 28, 1966',90);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(91,'Jin','Richard','Feb 27, 1999',91);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(92,'Gregory','Lacy','Apr 22, 1982',92);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(93,'Ina','Quon','Aug 20, 1971',93);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(94,'Shelley','Avram','Oct 18, 1982',94);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(95,'Brennan','Alice','Jul 23, 1972',95);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(96,'Vivien','Rhona','Oct 15, 1991',96);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(97,'Burke','Amal','Dec 12, 1998',97);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(98,'Keane','Katelyn','Sep 30, 1982',98);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(99,'Hilda','Jasmine','Apr 30, 1968',99);
INSERT INTO Fizicko_lice(id_Fizicko_lice,ime,prezime,datum_rodjenja,id_lokacija) VALUES(100,'Octavius','Todd','Aug 23, 1985',100);

INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('817','946',1);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('798','761',2);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('720','475',3);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('163','881',4);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('915','584',5);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('699','512',6);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('111','389',7);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('203','972',8);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('398','610',9);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('130','723',10);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('996','846',11);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('749','984',12);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('726','460',13);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('230','920',14);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('179','156',15);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('325','133',16);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('606','816',17);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('560','819',18);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('507','154',19);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('433','539',20);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('365','226',21);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('579','268',22);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('569','401',23);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('622','992',24);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('669','628',25);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('414','682',26);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('625','659',27);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('175','540',28);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('696','989',29);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('202','959',30);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('931','545',31);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('417','779',32);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('401','882',33);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('991','691',34);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('433','451',35);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('543','132',36);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('173','239',37);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('416','677',38);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('291','864',39);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('326','405',40);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('221','690',41);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('555','318',42);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('794','319',43);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('481','906',44);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('206','332',45);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('741','740',46);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('812','191',47);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('860','838',48);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('157','714',49);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('213','192',50);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('232','311',51);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('484','807',52);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('401','778',53);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('551','688',54);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('910','112',55);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('843','623',56);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('144','320',57);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('420','582',58);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('454','941',59);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('632','395',60);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('726','520',61);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('737','700',62);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('163','291',63);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('977','626',64);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('898','841',65);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('591','809',66);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('163','984',67);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('406','741',68);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('512','702',69);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('663','629',70);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('348','642',71);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('709','881',72);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('364','447',73);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('899','589',74);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('326','746',75);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('535','219',76);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('978','454',77);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('923','777',78);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('165','670',79);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('521','795',80);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('129','318',81);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('299','141',82);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('343','360',83);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('681','450',84);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('726','851',85);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('540','404',86);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('753','224',87);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('884','388',88);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('380','166',89);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('536','440',90);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('973','180',91);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('771','496',92);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('459','641',93);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('115','378',94);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('973','926',95);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('165','743',96);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('964','527',97);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('143','686',98);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('798','963',99);
INSERT INTO Vozac(broj_telefona,broj_vozacke_dozvole,id_vozaca) VALUES('917','866',100);

INSERT INTO Odjel(id_odjel,naziv) VALUES(1,'Eu Odio Phasellus Ltd');
INSERT INTO Odjel(id_odjel,naziv) VALUES(2,'Mauris Associates');
INSERT INTO Odjel(id_odjel,naziv) VALUES(3,'Dui Fusce Aliquam Incorporated');
INSERT INTO Odjel(id_odjel,naziv) VALUES(4,'Sed Ltd');
INSERT INTO Odjel(id_odjel,naziv) VALUES(5,'Lorem Lorem Foundation');
INSERT INTO Odjel(id_odjel,naziv) VALUES(6,'Diam PC');
INSERT INTO Odjel(id_odjel,naziv) VALUES(7,'Nunc Mauris Elit Ltd');
INSERT INTO Odjel(id_odjel,naziv) VALUES(8,'Est Ac Mattis Associates');
INSERT INTO Odjel(id_odjel,naziv) VALUES(9,'Imperdiet Ornare In Corp.');
INSERT INTO Odjel(id_odjel,naziv) VALUES(10,'Blandit Congue In Ltd');
INSERT INTO Odjel(id_odjel,naziv) VALUES(11,'Aliquet Proin Corp.');
INSERT INTO Odjel(id_odjel,naziv) VALUES(12,'Justo Faucibus Lectus LLP');
INSERT INTO Odjel(id_odjel,naziv) VALUES(13,'Donec Vitae LLP');
INSERT INTO Odjel(id_odjel,naziv) VALUES(14,'At Associates');
INSERT INTO Odjel(id_odjel,naziv) VALUES(15,'Fermentum Fermentum Arcu Associates');
INSERT INTO Odjel(id_odjel,naziv) VALUES(16,'Amet Ultricies LLC');
INSERT INTO Odjel(id_odjel,naziv) VALUES(17,'Diam Nunc Ullamcorper Company');
INSERT INTO Odjel(id_odjel,naziv) VALUES(18,'Est Nunc LLP');
INSERT INTO Odjel(id_odjel,naziv) VALUES(19,'Nisi Nibh LLC');
INSERT INTO Odjel(id_odjel,naziv) VALUES(20,'Ligula Aenean Gravida PC');
INSERT INTO Odjel(id_odjel,naziv) VALUES(21,'Auctor PC');
INSERT INTO Odjel(id_odjel,naziv) VALUES(22,'Cras Limited');
INSERT INTO Odjel(id_odjel,naziv) VALUES(23,'Tempus Non Lacinia Company');
INSERT INTO Odjel(id_odjel,naziv) VALUES(24,'Erat Neque Foundation');
INSERT INTO Odjel(id_odjel,naziv) VALUES(25,'Parturient Montes Nascetur Institute');
INSERT INTO Odjel(id_odjel,naziv) VALUES(26,'Nisl Company');
INSERT INTO Odjel(id_odjel,naziv) VALUES(27,'Sed Dictum Associates');
INSERT INTO Odjel(id_odjel,naziv) VALUES(28,'Rhoncus Id Industries');
INSERT INTO Odjel(id_odjel,naziv) VALUES(29,'Sed Pede Associates');
INSERT INTO Odjel(id_odjel,naziv) VALUES(30,'Scelerisque Neque Sed LLC');
INSERT INTO Odjel(id_odjel,naziv) VALUES(31,'Sit Institute');
INSERT INTO Odjel(id_odjel,naziv) VALUES(32,'Nec Mollis Foundation');
INSERT INTO Odjel(id_odjel,naziv) VALUES(33,'Nonummy Corp.');
INSERT INTO Odjel(id_odjel,naziv) VALUES(34,'In Corp.');
INSERT INTO Odjel(id_odjel,naziv) VALUES(35,'At Corporation');
INSERT INTO Odjel(id_odjel,naziv) VALUES(36,'Blandit Enim Consequat Institute');
INSERT INTO Odjel(id_odjel,naziv) VALUES(37,'Ultrices Iaculis Company');
INSERT INTO Odjel(id_odjel,naziv) VALUES(38,'Donec Feugiat Industries');
INSERT INTO Odjel(id_odjel,naziv) VALUES(39,'Erat LLC');
INSERT INTO Odjel(id_odjel,naziv) VALUES(40,'Non Justo Limited');
INSERT INTO Odjel(id_odjel,naziv) VALUES(41,'Pede Corporation');
INSERT INTO Odjel(id_odjel,naziv) VALUES(42,'Morbi Tristique Senectus Company');
INSERT INTO Odjel(id_odjel,naziv) VALUES(43,'Dui Nec Corp.');
INSERT INTO Odjel(id_odjel,naziv) VALUES(44,'Nam Consulting');
INSERT INTO Odjel(id_odjel,naziv) VALUES(45,'Mauris Elit Corporation');
INSERT INTO Odjel(id_odjel,naziv) VALUES(46,'Vitae Mauris Sit Associates');
INSERT INTO Odjel(id_odjel,naziv) VALUES(47,'Ipsum Dolor Sit Consulting');
INSERT INTO Odjel(id_odjel,naziv) VALUES(48,'Tristique Aliquet Limited');
INSERT INTO Odjel(id_odjel,naziv) VALUES(49,'Et Foundation');
INSERT INTO Odjel(id_odjel,naziv) VALUES(50,'Varius LLC');
INSERT INTO Odjel(id_odjel,naziv) VALUES(51,'Lorem Associates');
INSERT INTO Odjel(id_odjel,naziv) VALUES(52,'Tristique Limited');
INSERT INTO Odjel(id_odjel,naziv) VALUES(53,'Tempus Non Company');
INSERT INTO Odjel(id_odjel,naziv) VALUES(54,'Proin Consulting');
INSERT INTO Odjel(id_odjel,naziv) VALUES(55,'Imperdiet Dictum Magna Institute');
INSERT INTO Odjel(id_odjel,naziv) VALUES(56,'Ridiculus Ltd');
INSERT INTO Odjel(id_odjel,naziv) VALUES(57,'Egestas A Associates');
INSERT INTO Odjel(id_odjel,naziv) VALUES(58,'Elit Etiam Laoreet Inc.');
INSERT INTO Odjel(id_odjel,naziv) VALUES(59,'Lectus Sit Amet Corp.');
INSERT INTO Odjel(id_odjel,naziv) VALUES(60,'Vivamus Inc.');
INSERT INTO Odjel(id_odjel,naziv) VALUES(61,'Primis In Faucibus Consulting');
INSERT INTO Odjel(id_odjel,naziv) VALUES(62,'Ante Foundation');
INSERT INTO Odjel(id_odjel,naziv) VALUES(63,'Eu Augue Porttitor Inc.');
INSERT INTO Odjel(id_odjel,naziv) VALUES(64,'Sagittis Nullam Vitae Corp.');
INSERT INTO Odjel(id_odjel,naziv) VALUES(65,'Enim Etiam Industries');
INSERT INTO Odjel(id_odjel,naziv) VALUES(66,'Nonummy Ac Institute');
INSERT INTO Odjel(id_odjel,naziv) VALUES(67,'Consequat Ltd');
INSERT INTO Odjel(id_odjel,naziv) VALUES(68,'Quam Consulting');
INSERT INTO Odjel(id_odjel,naziv) VALUES(69,'Convallis Ante Lectus Consulting');
INSERT INTO Odjel(id_odjel,naziv) VALUES(70,'Eros Non Enim Institute');
INSERT INTO Odjel(id_odjel,naziv) VALUES(71,'Dignissim Tempor Arcu LLP');
INSERT INTO Odjel(id_odjel,naziv) VALUES(72,'Nulla Aliquet Proin Institute');
INSERT INTO Odjel(id_odjel,naziv) VALUES(73,'Felis Adipiscing Fringilla Corporation');
INSERT INTO Odjel(id_odjel,naziv) VALUES(74,'Mollis Industries');
INSERT INTO Odjel(id_odjel,naziv) VALUES(75,'Neque Non PC');
INSERT INTO Odjel(id_odjel,naziv) VALUES(76,'Interdum Libero Dui Ltd');
INSERT INTO Odjel(id_odjel,naziv) VALUES(77,'Non Lacinia Foundation');
INSERT INTO Odjel(id_odjel,naziv) VALUES(78,'Dis Consulting');
INSERT INTO Odjel(id_odjel,naziv) VALUES(79,'Et Netus Corporation');
INSERT INTO Odjel(id_odjel,naziv) VALUES(80,'Scelerisque Sed PC');
INSERT INTO Odjel(id_odjel,naziv) VALUES(81,'Mattis Semper Dui Company');
INSERT INTO Odjel(id_odjel,naziv) VALUES(82,'Non Nisi Limited');
INSERT INTO Odjel(id_odjel,naziv) VALUES(83,'Ac Mattis Corp.');
INSERT INTO Odjel(id_odjel,naziv) VALUES(84,'Parturient Montes Nascetur Industries');
INSERT INTO Odjel(id_odjel,naziv) VALUES(85,'Quis Corp.');
INSERT INTO Odjel(id_odjel,naziv) VALUES(86,'Nascetur Ridiculus Inc.');
INSERT INTO Odjel(id_odjel,naziv) VALUES(87,'Ut Eros Non Consulting');
INSERT INTO Odjel(id_odjel,naziv) VALUES(88,'Iaculis Odio Nam Associates');
INSERT INTO Odjel(id_odjel,naziv) VALUES(89,'Nec LLC');
INSERT INTO Odjel(id_odjel,naziv) VALUES(90,'Erat Foundation');
INSERT INTO Odjel(id_odjel,naziv) VALUES(91,'Velit Pellentesque Ultricies Consulting');
INSERT INTO Odjel(id_odjel,naziv) VALUES(92,'Scelerisque Corporation');
INSERT INTO Odjel(id_odjel,naziv) VALUES(93,'In LLP');
INSERT INTO Odjel(id_odjel,naziv) VALUES(94,'Risus At Consulting');
INSERT INTO Odjel(id_odjel,naziv) VALUES(95,'Aliquam Enim Nec PC');
INSERT INTO Odjel(id_odjel,naziv) VALUES(96,'Arcu Vestibulum LLC');
INSERT INTO Odjel(id_odjel,naziv) VALUES(97,'At Augue Id Ltd');
INSERT INTO Odjel(id_odjel,naziv) VALUES(98,'Sapien Cras Incorporated');
INSERT INTO Odjel(id_odjel,naziv) VALUES(99,'Pede Blandit Corporation');
INSERT INTO Odjel(id_odjel,naziv) VALUES(100,'Et Malesuada Fames Foundation');



INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('380','427',1,1);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('278','429',2,2);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('836','618',3,3);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('371','990',4,4);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('867','450',5,5);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('150','465',6,6);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('172','150',7,7);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('646','787',8,8);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('574','686',9,9);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('964','218',10,10);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('707','180',11,11);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('451','701',12,12);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('785','568',13,13);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('133','242',14,14);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('986','183',15,15);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('387','928',16,16);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('311','375',17,17);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('450','711',18,18);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('209','187',19,19);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('884','719',20,20);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('614','296',21,21);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('465','648',22,22);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('414','612',23,23);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('497','236',24,24);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('168','580',25,25);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('580','725',26,26);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('420','125',27,27);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('677','167',28,28);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('912','259',29,29);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('269','133',30,30);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('870','266',31,31);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('404','663',32,32);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('745','672',33,33);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('141','186',34,34);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('852','909',35,35);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('157','155',36,36);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('318','743',37,37);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('254','229',38,38);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('603','897',39,39);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('384','961',40,40);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('782','676',41,41);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('276','965',42,42);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('965','773',43,43);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('314','628',44,44);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('291','284',45,45);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('605','432',46,46);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('407','413',47,47);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('881','165',48,48);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('926','964',49,49);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('885','524',50,50);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('704','589',51,51);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('118','370',52,52);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('566','477',53,53);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('729','656',54,54);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('149','122',55,55);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('378','727',56,56);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('550','628',57,57);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('699','696',58,58);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('364','514',59,59);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('809','370',60,60);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('564','548',61,61);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('407','432',62,62);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('861','605',63,63);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('242','679',64,64);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('152','757',65,65);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('140','298',66,66);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('905','625',67,67);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('297','946',68,68);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('945','479',69,69);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('710','455',70,70);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('694','908',71,71);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('423','921',72,72);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('483','582',73,73);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('235','539',74,74);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('831','115',75,75);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('310','381',76,76);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('714','818',77,77);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('901','313',78,78);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('975','356',79,79);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('221','331',80,80);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('988','439',81,81);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('210','792',82,82);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('973','490',83,83);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('445','597',84,84);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('635','240',85,85);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('472','435',86,86);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('305','171',87,87);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('192','947',88,88);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('822','453',89,89);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('956','732',90,90);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('979','663',91,91);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('659','352',92,92);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('650','326',93,93);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('227','951',94,94);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('654','844',95,95);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('305','193',96,96);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('671','620',97,97);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('397','362',98,98);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('548','261',99,99);
INSERT INTO Uposlenik(broj_telefona,plata,id_odjel,id_uposlenika) VALUES('273','853',100,100);


INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(1,'852','505','Jan 3, 2005');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(2,'439','354','May 16, 2010');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(3,'217','577','Sep 15, 2016');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(4,'329','215','Jun 21, 2016');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(5,'700','806','Mar 8, 2010');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(6,'271','736','Oct 14, 2018');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(7,'388','461','Jul 29, 2004');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(8,'890','231','Mar 2, 2014');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(9,'483','180','Sep 9, 2011');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(10,'474','349','Nov 7, 2016');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(11,'160','178','Apr 6, 2006');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(12,'808','612','May 15, 2005');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(13,'988','439','May 12, 2015');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(14,'553','592','Sep 21, 2017');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(15,'355','840','Jan 7, 2017');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(16,'434','721','Oct 18, 2013');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(17,'275','259','Oct 23, 2010');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(18,'797','704','Feb 10, 2011');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(19,'911','671','Jul 30, 2017');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(20,'137','773','Apr 29, 2001');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(21,'878','938','Sep 15, 2010');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(22,'823','434','Nov 27, 2003');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(23,'136','348','May 24, 2019');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(24,'331','448','Jan 16, 2004');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(25,'523','290','Apr 15, 2001');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(26,'276','308','Nov 22, 2015');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(27,'256','260','May 22, 2005');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(28,'991','935','Dec 16, 2013');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(29,'911','489','Jun 4, 2006');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(30,'656','582','Aug 3, 2002');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(31,'153','422','May 30, 2010');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(32,'825','723','Jun 24, 2004');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(33,'244','730','Mar 10, 2020');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(34,'249','420','Aug 2, 2018');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(35,'744','548','Aug 13, 2003');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(36,'881','710','May 13, 2017');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(37,'501','891','Oct 1, 2012');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(38,'141','248','Jun 7, 2012');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(39,'547','680','Jan 26, 2003');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(40,'460','819','Apr 17, 2012');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(41,'710','221','Apr 28, 2014');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(42,'330','822','May 8, 2017');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(43,'553','926','Dec 9, 2008');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(44,'726','205','Jan 31, 2010');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(45,'392','829','Sep 9, 2003');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(46,'159','999','Dec 21, 2019');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(47,'362','723','May 30, 2006');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(48,'431','154','Feb 25, 2005');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(49,'506','517','Nov 16, 2009');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(50,'891','344','Feb 22, 2017');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(51,'183','946','Aug 20, 2009');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(52,'675','503','Aug 26, 2014');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(53,'707','594','Oct 4, 2015');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(54,'331','883','Feb 5, 2002');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(55,'741','184','Jun 4, 2018');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(56,'852','936','Jul 18, 2001');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(57,'146','233','Nov 30, 2003');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(58,'282','549','May 6, 2004');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(59,'598','768','Jan 5, 2005');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(60,'516','360','Nov 24, 2002');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(61,'766','909','May 26, 2007');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(62,'981','376','Dec 13, 2016');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(63,'503','237','May 15, 2001');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(64,'144','339','Jul 12, 2015');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(65,'993','269','Nov 9, 2003');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(66,'397','661','Jun 9, 2003');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(67,'489','344','Sep 7, 2007');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(68,'316','263','Sep 19, 2013');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(69,'987','895','Oct 10, 2004');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(70,'795','475','Jun 13, 2018');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(71,'712','694','May 23, 2001');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(72,'540','350','Nov 12, 2005');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(73,'970','971','Jun 27, 2013');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(74,'720','337','Jul 9, 2015');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(75,'407','604','Jul 24, 2005');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(76,'983','570','Jan 2, 2020');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(77,'814','695','Nov 16, 2007');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(78,'874','215','Jul 30, 2005');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(79,'327','953','Jan 13, 2003');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(80,'646','422','Dec 28, 2014');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(81,'193','990','Jun 9, 2009');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(82,'922','987','Oct 28, 2019');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(83,'751','207','Jul 7, 2018');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(84,'794','656','Dec 30, 2006');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(85,'164','331','Oct 18, 2012');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(86,'446','809','May 31, 2019');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(87,'446','210','Dec 25, 2006');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(88,'422','297','Aug 21, 2013');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(89,'211','862','Oct 27, 2014');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(90,'233','232','Dec 2, 2003');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(91,'352','523','Dec 18, 2005');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(92,'246','244','Nov 20, 2016');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(93,'205','852','Aug 30, 2014');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(94,'192','636','May 7, 2012');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(95,'446','573','Sep 21, 2013');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(96,'755','502','Sep 10, 2004');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(97,'229','949','Jan 19, 2018');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(98,'320','263','Jul 28, 2003');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(99,'217','469','Mar 25, 2004');
INSERT INTO Racun(id_racuna,iznos,popust,datum_placanja) VALUES(100,'250','444','Apr 5, 2009');


INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(1,'Jun 20, 2010','Jul 8, 2010','137');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(2,'Nov 11, 2010','Dec 27, 2010','434');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(3,'Apr 9, 2010','Jun 12, 2010','970');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(4,'Mar 16, 2010','May 2, 2010','590');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(5,'Oct 13, 2010','Oct 19, 2010','571');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(6,'Sep 25, 2010','Oct 16, 2010','572');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(7,'Aug 17, 2010','Aug 20, 2010','149');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(8,'Jul 3, 2010','Aug 1, 2010','851');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(9,'Jul 13, 2010','Jul 19, 2010','499');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(10,'Jul 24, 2010','Jul 28, 2010','533');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(11,'Aug 3, 2010','Aug 28, 2010','507');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(12,'Jun 14, 2010','Jun 17, 2010','356');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(13,'Apr 23, 2010','May 1, 2010','128');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(14,'Jun 20, 2010','Jun 23, 2010','236');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(15,'Aug 25, 2010','Aug 28, 2010','184');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(16,'Nov 22, 2011','Nov 23, 2011','567');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(17,'Nov 12, 2011','Nov 22, 2011','156');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(18,'Jul 18, 2011','Jul 20, 2011','403');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(19,'Aug 12, 2011','Aug 15, 2011','904');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(20,'Nov 7, 2011','Nov 18, 2011','130');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(21,'Aug 20, 2011','Aug 26, 2011','415');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(22,'Dec 6, 2011','Dec 20, 2011','330');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(23,'Aug 16, 2015','Aug 21, 2015','648');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(24,'Dec 6, 2015','Dec 18, 2015','310');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(25,'Jun 12, 2011','Jun 12, 2011','893');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(26,'Oct 6, 2012','Oct 25, 2012','474');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(27,'Jul 25, 2012','Jul 30, 2012','420');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(28,'Oct 6, 2012','Oct 8, 2012','979');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(29,'Jul 10, 2012','Jul 11, 2012','159');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(30,'Sep 23, 2012','Oct 2, 2012','913');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(31,'Jul 26, 2012','Jul 30, 2012','685');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(32,'Jul 26, 2015','Jul 8, 2015','229');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(33,'Nov 1, 2015','Nov 4, 2015','671');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(34,'Aug 11, 2012','Aug 14, 2012','711');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(35,'Jun 10, 2013','Jun 25, 2013','342');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(36,'Nov 5, 2013','Nov 17, 2013','173');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(37,'Sep 11, 2013','Sep 13, 2013','600');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(38,'Jun 25, 2013','Jun 28, 2013','525');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(39,'Nov 21, 2013','Nov 25, 2013','238');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(40,'Sep 3, 2013','Sep 9, 2013','483');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(41,'Aug 21, 2013','Aug 25, 2013','532');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(42,'Oct 13, 2013','Oct 15, 2013','769');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(43,'Nov 4, 2015','Nov 8, 2015','722');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(44,'Sep 12, 2015','Sep 17, 2015','801');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(45,'Dec 7, 2014','Dec 9, 2014','144');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(46,'Nov 23, 2014','Nov 16, 2014','507');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(47,'Jun 26, 2014','Jul 8, 2014','692');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(48,'Jun 29, 2014','Aug 2, 2014','194');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(49,'Oct 9, 2014','Oct 11, 2014','877');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(50,'Jul 6, 2014','Aug 23, 2014','265');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(51,'Aug 23, 2016','Aug 28, 2016','844');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(52,'Jul 22, 2016','Jul 31, 2016','579');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(53,'Sep 2, 2016','Sep 8, 2016','854');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(54,'Jul 17, 2016','Jul 25, 2016','572');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(55,'Oct 25, 2016','Oct 30, 2016','254');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(56,'Nov 25, 2016','Nov 27, 2016','471');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(57,'Sep 1, 2016','Aug 6, 2016','430');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(58,'Nov 30, 2016','Jul 21, 2016','356');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(59,'Jul 13, 2016','Oct 12, 2016','958');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(60,'Dec 15, 2016','Dec 22, 2016','277');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(61,'Jul 8, 2017','Jul 19, 2017','500');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(62,'Jul 3, 2017','Jul 9, 2017','762');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(63,'Jun 6, 2017','Jun 15, 2017','136');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(64,'Aug 20, 2017','Aug 29, 2017','516');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(65,'Jun 17, 2017','Jun 23, 2017','753');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(66,'Jul 15, 2017','Jul 22, 2017','731');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(67,'Jul 12, 2017','Jul 23, 2017','540');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(68,'Oct 31, 2017','Oct 16, 2017','674');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(69,'Aug 27, 2017','Aug 31, 2017','660');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(70,'Aug 2, 2017','Aug 4, 2017','226');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(71,'Aug 1, 2018','Aug 11, 2018','614');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(72,'Sep 4, 2018','Sep 20, 2018','169');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(73,'Aug 5, 2018','Aug 13, 2018','331');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(74,'Nov 29, 2018','Dec 2, 2018','543');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(75,'Dec 2, 2018','Dec 19, 2018','575');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(76,'Oct 28, 2018','Nov 2, 2018','822');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(77,'Oct 5, 2018','Oct 15, 2018','954');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(78,'Oct 17, 2018','Oct 19, 2018','840');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(79,'Nov 23, 2018','Nov 29, 2018','969');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(80,'Dec 2, 2018','Dec 25, 2018','334');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(81,'Aug 12, 2019','Nov 12, 2019','434');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(82,'Jun 29, 2019','Jul 9, 2019','200');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(83,'Nov 12, 2019','Nov 15, 2019','926');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(84,'Sep 21, 2019','Sep 24, 2019','237');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(85,'Dec 12, 2019','Dec 18, 2019','197');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(86,'Aug 10, 2019','Aug 15, 2019','657');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(87,'Sep 9, 2019','Sep 12, 2019','706');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(88,'Aug 4, 2019','Aug 11, 2019','263');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(89,'Nov 7, 2019','Nov 9, 2019','624');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(90,'Sep 14, 2019','Sep 18, 2019','259');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(91,'Jul 18, 2020','Jul 21, 2020','718');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(92,'Nov 30, 2020','Dec 3, 2020','636');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(93,'Oct 15, 2020','Oct 20, 2020','887');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(94,'Jun 20, 2020','Jun 25, 2020','554');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(95,'Oct 5, 2020','Oct 10, 2020','230');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(96,'Nov 11, 2020','Nov 15, 2020','222');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(97,'Jul 3, 2020','Jul 10, 2020','277');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(98,'Dec 3, 2020','Dec 5, 2020','885');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(99,'Aug 7, 2020','Aug 13, 2020','307');
INSERT INTO Ugovor(id_ugovora,datum_iznajmljivanja,datum_vracanja,osiguranje) VALUES(100,'Oct 9, 2020','Oct 10, 2020','840');


INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(1,'791','Taylor','Zephania','888','dizel','947','Nov 3, 2013');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(2,'710','Zane','Maggy','277','dizel','734','Nov 6, 2020');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(3,'264','Clayton','Deirdre','729','dizel','960','May 30, 2014');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(4,'177','Kuame','Mechelle','465','dizel','625','Jun 8, 2014');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(5,'686','Winifred','Justin','950','dizel','156','Jun 6, 2014');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(6,'897','Shellie','Aileen','474','dizel','475','Nov 30, 2012');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(7,'130','Serina','Martha','958','dizel','742','Oct 4, 2014');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(8,'301','Keelie','Hope','599','dizel','150','Jan 7, 2017');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(9,'201','Whoopi','Laurel','848','dizel','565','Apr 15, 2015');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(10,'789','Drew','Clinton','936','dizel','694','Sep 19, 2015');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(11,'338','Jerome','Lamar','583','dizel','578','Jan 5, 2017');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(12,'982','Brandon','Zenaida','551','dizel','775','Apr 10, 2017');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(13,'725','Nell','Cadman','469','dizel','453','Jul 26, 2011');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(14,'527','Blossom','Nissim','295','dizel','705','Oct 23, 2013');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(15,'588','Kevin','Nelle','842','dizel','853','Jan 1, 2017');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(16,'476','Quamar','Nasim','600','dizel','483','May 6, 2013');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(17,'940','Wang','Xaviera','495','dizel','387','Oct 3, 2013');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(18,'494','Lunea','Mari','372','dizel','983','Jun 5, 2011');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(19,'595','Quincy','Chloe','377','dizel','921','Sep 24, 2015');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(20,'792','Lavinia','Berk','362','dizel','124','Dec 18, 2013');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(21,'943','Miranda','Xena','652','dizel','975','Sep 14, 2016');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(22,'736','Thomas','Travis','130','dizel','330','Jul 7, 2016');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(23,'818','Kareem','Driscoll','944','dizel','929','Sep 14, 2013');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(24,'614','Britanney','Mark','276','dizel','910','Mar 23, 2014');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(25,'699','Warren','Candice','331','dizel','598','Jul 2, 2015');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(26,'492','Oscar','Petra','696','dizel','234','Jan 28, 2015');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(27,'682','Scott','Karen','497','dizel','190','Jul 7, 2014');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(28,'391','Ethan','Nayda','156','dizel','300','Dec 13, 2020');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(29,'165','Trevor','Lydia','316','dizel','393','Feb 9, 2020');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(30,'267','Hedley','Lane','457','dizel','482','Jan 27, 2020');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(31,'266','Owen','Buckminster','316','dizel','793','Apr 26, 2018');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(32,'422','Hiram','Guy','755','dizel','603','Feb 1, 2019');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(33,'259','Irene','Travis','567','dizel','557','Mar 12, 2019');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(34,'868','Aubrey','Alexander','798','dizel','736','Dec 8, 2016');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(35,'238','Tarik','Aimee','717','dizel','223','Apr 3, 2020');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(36,'715','Idona','Zorita','559','dizel','921','Jan 6, 2016');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(37,'722','Amy','Ezra','498','dizel','737','Feb 12, 2013');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(38,'949','Vladimir','Sean','711','dizel','807','Sep 10, 2018');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(39,'482','Cade','Ivy','513','dizel','439','Feb 17, 2011');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(40,'700','Jeremy','Tatum','853','dizel','731','Jul 17, 2015');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(41,'465','Uriel','Grant','380','dizel','875','Feb 8, 2016');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(42,'203','Victor','Lionel','289','dizel','479','Oct 29, 2012');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(43,'165','Clayton','Blair','784','dizel','953','Dec 26, 2014');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(44,'251','Eric','Randall','403','dizel','892','Sep 30, 2017');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(45,'771','Jakeem','Bert','452','dizel','827','Feb 7, 2019');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(46,'194','Dale','Sierra','693','dizel','878','Apr 19, 2014');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(47,'130','Demetrius','Stone','363','dizel','916','Jan 4, 2011');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(48,'225','Gannon','Natalie','172','dizel','688','Jul 28, 2014');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(49,'572','August','Stone','382','dizel','667','Jun 5, 2012');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(50,'657','Felix','Dane','884','dizel','696','Jun 20, 2015');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(51,'721','Dillon','Galena','918','benzin','466','Sep 22, 2018');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(52,'464','Medge','Kellie','981','benzin','514','Jul 12, 2016');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(53,'130','Stephen','Tatum','151','benzin','292','Dec 21, 2014');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(54,'642','Belle','Lenore','295','benzin','365','Aug 21, 2014');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(55,'338','Henry','Idola','497','benzin','948','Mar 11, 2016');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(56,'652','Andrew','Lamar','508','benzin','332','Oct 2, 2019');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(57,'890','Harlan','Upton','249','benzin','526','Dec 26, 2016');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(58,'887','Owen','Myles','287','benzin','358','Feb 24, 2020');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(59,'702','Garrison','Illiana','459','benzin','160','Jun 7, 2012');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(60,'409','Walker','Skyler','838','benzin','541','Jun 30, 2012');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(61,'336','Alexis','Finn','173','benzin','212','Jul 20, 2011');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(62,'646','Haviva','Nyssa','693','benzin','133','Aug 4, 2012');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(63,'604','Benjamin','Blaine','667','benzin','378','Sep 9, 2013');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(64,'618','Elijah','Ethan','490','benzin','642','Oct 7, 2019');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(65,'374','Raven','Davis','702','benzin','431','May 21, 2019');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(66,'183','Daphne','Ezekiel','872','benzin','953','Sep 20, 2012');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(67,'495','Brent','Giacomo','290','benzin','232','Jun 10, 2012');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(68,'574','Damon','Jackson','236','benzin','769','Dec 18, 2015');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(69,'599','May','Lucy','417','benzin','508','Feb 13, 2012');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(70,'329','Marny','Nicole','696','benzin','973','Jan 11, 2015');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(71,'866','Zorita','Ebony','390','benzin','363','Feb 15, 2016');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(72,'677','Serina','Yen','469','benzin','386','Feb 24, 2019');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(73,'152','Myles','Thomas','594','benzin','912','May 8, 2015');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(74,'942','Dai','Andrew','330','benzin','673','Aug 7, 2018');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(75,'947','Karly','Hilel','699','benzin','643','Jan 31, 2017');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(76,'345','Demetria','Madison','780','benzin','147','Jul 19, 2018');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(77,'988','Bert','Kaye','661','benzin','368','Dec 18, 2011');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(78,'781','Iona','Galena','118','benzin','679','Aug 16, 2013');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(79,'894','Beck','Guy','447','benzin','986','Apr 26, 2013');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(80,'976','Fletcher','Gannon','247','benzin','548','Sep 13, 2015');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(81,'723','Keith','Sawyer','953','benzin','810','Oct 9, 2011');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(82,'758','Kareem','Ursula','235','benzin','851','Jun 25, 2020');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(83,'295','Dacey','Brent','165','benzin','707','Aug 7, 2017');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(84,'259','Fleur','Gail','788','benzin','118','Apr 13, 2015');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(85,'980','Blythe','Todd','971','benzin','367','Jul 16, 2017');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(86,'330','Kaseem','Nolan','907','benzin','420','Aug 4, 2015');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(87,'115','Talon','Adara','491','benzin','366','Feb 7, 2011');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(88,'133','Russell','Amela','606','benzin','358','Oct 1, 2018');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(89,'284','Germane','Griffin','667','benzin','390','Mar 20, 2020');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(90,'126','Ashely','Lucian','953','benzin','552','May 2, 2018');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(91,'919','Kyla','Amber','967','benzin','208','Oct 28, 2015');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(92,'399','Tanya','Brynne','147','benzin','163','Mar 16, 2018');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(93,'885','Cara','Yuli','571','benzin','749','Nov 30, 2016');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(94,'197','Hiram','Colby','851','benzin','906','Mar 9, 2018');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(95,'699','Mary','Blair','480','benzin','316','Mar 1, 2016');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(96,'985','Felicia','Zeus','776','benzin','497','Oct 26, 2014');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(97,'403','Barry','Cadman','375','benzin','692','Feb 19, 2011');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(98,'311','Dolan','Garrison','968','benzin','991','Jun 8, 2020');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(99,'699','Orlando','Moses','176','benzin','584','Jan 18, 2014');
INSERT INTO Automobil(id_automobila,kategorija,proizvodjac,model,registracija,gorivo,vrsta_upravljanja,datum_zadnjeg_servisa) VALUES(100,'845','Noble','Latifah','894','benzin','478','Dec 12, 2015');


INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(1,1,1,1,1,1,1,1);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(2,2,2,2,2,2,2,2);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(3,3,3,3,3,3,3,3);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(4,4,4,4,4,4,4,4);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(5,5,5,5,5,5,5,5);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(6,6,6,6,6,6,6,6);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(7,7,7,7,7,7,7,7);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(8,8,8,8,8,8,8,8);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(9,9,9,9,9,9,9,9);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(10,10,10,10,10,10,10,10);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(11,11,11,11,11,11,11,11);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(12,12,12,12,12,12,12,12);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(13,13,13,13,13,13,13,13);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(14,14,14,14,14,14,14,14);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(15,15,15,15,15,15,15,15);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(16,16,16,16,16,16,16,16);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(17,17,17,17,17,17,17,17);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(18,18,18,18,18,18,18,18);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(19,19,19,19,19,19,19,19);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(20,20,20,20,20,20,20,20);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(21,21,21,21,21,21,21,21);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(22,22,22,22,22,22,22,22);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(23,23,23,23,23,23,23,23);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(24,24,24,24,24,24,24,24);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(25,25,25,25,25,25,25,25);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(26,26,26,26,26,26,26,26);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(27,27,27,27,27,27,27,27);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(28,28,28,28,28,28,28,28);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(29,29,29,29,29,29,29,29);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(30,30,30,30,30,30,30,30);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(31,31,31,31,31,31,31,31);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(32,32,32,32,32,32,32,32);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(33,33,33,33,33,33,33,33);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(34,34,34,34,34,34,34,34);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(35,35,35,35,35,35,35,35);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(36,36,36,36,36,36,36,36);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(37,37,37,37,37,37,37,37);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(38,38,38,38,38,38,38,38);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(39,39,39,39,39,39,39,39);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(40,40,40,40,40,40,40,40);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(41,41,41,41,41,41,41,41);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(42,42,42,42,42,42,42,42);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(43,43,43,43,43,43,43,43);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(44,44,44,44,44,44,44,44);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(45,45,45,45,45,45,45,45);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(46,46,46,46,46,46,46,46);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(47,47,47,47,47,47,47,47);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(48,48,48,48,48,48,48,48);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(49,49,49,49,49,49,49,49);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(50,50,50,50,50,50,50,50);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(51,51,51,51,51,51,51,51);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(52,52,52,52,52,52,52,52);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(53,53,53,53,53,53,53,53);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(54,54,54,54,54,54,54,54);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(55,55,55,55,55,55,55,55);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(56,56,56,56,56,56,56,56);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(57,57,57,57,57,57,57,57);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(58,58,58,58,58,58,58,58);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(59,59,59,59,59,59,59,59);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(60,60,60,60,60,60,60,60);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(61,61,61,61,61,61,61,61);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(62,62,62,62,62,62,62,62);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(63,63,63,63,63,63,63,63);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(64,64,64,64,64,64,64,64);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(65,65,65,65,65,65,65,65);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(66,66,66,66,66,66,66,66);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(67,67,67,67,67,67,67,67);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(68,68,68,68,68,68,68,68);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(69,69,69,69,69,69,69,69);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(70,70,70,70,70,70,70,70);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(71,71,71,71,71,71,71,71);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(72,72,72,72,72,72,72,72);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(73,73,73,73,73,73,73,73);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(74,74,74,74,74,74,74,74);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(75,75,75,75,75,75,75,75);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(76,76,76,76,76,76,76,76);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(77,77,77,77,77,77,77,77);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(78,78,78,78,78,78,78,78);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(79,79,79,79,79,79,79,79);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(80,80,80,80,80,80,80,80);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(81,81,81,81,81,81,81,81);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(82,82,82,82,82,82,82,82);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(83,83,83,83,83,83,83,83);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(84,84,84,84,84,84,84,84);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(85,85,85,85,85,85,85,85);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(86,86,86,86,86,86,86,86);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(87,87,87,87,87,87,87,87);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(88,88,88,88,88,88,88,88);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(89,89,89,89,89,89,89,89);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(90,90,90,90,90,90,90,90);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(91,91,91,91,91,91,91,91);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(92,92,92,92,92,92,92,92);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(93,93,93,93,93,93,93,93);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(94,94,94,94,94,94,94,94);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(95,95,95,95,95,95,95,95);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(96,96,96,96,96,96,96,96);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(97,97,97,97,97,97,97,97);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(98,98,98,98,98,98,98,98);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(99,99,99,99,99,99,99,99);
INSERT INTO Iznajmljivanje(id_iznajmljivanja,id_automobila,id_vozaca,id_ugovora,id_poslovnice,id_lokacija_preuzimanja,id_lokacija_vracanja,id_racuna) VALUES(100,100,100,100,100,100,100,100);