CREATE DATABASE DB_LIVRARIA

USE DB_LIVRARIA

CREATE TABLE TB_USUARIOS(
	ID_USUARIO INT IDENTITY PRIMARY KEY,
	NOME VARCHAR(50) NOT NULL,
	SOBRENOME VARCHAR(50) NOT NULL,
	EMAIL VARCHAR(100) NOT NULL,
	NOME_USUARIO VARCHAR(10) NOT NULL,
	SENHA VARCHAR(10) NOT NULL,
	DATA_CADASTRO DATETIME DEFAULT GETDATE()
)

CREATE TABLE TB_LOGINS(
 ID_LOGIN INT IDENTITY PRIMARY KEY,
 ID_USUARIO INT,
 DATA_LOGIN DATETIME
 )
 
 INSERT INTO TB_USUARIOS (NOME, SOBRENOME, EMAIL, NOME_USUARIO, SENHA)
 VALUES ('JUCA', 'CHAVES', 'jucachaves@gmail.com', 'JUCACHAVES', '1234567890')
 
 SELECT * FROM TB_USUARIOS
 
 CREATE TABLE TB_PRODUTOS(
 ID_PRODUTO INT IDENTITY PRIMARY KEY,
 NOME VARCHAR(100) NOT NULL,
 TIPO VARCHAR(30) NOT NULL,
 QUANTIDADE INT NOT NULL,
 PRECO_COMPRA DECIMAL(9,2) NOT NULL,
 PRECO_VENDA DECIMAL(9,2) NOT NULL,
 DATA_CADASTRO DATETIME DEFAULT GETDATE()
 )
 
 INSERT INTO TB_PRODUTOS (NOME, TIPO, QUANTIDADE,PRECO_COMPRA, PRECO_VENDA)
 VALUES ('O SENHOR DOS AN�IS - A SOCIEDADE DO ANEL', 'LIVRO', 5, 29.90, 39.90)
 
 SELECT * FROM TB_PRODUTOS