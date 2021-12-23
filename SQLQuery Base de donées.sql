CREATE DATABASE Grain_de_Couleur;
GO 

USE Grain_de_Couleur


CREATE TABLE Postes (
	pos_id				INT				NOT NULL		PRIMARY KEY,
	pos_libelle			VARCHAR(50)		NOT NULL		UNIQUE,
	pos_description		VARCHAR(255)	NULL,
);

CREATE TABLE Employées (
	emp_id				INT				NOT NULL		PRIMARY KEY, 
	emp_nom				VARCHAR(50)		NOT NULL,
	emp_prenom			VARCHAR(50)		NOT NULL, 
	emp_date_naissance  DATE			NOT NULL, 
	emp_num_secu_social VARCHAR(50)		NOT NULL, 
	emp_date_entree		DATE			NOT NULL, 
	emp_adresse			VARCHAR(255)	NOT NULL, 
	emp_cd				VARCHAR(10)		NOT NULL, 
	emp_ville			VARCHAR(50)		NOT NULL,
	emp_telephone		VARCHAR(20)		NOT NULL,
	emp_login			VARCHAR(50)		NOT NULL, 
	emp_motdepasse		VARCHAR(12)		NOT NULL,
);

CREATE TABLE Réservation (
	res_id				INT				NOT NULL		PRIMARY KEY,
	res_date			DATE			NOT NULL,
	res_heure			TIME			NOT NULL,
	res_cyble			VARCHAR(50)		NOT NULL,
	res_evenement		VARCHAR(50)	    NOT NUll,
);

CREATE TABLE Client (
	cli_id				INT				NOT NULL		PRIMARY KEY,
	cli_nom				VARCHAR(50)		NOT NULL,
	cli_prenom			VARCHAR(50)		NOT NULL,
	cli_sexe			BIT				NOT NULL,
	cli_date_naissance	DATE			NOT NULL,
	cli_adesse_facture	VARCHAR(255)	NOT NULL,
	cli_adresse			VARCHAR(255)	NOT NULL,
	cli_cp				VARCHAR(10)		NOT NULL,
	cli_ville			VARCHAR(50)		NOT NULL,
	cli_telephone		VARCHAR(20)		NOT NULL,
	cli_mail			VARCHAR(50)		NOT NULL,
	cli_login			VARCHAR(50)		NOT NULL,
	cli_motdepasse		VARCHAR(12)		NOT NULL,
	);

CREATE TABLE Services (
	ser_id				INT				NOT NULL		PRIMARY KEY,
	ser_libelle			VARCHAR(50)		NOT NULL,
	ser_description		VARCHAR(255)	NOT NULL,
);

CREATE TABLE Catégories (
	cat_id				INT				NOT NULL		PRIMARY KEY,
	cat_nom				VARCHAR(50)		NOT NULL,
);

CREATE TABLE Produits (
	pro_id				INT				NOT NULL		PRIMARY KEY,
	pro_libelle			VARCHAR(50)		NOT NULL,
	pro_description		VARCHAR(255)	NOT NULL,
	pro_prix			DECIMAL(5,2)	NOT NULL,
	pro_reference		VARCHAR(50)		NOT NULL,
	pro_stock			INT				NOT NULL,
	pro_stockalerte		INT				NOT NULL,
	pro_photo			VARCHAR(50)		NOT NULL,
	pro_dateajout		DATETIME		NOT NULL,
	pro_datemodif		DATETIME		NOT NULL,
	pro_bloque			VARCHAR(50)		NOT NULL,
);

CREATE TABLE Commandes (
	com_id				INT				NOT NULL		PRIMARY KEY,
	com_reference		VARCHAR(50)		NOT NULL,
	com_remise			DECIMAL(5,2)	NOT NULL,
	com_date			DATE			NOT NULL,
	com_modepaiement	VARCHAR(50)		NOT NULL,
	com_date_regelement	DATETIME		NOT NULL,
	com_date_paiement	DATETIME		NOT NULL,
	com_status			VARCHAR(50)		NOT NULL,
);

CREATE TABLE Ligne_de_commande (
	lig_id				INT				NOT NULL		PRIMARY KEY,
	lig_quantite			INT			NOT NULL,
	lig_remise			DECIMAL(5,2)	NOT NULL,
);

CREATE TABLE Livraison (
	liv_id				INT				NOT NULL		PRIMARY KEY,
	liv_d_relle			DATETIME		NOT NULL,
	liv_d_expedition	DATETIME		NOT NULL,
	liv_d_preparation	DATETIME		NOT NULL,
);