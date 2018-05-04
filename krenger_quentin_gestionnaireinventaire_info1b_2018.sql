-- MySQL Script generated by MySQL Workbench
-- Fri May  4 08:24:05 2018
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema krenger_quentin_gestionnaireinventaire_info1b_2018
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema krenger_quentin_gestionnaireinventaire_info1b_2018
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `krenger_quentin_gestionnaireinventaire_info1b_2018` DEFAULT CHARACTER SET utf8 ;
USE `krenger_quentin_gestionnaireinventaire_info1b_2018` ;

-- -----------------------------------------------------
-- Table `krenger_quentin_gestionnaireinventaire_info1b_2018`.`T_Garantie`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `krenger_quentin_gestionnaireinventaire_info1b_2018`.`T_Garantie` (
  `id_garantie` INT NOT NULL AUTO_INCREMENT,
  `DateDeFin_gara` DATE NULL,
  PRIMARY KEY (`id_garantie`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `krenger_quentin_gestionnaireinventaire_info1b_2018`.`T_TypeArticle`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `krenger_quentin_gestionnaireinventaire_info1b_2018`.`T_TypeArticle` (
  `id_typeArticle` INT NOT NULL AUTO_INCREMENT,
  `Type_typeA` VARCHAR(100) NULL,
  PRIMARY KEY (`id_typeArticle`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `krenger_quentin_gestionnaireinventaire_info1b_2018`.`T_Article`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `krenger_quentin_gestionnaireinventaire_info1b_2018`.`T_Article` (
  `id_article` INT NOT NULL AUTO_INCREMENT,
  `NumDeSerie_arti` VARCHAR(62) NULL,
  `FK_garantie` INT NOT NULL,
  `FK_typeArticle` INT NOT NULL,
  PRIMARY KEY (`id_article`),
  INDEX `fk_T_Article_T_Garantie_idx` (`FK_garantie` ASC),
  INDEX `fk_T_Article_T_TypeArticle1_idx` (`FK_typeArticle` ASC),
  CONSTRAINT `fk_T_Article_T_Garantie`
    FOREIGN KEY (`FK_garantie`)
    REFERENCES `krenger_quentin_gestionnaireinventaire_info1b_2018`.`T_Garantie` (`id_garantie`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_T_Article_T_TypeArticle1`
    FOREIGN KEY (`FK_typeArticle`)
    REFERENCES `krenger_quentin_gestionnaireinventaire_info1b_2018`.`T_TypeArticle` (`id_typeArticle`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `krenger_quentin_gestionnaireinventaire_info1b_2018`.`T_Emplacement`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `krenger_quentin_gestionnaireinventaire_info1b_2018`.`T_Emplacement` (
  `id_emplacement` INT NOT NULL AUTO_INCREMENT,
  `Batiment_empl` VARCHAR(50) NULL,
  `NumBureau_empl` INT NULL,
  PRIMARY KEY (`id_emplacement`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `krenger_quentin_gestionnaireinventaire_info1b_2018`.`T_Modele`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `krenger_quentin_gestionnaireinventaire_info1b_2018`.`T_Modele` (
  `id_modele` INT NOT NULL AUTO_INCREMENT,
  `Nom_mode` VARCHAR(45) NULL,
  PRIMARY KEY (`id_modele`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `krenger_quentin_gestionnaireinventaire_info1b_2018`.`T_Marque`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `krenger_quentin_gestionnaireinventaire_info1b_2018`.`T_Marque` (
  `id_marque` INT NOT NULL AUTO_INCREMENT,
  `Nom_marq` VARCHAR(50) NULL,
  `FK_modele` INT NOT NULL,
  PRIMARY KEY (`id_marque`),
  INDEX `fk_T_Marque_T_Modele1_idx` (`FK_modele` ASC),
  CONSTRAINT `fk_T_Marque_T_Modele1`
    FOREIGN KEY (`FK_modele`)
    REFERENCES `krenger_quentin_gestionnaireinventaire_info1b_2018`.`T_Modele` (`id_modele`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `krenger_quentin_gestionnaireinventaire_info1b_2018`.`T_Personne`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `krenger_quentin_gestionnaireinventaire_info1b_2018`.`T_Personne` (
  `id_personne` INT NOT NULL AUTO_INCREMENT,
  `Nom_pers` VARCHAR(110) NULL,
  `Prenom_pers` VARCHAR(110) NULL,
  `User_pers` VARCHAR(5) NULL,
  `FK_emplacement` INT NOT NULL,
  PRIMARY KEY (`id_personne`),
  INDEX `fk_T_Personne_T_Emplacement1_idx` (`FK_emplacement` ASC),
  CONSTRAINT `fk_T_Personne_T_Emplacement1`
    FOREIGN KEY (`FK_emplacement`)
    REFERENCES `krenger_quentin_gestionnaireinventaire_info1b_2018`.`T_Emplacement` (`id_emplacement`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `krenger_quentin_gestionnaireinventaire_info1b_2018`.`T_TypeMail`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `krenger_quentin_gestionnaireinventaire_info1b_2018`.`T_TypeMail` (
  `id_typeMail` INT NOT NULL AUTO_INCREMENT,
  `Type_typeM` VARCHAR(45) NULL,
  PRIMARY KEY (`id_typeMail`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `krenger_quentin_gestionnaireinventaire_info1b_2018`.`T_Mail`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `krenger_quentin_gestionnaireinventaire_info1b_2018`.`T_Mail` (
  `id_mail` INT NOT NULL AUTO_INCREMENT,
  `Mail_mail` VARCHAR(100) NULL,
  `FK_typeMail` INT NOT NULL,
  PRIMARY KEY (`id_mail`),
  INDEX `fk_T_Mail_T_TypeMail1_idx` (`FK_typeMail` ASC),
  CONSTRAINT `fk_T_Mail_T_TypeMail1`
    FOREIGN KEY (`FK_typeMail`)
    REFERENCES `krenger_quentin_gestionnaireinventaire_info1b_2018`.`T_TypeMail` (`id_typeMail`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `krenger_quentin_gestionnaireinventaire_info1b_2018`.`T_TypeNumero`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `krenger_quentin_gestionnaireinventaire_info1b_2018`.`T_TypeNumero` (
  `id_typeNumero` INT NOT NULL AUTO_INCREMENT,
  `Type_typeN` VARCHAR(45) NULL,
  PRIMARY KEY (`id_typeNumero`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `krenger_quentin_gestionnaireinventaire_info1b_2018`.`T_Numero`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `krenger_quentin_gestionnaireinventaire_info1b_2018`.`T_Numero` (
  `id_numero` INT NOT NULL AUTO_INCREMENT,
  `Numero_nume` INT NULL,
  `FK_typeNumero` INT NOT NULL,
  PRIMARY KEY (`id_numero`),
  INDEX `fk_T_Numero_T_TypeNumero1_idx` (`FK_typeNumero` ASC),
  UNIQUE INDEX `FK_typeNumero_UNIQUE` (`FK_typeNumero` ASC),
  CONSTRAINT `fk_T_Numero_T_TypeNumero1`
    FOREIGN KEY (`FK_typeNumero`)
    REFERENCES `krenger_quentin_gestionnaireinventaire_info1b_2018`.`T_TypeNumero` (`id_typeNumero`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `krenger_quentin_gestionnaireinventaire_info1b_2018`.`T_TypePersoMail`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `krenger_quentin_gestionnaireinventaire_info1b_2018`.`T_TypePersoMail` (
  `id_typePersoMail` INT NOT NULL AUTO_INCREMENT,
  `Type_typePM` VARCHAR(100) NULL,
  PRIMARY KEY (`id_typePersoMail`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `krenger_quentin_gestionnaireinventaire_info1b_2018`.`T_Personne_Article`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `krenger_quentin_gestionnaireinventaire_info1b_2018`.`T_Personne_Article` (
  `id_PersonneArticle` INT NOT NULL AUTO_INCREMENT,
  `FK_personne` INT NOT NULL,
  `FK_Article` INT NOT NULL,
  PRIMARY KEY (`id_PersonneArticle`),
  INDEX `fk_T_Personne_Article_T_Personne1_idx` (`FK_personne` ASC),
  INDEX `fk_T_Personne_Article_T_Article1_idx` (`FK_Article` ASC),
  CONSTRAINT `fk_T_Personne_Article_T_Personne1`
    FOREIGN KEY (`FK_personne`)
    REFERENCES `krenger_quentin_gestionnaireinventaire_info1b_2018`.`T_Personne` (`id_personne`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_T_Personne_Article_T_Article1`
    FOREIGN KEY (`FK_Article`)
    REFERENCES `krenger_quentin_gestionnaireinventaire_info1b_2018`.`T_Article` (`id_article`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `krenger_quentin_gestionnaireinventaire_info1b_2018`.`T_Article_Marque`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `krenger_quentin_gestionnaireinventaire_info1b_2018`.`T_Article_Marque` (
  `id_articleMarque` INT NOT NULL AUTO_INCREMENT,
  `FK_article` INT NOT NULL,
  `FK_marque` INT NOT NULL,
  PRIMARY KEY (`id_articleMarque`),
  INDEX `fk_T_Article_Marque_T_Article1_idx` (`FK_article` ASC),
  INDEX `fk_T_Article_Marque_T_Marque1_idx` (`FK_marque` ASC),
  CONSTRAINT `fk_T_Article_Marque_T_Article1`
    FOREIGN KEY (`FK_article`)
    REFERENCES `krenger_quentin_gestionnaireinventaire_info1b_2018`.`T_Article` (`id_article`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_T_Article_Marque_T_Marque1`
    FOREIGN KEY (`FK_marque`)
    REFERENCES `krenger_quentin_gestionnaireinventaire_info1b_2018`.`T_Marque` (`id_marque`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `krenger_quentin_gestionnaireinventaire_info1b_2018`.`T_Personne_Mail`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `krenger_quentin_gestionnaireinventaire_info1b_2018`.`T_Personne_Mail` (
  `id_personneMail` INT NOT NULL AUTO_INCREMENT,
  `FK_personne` INT NOT NULL,
  `FK_mail` INT NOT NULL,
  PRIMARY KEY (`id_personneMail`),
  INDEX `fk_T_Personne_Mail_T_Personne1_idx` (`FK_personne` ASC),
  INDEX `fk_T_Personne_Mail_T_Mail1_idx` (`FK_mail` ASC),
  CONSTRAINT `fk_T_Personne_Mail_T_Personne1`
    FOREIGN KEY (`FK_personne`)
    REFERENCES `krenger_quentin_gestionnaireinventaire_info1b_2018`.`T_Personne` (`id_personne`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_T_Personne_Mail_T_Mail1`
    FOREIGN KEY (`FK_mail`)
    REFERENCES `krenger_quentin_gestionnaireinventaire_info1b_2018`.`T_Mail` (`id_mail`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `krenger_quentin_gestionnaireinventaire_info1b_2018`.`T_Personne_Numero`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `krenger_quentin_gestionnaireinventaire_info1b_2018`.`T_Personne_Numero` (
  `id_personneNumero` INT NOT NULL AUTO_INCREMENT,
  `FK_personne` INT NOT NULL,
  `FK_numero` INT NOT NULL,
  PRIMARY KEY (`id_personneNumero`),
  INDEX `fk_T_Personne_Numero_T_Personne1_idx` (`FK_personne` ASC),
  INDEX `fk_T_Personne_Numero_T_Numero1_idx` (`FK_numero` ASC),
  CONSTRAINT `fk_T_Personne_Numero_T_Personne1`
    FOREIGN KEY (`FK_personne`)
    REFERENCES `krenger_quentin_gestionnaireinventaire_info1b_2018`.`T_Personne` (`id_personne`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_T_Personne_Numero_T_Numero1`
    FOREIGN KEY (`FK_numero`)
    REFERENCES `krenger_quentin_gestionnaireinventaire_info1b_2018`.`T_Numero` (`id_numero`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
