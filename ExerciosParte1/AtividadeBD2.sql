-- ATIVIDADE 01
CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes(
	id bigint auto_increment,
    classe varchar(255),
    arma varchar(255),
    
    PRIMARY KEY (id)
);

INSERT tb_classes(classe, arma) VALUES ("Arqueiro","Arco e flecha");
INSERT tb_classes(classe, arma) VALUES ("Guerreiro","Espada");
INSERT tb_classes(classe, arma) VALUES ("Mago","Cajado");
INSERT tb_classes(classe, arma) VALUES ("Bárbaro","Machado");
INSERT tb_classes(classe, arma) VALUES ("Ladino","Adaga");

CREATE TABLE tb_personagens(
	id bigint auto_increment,
    nome varchar(255),
    ataque smallint,
	defesa smallint,
    raca varchar(255),
    id_classe bigint,
    
    PRIMARY KEY (id),
	FOREIGN KEY (id_classe) REFERENCES tb_classes(id)
);

INSERT tb_personagens(nome, ataque, defesa, raca, id_classe) VALUES ("Scar",1800,1400,"Humano",4);
INSERT tb_personagens(nome, ataque, defesa, raca, id_classe) VALUES ("Ângela",1600,1200,"Elfo",1);
INSERT tb_personagens(nome, ataque, defesa, raca, id_classe) VALUES ("Arthur",1650,1500,"Meio-Orc",2);
INSERT tb_personagens(nome, ataque, defesa, raca, id_classe) VALUES ("Elford",2200,800,"Humano",3);
INSERT tb_personagens(nome, ataque, defesa, raca, id_classe) VALUES ("Sarah",1300,950,"Anão",5);
INSERT tb_personagens(nome, ataque, defesa, raca, id_classe) VALUES ("Roxana",2050,1520,"Meio-Dragão",2);
INSERT tb_personagens(nome, ataque, defesa, raca, id_classe) VALUES ("Isaías",1400,960,"Humano",5);
INSERT tb_personagens(nome, ataque, defesa, raca, id_classe) VALUES ("Conan",1700,1200,"Humano",1);

SELECT * FROM tb_personagens WHERE ataque > 2000;

SELECT * FROM tb_personagens WHERE defesa > 1000 && defesa < 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_classes.id = tb_personagens.id_classe;

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_classes.id = tb_personagens.id_classe WHERE id_classe = 2;


-- ATIVIDADE 02
CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
	id bigint auto_increment,
    tipo varchar(255),
    tamanho varchar(255),
    
    PRIMARY KEY (id)
);

INSERT tb_categorias(tipo, tamanho) VALUES("Salgada","Grande");
INSERT tb_categorias(tipo, tamanho) VALUES("Doce","Pequena*");
INSERT tb_categorias(tipo, tamanho) VALUES("Vegana","Média");
INSERT tb_categorias(tipo, tamanho) VALUES("Tradicional","Média");
INSERT tb_categorias(tipo, tamanho) VALUES("Simples","Média");

CREATE TABLE tb_pizzas(
	id bigint auto_increment,
	nome varchar(255),
    preco decimal(10,2),
	acompanhamento varchar(255),
	borda boolean,
    id_categoria bigint,
    
    PRIMARY KEY (id),
	FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);

INSERT tb_pizzas(nome, preco, acompanhamento, borda,id_categoria) VALUES("Pizza de Frango com Catupiry",47.90,"Pepsi 2L",true,4);
INSERT tb_pizzas(nome, preco, acompanhamento, borda,id_categoria) VALUES("Pizza de M&M e Nutella",35.90,"*sem acompanhamento*",false,2);
INSERT tb_pizzas(nome, preco, acompanhamento, borda,id_categoria) VALUES("Pizza de Marguerita",45.00,"Kuat 2L",false,1);
INSERT tb_pizzas(nome, preco, acompanhamento, borda,id_categoria) VALUES("Pizza de Strogonoff",65.80,"Pepsi 2L",true,1);
INSERT tb_pizzas(nome, preco, acompanhamento, borda,id_categoria) VALUES("Pizza de Brocólis",45.00,"Pepsi 2L",true,3);
INSERT tb_pizzas(nome, preco, acompanhamento, borda,id_categoria) VALUES("Pizza de Atum",40.00,"Kuat 2L",true,5);
INSERT tb_pizzas(nome, preco, acompanhamento, borda,id_categoria) VALUES("Romeu e Julieta",35.90,"*sem acompanhamento*",false,2);
INSERT tb_pizzas(nome, preco, acompanhamento, borda,id_categoria) VALUES("Pizza de Calabresa",68.00,"Pepsi 2L",true,4); 

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco > 50.00 && preco < 100.00;

SELECT * FROM tb_pizzas WHERE nome LIKE "%m%";

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.id_categoria;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.id_categoria WHERE id_categoria = 2;


-- ATIVIDADE 03
CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
	id bigint auto_increment,
    categoria varchar(255),
    prescricao boolean,
    
    PRIMARY KEY (id)
);

INSERT tb_categorias(categoria,prescricao) VALUES("Antibiótico",true);
INSERT tb_categorias(categoria,prescricao) VALUES("Antirretroviral",true);
INSERT tb_categorias(categoria,prescricao) VALUES("Suplemento",false);
INSERT tb_categorias(categoria,prescricao) VALUES("Cosmético",false);
INSERT tb_categorias(categoria,prescricao) VALUES("Curativos",false);

CREATE TABLE tb_produtos(
	id bigint auto_increment,
	nome varchar(255),
    preco decimal(10,2),
	estoque smallint,
	quantidade varchar(255),
    id_categoria bigint,
    
    PRIMARY KEY (id),
	FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);

INSERT tb_produtos(nome, preco, estoque, quantidade,id_categoria) VALUES("Amoxicilina",120.00,250,"500mg",1);
INSERT tb_produtos(nome, preco, estoque, quantidade,id_categoria) VALUES("Didanosina",50.00,220,"250mg",2);
INSERT tb_produtos(nome, preco, estoque, quantidade,id_categoria) VALUES("Whey Protein",85.00,100,"1,8Kg",3);
INSERT tb_produtos(nome, preco, estoque, quantidade,id_categoria) VALUES("Hidratante Facial",49.90,310,"40g",4);
INSERT tb_produtos(nome, preco, estoque, quantidade,id_categoria) VALUES("Band-Aid",10.80,600,"40 Unidades",5);
INSERT tb_produtos(nome, preco, estoque, quantidade,id_categoria) VALUES("Creatina",141.02,150,"300g",3);
INSERT tb_produtos(nome, preco, estoque, quantidade,id_categoria) VALUES("Minancora Pomada",13.80,300,"30g",4);
INSERT tb_produtos(nome, preco, estoque, quantidade,id_categoria) VALUES("Ampicilina",35.50,250,"500mg",1);


SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco >= 5.00 && preco <= 60.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.id_categoria;

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.id_categoria WHERE id_categoria = 3;


-- ATIVIDADE 04
CREATE DATABASE db_cidade_das_carnes;
USE db_cidade_das_carnes;

CREATE TABLE tb_categorias(
id bigint auto_increment,
categoria varchar(255),
ativo boolean,

PRIMARY KEY(id)
);

INSERT tb_categorias(categoria,ativo) VALUES("Bovina",true);
INSERT tb_categorias(categoria,ativo) VALUES("Suína",true);
INSERT tb_categorias(categoria,ativo) VALUES("Aves",true);
INSERT tb_categorias(categoria,ativo) VALUES("Peixes",true);
INSERT tb_categorias(categoria,ativo) VALUES("Embutidos",true);

CREATE TABLE tb_produtos(
id bigint auto_increment,
nome varchar(255),
preco decimal(10,2),
validade varchar(255),
marca varchar(255),
id_categoria bigint,

PRIMARY KEY(id),
FOREIGN KEY(id_categoria) REFERENCES tb_categorias(id) 
);

INSERT tb_produtos (nome, preco, validade, marca,id_categoria) VALUES("Picanha",57.99,"27/08/2022","Friboi",1);
INSERT tb_produtos (nome, preco, validade, marca,id_categoria) VALUES("Linguiça Toscana",30.00,"18/09/2022","Perdigão",5);
INSERT tb_produtos (nome, preco, validade, marca,id_categoria) VALUES("Filé de Tilápia",41.90,"22/06/2022","Seara",4);
INSERT tb_produtos (nome, preco, validade, marca,id_categoria) VALUES("Peito de Peru",57.80,"12/08/2022","Friboi",3);
INSERT tb_produtos (nome, preco, validade, marca,id_categoria) VALUES("Filé Mignon",82.99,"12/07/2022","Friboi",1);
INSERT tb_produtos (nome, preco, validade, marca,id_categoria) VALUES("Presunto",15.99,"12/05/2022","Sadia",5);
INSERT tb_produtos (nome, preco, validade, marca,id_categoria) VALUES("Coxão mole",49.99,"11/10/2022","Seara",1);
INSERT tb_produtos (nome, preco, validade, marca,id_categoria) VALUES("Asa de Fraango",23.99,"10/06/2022","Perdigão",3);


SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco >= 50.00 && preco <= 150.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.id_categoria;

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.id_categoria WHERE id_categoria = 2;


-- ATIVIDADE 05
CREATE DATABASE db_construindo_vidas;
USE db_construindo_vidas;

CREATE TABLE tb_categorias(
id bigint auto_increment,
categoria varchar(255),

PRIMARY KEY(id)
);

INSERT tb_categorias(categoria) VALUES("Ferramentas");
INSERT tb_categorias(categoria) VALUES("TIntas");
INSERT tb_categorias(categoria) VALUES("Encanamento");
INSERT tb_categorias(categoria) VALUES("Eletricidade");
INSERT tb_categorias(categoria) VALUES("Outros");

CREATE TABLE tb_produtos(
id bigint auto_increment,
nome varchar(255),
marca varchar(255),
preco decimal(10,2),
estoque smallint,
id_categoria bigint,

PRIMARY KEY(id),
FOREIGN KEY(id_categoria) REFERENCES tb_categorias(id)
);

INSERT tb_produtos(nome,marca,preco,estoque, id_categoria) VALUES("TIntas Acrílica Laranja","Suvinil",319.90,125,2);
INSERT tb_produtos(nome,marca,preco,estoque, id_categoria) VALUES("TIntas Acrílica Vermelha","Suvinil",300.00,99,2);
INSERT tb_produtos(nome,marca,preco,estoque, id_categoria) VALUES("Martelo Unha","Dexter",95.90,300,1);
INSERT tb_produtos(nome,marca,preco,estoque, id_categoria) VALUES("Cimento","Votoran",33.90,200,5);
INSERT tb_produtos(nome,marca,preco,estoque, id_categoria) VALUES("Cano PVC","Equation",20.00,700,3);
INSERT tb_produtos(nome,marca,preco,estoque, id_categoria) VALUES("TIntas Acrílica Laranja","Suvinil",319.90,125);
INSERT tb_produtos(nome,marca,preco,estoque, id_categoria) VALUES("TIntas Acrílica Laranja","Suvinil",319.90,125);
INSERT tb_produtos(nome,marca,preco,estoque, id_categoria) VALUES("TIntas Acrílica Laranja","Suvinil",319.90,125);

SELECT * FROM tb_produtos WHERE preco > 100.00;

SELECT * FROM tb_produtos WHERE preco >= 70.00 && preco <= 150.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.id_categoria;

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.id_categoria WHERE id_categoria = 3;


-- ATIVIDADE 06
CREATE DATABASE db_curso_da_minha_vida;
USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias(
id bigint auto_increment,
categoria varchar(255),
famoso boolean,
PRIMARY KEY(id)
);

INSERT tb_categorias(categoria,famoso) VALUES("Java",true);
INSERT tb_categorias(categoria,famoso) VALUES("Python",true);
INSERT tb_categorias(categoria,famoso) VALUES("Photoshop",true);
INSERT tb_categorias(categoria,famoso) VALUES("Unity",true);
INSERT tb_categorias(categoria,famoso) VALUES("Toon Boom",false);

CREATE TABLE tb_cursos(
id bigint auto_increment,
nome varchar(255),
duracao varchar(255),
nivel char(30),
preco decimal(10,2),
id_categoria bigint,

PRIMARY KEY(id),
FOREIGN KEY(id_categoria) REFERENCES tb_categorias(id)
);

INSERT tb_cursos(nome, duracao, nivel, preco, id_categoria) VALUES("Acampamento Java","8 meses","Avançado", 850.00,1);
INSERT tb_cursos(nome, duracao, nivel, preco, id_categoria) VALUES("Intensivao Python","4 meses","Intermediário", 500.00,2);
INSERT tb_cursos(nome, duracao, nivel, preco, id_categoria) VALUES("Super Anima","10 meses","Avançado", 1000.00,5);
INSERT tb_cursos(nome, duracao, nivel, preco, id_categoria) VALUES("Fenix Bootcamp","3","Intermediário", 450.00,3);
INSERT tb_cursos(nome, duracao, nivel, preco, id_categoria) VALUES("Java Intensifies","1 mês","Básico", 00.00,1);
INSERT tb_cursos(nome, duracao, nivel, preco, id_categoria) VALUES("Ultimate Game Design","7 meses","Avançado", 800.00,4);
INSERT tb_cursos(nome, duracao, nivel, preco, id_categoria) VALUES("Python para Leigos","2 meses","Básico", 50.00,2);
INSERT tb_cursos(nome, duracao, nivel, preco, id_categoria) VALUES("Java Full Stack","12 meses","Avançado", 1200.00,1);

SELECT * FROM tb_cursos WHERE preco > 500;

SELECT * FROM tb_cursos WHERE preco >= 600 && preco <= 1000;

SELECT * FROM tb_cursos WHERE nome LIKE "%j%";

SELECT * FROM tb_cursos INNER JOIN tb_categorias ON tb_categorias.id = tb_cursos.id_categoria;

SELECT * FROM tb_cursos INNER JOIN tb_categorias ON tb_categorias.id = tb_cursos.id_categoria WHERE id_categoria = 2;












