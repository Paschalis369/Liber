show tables;

desc administrateur;

drop table catalogue;
drop table livre;
drop table catalogue;

drop table entreeStock;
drop table sortieStock;

SHOW CREATE TABLE livre;

SET FOREIGN_KEY_CHECKS = 0;
drop table entreStock;
drop table sortieStock;
SET FOREIGN_KEY_CHECKS = 1;

create table MouvementStock (
    idMouvement int primary key auto_increment,
    dateMouvement date,
    quantite int,
    type enum('entree','sortie') not null,
    destination varchar(100),
    idLivre int,
    idUser int,
    foreign key (idLivre) references Livre(idLivre),
    foreign key (idUser) references Utilisateur(idUser)
);