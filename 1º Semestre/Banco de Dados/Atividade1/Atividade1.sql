-- BANCO DE DADOS
-- EXERCÍCIOS - PRÁTICA 01
-- PROFESSORA: VIVIAN SILVA
-- NOME/RA: IZAEL REIS DE OLIVEIRA JUNIOR / 01242032

-- 1)
-- Criar banco de dados
CREATE DATABASE sprint1;

-- Selecionar banco de dados
USE sprint1;

-- Criar a tabela chamada Atleta
CREATE TABLE Atleta(
	idAtleta int primary key,
    nome varchar(40),
    modalidade varchar(40),
    qtdMedalha int
);

-- Inserir dados na tabela
INSERT INTO Atleta VALUES
	('101', 'Michael Phelps', 'Natação', '28'),
    ('102', 'Mark Spitz', 'Natação', '11'),
    ('103', 'Paavo Nurmi', 'Atletismo ', '12'),
    ('104', 'Usain Bolt', 'Atletismo', '8'),
    ('105', 'Larisa Latynina', 'Ginástica Artística', '18'),
    ('106', 'Nadia Comăneci', 'Ginástica Artística', '9'),
    ('107', 'Aladar Gerevich', 'Esgrima', '10'),
    ('108', 'Valentina Vezzali', 'Esgrima', '9');
    
-- a) Exibir todos os dados da tabela.
SELECT * FROM Atleta;

-- b) Exibir apenas os nomes e quantidade de medalhas dos atletas
SELECT nome, qtdMedalha FROM Atleta;

-- c) Exibir apenas os dados dos atletas de uma determinada modalidade
SELECT * FROM Atleta
	WHERE modalidade = 'Natação';
    
-- d) Exibir os dados da tabela ordenados pela modalidade.
SELECT * FROM Atleta ORDER BY modalidade;

-- e) Exibir os dados da tabela, ordenados pela quantidade de medalhas, em ordem decrescente
SELECT * FROM Atleta ORDER BY qtdMedalha DESC;

-- f) Exibir os dados da tabela, dos atletas cujo nome contenha a letra s
SELECT * FROM Atleta
	WHERE nome LIKE '%s%';
	
-- g) Exibir os dados da tabela, dos atletas cujo nome comece com uma determinada letra
SELECT * FROM Atleta
	WHERE nome LIKE 'M%';
    
-- h) Exibir os dados da tabela, dos atletas cujo nome termine com a letra o.
SELECT * FROM Atleta 
	WHERE nome LIKE '%o';
    
-- i) Exibir os dados da tabela, dos atletas cujo nome tenha a penúltima letra r.
SELECT * FROM Atleta 
	WHERE nome LIKE '%r_';
    
-- j) Eliminar a tabela.
DROP TABLE Atleta;

-- 2)
-- Utilize o banco de dados ‘sprint1’:
USE sprint1;

-- Criar a tabela chamada Musica
CREATE TABLE Musica (
	idMusica int primary key,
    titulo varchar(40),
    artista varchar(40),
    genero varchar(40)
);

-- Inserir dados na tabela	
INSERT INTO Musica VALUES 
	('101', 'Lindo Momento', 'Julliany Souza', 'Gospel'),
    ('102', 'Minha Morada', 'Isadora Pompeo', 'Gospel'),
    ('103', 'Processo', 'Isadora Pompeo', 'Gospel'),
    ('104', 'Me Atraiu', 'Wandinho Nonato', 'Instrumental'),
    ('105', 'Algo Novo', 'Wandinho Nonato', 'Instrumental'),
    ('106', 'Presença', 'Cicero Euclides', 'Instrumental'),
    ('107', 'Já Agradeço', 'Victin', 'Rap'),
    ('108', 'Meu Sonho', 'Victin', 'Rap'),
    ('109', 'Muita Treta', 'Pregador Luo', 'Rap');
    
-- a) Exibir todos os dados da tabela
SELECT * FROM Musica;

-- b) Exibir apenas os títulos e os artistas das músicas
SELECT titulo, artista FROM Musica;

-- c) Exibir apenas os dados das músicas de um determinado gênero
SELECT titulo FROM Musica
	WHERE genero = 'Gospel';
    
-- d) Exibir apenas os dados das músicas de um determinado artista
SELECT titulo FROM Musica
	WHERE artista = 'Victin';
    
-- e) Exibir os dados da tabela ordenados pelo título da música
SELECT * FROM Musica ORDER BY titulo;

-- f) Exibir os dados da tabela ordenados pelo artista em ordem decrescente
SELECT * FROM Musica ORDER BY artista DESC;

-- g) Exibir os dados da tabela, das músicas cujo título comece com uma determinada letra
SELECT * FROM Musica 
	WHERE titulo LIKE 'M%';
    
-- h) Exibir os dados da tabela, das músicas cujo artista termine com uma determinada letra
SELECT * FROM Musica 
	WHERE artista LIKE '%o';
    
-- i) Exibir os dados da tabela, das músicas cujo gênero tenha como segunda letra uma determinada letra
SELECT * FROM Musica 
	WHERE genero LIKE '_n%';
    
-- j) Exibir os dados da tabela, das músicas cujo título tenha como penúltima letra uma determinada letra
SELECT * FROM Musica
	WHERE titulo LIKE '%t_';
    
-- k) Elimine a tabela.
DROP TABLE Musica;

-- 3)
-- Utilize o banco de dados ‘sprint1’:
USE sprint1;

-- Criar a tabela chamada Filme
CREATE TABLE Filme (
	idFilme int primary key,
    titulo varchar(50),
    genero varchar(40),
    diretor varchar(40)
);

-- Inserir dados na tabela
INSERT INTO Filme VALUES
	('101', 'Parasita', 'Comédia', 'Bong Joon-ho'),
    ('102', 'A Vida é Bela', 'Comédia', 'Roberto Benigni'),
    ('103', 'Tempo de Violência', 'Drama', 'Quentin Tarantino'),
    ('104', 'O Poderoso Chefão', 'Drama', 'Francis Ford Coppola'),
    ('105', 'A Origem', 'Aventura', 'Christopher Nolan'),
    ('106', 'Interestelar', 'Aventura', 'Christopher Nolan'),
    ('107', 'O Silêncio dos Inocentes', 'Terror', 'Jonathan Demme'),
    ('108', 'O Casamento de Rachel', 'Terror', 'Jonathan Demme');
    
-- a) Exibir todos os dados da tabela
SELECT * FROM Filme;

-- b) Exibir apenas os títulos e os diretores dos filmes
SELECT titulo, diretor FROM Filme;

-- c) Exibir apenas os dados dos filmes de um determinado gênero
SELECT * FROM Filme
	WHERE genero = 'Comédia';

-- d) Exibir apenas os dados dos filmes de um determinado diretor
SELECT * FROM Filme
	WHERE diretor = 'Christopher Nolan';

-- e) Exibir os dados da tabela ordenados pelo título do filme
SELECT * FROM Filme ORDER BY titulo;

-- f) Exibir os dados da tabela ordenados pelo diretor em ordem decrescente
SELECT * FROM Filme ORDER BY diretor DESC;

-- g) Exibir os dados da tabela, dos filmes cujo título comece com uma determinada letra
SELECT * FROM Filme
	WHERE titulo LIKE 'A%';

-- h) Exibir os dados da tabela, dos filmes cujo diretor termine com uma determinada letra
SELECT * FROM Filme
	WHERE diretor LIKE '%o';

-- i) Exibir os dados da tabela, dos filmes cujo gênero tenha como segunda letra uma determinada letra
SELECT * FROM Filme 
	WHERE genero LIKE '_e%';

-- j) Exibir os dados da tabela, dos filmes cujo título tenha como penúltima letra uma determinada letra
SELECT * FROM Filme
	WHERE titulo LIKE '%t_';

-- k) Elimine a tabela
DROP TABLE Filme;

-- 4)
-- Utilize o banco de dados ‘sprint1’:
USE sprint1;

-- Criar a tabela chamada Professor
CREATE TABLE Professor (
	idProfessor int primary key,
    nome varchar(50),
    especialidade varchar(40),
    dtNasc date	
);

-- Inserir dados na tabela
INSERT INTO Professor VALUES
	('101','Rogério Machado','Matemática','1983-10-13'),
    ('102','Ana Clara','Matemática','1970-09-02'),
    ('103','João Marcos','História','1980-07-22'),
    ('104','Letícia Fernandes','História','1976-08-05'),
    ('105','Felipe Cardoso','Biologia','1975-03-15'),
    ('106','Ricardo Lopes','Biologia','1972-02-04'),
    ('107','Carla Menezes','Química','1978-09-29'),
    ('108','Pedro Albuquerque','Química','1965-11-10');
    
-- a) Exibir todos os dados da tabela
SELECT * FROM Professor;

-- b) Exibir apenas as especialidades dos professores
SELECT especialidade FROM Professor;

-- c) Exibir apenas os dados dos professores de uma determinada especialidade
SELECT * FROM Professor
	WHERE especialidade = 'Matemática';

-- d) Exibir os dados da tabela ordenados pelo nome do professor
SELECT * FROM Professor ORDER BY nome;

-- e) Exibir os dados da tabela ordenados pela data de nascimento do professor em ordem decrescente
SELECT * FROM Professor ORDER BY dtNasc DESC;

-- f) Exibir os dados da tabela, dos professores cujo nome comece com uma determinada letra
SELECT * FROM Professor
	WHERE nome LIKE '%f%';

-- g) Exibir os dados da tabela, dos professores cujo nome termine com uma determinada letra
SELECT * FROM Professor
	WHERE nome LIKE '%o';

-- h) Exibir os dados da tabela, dos professores cujo nome tenha como segunda letra uma determinada letra
SELECT * FROM Professor
	WHERE nome LIKE '_e%';

-- i) Exibir os dados da tabela, dos professores cujo nome tenha como penúltima letra uma determinada letra
SELECT * FROM Professor
	WHERE nome LIKE '%s_';

-- j) Elimine a tabela
DROP TABLE Professor;

-- 5)
-- Utilize o banco de dados ‘sprint1’:
USE sprint1;

-- Criar a tabela chamada Curso
CREATE TABLE Curso (
	idCurso int primary key,
    nome varchar(50),
    sigla varchar(3),
    coordenador varchar(40) 
);

-- Inserir dados na tabela
INSERT INTO Curso VALUES
	('101', 'Engenharia Civil', 'EC', 'Marcos Pereira'),
    ('102', 'Medicina', 'MED', 'Ana Beatriz'),
    ('103', 'Administração', 'ADM', 'Carlos Souza'),
    ('104', 'Ciência da Computação', 'CC', 'João Augusto'),
    ('105', 'Direito', 'DIR', 'Mariana Oliveira');
    
-- a) Exibir todos os dados da tabela
SELECT * FROM Curso;

-- b) Exibir apenas os coordenadores dos cursos
SELECT coordenador FROM Curso;

-- c) Exibir apenas os dados dos cursos de uma determinada sigla
SELECT * FROM curso
	WHERE sigla = 'DIR';

-- d) Exibir os dados da tabela ordenados pelo nome do curso
SELECT * FROM Curso ORDER BY nome;

-- e) Exibir os dados da tabela ordenados pelo nome do coordenador em ordem decrescente
SELECT * FROM Curso ORDER BY coordenador DESC;

-- f) Exibir os dados da tabela, dos cursos cujo nome comece com uma determinada letra
SELECT * FROM Curso 
	WHERE nome LIKE 'E%';

-- g) Exibir os dados da tabela, dos cursos cujo nome termine com uma determinada letra
SELECT * FROM Curso
	WHERE nome LIKE '%o';

-- h) Exibir os dados da tabela, dos cursos cujo nome tenha como segunda letra uma determinada letra
SELECT * FROM Curso
	WHERE nome LIKE '_i%';

-- i) Exibir os dados da tabela, dos cursos cujo nome tenha como penúltima letra uma determinada letra
SELECT * FROM Curso
	WHERE nome LIKE '%t_';

-- j) Elimine a tabela
DROP TABLE Curso;

-- 6)
-- Utilize o banco de dados ‘sprint1’:
USE sprint1;

-- Criar a tabela chamada Revista
CREATE TABLE Revista (
	idRevista int auto_increment primary key,
    nome varchar(40),
    categoria varchar(30)
);

-- Inserir 4 registros na tabela, mas sem informar a categoria
INSERT INTO Revista (nome) VALUES
	('Veja'),
    ('Isto é'),
    ('Epoca'),
    ('Quatro Rodas');
    
-- a) Exibir todos os dados da tabela
SELECT * FROM Revista;

-- b) Atualize os dados das categorias das 4 revistas inseridas
UPDATE Revista
SET categoria = 'Notícias'
WHERE idRevista = '1';

UPDATE Revista
SET categoria = 'Atualidades'
WHERE idRevista = '2';

UPDATE Revista 
SET categoria = 'Notícias'
WHERE idRevista = '3';

UPDATE Revista
SET categoria = 'Automobilismo'
WHERE idRevista = '4';

-- Exibir os dados da tabela novamente para verificar se atualizou corretamente
SELECT * FROM Revista;

-- c) Insira mais 3 registros completos
INSERT INTO Revista (nome, categoria) VALUES 
	('Vogue', 'Moda'),
    ('Superinteressante', 'Ciências'),
    ('Exame', 'Economia');

-- d) Exibir novamente os dados da tabela
SELECT * FROM Revista;

-- e) Exibir a descrição da estrutura da tabela
DESC Revista;

-- f) Alterar a tabela para que a coluna categoria possa ter no máximo 40 caracteres
ALTER TABLE Revista
MODIFY COLUMN categoria varchar(40);

-- g) Exibir novamente a descrição da estrutura da tabela, para verificar se alterou o tamanho da coluna categoria
DESC Revista;

-- h) Acrescentar a coluna periodicidade à tabela, que é varchar(15)
ALTER TABLE Revista
ADD COLUMN periodicidade varchar(15);

-- i) Exibir os dados da tabela
SELECT * FROM Revista;

-- j) Excluir a coluna periodicidade da tabela
ALTER TABLE Revista
DROP COLUMN periodicidade;

-- k) EXCLUIR O BANCO DE DADOS SPRINT1
DROP DATABASE sprint1;
    