CREATE DATABASE primeirobanco;

USE primeirobanco;

CREATE TABLE teste(
	codigo      INT AUTO_INCREMENT PRIMARY KEY,
    nome 		VARCHAR(100) NOT NULL,
    cpf 		CHAR(11) NOT NULL,
    endereco 	VARCHAR(255)	
);

DROP TABLE primeirobanco;

DROP DATABASE primeirobanco;

DROP DATABASE bdmercado;

CREATE DATABASE bdmercado;
USE bdmercado;

CREATE TABLE clientes(
    id      INT AUTO_INCREMENT PRIMARY KEY,
    nome    VARCHAR(100) NOT NULL,
    cpf     CHAR(11),
    credito FLOAT
);

CREATE TABLE produtos(
    id          INT AUTO_INCREMENT PRIMARY KEY,
    nome        VARCHAR(100)    NOT NULL,
    codBarras   CHAR(20)        NOT NULL,
    valorCompra FLOAT           NOT NULL,
    valorVenda  FLOAT           NOT NULL,
    qtdEstoque  INT
);

INSERT INTO
(nome, codBarras, valorCompra, valorVenda)
VALUES
('Amaciante azul', '12345678912345678912', 8, 10)
('Amaciante amarelo', '17345678912345678912', 8, 10)
('Amaciante vermelho', '52345678912345678912', 8, 10)
('Amaciante verde', '13345678912345678912', 8, 10)
('Amaciante branco', '22345678912345678912', 8, 10)

INSERT INTO clientes
(nome, cpf, credito)
VALUES
('João Hugo Leda', '123456789110', 1000),
('Luan', '223456789110', 10000),
('Rose', '323456789110', 10000),
('Robson', '523456789110', 10000),
('Sidney', '723456789110', 10000);

CREATE TABLE funcionarios(
    id      INT AUTO_INCREMENT PRIMARY KEY,
    nome    VARCHAR(100)    NOT NULL,
    usuario VARCHAR(100)    NOT NULL,
    senha   VARCHAR(100)    NOT NULL
);

INSERT INTO funcionarios
(nome, usuario, senha)
VALUES
('João Hugo Leda', 'joao', 74),
('João Hugo', 'hugo', 54),
('João Leda', 'leda', 94);

CREATE DATABASE bdlocadora;

CREATE TABLE marcas(
    id          INT AUTO_INCREMENT PRIMARY KEY,
    nome        VARCHAR(100)    NOT NULL,
    pais_origem VARCHAR(45)     NOT NULL
);

CREATE TABLE modelos(
    id          INT AUTO_INCREMENT PRIMARY KEY,
    id_marca    INT             NOT NULL,
    nome        VARCHAR(100)    NOT NULL,
    CONSTRAINT fk_category
    FOREIGN KEY (id_marca)
        REFERENCES marcas(id)
);

CREATE TABLE veiculos(
    id              INT AUTO_INCREMENT PRIMARY KEY,
    id_modelo       INT     NOT NULL,
    ano_fabricacao  YEAR,
    data_aquisicao  DATE,
    possui_ar       TYNINT,
    tipo_direcao    CHAR(1),
    placa           CHAR(7)
);