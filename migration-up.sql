-- Active: 1787217948281@@127.0.0.1@5432@LaRemise

CREATE TYPE typeDepot AS ENUM ('Depot', 'Collect');

CREATE TYPE modePaiement AS ENUM ('Espece', 'Carte', 'Cheque');

CREATE TYPE categorie AS ENUM ('mobilier', 'electromenager', 'livre', 'vaisselle', 'textile', 'jouet', 'bricolage');

CREATE TYPE etat AS ENUM ('Bon Etat', 'A Reparer', 'Hors Service');

CREATE TYPE status AS ENUM ('Arrive', 'En Reparation', 'En Rayon', 'Vendu', 'Recycle');


CREATE TABLE personne (
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    Nom_personne VARCHAR(50) NOT NULL,
    Prenom_personne VARCHAR(50),
    Telephone_personne VARCHAR(50) NOT NULL,
    Adherent BOOLEAN NOT NULL
);

CREATE TABLE vente (
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    Date DATE NOT NULL,
    ModePaiement modePaiement NOT NULL
);

CREATE TABLE competence (
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    Nom VARCHAR(50) NOT NULL
);

CREATE TABLE depot (
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    Date DATE NOT NULL,
    Type typeDepot NOT NULL,
    id_personne INT NOT NULL,
    FOREIGN KEY (id_personne) REFERENCES personne(id)
);

CREATE TABLE objet (
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    Description VARCHAR(100) NOT NULL,
    Categorie categorie NOT NULL,
    Etat etat NOT NULL,
    Poids INT NOT NULL,
    Status status NOT NULL,
    PrixOrigine INT,
    PrixFinal INT,
    id_vente INT,
    id_depot INT NOT NULL,
    FOREIGN KEY (id_depot) REFERENCES depot(id),
    FOREIGN KEY (id_vente) REFERENCES vente(id)
);

CREATE TABLE enRayon (
    Date DATE NOT NULL,
    id_objet INT NOT NULL,
    FOREIGN KEY (id_objet) REFERENCES objet(id)
);

CREATE TABLE benevole (
    Date DATE NOT NULL,
    id_personne INT PRIMARY KEY,
    Foreign Key (id_personne) REFERENCES personne(id)
);

CREATE TABLE benevoleCompetence (
    id_personne INT NOT NULL,
    id_competence INT NOT NULL,
    Foreign Key (id_personne) REFERENCES benevole(id_personne),
    Foreign Key (id_competence) REFERENCES competence(id),
    PRIMARY KEY (id_personne, id_competence)
);

CREATE TABLE atelier (
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    Nom VARCHAR(50) NOT NULL,
    Date DATE NOT NULL,
    Duree INT,
    NbPlace INT NOT NULL,
    id_personne INT NOT NULL,
    Foreign Key (id_personne) REFERENCES benevole(id_personne)
);

CREATE TABLE inscription (
    Date DATE NOT NULL,
    Presence BOOLEAN,
    id_personne INT NOT NULL,
    id_atelier INT NOT NULL,
    Foreign Key (id_personne) REFERENCES personne(id),
    Foreign Key (id_atelier) REFERENCES atelier(id),
    PRIMARY KEY (id_personne, id_atelier)
);

CREATE TABLE reparation (
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    Date_Reparation DATE NOT NULL,
    Duree_Reparation INT NOT NULL,
    Resultat_Reparation VARCHAR(50) NOT NULL,
    id_objet INT NOT NULL,
    id_personne INT NOT NULL,
    FOREIGN KEY (id_objet) REFERENCES objet(id),
    FOREIGN KEY (id_personne) REFERENCES benevole(id_personne)
);