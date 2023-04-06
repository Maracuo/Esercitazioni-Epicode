CREATE DATABASE esercizi_1;
USE esercizi_1;

DROP TABLE IF EXISTS Automobile;
CREATE TABLE Automobile (Marca varchar (50), Modello varchar (35), Targa varchar (7), Cilindrata int, Colore varchar (50));
INSERT INTO Automobile (Marca, Modello, Targa, Cilindrata, Colore) VALUES ("Ferrari", 488, "AA123BB", 3902, "Rosso");
INSERT INTO Automobile VALUES ("Mercedes", "Classe C", "CC456DD", 2998, "Grigio");
INSERT INTO Automobile (Modello, Targa, Marca, Colore, Cilindrata) VALUES ( "i8", "EE789FF", "BMW", "Blu scuro", 1498);
INSERT INTO Automobile (Marca, Cilindrata) VALUES ("Fiat", 1233);


DROP TABLE IF EXISTS Lavoratore;
CREATE TABLE Lavoratore (Nome varchar (25), Cognome varchar (40), Matricola varchar (16), Stipendio int);
INSERT INTO Lavoratore VALUES ("Paolo", "Verde", "A01234", 1865), ("Stefano", "Neri", "B05678", 2000), ("Francesco", "Azzurra", "C09012", 2500), ("Luca", "Rosso", "B091234", 2100);

SELECT * FROM Lavoratore WHERE Cognome= "Verde";
SELECT * FROM Lavoratore WHERE Cognome LIKE "%e%";
SELECT Nome, Cognome, Stipendio FROM Lavoratore WHERE Cognome LIKE "A%";
SELECT * FROM Lavoratore WHERE Nome LIKE "%o" AND Cognome LIKE "%E%";
SELECT * FROM Lavoratore WHERE Stipendio BETWEEN 1800 AND 2000;

SELECT * FROM Lavoratore WHERE Stipendio BETWEEN 2000 AND 2500 AND Cognome LIKE "%i";
SELECT Nome, Cognome FROM Lavoratore WHERE Stipendio BETWEEN 1900 AND 2400 ORDER BY Stipendio DESC;
SELECT Nome, Cognome FROM Lavoratore WHERE Stipendio BETWEEN 2000 AND 2500 ORDER BY Stipendio DESC, Nome ASC;

INSERT INTO Automobile (Marca, Cilindrata) VALUES ("Fiat", 1233);
UPDATE Automobile SET Modello= "500L", Targa= "XX123YY", Colore= "Bianco" WHERE Marca= "Fiat";

DELETE FROM Automobile WHERE Marca LIKE "F%";