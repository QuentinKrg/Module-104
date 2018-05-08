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
-- Selection des données voulues depuis `t_personne` jusqu'à `t_marque` et `t_emplacement`
--

select p.Nom_pers, p.Prenom_pers, p.User_pers, a.NumDeSerie_arti, a.Type_arti, a.Garantie_arti, e.Batiment_empl, ma.Nom_marq, mo.Nom_mode
from t_personne p

left join t_personne_article pa ON pa.FK_personne = p.id_personne
inner join t_article a ON pa.FK_Article = a.id_article
right join t_emplacement e ON e.id_emplacement = a.FK_emplacement
inner join t_modele mo ON mo.id_modele = a.FK_modele
inner join t_marque ma ON ma.id_marque = mo.FK_marque;

-- --------------------------------------------------------------------------

--
-- Affichage de toutes les données utiles et voulues depuis la table `t_personne`
--

select p.Nom_pers, p.Prenom_pers, p.User_pers, m.Mail_mail, tm.Type_typeM, n.Numero_nume, tn.Type_typeN, a.NumDeSerie_arti, a.Type_arti, a.Garantie_arti, e.Batiment_empl, mo.Nom_mode, ma.Nom_marq
from t_personne p

-- Récupération du mail
left join t_personne_mail pm ON pm.FK_personne = p.id_personne
inner join t_mail m ON m.id_mail = pm.FK_mail
inner join t_typeMail tm ON m.FK_typeMail = tm.id_typeMail

-- Récupération du numéro de téléphone
left join t_personne_numero pn ON pn.FK_personne = p.id_personne
inner join t_numero n ON n.id_numero = pn.FK_numero
inner join t_typeNumero tn ON n.FK_typeNumero = tn.id_typeNumero

-- Récupération de l'article, de l'emplacement de celui-ci et de la marque et du modèle
left join t_personne_article pa ON pa.FK_personne = p.id_personne
inner join t_article a ON pa.FK_Article = a.id_article
right join t_emplacement e ON e.id_emplacement = a.FK_emplacement
inner join t_modele mo ON mo.id_modele = a.FK_modele
inner join t_marque ma ON ma.id_marque = mo.FK_marque;