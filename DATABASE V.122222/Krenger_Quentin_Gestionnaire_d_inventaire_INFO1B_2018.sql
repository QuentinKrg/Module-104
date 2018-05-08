
-- DataBase 1.02.1548988845121 Alpha remake version 1.1
-- Merveilleux autheur : Quentin Krenger 

-- Creation de la db Krenger_Quentin_Gestionnaire_d_inventaire_INFO1B_2018C
CREATE DATABASE IF NOT EXISTS Krenger_Quentin_Gestionnaire_d_inventaire_INFO1B_2018;

-- Structure de `t_personne`

CREATE TABLE IF NOT EXISTS `t_personne` (
	`id_personne` int(11) NOT NULL,
	`Nom_pers` varchar(110) COLLATE utf8_bin NOT NULL,
	`Prenom_pers` varchar(110) COLLATE utf8_bin NOT NULL,
	`User_pers` varchar(5) COLLATE utf8_bin DEFAULT NULL
)	ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


-- Contenu de la table `t_personne`

INSERT INTO `t_personne`(`id_personne`,`Nom_pers`,`Prenom_pers`,`User_pers`) VALUES
(1,"Xavier","Mcguire","qfjs2"),
(2,"Chadwick","Glass","pfth3"),
(3,"Fuller","Cotton","ulcn4"),
(4,"Chandler","Collins","tewd5"),
(5,"William","Reyes","aqmb6"),
(6,"Holmes","Benjamin","jpai0"),
(7,"Arthur","Cotton","zmhn2"),
(8,"Paul","Walter","olnt2"),
(9,"Clark","Parrish","gmpg6"),
(10,"Christian","Mcfadden","yvqs9"),
(11,"Camden","Hines","jhsu7"),
(12,"Devin","Swanson","oauw1"),
(13,"Caesar","Powers","eagk3"),
(14,"Cadman","Wheeler","hydw6"),
(15,"Hector","Herring","edxh3"),
(16,"Zachary","Medina","yuza8"),
(17,"Hashim","York","lisu2"),
(18,"Lance","Reese","ybyk6"),
(19,"Ira","Barnett","pxfq3"),
(20,"Hakeem","Curtis","kdab4");

-- ---------------------------------------------------------------------

-- Structure de la table `t_personne_numero`


CREATE TABLE IF NOT EXISTS `t_personne_numero` (
	`id_personne_numero` int(11) NOT NULL,
	`FK_personne` INT(11) NOT NULL,
	`FK_numero` INT(11) NOT NULL
)	ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---------------------------------------------------------------------

-- Structure de la table `t_numero`

CREATE TABLE IF NOT EXISTS `t_numero` (
	`id_numero` INT(11) NOT NULL,
	`Numero_nume` VARCHAR(12) COLLATE utf8_bin NOT NULL,
	`FK_typeNumero` INT(11) NOT NULL
)	ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Contenu de la table `t_numero`

INSERT INTO `t_numero` (`id_numero`, `Numero_nume`, `FK_typeNumero`) VALUES
(1,"+41 87 054 52 80",2),
(2,"+41 04 236 14 47",2),
(3,"+41 35 154 79 33",1),
(4,"+41 37 298 80 84",4),
(5,"+41 54 081 56 09",1),
(6,"+41 86 549 39 59",4),
(7,"+41 74 222 75 15",5),
(8,"+41 30 811 32 77",3),
(9,"+41 49 096 32 04",3),
(10,"+41 93 613 72 06",5),
(11,"+41 02 459 63 76",4),
(12,"+41 25 386 24 71",2),
(13,"+41 66 605 73 21",1),
(14,"+41 84 121 64 96",1),
(15,"+41 09 356 21 80",4),
(16,"+41 41 460 75 08",3),
(17,"+41 51 246 08 49",2),
(18,"+41 18 582 08 72",1),
(19,"+41 45 797 30 16",5),
(20,"+41 00 540 98 25",4),
(21,"+41 99 152 07 68",2),
(22,"+41 11 176 41 77",5),
(23,"+41 34 717 67 87",4),
(24,"+41 67 115 14 92",2),
(25,"+41 78 094 68 96",4),
(26,"+41 86 013 04 63",3),
(27,"+41 30 981 21 34",3),
(28,"+41 94 316 36 97",3),
(29,"+41 53 421 36 84",2),
(30,"+41 16 687 73 23",4),
(31,"+41 25 128 94 66",4);

-- ---------------------------------------------------------------------

-- Structure de la table `t_typeNumero`

CREATE TABLE IF NOT EXISTS `t_typeNumero` (
	`id_typeNumero` INT(11) NOT NULL,
	`Type_typeN` VARCHAR(15) COLLATE utf8_bin NOT NULL
)	
ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Contenu de la table `t_typeNumero`

INSERT INTO `t_typeNumero` (`id_typeNumero`, `Type_typeN`) VALUES
(1,"Mobile"),
(2,"Domicile"),
(3,"Professionel"),
(4,"Fax."),
(5,"Autre.");

-- ---------------------------------------------------------------------

-- Structure de la table `t_personne_mail`

CREATE TABLE IF NOT EXISTS `t_personne_mail` (
	`id_personne_mail` INT(11) NOT NULL,
	`FK_personne` INT(11) NOT NULL,
	`FK_mail` INT(11) NOT NULL
) 	ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---------------------------------------------------------------------

-- Structure de la table `t_mail`

CREATE TABLE IF NOT EXISTS `t_mail` (
	`id_mail` INT(11) NOT NULL,
	`Mail_mail` VARCHAR(100) COLLATE utf8_bin NOT NULL,
	`FK_typeMail` INT(11) NOT NULL
) 	ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Contenu de la table `t_mail`

INSERT INTO `t_mail` (`id_mail`,`Mail_mail`,`FK_typeMail`) VALUES
(1,"ante@cursus.ca",2),
(2,"Integer.vitae@rutrumnonhendrerit.net",2),
(3,"a@sapien.org",3),
(4,"Nulla.tincidunt@ligula.com",2),
(5,"sapien.gravida@bibendumDonec.ca",3),
(6,"varius.orci@ligulaconsectetuerrhoncus.co.uk",3),
(7,"enim@aliquetmetusurna.org",3),
(8,"semper.dui@eunequepellentesque.ca",3),
(9,"venenatis.a.magna@elementumat.com",3),
(10,"ipsum.primis@augue.org",3),
(11,"In@urnaet.com",1),
(12,"diam@pellentesquetellus.net",1),
(13,"faucibus@tempusscelerisquelorem.org",2),
(14,"scelerisque.neque.Nullam@egetmetus.ca",1),
(15,"odio.tristique.pharetra@Morbi.net",3),
(16,"fringilla.purus.mauris@hymenaeosMauris.edu",2),
(17,"non.dui@at.ca",2),(18,"libero.Donec.consectetuer@congueIn.ca",1),
(19,"non.hendrerit@Aliquamnisl.net",1),
(20,"ultricies@loremlorem.ca",3),
(21,"consectetuer.cursus.et@sit.edu",3),
(22,"dui@amet.co.uk",1),
(23,"pharetra.Nam.ac@Nuncmauriselit.org",1),
(24,"suscipit@arcuVivamussit.org",2),
(25,"Aliquam@parturientmontes.ca",3),
(26,"sagittis@consequatpurus.co.uk",1),
(27,"rutrum.magna.Cras@nonegestasa.co.uk",1),
(28,"Lorem@atauctor.com",1),
(29,"suscipit@in.net",1),
(30,"imperdiet.ullamcorper@Quisquenonummy.ca",3),
(31,"eget.laoreet@non.edu",1);

-- ---------------------------------------------------------------------

-- Structure de la table `t_typeMail`
CREATE TABLE IF NOT EXISTS `t_typeMail` (
	`id_typeMail` INT(11) NOT NULL, 
	`Type_typeM` VARCHAR(15) COLLATE utf8_bin NOT NULL
)	ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Contenu de la table `t_typeMail`

INSERT INTO `t_typeMail` (`id_typeMail`,`Type_typeM`) VALUES
(1,"Privé"),
(2,"Professionel"),
(3,"Autre.");

-- ---------------------------------------------------------------------

-- Structure de la table `t_personne_article`

CREATE TABLE IF NOT EXISTS `t_personne_article` (
	`id_personne_article` INT(11) NOT NULL,
	`FK_personne` INT(11) NOT NULL,
	`FK_Article` INT(11) NOT NULL
) 	ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---------------------------------------------------------------------

-- Structure de la table `t_article`

CREATE TABLE IF NOT EXISTS `t_article` (
	`id_article` INT(11) NOT NULL,
	`NumDeSerie_arti` VARCHAR(62) COLLATE utf8_bin NOT NULL,
	`Type_arti` VARCHAR(50) COLLATE utf8_bin NOT NULL,
	`Garantie_arti` DATE NOT NULL,
	`FK_emplacement` INT(11) NOT NULL,
	`FK_modele` INT (11) NOT NULL
)	ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Contenu de la table `t_article`

INSERT INTO `t_article` (`id_article`,`NumDeSerie_arti`,`Type_arti`,`Garantie_arti`,`FK_emplacement`,`FK_modele`) VALUES
(1,"Z3d95DB8276U","Clavier et souris","09.03.19",3,1),
(2,"N9w16EN3918F","Ordinateur Portable","12.05.17",1,2),
(3,"J3z72YD4060A","Clavier et souris","15.07.18",2,3),
(4,"F3l69NJ4091S","Ordinateur Portable","15.12.18",4,4),
(5,"O5x35LT9497F","Ordinateur Portable","21.07.18",4,5),
(6,"J5a08NZ0838V","Ordinateur Fixe","18.02.18",4,6),
(7,"E8e51YP8059G","Clavier et souris","29.08.17",2,7),
(8,"B7s57QI8635X","Clavier et souris","29.10.18",2,8),
(9,"R7u87XY7379H","Ecran","15.03.18",1,9),
(10,"X4y70AE2068C","Ordinateur Fixe","17.12.18",2,10),
(11,"A2t84XF1190X","","19.05.17",2,11),
(12,"Q6h68FP9275N","Ordinateur Portable","05.11.18",4,12),
(13,"K1y40AC4019N","Clavier et souris","24.07.18",1,13),
(14,"U3w57IM6096F","Ordinateur Portable","12.07.17",2,14),
(15,"O6o40SC4040W","Ecran","29.04.19",1,15),
(16,"S5a08DE9233F","Clavier et souris","02.09.18",2,16),
(17,"G7v29MY6850J","","20.01.18",4,17),
(18,"G9y91BT0869Q","Ordinateur Fixe","08.12.18",4,17),
(19,"B3m50ME4395O","","17.01.19",3,18),
(20,"Y6f60QY5312W","Ordinateur Portable","24.11.17",2,14),
(21,"S7x70AM2181W","Ecran","25.06.17",4,5),
(22,"L9q99MR2545B","Ordinateur Fixe","03.05.18",3,30),
(23,"Y6s16SN8455Y","Clavier et souris","02.05.19",2,28),
(24,"M7w23OM0623E","Ecran","03.09.18",3,27),
(25,"F6b22PT7926M","Clavier et souris","09.06.17",2,14),
(26,"Z3g09PP6545U","Ordinateur Fixe","02.06.18",1,26),
(27,"A0c55YR5600E","Ecran","19.01.18",2,29),
(28,"Y6p03DG4550X","Clavier et souris","08.04.19",4,28),
(29,"M8q28OV0262O","","02.01.18",3,27),
(30,"T6u22JT9202Y","","20.11.18",2,22),
(31,"L2m50IU5083B","Ordinateur Fixe","05.04.19",3,21),
(32,"C4z65VW2265N","Ecran","01.01.18",3,23),
(33,"L5c87RJ6980Y","Ordinateur Fixe","30.03.18",3,19),
(34,"F8x21OA2579E","Ecran","16.11.18",4,20),
(35,"U7w78GM4686Z","Ecran","10.11.18",2,1),
(36,"E1f89VR5115L","Ordinateur Portable","26.10.18",2,2),
(37,"P5a50PT4710Q","Ordinateur Fixe","17.11.17",1,3),
(38,"W3t95VS6749P","","24.02.18",3,5),
(39,"X0i63SU3393E","Ordinateur Portable","09.11.18",3,25),
(40,"B4u78GA2745M","Ordinateur Portable","06.07.18",3,30),
(41,"F2l14GQ0033N","","22.06.18",2,30),
(42,"C5t64UC3547J","Ordinateur Fixe","03.10.17",4,02),
(43,"P7n94SC2423U","Ordinateur Fixe","06.12.17",2,14),
(44,"S6j12JG7169T","Clavier et souris","19.05.17",4,10),
(45,"E6a45NY4796R","Ordinateur Portable","21.07.17",1,17),
(46,"S3p10TW5757L","Clavier et souris","15.05.17",1,28),
(47,"D2n47ME8556O","Ordinateur Fixe","14.09.18",4,30),
(48,"C5o77RQ1216C","Ordinateur Portable","17.11.18",3,23),
(49,"V1s15NH1508L","Ecran","13.08.17",4,21),
(50,"X0f21UG5654H","Ordinateur Portable","18.01.18",4,11),
(51,"X9g53CY0213I","Ordinateur Fixe","08.09.18",4,16),
(52,"H5g35ZK2050K","Ordinateur Portable","14.04.18",3,19),
(53,"O1m50FC3300G","Clavier et souris","09.07.17",4,13),
(54,"X8b29OH3548S","","10.04.19",4,3),
(55,"J7u03IF4138B","Ecran","01.06.17",3,2),
(56,"T4a75IU3391X","Clavier et souris","14.12.17",3,9),
(57,"R7f04ER8207R","Clavier et souris","24.09.17",4,8),
(58,"P4v52ZV7311G","Ecran","15.07.18",2,7),
(59,"W8y92JD0754Z","Ecran","25.12.18",3,22),
(60,"H6h57CR6766F","Ordinateur Fixe","18.02.18",1,26),
(61,"Y6d00XR3413B","Clavier et souris","01.05.18",2,25),
(62,"V6w89IE8777R","","18.11.18",1,27),
(63,"Q3c82ST8855F","Ordinateur Portable","07.06.18",3,22),
(64,"F6o93JO3285D","Ordinateur Fixe","11.05.17",2,24),
(65,"C6k93JU0737U","Ordinateur Portable","09.12.18",3,21),
(66,"C9h82SX5887Z","","22.02.19",3,12),
(67,"X1l02PB0021H","Ordinateur Fixe","18.11.17",4,14),
(68,"E9n35TB9842C","Ordinateur Fixe","10.08.17",2,28),
(69,"J2p86IP1688C","Ordinateur Fixe","05.10.17",1,29),
(70,"C3v24RD3071M","Ordinateur Portable","03.09.18",3,27),
(71,"X6e72OU0916I","Ecran","16.03.18",3,22),
(72,"Y8h68AE6260G","Ordinateur Portable","03.11.17",4,27),
(73,"J2m74YO8305S","Ordinateur Portable","15.02.19",4,25),
(74,"P7h34ZY2743Z","Ecran","06.04.18",2,23),
(75,"O5l02HN9841H","Ecran","24.09.17",1,21),
(76,"A0g03EL9102D","Ordinateur Portable","19.06.17",2,27),
(77,"X5b56XJ0907B","Ordinateur Fixe","17.12.18",2,22),
(78,"T2s78SD3019D","","26.01.19",1,12),
(79,"F1o48UW4631S","Ordinateur Portable","15.05.17",2,12),
(80,"D4f72XX7303K","Ordinateur Fixe","14.02.19",4,12),
(81,"N7s23CE9701E","Ordinateur Fixe","06.11.17",4,2),
(82,"S7m53YZ7287T","Clavier et souris","25.04.19",3,1),
(83,"X8l06GD8842G","Ordinateur Portable","15.06.18",2,1),
(84,"G4m26UP5236F","Clavier et souris","28.02.18",4,1),
(85,"E6r77QV5157M","Clavier et souris","16.05.17",4,1),
(86,"I4k45UP5174X","","13.05.18",4,1),
(87,"Y3y59OY4061M","Clavier et souris","30.04.18",4,3),
(88,"B9b25DW5547R","Ordinateur Portable","01.06.17",2,3),
(89,"M6v29TY3406H","Clavier et souris","15.10.17",3,3),
(90,"P5u82WP5149Z","Ecran","01.10.18",3,3),
(91,"L4k57AQ8012F","Ordinateur Fixe","20.12.17",4,3),
(92,"K8a53KK5814P","Ordinateur Portable","16.12.18",1,3),
(93,"B7b55EY9715X","","12.02.19",2,3),
(94,"R8z31BR2504Z","Ecran","09.07.17",4,3),
(95,"B9h71KY2473O","Clavier et souris","16.11.18",3,8),
(96,"V9t70RV0047V","Clavier et souris","23.12.17",4,8),
(97,"U5h83ZC1179B","","26.07.17",3,27),
(98,"O9g38WY2692N","Ecran","24.08.18",2,28),
(99,"L0q83IH0439R","","02.02.18",1,7),
(100,"K5p02WE9438V","Ecran","06.07.18",3,9);

-- ---------------------------------------------------------------------

-- Structure de la table `t_emplacement`

CREATE TABLE IF NOT EXISTS `t_emplacement` (
	`id_emplacement` int(11) NOT NULL,
	`Batiment_empl` VARCHAR(20) COLLATE utf8_bin NOT NULL
)	ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Contenu de la table `t_emplacement`

INSERT INTO `t_emplacement` (`id_emplacement`,`Batiment_empl`) VALUES
(1,"Provence"),
(2,"Beaulieu"),
(3,"Flon"),
(4,"Belvédère");

-- ---------------------------------------------------------------------

--	Structure de la table `t_article_modele`

/*CREATE TABLE IF NOT EXISTS `t_article_modele` (
	`id_article_modele` INT(11) NOT NULL,
	`FK_modele` INT(11) NOT NULL,
	`FK_article` INT(11)NOT NULL
) 	ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;*/

-- ---------------------------------------------------------------------

-- Structure de la table `t_modele`
	
CREATE TABLE IF NOT EXISTS `t_modele` (
	`id_modele` INT(11) NOT NULL,
	`Nom_mode` VARCHAR(45) COLLATE utf8_bin NOT NULL,
	`FK_marque` INT(11) NOT NULL
) 	ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Contenu de la table `t_modele`

INSERT INTO `t_modele` (`id_modele`,`Nom_mode`,`FK_marque`) VALUES

(1,"H3pF9",1),
(2,"S0vY4",2),
(3,"Y5oO5",2),
(4,"A9bW3",2),
(5,"U2hY0",2),
(6,"E0iO0",2),
(7,"S8qQ5",3),
(8,"V6lI0",2),
(9,"P3yF2",4),
(10,"W4iL5",4),
(11,"B0kV9",2),
(12,"P2bK9",3),
(13,"F7nP2",4),
(14,"R6nF0",3),
(15,"O7mG6",3),
(16,"A3hG4",4),
(17,"S9zA3",3),
(18,"M5rI8",4),
(19,"I5wF1",1),
(20,"W4gV3",2),
(21,"R7pG3",3),
(22,"G0bU4",3),
(23,"M3dF2",4),
(24,"X8cK1",1),
(25,"M4zV1",4),
(26,"F2uM4",4),
(27,"O6uO3",2),
(28,"B8jF8",2),
(29,"H7sG1",4),
(30,"G9yV2",4),
(31,"I0pC2",1);

-- ---------------------------------------------------------------------

-- Structure de la table `t_marque`

CREATE TABLE IF NOT EXISTS `t_marque` (
	`id_marque` INT(11) NOT NULL,
	`Nom_marq` VARCHAR(50) COLLATE utf8_bin NOT NULL
) 	ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Contenu de la table `t_marque`

INSERT INTO `t_marque` (`id_marque`,`Nom_marq`) VALUES
(1,"Lenovo"),
(2,"Apple"),
(3,"Microsoft"),
(4,"DELL");

-- ---------------------------------------------------------------------

--
-- Index pour les tables exportées
--


-- Index pour la table `t_personne`

ALTER TABLE `t_personne`
	ADD PRIMARY KEY (`id_personne`);
	
-- Index pour la table `t_personne_numero`

ALTER TABLE `t_personne_numero`
	ADD PRIMARY KEY (`id_personne_numero`),
	ADD KEY `FK_personne` (`FK_personne`),
	ADD KEY `FK_numero` (`FK_numero`);
	
-- Index pour la table `t_numero`

ALTER TABLE `t_numero`
	ADD PRIMARY KEY (`id_numero`),
	ADD KEY `FK_typeNumero` (`FK_typeNumero`);
	
-- Index pour la table `t_typeNumero`

ALTER TABLE `t_typeNumero`
	ADD PRIMARY KEY (`id_typeNumero`);
	
-- Index pour la table `t_personne_mail`

ALTER TABLE `t_personne_mail`
	ADD PRIMARY KEY (`id_personne_mail`),
	ADD KEY `FK_personne` (`FK_personne`),
	ADD KEY `FK_mail` (`FK_mail`);
	
-- Index pour la table `t_mail`

ALTER TABLE `t_mail`
	ADD PRIMARY KEY (`id_mail`),
	ADD KEY `FK_typeMail` (`FK_typeMail`);
	
-- Index pour la table `t_typeMail`

ALTER TABLE `t_typeMail`
	ADD PRIMARY KEY (`id_typeMail`);
	
-- Index pour la table `t_personne_article`

ALTER TABLE `t_personne_article`
	ADD PRIMARY KEY (`id_personne_article`),
	ADD KEY `FK_personne` (`FK_personne`),
	ADD KEY `FK_article` (`FK_article`);
	
-- Index pour la table `t_article`

ALTER TABLE `t_article`
	ADD PRIMARY KEY (`id_article`),
	ADD KEY `FK_emplacement` (`FK_emplacement`),
	ADD KEY `FK_modele` (`FK_modele`);
	
-- Index pour la table `t_emplacement`

ALTER TABLE `t_emplacement`
	ADD PRIMARY KEY (`id_emplacement`);
	
-- Index pour la table `t_article_modele`

/*ALTER TABLE `t_article_modele`
	ADD PRIMARY KEY (`id_article_modele`), 
	ADD KEY `FK_modele` (`FK_modele`),
	ADD KEY `FK_article` (`FK_article`);*/
	
-- Index pour la table `t_modele`

ALTER TABLE `t_modele`
	ADD PRIMARY KEY (`id_modele`),
	ADD KEY `FK_marque` (`FK_marque`);
	
-- Index pour la table `t_marque`

ALTER TABLE `t_marque`
	ADD PRIMARY KEY (`id_marque`);
	
-- ---------------------------------------------------------------------
	
--
-- AUTO_INCREMENT pour la table `t_personne`
--

ALTER TABLE `t_personne`
	MODIFY `id_personne` INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
	
--
-- AUTO_INCREMENT pour la table `t_personne_numero`
--

ALTER TABLE `t_personne_numero`
	MODIFY `id_personne_numero` INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
	
--
-- AUTO_INCREMENT pour la table `t_numero`
--

ALTER TABLE `t_numero`
	MODIFY `id_numero` INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
	
--
-- AUTO_INCREMENT pour la table `t_typeNumero`
--

ALTER TABLE `t_typeNumero`
	MODIFY `id_typeNumero` INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
	
--
-- AUTO_INCREMENT pour la table `t_personne_mail`
--

ALTER TABLE `t_personne_mail`
	MODIFY `id_personne_mail` INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
	
--
-- AUTO_INCREMENT pour la table `t_mail`
--

ALTER TABLE `t_mail`
	MODIFY `id_mail` INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
	
--
-- AUTO_INCREMENT pour la table `t_typeMail`
--

ALTER TABLE `t_typeMail`
	MODIFY `id_typeMail` INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
 	
--
-- AUTO_INCREMENT pour la table `t_personne_article`
--

ALTER TABLE `t_personne_article`
	MODIFY `id_personne_article` INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
	
--
-- AUTO_INCREMENT pour la table `t_article`
--

ALTER TABLE `t_article`
	MODIFY `id_article` INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
	
--
-- AUTO_INCREMENT pour la table `t_emplacement`
--

ALTER TABLE `t_emplacement`
	MODIFY `id_emplacement` INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
	
--
-- AUTO_INCREMENT pour la table `t_article_modele`
--

/*ALTER TABLE `t_article_modele`
	MODIFY `id_article_modele` INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;*/
	
--
-- AUTO_INCREMENT pour la table `t_modele`
--

ALTER TABLE `t_modele`
	MODIFY `id_modele` INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
	
--
-- AUTO_INCREMENT pour la table `t_marque`
--

ALTER TABLE `t_marque`
	MODIFY `id_marque` INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
	