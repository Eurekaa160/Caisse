CREATE DATABASE caisse_si;
USE caisse_si;

CREATE TABLE produit (
    id_produit INT AUTO_INCREMENT PRIMARY KEY,
    nom_produit VARCHAR(100) NOT NULL,
    prix DECIMAL(10,2) NOT NULL,
    quantite_stock DECIMAL(10,2) NOT NULL,
    designation VARCHAR(500)
);

CREATE TABLE caisse (
    id_caisse INT AUTO_INCREMENT PRIMARY KEY,
    nom_caisse VARCHAR(50) NOT NULL
);

CREATE TABLE utilisateur (
    id_utilisateur INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    mot_de_passe VARCHAR(255) NOT NULL -- Hashé
);

CREATE TABLE achat (
    id_achat INT AUTO_INCREMENT PRIMARY KEY,
    id_caisse INT NOT NULL,
    id_produit INT NOT NULL,
    quantite DECIMAL(10,2) NOT NULL,
    nom_client VARCHAR(100),
    prix_total DECIMAL(10,2) NOT NULL,
    date_achat DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO produit VALUES (1, "sucre", 2500, 10, "par paquets de 500g");
INSERT INTO produit VALUES (2, "sardine", 2800, 15, "a l'huile vegetale 125g");
INSERT INTO produit VALUES (3, "moutarde", 8900, 10, "1 kg la boite DE DIJON");
INSERT INTO produit VALUES (4, "concentre de tomate", 750, 18, "ALBA 70 g la boite");
INSERT INTO produit VALUES (5, "fromage fondu", 3200, 25, "VACHE QIU RIT 8 portions de 120 g");

INSERT INTO caisse VALUES (1, "N_1");
INSERT INTO caisse VALUES (2, "N_2");

----------------------------------------------------------------------------------------------------


CREATE TABLE categories (
    id_categorie INT AUTO_INCREMENT PRIMARY KEY,
    nom_categorie VARCHAR(150)
);

CREATE TABLE cate_produit (
    id_pk INT AUTO_INCREMENT PRIMARY KEY,
    id_produit INT,
    id_categorie INT
);

INSERT INTO categories VALUES (1, "produit laitier");
INSERT INTO categories VALUES (2, "fruit de mer");
INSERT INTO categories VALUES (3, "sauce");
INSERT INTO categories VALUES (4, "ppn");

INSERT INTO cate_produit VALUES (1, 1, 4);
INSERT INTO cate_produit VALUES (2, 2, 2);
INSERT INTO cate_produit VALUES (3, 3, 3);
INSERT INTO cate_produit VALUES (4, 4, 3);
INSERT INTO cate_produit VALUES (5, 5, 2);

-----------------------------------------------------------------------------------------------------------