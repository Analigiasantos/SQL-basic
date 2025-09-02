DROP DATABASE IF EXISTS Gravadora;
CREATE DATABASE Gravadora;
USE Gravadora; 

-- Definindo entidades de um diagrama ER para uma gravadora de música.
-- Assuma que todos os atributos são do tipo VARCHAR, com exceção dos IDs e do time que são números inteiros (INT)

CREATE TABLE Artist(
	artist_id INT PRIMARY KEY,
    artist_name VARCHAR(20)
);
CREATE TABLE Album(
	album_id INT PRIMARY KEY,
    album_name VARCHAR(20),
    artist_id INT,
    FOREIGN KEY (artist_id) REFERENCES Artist(artist_id)
);
CREATE TABLE Track(
	track_id INT PRIMARY KEY,
    track_name VARCHAR(30),
    `time` INT,
    album_id INT,
    FOREIGN KEY (album_id) REFERENCES Album(album_id)
);
CREATE TABLE Played(
	played_id INT PRIMARY KEY,
	played INT,
    track_id INT,
	FOREIGN KEY (track_id) REFERENCES Track(track_id)
);

-- Inserindo dados pra Teste 

-- Inserindo o Artista
INSERT INTO Artist (artist_id, artist_name)
VALUES (1, 'Queen');

-- Inserindo os Álbuns do Artista
INSERT INTO Album (album_id, album_name, artist_id)
VALUES (10, 'A Night at the Opera', 1);
INSERT INTO Album (album_id, album_name, artist_id)
VALUES (11, 'News of the World', 1);

-- Inserindo as Músicas (Tracks)
INSERT INTO Track (track_id, track_name, `time`, album_id)
VALUES (101, 'Bohemian Rhapsody', 355, 10); 
INSERT INTO Track (track_id, track_name, `time`, album_id)
VALUES (102, 'You''re My Best Friend', 171, 10); 
INSERT INTO Track (track_id, track_name, `time`, album_id)
VALUES (103, 'We Will Rock You', 122, 11); 
INSERT INTO Track (track_id, track_name, `time`, album_id)
VALUES (104, 'We Are The Champions', 181, 11); 

-- Dada a estrutura criada na atividade 3 escreva uma consulta que retorne todas as “Tracks”,
-- projetando o track_name e o time das tracks que tem o atributo time maior que 180. 

SELECT track_name, `time` FROM Track WHERE `time` > 180;




