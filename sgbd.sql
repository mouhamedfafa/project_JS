create database universite;

use universite;

create table universite(
    nom_unis varchar(100),
    capacite_unis varchar(50),
    statut_unis enum("prive", "public", "prive-public"),
    ville varchar(100)
)
alter table
    universite
add
    (id_unis int primary key auto_increment);

create table filiere(
    id filiere int primary key auto_increment,
    nom_filiere varchar(100),
    nbr_matiere int not null
) create table unisdepart(
    id_obtenir int primary key auto_increment,
    nbr_etu int
);

create table departement(
    id_dpt int primary key auto_increment,
    nom_dpt varchar(100)
) create table class(
    id_class int primary key auto_increment,
    nom_class varchar(100)
);

create table ville(
    id_ville int primary key auto_increment,
    nom_ville varchar(100)
);

create table niveau(
    id_niveau int primary key auto_increment,
    niveau varchar(100)
);

create table matiere(
    id_matiere int primary key auto_increment,
    nom_matiere varchar(100)
);

create table contenir(coeff int, note float);

create table annescolaire(
    id_anne int primary key auto_increment,
    annee_scolaire int
);

create table inscrire(libelle varchar(50));

create table etudiant(
    id_etu int primary key auto_increment,
    nom_etu varchar(50),
    prenom_etu varchar(50),
    adresse_etu varchar(50),
    email_etu varchar(50)
);

alter table
    universite
add
    (ville_id int);

alter table
    universite
add
    constraint foreign key (ville_id) references ville (id_ville);

alter table
    unisdepart
add
    (unis_id int);

alter table
    unisdepart
add
    constraint foreign key (unis_id) references universite (id_unis);

alter table
    departement
add
    (ville_id int);

alter table
    matiere
add
    (filiere_id int);

alter table
    matiere
add
    constraint foreign key (filiere_id) references filiere(id_filiere);

alter table
    class
add
    constraint foreign key (niveau_id) references class(id_class);

insert into
    ville (id_ville, nom_ville)
values
    (null, "DAKAR"),
    (null, "Thies"),
    (null, "Bambey"),
    (null, "st-luis"),
    (null, "kaolack"),
    (null, "Ziginchor"),
    (null, "Rufisque");

insert into
    universite(
        nom_unis,
        capacite_unis,
        statut_unis,
        id_unis,
        ville_id
    )
values
    ("UCAD", 100000, "prive-public", null, 1),
    ("UT", 15000, "prive-public", null, 2),
    ("UADB", 10000, "public", null, 3),
    ("UGB", 20000, "public", null, 4),
    ("UEIN", 3000, "public", null, 5),
    ("UASZ", 7000, "public", null, 6),
    ("UCAB", 3000, "prive", null, 7),
    ("BOURGUIBA", 3000, "prive", null, 1),
    ("ESTM", 5000, "prive", null, 1),
    ("SUPDECO", 2000, "prive", null, 2),
    ("ISFAR", 1000, "prive", null, 3);

insert into
    departement (nom_depart, id_dpt)
values
    ("Mathematique", null),
    ("medcine", null),
    ("informatique", null),
    ("litterature", null),
    ("Physique-chimie", null);

insert into
    filiere (nom_filiere)
values
    ("Dev Web Mobile"),
    ("Design Numérique"),
    ("MPI"),
    ("infographi"),
    ("Physique"),
    (" Chimie"),
    ("biologie"),
    ("odontologie"),
    ("linguistique"),
    ("physique");

insert into
    annescolaire (annee_scolaire)
values
    ("2017/2018"),
    ("2018/2019"),
    ("2019/2020"),
    ("2020/2021"),
    ("2021/2022");

INSERT INTO
    unisdepart (nbr_etu,unis_id, dpt_id)
VALUES
    (2000,  1, 1),
    (8000,  3, 6),
    (8500,  2, 5),
    (25000 ,4,  4),
    (7000,  3, 2),
    (3000,  6, 6),
    (1000,  9, 5),
    (5000,  7, 1),
    (12000 ,8,  6),
    (500,  7,1 ),
    (9000,  8, 4),
    ( 300,  1, 1);

-- Lister nom,prénom niveau,filière et département des étudiants 
--inscrits en 2019-2020 à l'université Gaston Berger
select 
    e.nom_etu,
    e.prenom_etu,
    f.nom_filiere,
    n.niveau,
    d.nom_depart
from
    annee_scolaire a,
    Etudiant e,
    filiere f,
    nievau n,
    unis_depart ud,
    universite u,
    inscrire i,
    departement d,
    classe c
where
ud.unis_id=u.id_unis
and d.id_departement=ud.dep_id
and ud.id_Univ_Dep=c.univ_dep_id
and c.id_class=i.class_id
and e.id_etu=i.etu_id
and n.id_niveau=c.niveau_id
and 

    a.annee_scolaire like "2019/2020"
    and u.nom_unis like "%Gaston Berger"

-- lister nombre d’inscrit par filière et par université durant l’anne scolaire  2019-2020 
select
    i.id_ins,
    f.id_filiere,
    u.id_Univ
from
    annee_scolaire a,
    inscrit i,
    filière f,
    universite u,
    unuv_dep ud,
    Classe c etudiant e
where
    u.id_Univ = ud.Univ_id
    and ud.id_Univ_Dep = c.dep_Univ_id
    and i.id_ins = c.insc_id
    and a.id_anne = i.anne_id
    and e.id_etu = i.etu_id
    and a.id_anne like "2019/2020"