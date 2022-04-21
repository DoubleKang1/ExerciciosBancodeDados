-- Atividade 01
CREATE DATABASE db_rh;
USE db_rh;

CREATE TABLE tb_colaboradores(
	id bigint auto_increment,
    cpf varchar(12),
	nome char(255),
    salario decimal(6),
    idade int(3),
    telefone varchar(20),
    
    primary key (id)
    
);

SELECT * FROM tb_colaboradores;

INSERT INTO tb_colaboradores(cpf, nome, salario, idade, telefone)
VALUES("489568727-53","Henrique Oliveira",2500,22,"(19)93216-9785");

INSERT INTO tb_colaboradores(cpf, nome, salario, idade, telefone)
VALUES("532535674-04","Alfredo Silva",2900,25,"(19)99430-8913");

INSERT INTO tb_colaboradores(cpf, nome, salario, idade, telefone)
VALUES("498657843-09","Kevin da Cunha",1100,19,"(19)98567-3958");

INSERT INTO tb_colaboradores(cpf, nome, salario, idade, telefone)
VALUES("999658741-43","João Gomes",3200,29,"(19)95325-5674");

INSERT INTO tb_colaboradores(cpf, nome, salario, idade, telefone)
VALUES("400289223-03","Larissa Vieira",1500,19,"(19)99340-3586");

SELECT * FROM tb_colaboradores WHERE salario > 2000;

SELECT * FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores SET telefone = "(19)99958-2142" WHERE id = 4;

-- Atividade 02
CREATE DATABASE bd_estoque;
USE bd_estoque;

CREATE TABLE tb_produtos(
	id bigint auto_increment,
    preco decimal,
    nome varchar(255),
    marca varchar(255),
    quantidade bigint,
    tipo char(255),
    
    primary key (id)
    
    );
    
    SELECT * FROM tb_produtos;
	
    INSERT INTO tb_produtos(preco, nome, marca, quantidade,tipo)
    VALUES(300,"Galaxy buds","Sansung",320,"Fone");
    
	INSERT INTO tb_produtos(preco, nome, marca, quantidade,tipo)
    VALUES(1300,"Galaxy A30s","Sansung",210,"Smartphone");
    
	INSERT INTO tb_produtos(preco, nome, marca, quantidade,tipo)
    VALUES(3700,"Iphone 11","Apple",600,"Smartphone");
    

	INSERT INTO tb_produtos(preco, nome, marca, quantidade,tipo)
    VALUES(4100,"Apple Watch Series 7","Apple",110,"Relógio");
    
	INSERT INTO tb_produtos(preco, nome, marca, quantidade,tipo)
    VALUES(71.90,"Redmi Airdots","Xiaomi",700,"Fone");
    
	INSERT INTO tb_produtos(preco, nome, marca, quantidade,tipo)
    VALUES(900,"Moto G8 Plus","Motorola",125,"Smartphone");
    
	INSERT INTO tb_produtos(preco, nome, marca, quantidade,tipo)
    VALUES(800,"HyperX QuadCast","HyperX",417,"Microfone");
    
	INSERT INTO tb_produtos(preco, nome, marca, quantidade,tipo)
    VALUES(4499.90,"Playstation 5","Sony",421,"Videogame");
    
    SELECT * FROM tb_produtos WHERE preco > 500;

	SELECT * FROM tb_produtos WHERE preco < 500;
    
	UPDATE tb_produtos SET preco = 70 WHERE id = 5;
    
-- Atividade 03
CREATE DATABASE bd_registro;
USE bd_registro;


	id bigint auto_increment,
    nome char(255),
    idade int,
    nota decimal,
    cep varchar(255),
    