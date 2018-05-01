-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  sam. 28 avr. 2018 à 23:54
-- Version du serveur :  5.7.19
-- Version de PHP :  5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `krenger_quentin_gestionnaireinventaire_info1b_2018`
--

-- --------------------------------------------------------

--
-- Structure de la table `t_article`
--

DROP TABLE IF EXISTS `t_article`;
CREATE TABLE IF NOT EXISTS `t_article` (
  `id_article` int(11) NOT NULL AUTO_INCREMENT,
  `NumDeSerie_arti` varchar(62) DEFAULT NULL,
  `FK_garantie` int(11) NOT NULL,
  `FK_typeArticle` int(11) NOT NULL,
  PRIMARY KEY (`id_article`),
  KEY `fk_T_Article_T_Garantie_idx` (`FK_garantie`),
  KEY `fk_T_Article_T_TypeArticle1_idx` (`FK_typeArticle`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_article`
--

INSERT INTO `t_article` (`id_article`, `NumDeSerie_arti`, `FK_garantie`, `FK_typeArticle`) VALUES
(1, '2455584412556321', 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `t_article_marque`
--

DROP TABLE IF EXISTS `t_article_marque`;
CREATE TABLE IF NOT EXISTS `t_article_marque` (
  `id_articleMarque` int(11) NOT NULL AUTO_INCREMENT,
  `FK_article` int(11) NOT NULL,
  `FK_marque` int(11) NOT NULL,
  PRIMARY KEY (`id_articleMarque`),
  KEY `fk_T_Article_Marque_T_Article1_idx` (`FK_article`),
  KEY `fk_T_Article_Marque_T_Marque1_idx` (`FK_marque`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_article_marque`
--

INSERT INTO `t_article_marque` (`id_articleMarque`, `FK_article`, `FK_marque`) VALUES
(1, 1, 2);

-- --------------------------------------------------------

--
-- Structure de la table `t_emplacement`
--

DROP TABLE IF EXISTS `t_emplacement`;
CREATE TABLE IF NOT EXISTS `t_emplacement` (
  `id_emplacement` int(11) NOT NULL AUTO_INCREMENT,
  `Batiment_empl` varchar(50) DEFAULT NULL,
  `NumBureau_empl` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_emplacement`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_emplacement`
--

INSERT INTO `t_emplacement` (`id_emplacement`, `Batiment_empl`, `NumBureau_empl`) VALUES
(2, 'Provence', 1514),
(3, 'Lausanne', 5849),
(7, '', 1459),
(8, '', 1111);

-- --------------------------------------------------------

--
-- Structure de la table `t_garantie`
--

DROP TABLE IF EXISTS `t_garantie`;
CREATE TABLE IF NOT EXISTS `t_garantie` (
  `id_garantie` int(11) NOT NULL AUTO_INCREMENT,
  `DateDeFin_gara` date DEFAULT NULL,
  PRIMARY KEY (`id_garantie`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_garantie`
--

INSERT INTO `t_garantie` (`id_garantie`, `DateDeFin_gara`) VALUES
(1, '2018-03-15'),
(2, '2018-03-31');

-- --------------------------------------------------------

--
-- Structure de la table `t_mail`
--

DROP TABLE IF EXISTS `t_mail`;
CREATE TABLE IF NOT EXISTS `t_mail` (
  `id_mail` int(11) NOT NULL AUTO_INCREMENT,
  `Mail_mail` varchar(100) DEFAULT NULL,
  `FK_typeMail` int(11) NOT NULL,
  PRIMARY KEY (`id_mail`),
  KEY `fk_T_Mail_T_TypeMail1_idx` (`FK_typeMail`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_mail`
--

INSERT INTO `t_mail` (`id_mail`, `Mail_mail`, `FK_typeMail`) VALUES
(1, 'quentinkrenger@gmail.com', 1),
(2, 'quentinkrenger@loro.ch', 1);

-- --------------------------------------------------------

--
-- Structure de la table `t_marque`
--

DROP TABLE IF EXISTS `t_marque`;
CREATE TABLE IF NOT EXISTS `t_marque` (
  `id_marque` int(11) NOT NULL AUTO_INCREMENT,
  `Nom_marq` varchar(50) DEFAULT NULL,
  `FK_modele` int(11) NOT NULL,
  PRIMARY KEY (`id_marque`),
  KEY `fk_T_Marque_T_Modele1_idx` (`FK_modele`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_marque`
--

INSERT INTO `t_marque` (`id_marque`, `Nom_marq`, `FK_modele`) VALUES
(1, 'Lenovo', 1),
(2, 'HP', 2);

-- --------------------------------------------------------

--
-- Structure de la table `t_modele`
--

DROP TABLE IF EXISTS `t_modele`;
CREATE TABLE IF NOT EXISTS `t_modele` (
  `id_modele` int(11) NOT NULL AUTO_INCREMENT,
  `Nom_mode` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_modele`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_modele`
--

INSERT INTO `t_modele` (`id_modele`, `Nom_mode`) VALUES
(1, 'E470'),
(2, 'Legion'),
(3, '4785 HP');

-- --------------------------------------------------------

--
-- Structure de la table `t_numero`
--

DROP TABLE IF EXISTS `t_numero`;
CREATE TABLE IF NOT EXISTS `t_numero` (
  `id_numero` int(11) NOT NULL AUTO_INCREMENT,
  `Numero_nume` int(11) DEFAULT NULL,
  `FK_typeNumero` int(11) NOT NULL,
  PRIMARY KEY (`id_numero`),
  KEY `fk_T_Numero_T_TypeNumero1_idx` (`FK_typeNumero`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_numero`
--

INSERT INTO `t_numero` (`id_numero`, `Numero_nume`, `FK_typeNumero`) VALUES
(1, 796036834, 4);

-- --------------------------------------------------------

--
-- Structure de la table `t_personne`
--

DROP TABLE IF EXISTS `t_personne`;
CREATE TABLE IF NOT EXISTS `t_personne` (
  `id_personne` int(11) NOT NULL AUTO_INCREMENT,
  `Nom_pers` varchar(110) DEFAULT NULL,
  `Prenom_pers` varchar(110) DEFAULT NULL,
  `User_pers` varchar(5) DEFAULT NULL,
  `FK_emplacement` int(11) NOT NULL,
  PRIMARY KEY (`id_personne`),
  KEY `fk_T_Personne_T_Emplacement1_idx` (`FK_emplacement`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_personne`
--

INSERT INTO `t_personne` (`id_personne`, `Nom_pers`, `Prenom_pers`, `User_pers`, `FK_emplacement`) VALUES
(1, 'Krenger', 'Quentin', 'qukr1', 2);

-- --------------------------------------------------------

--
-- Structure de la table `t_personne_article`
--

DROP TABLE IF EXISTS `t_personne_article`;
CREATE TABLE IF NOT EXISTS `t_personne_article` (
  `id_PersonneArticle` int(11) NOT NULL AUTO_INCREMENT,
  `FK_personne` int(11) NOT NULL,
  `FK_Article` int(11) NOT NULL,
  PRIMARY KEY (`id_PersonneArticle`),
  KEY `fk_T_Personne_Article_T_Personne1_idx` (`FK_personne`),
  KEY `fk_T_Personne_Article_T_Article1_idx` (`FK_Article`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_personne_article`
--

INSERT INTO `t_personne_article` (`id_PersonneArticle`, `FK_personne`, `FK_Article`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `t_personne_mail`
--

DROP TABLE IF EXISTS `t_personne_mail`;
CREATE TABLE IF NOT EXISTS `t_personne_mail` (
  `id_personneMail` int(11) NOT NULL AUTO_INCREMENT,
  `FK_personne` int(11) NOT NULL,
  `FK_mail` int(11) NOT NULL,
  PRIMARY KEY (`id_personneMail`),
  KEY `fk_T_Personne_Mail_T_Personne1_idx` (`FK_personne`),
  KEY `fk_T_Personne_Mail_T_Mail1_idx` (`FK_mail`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_personne_mail`
--

INSERT INTO `t_personne_mail` (`id_personneMail`, `FK_personne`, `FK_mail`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `t_personne_numero`
--

DROP TABLE IF EXISTS `t_personne_numero`;
CREATE TABLE IF NOT EXISTS `t_personne_numero` (
  `id_personneNumero` int(11) NOT NULL AUTO_INCREMENT,
  `FK_personne` int(11) NOT NULL,
  `FK_numero` int(11) NOT NULL,
  PRIMARY KEY (`id_personneNumero`),
  KEY `fk_T_Personne_Numero_T_Personne1_idx` (`FK_personne`),
  KEY `fk_T_Personne_Numero_T_Numero1_idx` (`FK_numero`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_personne_numero`
--

INSERT INTO `t_personne_numero` (`id_personneNumero`, `FK_personne`, `FK_numero`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `t_typearticle`
--

DROP TABLE IF EXISTS `t_typearticle`;
CREATE TABLE IF NOT EXISTS `t_typearticle` (
  `id_typeArticle` int(11) NOT NULL AUTO_INCREMENT,
  `type_typeA` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_typeArticle`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_typearticle`
--

INSERT INTO `t_typearticle` (`id_typeArticle`, `type_typeA`) VALUES
(1, 'Ordinateur'),
(2, 'Clavier'),
(7, 'Souris'),
(9, 'Ecran');

-- --------------------------------------------------------

--
-- Structure de la table `t_typemail`
--

DROP TABLE IF EXISTS `t_typemail`;
CREATE TABLE IF NOT EXISTS `t_typemail` (
  `id_typeMail` int(11) NOT NULL AUTO_INCREMENT,
  `Personnel_typeE` varchar(45) DEFAULT NULL,
  `Professionnel_typeE` varchar(45) DEFAULT NULL,
  `Autre_typeE` varchar(45) DEFAULT NULL,
  `FK_typePersoMail` int(11) NOT NULL,
  PRIMARY KEY (`id_typeMail`),
  KEY `fk_T_TypeMail_T_TypePersoMail1_idx` (`FK_typePersoMail`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_typemail`
--

INSERT INTO `t_typemail` (`id_typeMail`, `Personnel_typeE`, `Professionnel_typeE`, `Autre_typeE`, `FK_typePersoMail`) VALUES
(1, 'Personnel', 'Pro.', 'Autre', 1);

-- --------------------------------------------------------

--
-- Structure de la table `t_typenumero`
--

DROP TABLE IF EXISTS `t_typenumero`;
CREATE TABLE IF NOT EXISTS `t_typenumero` (
  `id_typeNumero` int(11) NOT NULL AUTO_INCREMENT,
  `Mobile_typeN` binary(45) DEFAULT NULL,
  `Domicile_typeN` binary(45) DEFAULT NULL,
  `Professionel_typeN` varchar(45) DEFAULT NULL,
  `Fax_typeN` varchar(45) DEFAULT NULL,
  `Autre_typeN` varchar(45) DEFAULT NULL,
  `T_TypeNumerocol` varchar(45) DEFAULT NULL,
  `FK_typePersoNumero` int(11) NOT NULL,
  PRIMARY KEY (`id_typeNumero`),
  KEY `fk_T_TypeNumero_T_TypePersoNumero1_idx` (`FK_typePersoNumero`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_typenumero`
--

INSERT INTO `t_typenumero` (`id_typeNumero`, `Mobile_typeN`, `Domicile_typeN`, `Professionel_typeN`, `Fax_typeN`, `Autre_typeN`, `T_TypeNumerocol`, `FK_typePersoNumero`) VALUES
(3, 0x010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, NULL, NULL, NULL, NULL, NULL, 2),
(4, 0x010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, NULL, NULL, NULL, NULL, NULL, 2);

-- --------------------------------------------------------

--
-- Structure de la table `t_typepersomail`
--

DROP TABLE IF EXISTS `t_typepersomail`;
CREATE TABLE IF NOT EXISTS `t_typepersomail` (
  `id_typePersoMail` int(11) NOT NULL AUTO_INCREMENT,
  `Type_typePM` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_typePersoMail`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_typepersomail`
--

INSERT INTO `t_typepersomail` (`id_typePersoMail`, `Type_typePM`) VALUES
(1, 'juL');

-- --------------------------------------------------------

--
-- Structure de la table `t_typepersonumero`
--

DROP TABLE IF EXISTS `t_typepersonumero`;
CREATE TABLE IF NOT EXISTS `t_typepersonumero` (
  `id_typePersoNumero` int(11) NOT NULL AUTO_INCREMENT,
  `Type_typePN` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_typePersoNumero`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_typepersonumero`
--

INSERT INTO `t_typepersonumero` (`id_typePersoNumero`, `Type_typePN`) VALUES
(2, 'test');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `t_article`
--
ALTER TABLE `t_article`
  ADD CONSTRAINT `fk_T_Article_T_Garantie` FOREIGN KEY (`FK_garantie`) REFERENCES `t_garantie` (`id_garantie`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_T_Article_T_TypeArticle1` FOREIGN KEY (`FK_typeArticle`) REFERENCES `t_typearticle` (`id_typeArticle`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `t_mail`
--
ALTER TABLE `t_mail`
  ADD CONSTRAINT `fk_T_Mail_T_TypeMail1` FOREIGN KEY (`FK_typeMail`) REFERENCES `t_typemail` (`id_typeMail`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `t_numero`
--
ALTER TABLE `t_numero`
  ADD CONSTRAINT `fk_T_Numero_T_TypeNumero1` FOREIGN KEY (`FK_typeNumero`) REFERENCES `t_typenumero` (`id_typeNumero`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `t_personne`
--
ALTER TABLE `t_personne`
  ADD CONSTRAINT `fk_T_Personne_T_Emplacement1` FOREIGN KEY (`FK_emplacement`) REFERENCES `t_emplacement` (`id_emplacement`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `t_typemail`
--
ALTER TABLE `t_typemail`
  ADD CONSTRAINT `fk_T_TypeMail_T_TypePersoMail1` FOREIGN KEY (`FK_typePersoMail`) REFERENCES `t_typepersomail` (`id_typePersoMail`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `t_typenumero`
--
ALTER TABLE `t_typenumero`
  ADD CONSTRAINT `fk_T_TypeNumero_T_TypePersoNumero1` FOREIGN KEY (`FK_typePersoNumero`) REFERENCES `t_typepersonumero` (`id_typePersoNumero`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
