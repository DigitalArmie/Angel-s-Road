-- Use the correct database
CREATE DATABASE DonationDB;
USE DonationDB;

-- Create ONG table
CREATE TABLE ONG (
    numar_fisc_id INT PRIMARY KEY,
    id_tip_utilizator INT,
    nume_ONG VARCHAR(255),
    persoana_de_contact VARCHAR(255),
    mail VARCHAR(255),
    verificat BOOLEAN,
    cont_bancar VARCHAR(255),
    oras VARCHAR(255)
);

-- Create Tip Utilizator table
CREATE TABLE Tip_utilizator (
    id_tip_utilizator INT PRIMARY KEY,
    nume VARCHAR(255)
);

-- Create Donator table
CREATE TABLE Donator (
    id INT PRIMARY KEY,
    id_tip_utilizator INT,
    username VARCHAR(255),
    nume VARCHAR(255),
    prenume VARCHAR(255),
    numar_de_telefon VARCHAR(255),
    data_nasterii DATE,
    oras VARCHAR(255),
    card_bancar VARCHAR(255),
    FOREIGN KEY (id_tip_utilizator) REFERENCES Tip_utilizator(id_tip_utilizator)
);

-- Create Donatie table
CREATE TABLE Donatie (
    id_tip_donatie INT,
    id_d INT PRIMARY KEY,
    id_ONG INT,
    titlu VARCHAR(255),
    descriere TEXT,
    poze TEXT,
    numar_voluntari INT,
    FOREIGN KEY (id_ONG) REFERENCES ONG(numar_fisc_id)
);

-- Create Tip Donatie table
CREATE TABLE Tip_donatie (
    id_tip INT PRIMARY KEY,
    nume VARCHAR(255)
);

-- Create Confirmare table
CREATE TABLE Confirmare (
    id_eveniment INT PRIMARY KEY,
    id_donator INT,
    confirmare VARCHAR(255),
    FOREIGN KEY (id_donator) REFERENCES Donator(id)
);

-- Create Donator_Donatie association table
CREATE TABLE Donator_Donatie (
    id_donatie INT,
    id_donator INT,
    data DATE,
    id_tip_donatie INT,
    PRIMARY KEY (id_donatie, id_donator),
    FOREIGN KEY (id_donator) REFERENCES Donator(id),
    FOREIGN KEY (id_donatie) REFERENCES Donatie(id_d),
    FOREIGN KEY (id_tip_donatie) REFERENCES Tip_donatie(id_tip)
);

-- Create Postari table
CREATE TABLE Postari (
    id_postare INT PRIMARY KEY,
    id_ONG INT,
    status VARCHAR(255),
    activ BOOLEAN,
    titlu VARCHAR(255),
    descriere TEXT,
    poze TEXT,
    FOREIGN KEY (id_ONG) REFERENCES ONG(numar_fisc_id)
);
