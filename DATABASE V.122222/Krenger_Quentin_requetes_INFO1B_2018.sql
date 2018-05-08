
--`t_personne` -> `t_typeMail`

select p.Nom_pers, p.Prenom_pers, p.User_pers, m.Mail_mail, tm.Type_typeM
from t_personne p
left join t_personne_mail pm ON pm.FK_personne = p.id_personne
inner join t_mail m ON m.id_mail = pm.FK_mail
inner join t_typeMail tm ON m.FK_typeMail = tm.id_typeMail;