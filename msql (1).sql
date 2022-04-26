
#------------------------------------------------------------
CREATE USER 'tpn1'@'localhost' IDENTIFIED BY 'quizz';

GRANT ALL PRIVILEGES ON * . * TO 'tpn1_correction'@'localhost';

create database tpn1;
# Table: zone
#------------------------------------------------------------

CREATE TABLE zone(
        id_zone Int  Auto_increment NOT NULL ,
        nomZone Varchar (50) NOT NULL
	    ,CONSTRAINT zone_PK PRIMARY KEY (id_zone)
);


#------------------------------------------------------------
# Table: etat
#------------------------------------------------------------

CREATE TABLE etat(
        id_etat Int  Auto_increment  NOT NULL ,
        libelle Varchar (50) NOT NULL
	    ,CONSTRAINT etat_PK PRIMARY KEY (id_etat)
);


#------------------------------------------------------------
# Table: user
#------------------------------------------------------------

CREATE TABLE user(
        id_user     Int  Auto_increment  NOT NULL ,
        nom_complet Varchar (50) NOT NULL ,
        tel_user    Varchar (50) NOT NULL ,
        adr_user    Varchar (50) NOT NULL ,
        email_user  Varchar (50) NOT NULL ,
        profil_user ENUM('ROLE_GESTIONNAIRE','ROLE_CLIENT') NOT NULL
	    ,CONSTRAINT user_PK PRIMARY KEY (id_user)
);


#------------------------------------------------------------
# Table: bien
#------------------------------------------------------------

CREATE TABLE bien(
        id_bien          Int  Auto_increment  NOT NULL ,
        ref_bien         Varchar (50) NOT NULL ,
        description_bien Varchar (50) NOT NULL ,
        type_bien        ENUM('STUDIO','IMMEUBLE','CHAMBRE','APPARTEMENT') NOT NULL ,
        prix_bien        Float CHECK (prix_bien>0) NOT NULL,
        date_bien        Date  NOT NULL DEFAULT(NOW()),
        zone_id          Int NULL ,
        etat_id          Int NULL ,
        user_id_up          Int NULL ,
        user_id_add  Int NULL
	,CONSTRAINT bien_PK PRIMARY KEY (id_bien)

	,CONSTRAINT bien_zone_FK FOREIGN KEY (zone_id) REFERENCES zone(id_zone) on delete set null
	,CONSTRAINT bien_etat0_FK FOREIGN KEY (etat_id) REFERENCES etat(id_etat) on delete set null
	,CONSTRAINT bien_user_up_FK FOREIGN KEY (user_id_up) REFERENCES user(id_user) on delete set null
	,CONSTRAINT bien_user_add_FK FOREIGN KEY (user_id_add) REFERENCES user(id_user) on delete set null
);


#------------------------------------------------------------
# Table: reservation
#------------------------------------------------------------

CREATE TABLE reservation(
        id_reservation   Int  Auto_increment  NOT NULL ,
        date_reservation Date NOT NULL default(now()),
        descr_client     Varchar (50) NOT NULL ,
        bien_id          Int NULL ,
        client_id          Int NULL ,
        etat_id          Int NULL
	,CONSTRAINT reservation_PK PRIMARY KEY (id_reservation)

	,CONSTRAINT reservation_bien_FK FOREIGN KEY (bien_id) REFERENCES bien(id_bien) on delete set null
	,CONSTRAINT reservation_user0_FK FOREIGN KEY (client_id) REFERENCES user(id_user) on delete set null
	,CONSTRAINT reservation_etat1_FK FOREIGN KEY (etat_id) REFERENCES etat(id_etat) on delete set null
);

alter table bien change prix_bien prix_bien float NOT NULL;
alter table etat add libelle ENUM('disponible','indisponible','valider','annuler','archiver') NOT NULL;
alter table etat ADD Varchar(100) CHECK (libelle IN ('disponible','indisponible','valider','annuler','archiver')) NOT NULL;
alter table bien add type_bien ENUM('immeuble','appartement','studio','chambre') NOT NULL;
alter table user change profil_user profil_user Varchar(50) ENUM('gestionnaire','client') NOT NULL;

/* ajout dans les tables*/
insert into zone values (null,'grand_dakar'),
(null,'pikine_ikotaff'),
(null,'medina'),
(null,'avenu cheikh anta diop'),
(null,'sypa'),
(null,'cité Mbacke faye OUAKAM'),
(null,'thies'),
(null,'diourbel'),
(null,'barcelona');

insert into zone values (null,'grand_dakar'),
(null,'dakar'),
(null,'niarry tally'),
(null,'avenu cheikh anta diop'),
(null,'thies'),
(null,'cité Mbacke faye OUAKAM'),
(null,'medina'),
(null,'diourbel'),
(null,'tamba');
 /*...............................................*/
insert into etat values (null,'DISPONIBLE'),
(null,'RESERVE'),
(null,'VALIDE'),
(null,'ANNULE'),
(null,'EN COURS'),
(null,'ARCHIVE');
/* ajout d'infos table bien*/
insert into bien(id_bien,ref_bien,description_bien,prix_bien,date_bien,zone_id,etat_id,user_id_up,user_id_add,type_bien) 
values (null,'REF001','parmi les meilleurs','800000','2020-01-01',2,1,2,2,'IMMEUBLE'),
(null,'REF002','dans une région culturelle','100000','2019-01-01',1,2,1,1,'STUDIO'),
(null,'REF003','confortable pour tout le monde','1000000','2020-01-01',3,1,7,2,'IMMEUBLE'),
(null,'REF004','ouverture et acces facile','200000','2020-01-01',7,4,1,4,'CHAMBRE'),
(null,'REF005','parmi les meilleurs','200000','2020-01-01',9,1,7,2,'IMMEUBLE'),
(null,'REF006','parmi les meilleurs','3000000','2020-01-01',7,2,2,12,'STUDIO'),
(null,'REF007','parmi les meilleurs','100000','2020-01-01',6,3,7,10,'APPARTEMENT'),
(null,'REF008','parmi les meilleurs','80000','2020-01-01',5,1,11,2,'APPARTEMENT'),
(null,'REF009','parmi les meilleurs','200000','2020-01-01',4,1,7,4,'IMMEUBLE');

/* ajout table reservation*/
insert into user values (null,'mame malick','777777766','niarry tally','mame@gmail.com','ROLE_GESTIONNAIRE'),
(null,'Astou faye','777777766','thies','astou@gmail.com','ROLE_CLIENT'),
(null,'mamdou mbaye','777777744','thies','mbaye@gmail.com','ROLE_CLIENT'),
(null,'Astou faye2','777777766','cité Mbacke faye OUAKAM','astou2@gmail.com','ROLE_CLIENT'),
(null,'amadou diop','777777722','dakar','amadou@gmail.com','ROLE_CLIENT'),
(null,'nico faye','777777711','thies','nico@gmail.com','ROLE_CLIENT'),
(null,'mamadou dia','777777755','dakar','dia@gmail.com','ROLE_GESTIONNAIRE'),
(null,'mami fall','777777766','thies','mami@gmail.com','ROLE_CLIENT'),
(null,'papa demba dieng','777777708','kaolack','rpd@gmail.com','ROLE_CLIENT'),
(null,'mamadou tall traore','777777709','thies','tall@gmail.com','ROLE_CLIENT'),
(null,'astou faye','777777702','niarry tally','mm@gmail.com','ROLE_CLIENT'),
(null,'abs couli','777777704','avenu cheikh anta diop','abs@gmail.com','ROLE_CLIENT'),
(null,'mor diagne','777777701','diourbel','mor@gmail.com','ROLE_CLIENT'),
(null,'manouna','777777701','dakar','fall@gmail.com','ROLE_CLIENT');
/* ajout table reservation*/
insert into reservation values (null,'2022-12-04','fidele client',19,3,1),
(null,'2022-10-04','level client',12,5,4),
(null,'2022-11-04','un client qui respecte les normes',13,8,1),
(null,'2022-08-04','le gentil',14,2,4),
(null,'2022-05-04','fidele client',15,11,3),
(null,'2022-04-04','fidele client',12,3,2),
(null,'2022-12-03','un client gagnant gagnant',16,8,3),
(null,'2022-06-02','ce client fait parti de nos partenaires',18,13,1);

insert into reservation values (null,'2022-12-04','fidele client',19,3,5),
(null,'2022-10-04','level client',12,5,5),
(null,'2022-11-04','un client qui respecte les normes',13,8,5);
update reservation set etat_id=3,descr_client='reservation valide pour ce client' where id_reservation=27;

update reservation set etat_id=5 where client_id=(select id_user from user where nom_complet like 'amadou diop' );
/............................................../
--selection des biens disponibles
select * from bien where etat_id=(
    select id_etat from etat where libelle like 'DISPONIBLE');

--ou-

select b.* from bien b,etat e 
where  
b.etat_id = e.id_etat and
e.libelle like 'DISPONIBLE';

--selection utilisateurs client
select * from user where profil_user LIKE 'ROLE_CLIENT';

--8

select * from bien where type_bien like "studio" and zone_id=(
    select id_zone from zone where nomZone like "thies") and etat_id= (
        select id_etat from etat where libelle like "disponible");

--ou 

select b.type_bien as 'type de bien'
from bien b , zone z ,etat e 
where b.zone_id = z.id_zone 
and b.etat_id = e.id_etat
and z.nomZone like 'thies' 
and e.libelle like 'RESERVE';



select * from reservation where client_id=(select id_user from user where nom_complet="amadou
diop");

select nom_complet from user where id_user in (select client_id from reservation where zone_id=(select id_zone from zone where nomZone like 'thies'));
select nom_complet from user where id_user in (
    select client_id from reservation where bien_id in ( 
        select id_bien from bien where zone_id =(
            select id_zone from zone where nomZone like 'thies')));

select * from user where id_user NOT IN(
    select client_id from reservation);

    select * from user where profil_user like "ROLE_CLIENT" and  id_user NOT IN(select client_id from reservation);


select nom_complet from user  where profil_user like "ROLE_CLIENT" and  id_user IN(select client_id from reservation);


select * from bien where id_bien in (
    select bien_id from reservation where client_id in(
        select id_user from user where nom_complet 
        in ('amadou diop', 'mamadou mbaye')));

/* selection des biens réservés par mamdou mbaye et amadou diop*/
select distinct b.*
from bien b ,reservation r, user u 
where u.id_user=r.client_id and r.bien_id=b.id_bien and
 u.nom_complet like 'amadou diop'
and r.bien_id in (select r.bien_id
                    from reservation r, user u 
                    where u.id_user=r.client_id and
                    u.nom_complet like 'mamdou mbaye');

/*les biens qui n'ont jamais ete reservés*/
select b.*
from bien b
where 
b.id_bien not in (select r.bien_id
                    from reservation r
                    );

select b.type_bien,z.nomZone, count(b.id_bien) as 'nombre de bien' 
from bien b ,zone z 
where b.zone_id=z.id_zone
group by b.type_bien,b.zone_id;

/* nombre de reservation par ordre decroissant*/
select u.nom_complet, count(r.id_reservation)
from reservation r,user u
where r.client_id=u.id_user 
group by u.id_user
order by count(r.id_reservation) desc;


--les clients qui ont le max de reservation
select u.nom_complet, count(r.id_reservation)
from reservation r,user u
where r.client_id=u.id_user 
group by u.id_user
order by count(r.id_reservation) desc
limit 0,2;

select u.nom_complet, count(r.id_reservation) as 'nombre'
from reservation r,user u
where r.client_id=u.id_user 
group by u.id_user
order by nombre desc;

-- le max de reservation
select count(r.id_reservation) as 'nombre'
from reservation r 
group by r.client_id
order by count(r.id_reservation) desc
limit 0,1;

-- 
select u.nom_complet
from reservation r,user u
where r.client_id=u.id_user
group by r.client_id
having count(r.id_reservation) = 3;

--les user ayant le max de reservation
select u.nom_complet
from reservation r,user u
where r.client_id=u.id_user
group by r.client_id
having count(r.id_reservation) =(select count(r.id_reservation) as 'nombre'
from reservation r 
group by r.client_id
order by count(r.id_reservation) desc
limit 0,1);



select b.type_bien, count(b.id_bien) as 'nombre de bien' 
    from bien b 
    group by b.type_bien,b.zone_id;



-- intersect 
-- (select 
-- from reservation r, user u 
-- where u.nom_complet='mamadou mbaye');


 select * from bien where id_bien not in (select bien_id from reservation);

