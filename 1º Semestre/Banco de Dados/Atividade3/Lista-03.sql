-- BANCO DE DADOS
-- EXERCÍCIOS - PRÁTICA 03
-- PROFESSORA: VIVIAN SILVA
-- NOME/RA: IZAEL REIS DE OLIVEIRA JUNIOR / 01242032


-- 1)
CREATE DATABASE game_store;
USE game_store;

CREATE TABLE jogo (
	id int primary key auto_increment,
    nome_jogo varchar(30),
    nome_diretor varchar(30),
    genero varchar(30),
    dtLancamento date,
    nota float,
	estoque int
);

INSERT INTO jogo VALUES
(default, 'GTA V', 'Robert Jhonson', 'Ação', '2010-10-03', 9, 20),
(default, 'FIFA 2023', 'Marcos Vinicius', 'Esporte', '2023-01-01', 10, 33),
(default, 'Minecraft', 'Fabio Silva', 'Aventura', '2012-02-20', '8', 4),
(default, 'Skate 3', 'Francisca Gonçalves', 'Esporte', '2018-07-22', 4, 19),
(default, 'Guitar Hero', 'George Matos', 'Música', '2009-10-14', 6, 100);

ALTER TABLE jogo
ADD COLUMN tipo_midia varchar(15);

UPDATE jogo
SET tipo_midia = 'Física'
WHERE id = 1;

UPDATE jogo
SET tipo_midia = 'Digital'
WHERE id = 2;

UPDATE jogo
SET tipo_midia = 'Física'
WHERE id = 3;

UPDATE jogo 
SET tipo_midia = 'Digital'
WHERE id = 4;

UPDATE jogo
SET tipo_midia = 'Física'
WHERE id = 5;

ALTER TABLE jogo
ADD CONSTRAINT chk_midia CHECK (tipo_midia IN ('Física', 'Digital'));

SELECT * FROM jogo
WHERE dtLancamento >= '2015-01-01';

SELECT * FROM jogo
WHERE nome_jogo LIKE '%a%' and tipo_midia = 'Física';

SELECT * FROM jogo
WHERE nome_diretor NOT LIKE '%e%';

ALTER TABLE jogo
ADD CONSTRAINT chk_nota CHECK (nota >= 0 and nota <= 10);

SELECT * FROM jogo
WHERE genero = 'Esporte' and estoque > 0;

UPDATE jogo
SET estoque = 0
WHERE id = 1;

DELETE FROM jogo
WHERE id = 1 and estoque = 0;	

ALTER TABLE jogo
RENAME COLUMN nome_diretor to criador;

DESC jogo;


-- 2)
CREATE DATABASE olimpiadas;
USE olimpiadas;

CREATE TABLE esporte (
	id int primary key auto_increment,
    nome varchar(40),
    categoria varchar(20),
    quant_jogadores int,
    dtEstreia date,
    pais_origem varchar(30),
    constraint chk_categoria check (categoria in ('Individual', 'Coletivo'))
);

INSERT INTO esporte VALUES 
(default, 'Futebol', 'Coletivo', 11, '2024-01-20', 'Inglaterra'),
(default, 'Tênis de mesa', 'Individual', 1, '2024-05-15', 'Japão'),
(default, 'Volei', 'Coletivo', 6, '2024-07-11', 'França'),
(default, 'Atletismo', 'Individual', 1, '2024-03-19', 'Jamaica'),
(default, 'Natação', 'Individual', 1, '2024-02-02', 'Estados Unidos');

ALTER TABLE esporte 
ADD COLUMN popularidade decimal;

ALTER TABLE esporte 
ADD CONSTRAINT chk_popularidade CHECK (popularidade >= 0 and popularidade <= 10);

DESC esporte;

UPDATE esporte
SET popularidade = 8
WHERE id = 1;

UPDATE esporte
SET popularidade = 10
WHERE id = 2;

UPDATE esporte
SET popularidade = 9
WHERE id = 3;

UPDATE esporte
SET popularidade = 6
WHERE id = 4;

UPDATE esporte
SET popularidade = 5
WHERE id = 5;

SELECT * FROM esporte ORDER BY popularidade;

SELECT * FROM esporte
WHERE dtEstreia >= '2000-01-01';

ALTER TABLE esporte
ADD CONSTRAINT chk_estreia CHECK (dtEstreia >= '1896-04-06' and dtEstreia <= '2024-08-26');

ALTER TABLE esporte
DROP CONSTRAINT chk_categoria;

SELECT * FROM esporte
WHERE pais_origem LIKE '_a%';

SELECT * FROM esporte
WHERE quant_jogadores >=4 and quant_jogadores <= 11;

DELETE FROM esporte
WHERE id = 1;

DELETE FROM esporte
WHERE id = 3;

DELETE FROM esporte
WHERE id = 5;


-- 3)
CREATE DATABASE desenho;
USE desenho;

CREATE TABLE catalogo (
	id int primary key auto_increment,
    titulo varchar(50),
    dtLancamento date,
    emissora varchar(50),
    classificacao varchar(15),
    status_des varchar(15),
    nota float, 
    constraint chk_nota check (nota >= 0 and nota <=5)
) auto_increment = 10;

INSERT INTO catalogo VALUES
(default, 'Tom e Jerry', '1940-02-10', 'CBS', 'Livre', 'Concluído', 5),
(default, 'Os Flintstones', '1960-09-30', 'ABC', 'Livre', 'Concluído', 4),
(default, 'Looney Tunes', '1930-04-19', 'Warner Bros', 'Livre', 'Concluído', 3),
(default, 'Scooby-Doo', '1969-09-13', 'CBS', 'Livre', 'Concluído', 4),
(default, 'Pica-Pau', '1940-11-25', 'CBS', 'Livre', 'Concluído', 5),
(default, 'Hora de Aventura', '2010-04-05', 'Cartoon Network', 'Livre', 'Concluído', 2),
(default, 'Bob Esponja', '1999-03-01', 'Nickelodeon', 'Livre', 'Em andamento', 5),
(default, 'Os Simpsons', '1989-12-17', 'FOX', '12 anos', 'Em andamento', 3),
(default, 'Steven Universo', '2013-11-04', 'Cartoon Network', '10 anos', 'Concluído', 4),
(default, 'Rick e Morty', '2013-12-12', 'Adult Swim', '16 anos', 'Em andamento', 5),
(default, 'Caverna do Dragão', '1983-09-17', 'CBS', 'Livre', 'Concluído', 4),
(default, 'South Park', '1997-08-13', 'Comedy Central', '18 anos', 'Em andamento', 1),
(default, 'Avatar', '2005-02-21', 'Nickelodeon', '10 anos', 'Concluído', 5),
(default, 'Courage', '1999-11-12', 'Cartoon Network', 'Livre', 'Concluído', 4),
(default, 'Padrinhos Mágicos', '2001-03-30', 'Nickelodeon', 'Livre', 'Concluído', 4);

SELECT * FROM catalogo;

SELECT * FROM catalogo
WHERE classificacao <= 14;

SELECT * FROM catalogo
WHERE emissora = 'CBS';

UPDATE catalogo
SET status_des = 'Exibindo'
WHERE id = 10;

UPDATE catalogo
SET status_des = 'Cancelado'
WHERE id = 11;

UPDATE catalogo
SET status_des = 'Exibindo'
WHERE id = 12;

UPDATE catalogo
SET status_des = 'Exibindo'
WHERE id = 13;

UPDATE catalogo
SET status_des = 'Exibindo'
WHERE id = 14;

UPDATE catalogo
SET status_des = 'Cancelado'
WHERE id = 15;

UPDATE catalogo
SET status_des = 'Exibindo'
WHERE id = 16;

UPDATE catalogo
SET status_des = 'Finalizado'
WHERE id = 17;

UPDATE catalogo
SET status_des = 'Exibindo'
WHERE id = 18;

UPDATE catalogo
SET status_des = 'Exibindo'
WHERE id = 19;

UPDATE catalogo
SET status_des = 'Exibindo'
WHERE id = 20;

UPDATE catalogo
SET status_des = 'Finalizado'
WHERE id = 21;

UPDATE catalogo
SET status_des = 'Exibindo'
WHERE id = 22;

UPDATE catalogo
SET status_des = 'Cancelado'
WHERE id = 23;

UPDATE catalogo
SET status_des = 'Finalizado'
WHERE id = 24;

ALTER TABLE catalogo
ADD CONSTRAINT chk_status CHECK (status_des IN ('Exibindo', 'Finalizado', 'Cancelado'));

UPDATE catalogo
SET status_des = 'Em andamento'
WHERE id = 24;

UPDATE catalogo
SET status_des = 'Finalizado'
WHERE id = 22;

UPDATE catalogo
SET status_des = 'Finalizado'
WHERE id = 20;

DELETE FROM catalogo
WHERE id = 12;

SELECT * FROM catalogo
WHERE titulo LIKE 's%';

ALTER TABLE catalogo
RENAME COLUMN classificacao to classificacaoIndicativa;

UPDATE catalogo
SET nota = 3, dtLancamento = '1980-10-20'
WHERE id = 11;

TRUNCATE TABLE catalogo;

ALTER TABLE catalogo
DROP CONSTRAINT chk_status;


-- 4)
CREATE DATABASE estoque;
USE estoque;

CREATE TABLE MisteriosSa (
	id int primary key auto_increment,
    nome varchar(40),
    dtCompra date,
    preco float,
    peso float,
    dtRetirada date
); 

INSERT INTO MisteriosSa VALUES 
(default, 'Arroz', '2024-02-10', 10.50, 1500, null),
(default, 'Feijão', '2024-03-15', 17.80, 2000, null),
(default, 'Tapioca', '2024-08-20', 14.99, 500, null),
(default, 'Biscoitos Scooby', '2023-01-03', 3.5, 90, null),
(default, 'Chocolate', '2023-05-10', 6, 120, null);

SELECT * FROM MisteriosSa;

SELECT nome, dtCompra, dtRetirada, id FROM MisteriosSa ORDER BY dtCompra;

UPDATE MisteriosSa
SET dtRetirada = '2024-08-20'
WHERE id = 4;

ALTER TABLE MisteriosSa 
RENAME COLUMN id TO idComida;

UPDATE MisteriosSa
SET nome = 'Biscoitos Scooby'
WHERE idComida = 1;

UPDATE MisteriosSa 
SET nome = 'Biscoitos Scooby'
WHERE idComida = 2;

UPDATE MisteriosSa
SET nome = 'Cachorro-Quente'
WHERE idComida = 3;

UPDATE MisteriosSa
SET nome = 'Cachorro-Quente'
WHERE idComida = 5;

ALTER TABLE MisteriosSa
ADD CONSTRAINT chk_nomes CHECK (nome IN ('Biscoitos Scooby', 'Cachorro-Quente'));

SELECT idComida, nome, dtCompra as 'data da compra', preco, peso , dtRetirada as 'data da retirada' FROM MisteriosSa
WHERE nome = 'Biscoitos Scooby';

SELECT * FROM MisteriosSa
WHERE dtCompra < '2024-07-25';

SELECT * FROM MisteriosSa
WHERE preco >= 30.5;

TRUNCATE TABLE MisteriosSa;


-- 5)
CREATE DATABASE vingadores;
USE vingadores;

CREATE TABLE heroi (
	idheroi int primary key auto_increment,
	nome varchar(45),
    versao varchar(45),
    habilidade varchar(30),
    altura int
);

INSERT INTO heroi VALUES
(default, 'Superman', 'Man of Steel', 'Superforça', 191),
(default, 'Mulher-Maravilha', 'Wonder Woman', 'agilidade', 178),
(default, 'Homem de Ferro', 'Iron Man', 'Gênio inventor', 185),
(default, 'Thor', 'Thor', 'imortalidade', 198),
(default, 'Capitão América', 'Captain America', 'Resistência aprimorada', 188);

SELECT * FROM heroi;

ALTER TABLE heroi
ADD COLUMN regeneracao boolean;

UPDATE heroi
SET regeneracao = true
WHERE idheroi = 1;

UPDATE heroi
SET regeneracao = false
WHERE idheroi = 2;

UPDATE heroi
SET regeneracao = true
WHERE idheroi = 3;

UPDATE heroi
SET regeneracao = false
WHERE idheroi = 4;

UPDATE heroi
SET regeneracao = true
WHERE idheroi = 5;

ALTER TABLE heroi
MODIFY COLUMN versao varchar(100);

DELETE FROM heroi
WHERE idheroi = 3;

INSERT INTO heroi VALUES
(default, 'Doutor Estranho', 'Doutor Estranho', 'Magia', 1.82, false);

SELECT * FROM heroi
WHERE nome LIKE 'C%' or nome LIKE 'H%';

SELECT * FROM heroi 
WHERE nome NOT LIKE '%a%';

SELECT nome FROM heroi
WHERE altura > 190;

SELECT * FROM heroi 
WHERE altura > 180 ORDER BY nome DESC;

TRUNCATE TABLE heroi;











