/*ATIVIDADE 2 */
CREATE DATABASE BDempresa;
USE BDempresa;

CREATE TABLE diretor(
	IdDiretor INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR(100)
)
CREATE TABLE departamento(
	IdDepartamento INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR(100),
	IdDiretor INT FOREIGN KEY REFERENCES diretor(IdDiretor)
)

INSERT INTO diretor(Nome) VALUES ('Nilson'),('ruben'),('naison');

INSERT INTO departamento(Nome, IdDiretor) VALUES ('Financeiro',1),('Administração',2),('Manutenção',3);

SELECT * FROM diretor;

SELECT * FROM departamento;


/* ATIVIADADE 3 */
CREATE DATABASE livro;

USE livro;
CREATE TABLE autor(
	IdAutor INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR(100)
);
CREATE TABLE livro(
	IdLivro INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR(100)
);
CREATE TABLE escreve(
	IdEscreve INT IDENTITY PRIMARY KEY NOT NULL,
	IdAutor INT FOREIGN KEY REFERENCES autor(IdAutor),
	IdLivro INT FOREIGN KEY REFERENCES livro(IdLivro)	
);

INSERT INTO autor (Nome) VALUES ('Suzanne Collins'), ('J. K. Rowling'),('James Dashner')
INSERT INTO livro (Nome) VALUES ('Jogos Vorazes'), ('Harry Potter'),('Maze Runner')

INSERT INTO escreve (IdAutor, IdLivro) VALUES (3,3), (2,2),(1,1)

SELECT * FROM autor
SELECT * FROM livro
SELECT * FROM escreve





/*ATIVIDADE 4*/
CREATE DATABASE BDtime

USE BDtime

CREATE TABLE equipe(
	IdEquipe INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR(100)
)

CREATE TABLE jogador(
	IdJogador INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR(100),
	IdEquipe INT FOREIGN KEY REFERENCES equipe(IdEquipe)
)

INSERT INTO equipe(Nome) VALUES ('Equipe 1'),('Equipe 2'),('Equipe 3')

INSERT INTO jogador(Nome, IdEquipe) VALUES ('nilson',1),('naison',2),('ruben',3)

SELECT * FROM equipe;

SELECT * FROM jogador;




/* Atividade 5 */
CREATE DATABASE produtos
USE produtos

CREATE TABLE cliente(
	IDcliente INT NOT NULL IDENTITY PRIMARY KEY,
	Nome VARCHAR(100) NOT NULL,
)

CREATE TABLE produto(
	IDProduto INT NOT NULL IDENTITY PRIMARY KEY,
	Nome_produto VARCHAR(50),
)
CREATE TABLE compra(
	IDcompra INT NOT NULL IDENTITY PRIMARY KEY,
	IDcliente INT FOREIGN KEY REFERENCES cliente (IDcliente),
	IDproduto INT FOREIGN KEY REFERENCES produto (IDproduto)
)

INSERT INTO cliente (Nome, RG) VALUES ('nilson' ), ('naison'), ('denilson')
INSERT INTO produto (Nome_produto) VALUES ('arroz'), ('bolin'),('doce')
INSERT INTO compra (IDcliente, IDproduto) VALUES (2,3),(3,2),(1,1)

SELECT * FROM cliente
SELECT * FROM produto
SELECT * FROM compra




/* ATIVIDADE 6 */
CREATE DATABASE cadastro;
USE cadastro;

CREATE TABLE aluno(
	IdAluno INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR(100) NOT NULL,
	Idade INT
);

CREATE TABLE curso(
	IdCurso INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR(100) NOT NULL,
	periodo VARCHAR(10),
	IdAluno	INT FOREIGN KEY REFERENCES aluno (IdAluno) 
);

INSERT INTO aluno (Nome, Idade) VALUES ('Alef', 23),('Nilson', 17),('Rubem', 21)

INSERT INTO curso (Nome, periodo,IdAluno) VALUES ('Informatica','Manhã', 1),
 ('Informatica','Tarde', 2), ('Informatica','Noite', 3);

SELECT * FROM aluno;

SELECT * FROM curso;






/* ATIVIDADE 7 */
CREATE DATABASE BDescola
USE BDESCOLA

CREATE TABLE responsavel(
	IDresponsavel INT NOT NULL PRIMARY KEY IDENTITY,
	NOME VARCHAR(50) NOT NULL
)

CREATE TABLE TURMA(
	IDturma INT NOT NULL PRIMARY KEY IDENTITY,
	turma VARCHAR(30) NOT NULL
)

CREATE TABLE aluno(
	IDaluno INT NOT NULL PRIMARY KEY IDENTITY,
	IDresponsavel INT CONSTRAINT FK_RESPONSAVEL FOREIGN KEY REFERENCES RESPONSAVEL(IDRESPONSAVEL),
	IDturma INT CONSTRAINT FK_TURMA FOREIGN KEY REFERENCES TURMA(IDTURMA),
	NOME VARCHAR(50) NOT NULL
)

INSERT INTO responsavel(NOME) VALUES ('Alef'),('naison'),('rubem')
INSERT INTO TURMA (TURMA) VALUES ('Turma A'), ('Turma B'), ('Turma C')
INSERT INTO aluno(IDresponsavel, IDturma, NOME) VALUES (2, 3, 'nilson'), (3, 1, 'denilson'), (1, 2, 'bruna')

SELECT * FROM responsavel
SELECT * FROM TURMA
SELECT * FROM aluno




/* ATIVIDADE 8 */
CREATE DATABASE empresa
USE empresa

CREATE TABLE departamento(
	IDdepartamento INT NOT NULL PRIMARY KEY IDENTITY,
	Nome_Departamento VARCHAR (50) NOT NULL
)
CREATE TABLE empregado(
	IDempregado INT NOT NULL PRIMARY KEY IDENTITY,
	IDdepartamento INT CONSTRAINT FK_Departamento FOREIGN KEY REFERENCES Departamento(IDdepartamento),
	Nome VARCHAR (100) NOT NULL,
	CPF CHAR (11) NOT NULL
)
CREATE TABLE dependente(
	IDdependente INT NOT NULL PRIMARY KEY IDENTITY,
	IDempregado INT FOREIGN KEY REFERENCES empregado (IDempregado),
	Nome VARCHAR (100) NOT NULL
)
CREATE TABLE localizacao(
	IDlocalizacao INT NOT NULL PRIMARY KEY IDENTITY,
	IDdepartamento INT FOREIGN KEY REFERENCES DEPARTAMENTO(IDDEPARTAMENTO),
	Local_departamento VARCHAR (50) NOT NULL
)
CREATE TABLE projeto(
	IDprojeto INT NOT NULL PRIMARY KEY IDENTITY,
	IDdepartamento INT FOREIGN KEY REFERENCES departamento(IDdepartamento),
	NOME_projeto VARCHAR(100) NOT NULL
)
CREATE TABLE registro_projeto(
	IDregistro INT NOT NULL PRIMARY KEY IDENTITY,
	IDempregado INT FOREIGN KEY REFERENCES empregado(IDempregado),
	IDprojeto INT FOREIGN KEY REFERENCES projeto (IDprojeto)
)

INSERT INTO DEPARTAMENTO (NOME_DEPARTAMENTO) VALUES ('FINANÇAS1'), ('FINANÇAS2'), ('FINANÇAS3')

INSERT INTO EMPREGADO (IDDEPARTAMENTO, NOME, CPF) VALUES (2, 'naison', 12345678901), (1, 'nilson', 12345678901), (3, 'ruben', 12345678901)

INSERT INTO DEPENDENTE (IDEMPREGADO, NOME) VALUES (1, 'patty'), (2, 'yasmin'), (3, 'bruna')

INSERT INTO LOCALIZACAO(IDDEPARTAMENTO, LOCAL_DEPARTAMENTO) VALUES (2, 'SP'), (2, 'SÃO PAULO'), (3, 'RIO DE JANEIRO')

INSERT INTO PROJETO (IDDEPARTAMENTO, NOME_PROJETO) VALUES (1, 'CODEXP'), (3, 'CODEXP_1'), (2, 'CODEXP_2')

INSERT INTO REGISTRO_PROJETO(IDEMPREGADO, IDPROJETO) VALUES (1, 2), (3, 2), (2, 2)

SELECT * FROM DEPARTAMENTO
SELECT * FROM EMPREGADO
SELECT * FROM DEPENDENTE
SELECT * FROM LOCALIZACAO
SELECT * FROM PROJETO
SELECT * FROM REGISTRO_PROJETO


/* ATIVIDADE 9 */

CREATE DATABASE bdcamiseta
USE bdcamiseta;

CREATE TABLE marca(
	IdMarca INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR(30)
);
CREATE TABLE cor(
	IdCor INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR(30)
);
CREATE TABLE tamanho(
	IdTamanho INT IDENTITY PRIMARY KEY NOT NULL,
	Tamanho VARCHAR(5)
);

CREATE TABLE camiseta(
	IdCamiseta INT IDENTITY PRIMARY KEY NOT NULL,
	IdMarca INT FOREIGN KEY REFERENCES marca(IdMarca),
	IdCor INT FOREIGN KEY REFERENCES cor(IdCor),
	IdTamanho INT FOREIGN KEY REFERENCES tamanho(IdTamanho),
);

INSERT INTO marca(Nome) VALUES ('Adidas'),('Nike'),('Puma');

INSERT INTO cor(Nome) VALUES ('Preta'),('Branca'),('Azul');

INSERT INTO tamanho(Tamanho) VALUES ('P'),('M'),('G'),('GG');

INSERT INTO camiseta(IdMarca,IdCor,IdTamanho) VALUES (1,2,3),(3,2,3),(2,2,4),(1,3,1),(3,3,3),(1,1,1);

--Alterando nome da primeira marca
UPDATE marca SET
	Nome = 'GAP'
WHERE IdMarca = 1;

--Alterando nome da terceira marca
UPDATE marca SET
	Nome = 'Vans'
WHERE IdMarca = 3;

--Deletando o maior id da tabela camiseta
DELETE FROM camiseta WHERE IdCamiseta = (SELECT MAX(IdCamiseta) FROM camiseta);

SELECT * FROM camiseta;

SELECT * FROM marca;

SELECT * FROM cor;

SELECT * FROM camiseta
	INNER JOIN marca ON marca.IdMarca = camiseta.IdMarca

SELECT * FROM camiseta
	INNER JOIN cor ON cor.IdCor = camiseta.IdCor

SELECT * FROM camiseta
	INNER JOIN tamanho ON tamanho.IdTamanho = camiseta.IdTamanho


ALTER TABLE marca ADD Quant_Loja VARCHAR(20);
    
ALTER TABLE marca ADD DataCriacao DATE;

ALTER TABLE camiseta ADD LavarMaquina VARCHAR(20);

ALTER TABLE tamanho ADD Medidas VARCHAR(20);

UPDATE marca SET
	Quant_Loja = '3005',
	DataCriacao = '1969-08-21'
WHERE IdMarca = 1;

UPDATE marca SET
	Quant_Loja = '4000',
	DataCriacao = '1964-01-25'
WHERE IdMarca = 2;

UPDATE marca SET
	Quant_Loja = '2000',
	DataCriacao = '1966-03-16'
WHERE IdMarca = 2;

UPDATE camiseta SET
	LavarMaquina = 'Sim'

UPDATE tamanho SET
	Medidas = '30x30'
WHERE IdTamanho = 1;

UPDATE tamanho SET
	Medidas = '40x40'
WHERE IdTamanho = 2;

UPDATE tamanho SET
	Medidas = '50x50'
WHERE IdTamanho = 3;

UPDATE tamanho SET
	Medidas = '60x60'
WHERE IdTamanho = 4;


--ou
CREATE DATABASE bdcamiseta
USE bdcamiseta;

CREATE TABLE marca(
	IdMarca INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR(30)
);
CREATE TABLE cores(
	IdCores INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR(30)
);
CREATE TABLE tamanho(
	IdTamanho INT IDENTITY PRIMARY KEY NOT NULL,
	Tamanho VARCHAR(5)
);
CREATE TABLE camiseta(
	IdCamiseta INT IDENTITY PRIMARY KEY NOT NULL,
	IdMarca INT FOREIGN KEY REFERENCES marca(IdMarca),
	IdCor INT FOREIGN KEY REFERENCES cores(IdCores),
	IdTamanho INT FOREIGN KEY REFERENCES tamanho(IdTamanho),
);


SELECT MARCA.NOME FROM MARCA
SELECT * FROM MARCA

SELECT Tamanho.Tamanho FROM tamanho
SELECT * FROM tamanho

SELECT cores.Nome FROM cores
SELECT * FROM cores

SELECT * FROM CAMISETA


--INNER JOIN
SELECT CAMISETA.IDCAMISETA, MARCA.NOME FROM CAMISETA
INNER JOIN MARCA ON MARCA.IDMARCA = CAMISETA.IDMARCA

SELECT CAMISETA.IDCAMISETA, cores.NOME FROM CAMISETA
INNER JOIN cores ON cores.IdCores = CAMISETA.IDCOR

SELECT CAMISETA.IDCAMISETA, Tamanho.Tamanho FROM CAMISETA
INNER JOIN tamanho ON Tamanho.IdTamanho = CAMISETA.IDTAMANHO


INSERT INTO marca(Nome) VALUES ('Adidas'),('Hollister'),('oakley');
INSERT INTO cores(Nome) VALUES ('branca'),('vermelha'),('azul');
INSERT INTO tamanho(Tamanho) VALUES ('P'),('M'),('G'),('GG');
INSERT INTO camiseta(IdMarca,IdCor,IdTamanho) VALUES (1,2,3),(3,2,3),(2,2,4),(1,3,1),(3,3,3),(1,1,1);


--ALTERAÇÃO DE MARCA
UPDATE MARCA SET NOME='ADIDAS' WHERE IDMARCA= 1 
UPDATE MARCA SET NOME='DROPDEAD' WHERE IDMARCA= 2

DELETE FROM CAMISETA WHERE IDCAMISETA = (SELECT MAX(IDCAMISETA) FROM CAMISETA)


