--
-- Exemple requetes avec tous les opérateurs
--

SELECT * FROM t_personne WHERE Prenom_pers LIKE 'Xavier' ORDER BY `Prenom_pers` DESC;
SELECT * FROM t_personne WHERE Prenom_pers LIKE '%Xavier%' ORDER BY `Prenom_pers` DESC;
SELECT * FROM t_personne WHERE Prenom_pers NOT LIKE 'Xavier' ORDER BY `Prenom_pers` DESC;
SELECT * FROM t_article WHERE Garantie_arti = "2009-03-19" ORDER BY `Garantie_arti` DESC;
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
-- Requêtes sur 7 tables
--

select p.Nom_pers,p.Prenom_pers,p.User_pers,m.Mail_mail,tm.Type_typeM,n.Numero_nume,tn.Type_typeN
from t_personne p
left join t_personne_mail pm on pm.FK_personne = p.id_personne
inner join t_mail m on m.id_mail = pm.FK_mail
inner join t_typemail tm on tm.id_typeMail = m.FK_typeMail

left join t_personne_numero pn on pn.FK_personne = p.id_personne
inner join t_numero n on n.id_numero = pn.FK_numero
inner join t_typenumero tn on tn.id_typeNumero = n.FK_typeNumero;

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
select sum(year(current_date)- year(Garantie_arti))-(right(current_date,5)) as formulelongue
from t_article;