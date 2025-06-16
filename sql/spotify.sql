
CREATE DATABASE spotify;
USE spotify;
SHOW TABLES;

CREATE TABLE usuario (
	usu_id INT PRIMARY KEY AUTO_INCREMENT,
	usu_email VARCHAR(255) NOT NULL,
	usu_senha CHAR(12) NOT NULL,
	CHECK(CHAR_LENGTH(usu_senha)=12)
);

INSERT INTO usuario(usu_email, usu_senha) VALUES ("lucasbardeli@gmail.com", "123412341234");
INSERT INTO usuario(usu_email, usu_senha) VALUES ("joao@gmail.com", "123412341234");

SELECT * FROM usuario;

DELETE FROM usuario WHERE usu_id=2;

CREATE TABLE playlist (
	play_id INT NOT NULL AUTO_INCREMENT,
	play_nome VARCHAR(255) NOT NULL,
	PRIMARY KEY(play_id)
);

INSERT INTO playlist(play_nome) VALUES ("Playlist Rocks Teste");
INSERT INTO playlist(play_nome) VALUES ("Playlist Teste 2");
INSERT INTO playlist(play_nome) VALUES ("Playlist Teste 3");

SELECT * FROM playlist;

DELETE FROM playlist WHERE play_id=1;

CREATE TABLE usuario_play (
	fk_usu_id INT NOT NULL,
	fk_play_id INT NOT NULL,
	FOREIGN KEY (fk_usu_id) REFERENCES usuario(usu_id),
	FOREIGN KEY (fk_play_id) REFERENCES playlist(play_id)
);

INSERT INTO usuario_play(fk_usu_id, fk_play_id) VALUES (1, 1);
INSERT INTO usuario_play(fk_usu_id, fk_play_id) VALUES (1, 2);
INSERT INTO usuario_play(fk_usu_id, fk_play_id) VALUES (3, 2);

SELECT * FROM usuario_play;

DELETE FROM usuario_play WHERE fk_play_id=1;

CREATE TABLE artista (
	art_id INT PRIMARY KEY AUTO_INCREMENT,
	art_nome VARCHAR(255) NOT NULL
);

SELECT FROM * artista;
INSERT INTO artista(art_nome) VALUES ("Josué");

CREATE TABLE genero (
	gen_id INT PRIMARY KEY AUTO_INCREMENT,
	gen_nome VARCHAR(255) NOT NULL
);

SELECT FROM * genero;
INSERT INTO genero(gen_nome) VALUES ("Kpop");

CREATE TABLE musica (
	mus_id INT PRIMARY KEY AUTO_INCREMENT,
	mus_nome VARCHAR(255) NOT NULL,
	fk_gen_id INT NOT NULL,
	fk_art_id INT NOT NULL,
	FOREIGN KEY (fk_gen_id) REFERENCES genero(gen_id),
	FOREIGN KEY (fk_art_id) REFERENCES artista(art_id)
);

SELECT * FROM musica;
INSERT INTO musica(mus_nome, fk_gen_id, fk_art_id) VALUES ("Musica1", 1, 1);

CREATE TABLE artista_musica (
	fk_art_id INT NOT NULL,
	fk_mus_id INT NOT NULL,
	FOREIGN KEY (fk_art_id) REFERENCES artista(art_id),
	FOREIGN KEY (fk_mus_id) REFERENCES musica(mus_id)
);

CREATE TABLE album (
	alb_id INT PRIMARY KEY AUTO_INCREMENT,
	alb_nome VARCHAR(255) NOT NULL
);

CREATE TABLE musica_album (
	fk_mus_id INT NOT NULL,
	fk_alb_id INT NOT NULL,
	FOREIGN KEY (fk_mus_id) REFERENCES musica(mus_id),
	FOREIGN KEY (fk_alb_id) REFERENCES album(alb_id)
);

CREATE TABLE artista_album (
	fk_art_id INT NOT NULL,
	fk_alb_id INT NOT NULL,
	FOREIGN KEY (fk_art_id) REFERENCES artista(art_id),
	FOREIGN KEY (fk_alb_id) REFERENCES album(alb_id)
);
