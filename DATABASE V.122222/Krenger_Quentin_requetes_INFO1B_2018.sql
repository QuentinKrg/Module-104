--
-- Exemple requetes avec tous les opérateurs
--

SELECT * FROM t_personne WHERE Nom_pers LIKE 'Xavier' ORDER BY `Prenom_pers` DESC;
SELECT * FROM t_personne WHERE Nom_pers LIKE '%Xavier%' ORDER BY `Prenom_pers` DESC;
SELECT * FROM t_personne WHERE Nom_pers NOT LIKE 'Xavier' ORDER BY `Prenom_pers` DESC;
SELECT * FROM t_article WHERE Garantie_arti = "26.01.19" ORDER BY `Garantie_arti` DESC;
SELECT * FROM t_article WHERE Garantie_arti != "26.01.19" ORDER BY `Garantie_arti` DESC;
SELECT * FROM t_personne WHERE User_pers REGEXP 'u' ORDER BY `User_pers` DESC;
SELECT * FROM t_personne WHERE User_pers NOT REGEXP 'u' ORDER BY `User_pers` DESC;
SELECT * FROM t_article WHERE id_article IN (6, 15) ORDER BY `id_article` DESC;
SELECT * FROM t_article WHERE id_article NOT IN (6, 15) ORDER BY `id_article` DESC;
SELECT * FROM t_article WHERE id_article BETWEEN 6 AND 15 ORDER BY `id_article` DESC;
SELECT * FROM t_article WHERE id_article NOT BETWEEN 6 AND 15 ORDER BY `id_article` DESC;
SELECT * FROM t_personne WHERE User_pers IS NULL ORDER BY `User_pers` DESC;
SELECT * FROM t_personne WHERE User_pers IS NOT NULL ORDER BY `User_pers` DESC;

--
-- Requêtes utiles pour la classe : "ClaGestionUserMailNumero" du projet java 
--

-- Requêtes pour afficher dans les JList :

SELECT DISTINCT id_personne, User_pers 
FROM t_personne T1
LEFT JOIN t_personne_mail pm ON pm.FK_personne = T1.id_personne
INNER JOIN t_mail T5 ON T5.id_mail = pm.FK_mail
LEFT JOIN t_personne_numero T6 on T6.FK_personne = T1.id_personne
INNER JOIN t_numero T7 on T7.id_numero = T6.FK_numero;

SELECT DISTINCT User_pers, Mail_mail 
FROM t_personne T1
LEFT JOIN t_personne_mail T4 ON T4.FK_personne = T1.id_personne
INNER JOIN t_mail T5 ON T5.id_mail = T4.FK_mail
WHERE id_personne = 1;

SELECT DISTINCT User_pers, Numero_nume FROM t_personne T1
LEFT JOIN t_personne_numero T4 ON T4.FK_personne = T1.id_personne
INNER JOIN t_numero T5 ON T5.id_numero = T4.FK_numero
WHERE id_personne = 1; 

-- Requêtes pour supprimer 

SELECT id_personne_numero 
FROM t_personne_numero WHERE FK_personne = 1 AND FK_numero = (SELECT id_numero FROM t_numero WHERE Numero_nume LIKE 2);

DELETE FROM `t_personne_numero` WHERE `t_personne_numero`.`id_personne_numero` = 1;

SELECT id_personne_mail FROM t_personne_mail WHERE FK_personne = 1 AND FK_mail = (SELECT id_mail FROM t_mail WHERE Mail_mail LIKE 1);

DELETE FROM `t_personne_mail` WHERE `t_personne_mail`.`id_personne_mail` = 1;

--
-- Requêtes utiles pour la classe : "ClaSelectMail" du projet java
--

-- Remplir la JList

SELECT id_mail, Mail_mail FROM t_mail WHERE Mail_mail <> '';

-- Compter les éventuels doublons

SELECT count(*) AS NbDblCategorie  FROM t_personne_mail WHERE FK_personne = 1 AND FK_mail = ( SELECT id_mail FROM t_mail WHERE Mail_mail COLLATE utf8_unicode_ci LIKE 1);

-- Insertion de la correspondance dans la table intermédiaire

INSERT INTO t_personne_mail (id_personne_mail, FK_personne, FK_mail)
VALUES (NULL, 1,( SELECT id_mail FROM t_mail WHERE Mail_mail COLLATE utf8_unicode_ci LIKE 1));

-- --------------------------------------------------------------------------

--
-- Requêtes utiles pour la classe : "ClaSelectNumero" du projet java
--

-- Remplir la JList

SELECT id_numero, Numero_nume COLLATE utf8_unicode_ci as Numero_nume  FROM t_numero ORDER BY Numero_nume COLLATE utf8_unicode_ci ASC;

-- Compter les éventuels doublons

SELECT count(*) AS NbDblSc  FROM t_personne_numero WHERE FK_personne = 1 AND FK_numero = ( SELECT id_numero FROM t_numero WHERE Numero_nume COLLATE utf8_unicode_ci LIKE 1);



-- --------------------------------------------------------------------------

--
-- Requêtes utiles pour la classe : "ClaGestionMail" du projet java
--

-- Insertion dans la table mail
INSERT INTO t_mail (Mail_mail,FK_typeMail) VALUES (1,1);

SELECT *  FROM t_mail WHERE Mail_mail COLLATE utf8_unicode_ci LIKE 1;

-- Selection de tous ce dont nous avons besoin
SELECT id_mail, Mail_mail COLLATE utf8_unicode_ci as Mail_mail  FROM t_mail ORDER BY Mail_mail COLLATE utf8_unicode_ci ASC;

-- Suppression dans la table mail
DELETE FROM t_mail WHERE id_mail = 1;

-- --------------------------------------------------------------------------

--
-- Requêtes utiles pour la classe : "ClaGestionNumero" du projet java
--

-- Insertion dans la table mail
INSERT INTO t_numero (Numero_nume,FK_typeNumero) VALUES (1,1);

SELECT *  FROM t_numero WHERE Numero_nume COLLATE utf8_unicode_ci LIKE 1;

-- Selection de tous ce dont nous avons besoin
SELECT id_numero, Numero_nume COLLATE utf8_unicode_ci as Numero_nume  FROM t_numero ORDER BY Numero_nume COLLATE utf8_unicode_ci ASC;

-- Suppression dans la table mail
DELETE FROM t_numero WHERE id_numero = 1;

-- --------------------------------------------------------------------------

--
-- Requêtes d'agrégation 
--

-- AVG (inutile mais drôle)
select avg(year(current_date)- year(Garantie_arti))-(right(current_date,5)) as inutilemaisdrole
from t_article;
-- COUNT
select count(Garantie_arti) from t_article;
-- MAX
select max(Garantie_arti) from t_article;
-- MIN
select min(Garantie_arti) from t_article;
-- SUM (cela ne sert a rien mais c'est pour faire la démo :P)
select sum(year(current_date)- year(Garantie_arti))-(right(current_date,5))
from t_article;