CREATE DATABASE db_quitanda;
USE db_quitanda;

CREATE TABLE tb_categoria(
	id bigint auto_increment,
    categoria varchar(255),
    ativo boolean,
    
    PRIMARY KEY (Id)
);

INSERT tb_categoria (categoria,ativo) VALUES("Bovino",true);
INSERT tb_categoria (categoria,ativo) VALUES("Peixes",true);
INSERT tb_categoria (categoria,ativo) VALUES("Suíno",true);
INSERT tb_categoria (categoria,ativo) VALUES("Aves",true);
INSERT tb_categoria (categoria,ativo) VALUES("Frutas",true);

CREATE TABLE tb_produtos(
	id bigint auto_increment,
    preco decimal(10,2),
    nome varchar(255),
    validade char(10),
    quantidade smallint,
    marca varchar(255),
    id_categoria bigint not null,
    
    PRIMARY KEY (id),
    FOREIGN KEY (id_categoria) REFERENCES tb_categoria(id)	
);

INSERT tb_produtos (preco, nome, validade, quantidade,marca,id_categoria) VALUES(57.99,"Picanha","27/08/2022",57,"Friboi",1);
INSERT tb_produtos (preco, nome, validade, quantidade,marca,id_categoria) VALUES(2.45,"Abacate","08/05/2022",130,"*Sem marca*",5);
INSERT tb_produtos (preco, nome, validade, quantidade,marca,id_categoria) VALUES(30.00,"Linguiça Toscana","18/09/2022",127,"Perdigão",3);
INSERT tb_produtos (preco, nome, validade, quantidade,marca,id_categoria) VALUES(41.90,"Filé de Tilápia","22/06/2022",95,"Seara",2);
INSERT tb_produtos (preco, nome, validade, quantidade,marca,id_categoria) VALUES(57.80,"Peito de Peru","12/08/2022",140,"Friboi",4);

SELECT * FROM tb_produtos;

SELECT * FROM tb_categoria;

SELECT * FROM tb_produtos INNER JOIN tb_categoria ON tb_categoria.id = tb_produtos.id_categoria WHERE preco > 50;
    
SELECT * FROM tb_produtos WHERE nome LIKE "%a%";

UPDATE tb_produtos SET preco = 52.90 WHERE id = 5;