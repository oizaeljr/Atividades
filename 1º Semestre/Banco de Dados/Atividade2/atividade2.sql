-- BANCO DE DADOS
-- EXERCÍCIOS - PRÁTICA 02
-- PROFESSORA: VIVIAN SILVA
-- NOME/RA: IZAEL REIS DE OLIVEIRA JUNIOR / 01242032

-- 1)
-- Criar banco de dados.
CREATE DATABASE sprint1;

-- Selecionar banco de dados.
USE sprint1;

-- Criar a tabela chamada Atleta.
CREATE TABLE Atleta(
idAtleta int primary key,
nome varchar(40),
modalidade varchar(40),
qtdMedalha int
);

-- Inserir dados na tabela.
INSERT INTO Atleta VALUES
('1', 'Michael Phelps', 'Natação', '28'),
('2', 'Mark Spitz', 'Natação', '11'),
('3', 'Paavo Nurmi', 'Atletismo ', '12'),
('4', 'Usain Bolt', 'Atletismo', '8'),
('5', 'Larisa Latynina', 'Ginástica Artística', '18'),
('6', 'Nadia Comăneci', 'Ginástica Artística', '9'),
('7', 'Aladar Gerevich', 'Esgrima', '10'),
('8', 'Valentina Vezzali', 'Esgrima', '9');

-- a) Exibir todos os dados da tabela.
SELECT * FROM Atleta;

-- b) Atualizar a quantidade de medalhas do atleta com id=1;
UPDATE Atleta
SET qtdMedalha = 4
WHERE idAtleta = 1;

-- c) Atualizar a quantidade de medalhas do atleta com id=2 e com o id=3;
UPDATE Atleta 
SET qtdMedalha = 20
WHERE idAtleta = 2;

UPDATE Atleta 
SET qtdMedalha = 25
WHERE idAtleta = 3;

-- d) Atualizar o nome do atleta com o id=4;
UPDATE Atleta
SET nome = 'João Martins'
WHERE idAtleta = 4;

-- e) Adicionar o campo dtNasc na tabela, com a data de nascimento dos atletas, tipo date;
ALTER TABLE Atleta
ADD COLUMN dtNasc date;

UPDATE Atleta
SET dtNasc = '1983-10-03'
WHERE idAtleta = 1;

UPDATE Atleta
SET dtNasc = '1990-08-05'
WHERE idAtleta = 2;

UPDATE Atleta
SET dtNasc = '1988-12-10'
WHERE idAtleta = 3;

UPDATE Atleta
SET dtNasc = '1993-09-11'
WHERE idAtleta = 4;

UPDATE Atleta
SET dtNasc = '1977-12-13'
WHERE idAtleta = 5;

UPDATE Atleta
SET dtNasc = '2002-10-24'
WHERE idAtleta = 6;

UPDATE Atleta
SET dtNasc = '2001-07-27'
WHERE idAtleta = 7;

UPDATE Atleta
SET dtNasc = '2003-09-15'
WHERE idAtleta = 8;

-- f) Atualizar a data de nascimento de todos os atletas;
UPDATE Atleta
SET dtNasc = '1983-02-02'
WHERE idAtleta = 1;

UPDATE Atleta
SET dtNasc = '1990-03-03'
WHERE idAtleta = 2;

UPDATE Atleta
SET dtNasc = '1988-10-09'
WHERE idAtleta = 3;

UPDATE Atleta
SET dtNasc = '1993-05-12'
WHERE idAtleta = 4;

UPDATE Atleta
SET dtNasc = '1977-11-14'
WHERE idAtleta = 5;

UPDATE Atleta
SET dtNasc = '2002-12-27'
WHERE idAtleta = 6;

UPDATE Atleta
SET dtNasc = '2001-07-20'
WHERE idAtleta = 7;

UPDATE Atleta
SET dtNasc = '2003-10-16'
WHERE idAtleta = 8;

-- g) Excluir o atleta com o id=5;
DELETE FROM Atleta
WHERE idAtleta = 5;

-- h) Exibir os atletas onde a modalidade é diferente de natação;
SELECT * FROM Atleta
WHERE modalidade <> 'natação';

-- i) Exibir os dados dos atletas que tem a quantidade de medalhas maior ou igual a 3;
SELECT * FROM Atleta
WHERE qtdMedalha >= 3;

-- j)Modificar o campo modalidade do tamanho 40 para o tamanho 60;
ALTER TABLE Atleta
MODIFY COLUMN modalidade varchar(60);

-- k)Descrever os campos da tabela mostrando a atualização do campo modalidade;
DESC atleta;

-- l)Limpar os dados da tabela;
TRUNCATE Atleta;

-- 2)
-- Utilize o banco de dados ‘sprint1’:
USE sprint1;

-- Criar a tabela chamada Musica.
CREATE TABLE Musica (
idMusica int primary key,
titulo varchar(40),
artista varchar(40),
genero varchar(40)
);

-- Inserir dados na tabela.
INSERT INTO Musica VALUES
('1', 'Lindo Momento', 'Julliany Souza', 'Gospel'),
('2', 'Minha Morada', 'Isadora Pompeo', 'Gospel'),
('3', 'Processo', 'Isadora Pompeo', 'Gospel'),
('4', 'Me Atraiu', 'Wandinho Nonato', 'Instrumental'),
('5', 'Algo Novo', 'Wandinho Nonato', 'Instrumental'),
('6', 'Presença', 'Cicero Euclides', 'Instrumental'),
('7', 'Já Agradeço', 'Victin', 'Rap'),
('8', 'Meu Sonho', 'Victin', 'Rap'),
('9', 'Muita Treta', 'Pregador Luo', 'Rap');

-- a) Exibir todos os dados da tabela.
SELECT * FROM Musica;

-- b) Adicionar o campo curtidas do tipo int na tabela;
ALTER TABLE Musica
ADD COLUMN curtidas int;

-- c) Atualizar o campo curtidas de todas as músicas inseridas;
UPDATE Musica
SET curtidas = 2
WHERE idMusica = 1;

UPDATE Musica
SET curtidas = 10
WHERE idMusica = 2;

UPDATE Musica
SET curtidas = 35
WHERE idMusica = 3;

UPDATE Musica
SET curtidas = 80
WHERE idMusica = 4;

UPDATE Musica
SET curtidas = 21
WHERE idMusica = 5;

UPDATE Musica
SET curtidas = 8
WHERE idMusica = 6;

UPDATE Musica
SET curtidas = 33
WHERE idMusica = 7;

UPDATE Musica
SET curtidas = 16
WHERE idMusica = 8;

UPDATE Musica
SET curtidas = 10
WHERE idMusica = 9;

-- d) Modificar o campo artista do tamanho 40 para o tamanho 80
ALTER TABLE Musica
MODIFY COLUMN artista varchar(80);

-- e) Atualizar a quantidade de curtidas da música com id=1
UPDATE Musica
SET curtidas = 22
WHERE idMusica = 1;

-- f) Atualizar a quantidade de curtidas das músicas com id=2 e com o id=3;
UPDATE Musica
SET curtidas = 30
WHERE idMusica = 2;

UPDATE Musica
SET curtidas = 14
WHERE idMusica = 3;

-- g) Atualizar o nome da música com o id=5;
UPDATE Musica 
SET titulo = 'Algo Novo'
WHERE idMusica = 5;

-- h) Excluir a música com o id=4;
DELETE FROM Musica
WHERE idMusica = 4;
SELECT * FROM Musica;

-- i) Exibir as músicas onde o gênero é diferente de funk
SELECT * FROM Musica
WHERE genero <> 'funk'; 

-- j) Exibir os dados das músicas que tem curtidas maior ou igual a 20;
SELECT * FROM Musica
WHERE curtidas >= 20;

-- k) Descrever os campos da tabela mostrando a atualização do campo artista;
DESC Musica;

-- l) Limpar os dados da tabela; 
TRUNCATE Musica;

-- 3)
-- Utilize o banco de dados ‘sprint1’:
USE sprint1;

-- Criar a tabela chamada Filme.
CREATE TABLE Filme (
idFilme int primary key,
titulo varchar(50),
genero varchar(40),
diretor varchar(40)
);

-- Inserir dados na tabela.
INSERT INTO Filme VALUES
('1', 'Parasita', 'Comédia', 'Bong Joon-ho'),
('2', 'A Vida é Bela', 'Comédia', 'Roberto Benigni'),
('3', 'Tempo de Violência', 'Drama', 'Quentin Tarantino'),
('4', 'O Poderoso Chefão', 'Drama', 'Francis Ford Coppola'),
('5', 'A Origem', 'Aventura', 'Christopher Nolan'),
('6', 'Interestelar', 'Aventura', 'Christopher Nolan'),
('7', 'O Silêncio dos Inocentes', 'Terror', 'Jonathan Demme'),
('8', 'O Casamento de Rachel', 'Terror', 'Jonathan Demme');

-- a) Exibir todos os dados da tabela.
SELECT * FROM Filme;

-- b) Adicionar o campo protagonista do tipo varchar(50) na tabela;
ALTER TABLE Filme
ADD COLUMN protagonista varchar(50);

-- c) Atualizar o campo protagonista de todas os filmes inseridos;
UPDATE Filme
SET protagonista = 'João Kleber'
WHERE idFilme = 1;

UPDATE Filme
SET protagonista = 'Gustavo Henrique'
WHERE idFilme = 2;

UPDATE Filme
SET protagonista = 'Gabriel Cose'
WHERE idFilme = 3;

UPDATE Filme
SET protagonista = 'Izael Junior'
WHERE idFilme = 4;

UPDATE Filme
SET protagonista = 'Ricardo Oliveira'
WHERE idFilme = 5;

UPDATE Filme
SET protagonista = 'Marcos Alberto'
WHERE idFilme = 6;

UPDATE Filme
SET protagonista = 'Julia Alves'
WHERE idFilme = 7;

UPDATE Filme
SET protagonista = 'Maria Eduarda'
WHERE idFilme = 8;

-- d) Modificar o campo diretor do tamanho 40 para o tamanho 150;
ALTER TABLE Filme
MODIFY COLUMN diretor varchar(150);

-- e) Atualizar o diretor do filme com id=5;
UPDATE Filme
SET diretor = 'Joaquim Cabral'
WHERE idFilme = 5;

-- f) Atualizar o diretor dos filmes com id=2 e com o id=7;
UPDATE Filme
SET diretor = 'Rafaela Santos'
WHERE idFilme = 2;

UPDATE Filme
SET diretor = 'Paulo da Silva'
WHERE idFilme = 7;

-- g) Atualizar o título do filme com o id=6;
UPDATE Filme
SET titulo = 'Flash'
WHERE idFilme = 6;

-- h) Excluir o filme com o id=3;
DELETE FROM Filme
WHERE idFilme = 3;

-- i) Exibir os filmes em que o gênero é diferente de drama;
SELECT * FROM Filme
WHERE genero <> 'drama';

-- j) Exibir os dados dos filmes que o gênero é igual ‘suspense’;
SELECT * FROM Filme
WHERE genero = 'suspense';

-- k) Descrever os campos da tabela mostrando a atualização do campo protagonista e diretor;
DESC Filme;

-- l) Limpar os dados da tabela; 
TRUNCATE Filme;

-- 4)
-- Utilize o banco de dados ‘sprint1’:
USE sprint1;

-- Criar a tabela chamada Professor.
CREATE TABLE Professor (
idProfessor int primary key,
nome varchar(50),
especialidade varchar(40),
dtNasc date
);

-- Inserir dados na tabela.
INSERT INTO Professor VALUES
('1','Rogério Machado','Matemática','1983-10-13'),
('2','Ana Clara','Matemática','1970-09-02'),
('3','João Marcos','História','1980-07-22'),
('4','Letícia Fernandes','História','1976-08-05'),
('5','Felipe Cardoso','Biologia','1975-03-15'),
('6','Ricardo Lopes','Biologia','1972-02-04'),
('7','Carla Menezes','Química','1978-09-29'),
('8','Pedro Albuquerque','Química','1965-11-10');

-- a) Exibir todos os dados da tabela.
SELECT * FROM Professor;

-- b) Adicionar o campo funcao do tipo varchar(50), onde a função só pode ser ‘monitor’,‘assistente’ ou ‘titular’;
ALTER TABLE Professor
ADD COLUMN funcao varchar(50),
ADD CONSTRAINT chk_funcao CHECK (funcao IN ('monitor', 'assistente', 'titular')); 

-- c) Atualizar os professores inseridos e suas respectivas funções;
UPDATE Professor
SET funcao = 'Monitor'
WHERE idProfessor = 1;

UPDATE Professor
SET funcao = 'Titular'
WHERE idProfessor = 2;

UPDATE Professor
SET funcao = 'Assistente'
WHERE idProfessor = 3;

UPDATE Professor
SET funcao = 'Titular'
WHERE idProfessor = 4;

UPDATE Professor
SET funcao = 'Assistente'
WHERE idProfessor = 5;

UPDATE Professor
SET funcao = 'Titular'
WHERE idProfessor = 6;

UPDATE Professor
SET funcao = 'Monitor'
WHERE idProfessor = 7;

UPDATE Professor
SET funcao = 'Assistente'
WHERE idProfessor = 8;

-- d) Inserir um novo professor;
INSERT INTO Professor VALUES 
(9, 'Maria Eduarda', 'Português', '1990-11-20', 'Auxiliar');

-- e) Excluir o professor onde o idProfessor é igual a 5;
DELETE FROM Professor
WHERE idProfessor = 5;

-- f) Exibir apenas os nomes dos professores titulares;
SELECT * FROM Professor
WHERE funcao = 'titular';

-- g) Exibir apenas as especialidades e as datas de nascimento dos professores monitores;
SELECT especialidade, dtNasc FROM Professor
WHERE funcao = 'monitor';

-- h) Atualizar a data de nascimento do idProfessor igual a 3;
UPDATE Professor
SET dtNasc = '1990-10-23'
WHERE idProfessor = 3;

-- i) Limpar a tabela Professor;
TRUNCATE Professor;

-- 5)
-- Utilize o banco de dados ‘sprint1’:
USE sprint1;

-- Criar a tabela chamada Curso.
CREATE TABLE Curso (
idCurso int primary key,
nome varchar(50),
sigla varchar(3),
coordenador varchar(40)
);

-- Inserir dados na tabela.
INSERT INTO Curso VALUES
('1', 'Engenharia Civil', 'EC', 'Marcos Pereira'),
('2', 'Medicina', 'MED', 'Ana Beatriz'),
('3', 'Administração', 'ADM', 'Carlos Souza'),
('4', 'Ciência da Computação', 'CC', 'João Augusto'),
('5', 'Direito', 'DIR', 'Mariana Oliveira');

-- a) Exibir todos os dados da tabela.
SELECT * FROM Curso;

-- b) Exibir apenas os coordenadores dos cursos.
SELECT coordenador FROM Curso;

-- c) Exibir apenas os dados dos cursos de uma determinada sigla.
SELECT * FROM Curso
WHERE sigla = 'DIR';

-- d) Exibir os dados da tabela ordenados pelo nome do curso.
SELECT * FROM Curso ORDER BY nome;

-- e) Exibir os dados da tabela ordenados pelo nome do coordenador em ordem decrescente.
SELECT * FROM Curso ORDER BY coordenador DESC;

-- f) Exibir os dados da tabela, dos cursos cujo nome comece com uma determinada letra.
SELECT * FROM Curso
WHERE nome LIKE 'A%';

-- g) Exibir os dados da tabela, dos cursos cujo nome termine com uma determinada letra.
SELECT * FROM Curso 
WHERE nome LIKE '%o';

-- h) Exibir os dados da tabela, dos cursos cujo nome tenha como segunda letra uma determinada letra.
SELECT * FROM Curso
WHERE nome LIKE '_i%';

-- i) Exibir os dados da tabela, dos cursos cujo nome tenha como penúltima letra uma determinada letra.
SELECT * FROM Curso
WHERE nome LIKE '%n_';

-- j) Elimine a tabela.
DROP TABLE Curso;

-- 6)
-- Utilize o banco de dados ‘sprint1’:
USE sprint1;

-- Criar a tabela chamada Revista.
CREATE TABLE Revista (
idRevista int auto_increment primary key,
nome varchar(40),
categoria varchar(30)
);

-- Inserir 4 registros na tabela, mas sem informar a categoria.
INSERT INTO Revista (nome) VALUES
('Veja'),
('Isto é'),
('Epoca'),
('Quatro Rodas');

-- a) Exibir todos os dados da tabela.
SELECT * FROM Revista;

-- b) Atualize os dados das categorias das 4 revistas inseridas. Exibir os dados da tabela novamente para verificar se atualizou corretamente.
UPDATE Revista
SET categoria = 'Notícias'
WHERE idRevista = 1;

UPDATE Revista
SET categoria = 'Ciências'
WHERE idRevista = 2;

UPDATE Revista
SET categoria = 'Esporte'
WHERE idRevista = 3;

UPDATE Revista
SET categoria = 'Novidades'
WHERE idRevista = 4;

-- c) Insira mais 3 registros completos.
INSERT INTO Revista VALUES
(default, 'Vogue', 'Moda'),
(default, 'Superinteressante', 'Ciências'),
(default, 'Caras', 'Entretenimento');

-- d) Exibir novamente os dados da tabela.
SELECT * FROM Revista;

-- e) Exibir a descrição da estrutura da tabela.
DESC Revista;

-- f) Alterar a tabela para que a coluna categoria possa ter no máximo 40 caracteres.
ALTER TABLE Revista
MODIFY COLUMN categoria varchar(40);

-- g) Exibir novamente a descrição da estrutura da tabela, para verificar se alterou o tamanho da coluna categoria
DESC Revista;

-- h) Acrescentar a coluna periodicidade à tabela, que é varchar(15).
ALTER TABLE Revista
ADD COLUMN periodicidade varchar(15);

-- i) Exibir os dados da tabela.
SELECT * FROM Revista;

-- j) Excluir a coluna periodicidade da tabela
ALTER TABLE Revista
DROP COLUMN periodicidade;