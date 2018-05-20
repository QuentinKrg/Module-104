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
-- Requete pour changer la collation
--

SELECT Prenom_pers FROM t_personne ORDER BY Prenom_pers COLLATE latin1_german2_ci;

--
-- Selection des données voulues depuis `t_personne` jusqu'à `t_typeMail` et `t_typeNumero`
--

select p.Nom_pers, p.Prenom_pers, p.User_pers, m.Mail_mail, tm.Type_typeM, n.Numero_nume, tn.Type_typeN 
from t_personne p

-- Récupération du mail
left join t_personne_mail pm ON pm.FK_personne = p.id_personne
inner join t_mail m ON m.id_mail = pm.FK_mail
inner join t_typeMail tm ON m.FK_typeMail = tm.id_typeMail

-- Récupération du numéro de téléphone
left join t_personne_numero pn ON pn.FK_personne = p.id_personne
inner join t_numero n ON n.id_numero = pn.FK_numero
inner join t_typeNumero tn ON n.FK_typeNumero = tn.id_typeNumero;

-- --------------------------------------------------------------------------

--
-- Selection des données voulues depuis `t_personne` jusqu'à `t_marque` et `t_emplacement` et `t_typeArticle`
--

select p.Nom_pers, p.Prenom_pers, p.User_pers, ta.Type_typeA, a.NumDeSerie_arti, a.Garantie_arti, ma.Nom_marq, mo.Nom_mode, e.Batiment_empl
from t_personne p

left join t_personne_article pa ON pa.FK_personne = p.id_personne
inner join t_article a ON a.id_article = pa.FK_personne
right join t_emplacement e ON e.id_emplacement = a.FK_emplacement
inner join t_modele mo ON mo.id_modele = a.FK_modele
inner join t_marque ma ON ma.id_marque = mo.FK_marque
inner join t_typearticle ta ON ta.id_typeArticle = a.FK_typeArticle;

-- --------------------------------------------------------------------------


--
-- Requêtes d'agrégation 
--

-- AVG
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