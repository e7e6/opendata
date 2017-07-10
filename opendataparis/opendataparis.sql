CREATE DATABASE parisdata;

CREATE TABLE accessibilite_des_equipements_de_la_ville_de_paris (
	type VARCHAR (50),
	nom VARCHAR (255),
	numero VARCHAR (50),
	voie VARCHAR (255),
	code_postal INTEGER,
	remarques VARCHAR (400),
	handicap_moteur SMALLINT,
	handicap_visuel SMALLINT,
	handicap_auditif SMALLINT,
	lien VARCHAR(500),
	coordx_wgs FLOAT,
	coordy_wgs FLOAT,
	coord_xy POINT,
	adresse VARCHAR(255)
);

COPY accessibilite_des_equipements_de_la_ville_de_paris 
FROM '/tmp/accessibilite_des_equipements_de_la_ville_de_paris.csv'
WITH CSV HEADER DELIMITER ';';

CREATE TABLE accidentologie (
	date_accident DATE,
	heure TIME,
	dept SMALLINT,
	com SMALLINT,
	adresse VARCHAR(255),
	code_postal INTEGER,
	carr VARCHAR(50),
	segm VARCHAR(50),
	lieu_1_nomv VARCHAR(255),
	lieu_2_nomv VARCHAR(255),
	vehicule_1_cadmin VARCHAR(50),
	vehicule_1_lveh CHAR,
	vehicle_2_cadmin VARCHAR(50),
	vehicule_2_lveh CHAR,
	vehicule_3_cadmin VARCHAR(50),
	vehicule_3_lveh CHAR,
	usager_1_catu VARCHAR(50),
	usager_1_grav VARCHAR(50),
	usager_1_lveh CHAR,
	usager_2_catu VARCHAR(50),
	usager_2_grav VARCHAR(50),
	usager_2_lveh CHAR,
	usager_3_catu VARCHAR(50),
	usager_3_grav VARCHAR(50),
	usager_3_lveh CHAR,
	usager_4_catu VARCHAR(50),
	usager_4_grav VARCHAR(50),
	usager_4_lveh CHAR,
	coordonnees POINT
);

COPY accidentologie
FROM '/tmp/accidentologie.csv'
WITH CSV HEADER DELIMITER ';';
