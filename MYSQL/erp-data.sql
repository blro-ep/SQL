-- Mitarbeiter-Tabelle erstellen
CREATE TABLE Mitarbeiter (
    MitarbeiterID INT PRIMARY KEY,
    Vorname VARCHAR(255),
    Nachname VARCHAR(255),
    Gehalt DECIMAL(10, 2),
    AbteilungID INT
);

-- Daten in die Mitarbeiter-Tabelle einfügen
INSERT INTO Mitarbeiter (MitarbeiterID, Vorname, Nachname, Gehalt, AbteilungID)
VALUES
(1, 'Max', 'Mustermann', 5000, 1),
(2, 'Anna', 'Musterfrau', 5500, 1),
(3, 'John', 'Doe', 4800, 2),
(4, 'Emily', 'Smith', 5200, 2),
(5, 'Michael', 'Johnson', 5300, 3);

-- Kunden-Tabelle erstellen
CREATE TABLE Kunden (
    KundenID INT PRIMARY KEY,
    Vorname VARCHAR(255),
    Nachname VARCHAR(255)
);

-- Daten in die Kunden-Tabelle einfügen
INSERT INTO Kunden (KundenID, Vorname, Nachname)
VALUES
(1, 'Peter', 'Schmidt'),
(2, 'Lisa', 'Muller'),
(3, 'Markus', 'Schulz'),
(4, 'Sandra', 'Wagner');

-- Bestellungen-Tabelle erstellen
CREATE TABLE Bestellungen (
    BestellungenID INT PRIMARY KEY,
    KundenID INT,
    ProduktID INT,
    Menge INT
);

-- Daten in die Bestellungen-Tabelle einfügen
INSERT INTO Bestellungen (BestellungenID, KundenID, ProduktID, Menge)
VALUES
(1, 1, 101, 2),
(2, 1, 102, 1),
(3, 2, 103, 3),
(4, 3, 101, 1),
(5, 3, 104, 2),
(6, 4, 105, 4);

-- Produkte-Tabelle erstellen
CREATE TABLE Produkte (
    ProduktID INT PRIMARY KEY,
    Name VARCHAR(255),
    Kategorie VARCHAR(255),
    Preis DECIMAL(10, 2)
);

-- Daten in die Produkte-Tabelle einfügen
INSERT INTO Produkte (ProduktID, Name, Kategorie, Preis)
VALUES
(101, 'Laptop', 'Elektronik', 1200),
(102, 'Smartphone', 'Elektronik', 800),
(103, 'Buch', 'Buecher', 30),
(104, 'Kaffeemaschine', 'Kueche', 100),
(105, 'Fahrrad', 'Sport', 500);

