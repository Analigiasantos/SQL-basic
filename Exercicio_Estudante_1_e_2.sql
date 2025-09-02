DROP DATABASE IF EXISTS Escola;
CREATE DATABASE Escola;
USE Escola;

-- Escreva o código SQL para definir a entidade estudante do diagrama ER a seguir. 
-- Assuma que todos os atributos são do tipo VARCHAR, com exceção do Roll_No que é número inteiro (INT)

CREATE TABLE Student (
    Roll_No INT PRIMARY KEY,
    `Name` VARCHAR(50) NOT NULL,
    DOB VARCHAR(20),
    Phone_No VARCHAR(20),
    Street VARCHAR(50),
    City VARCHAR(50),
    State VARCHAR(50),
    Country VARCHAR(50)

);

-- Dados para teste 
INSERT INTO Student (Roll_No, `Name`, DOB, Phone_No, Street, City, State, Country)
VALUES (101, 'Ana Silva', '2004-03-15', '987654321', 'Hauptstrasse 10', 'Ulm', 'Baden-Württemberg', 'Germany');

INSERT INTO Student (Roll_No, `Name`, DOB, Phone_No, Street, City, State, Country)
VALUES (102, 'Bruno Schmidt', '2006-07-22', '962734123', 'Berliner Allee 5', 'Berlin', 'Berlin', 'Germany');


-- Escreva o código SQL para retornar todos os estudantes que moram 
-- em City “Ulm”, projetando o Name, o Roll_No e a Street. 

SELECT `Name`, Roll_No, Street
FROM Student
WHERE City = 'Ulm';