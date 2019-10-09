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






/* ATIVIDADE 2 */

CREATE DATABASE BD_escola;
USE BD_escola;

CREATE TABLE responsaveis(
	IdResponsaveis INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR(100) NOT NULL,
	Idade INT
);

CREATE TABLE turma(
	IdTurma INT IDENTITY PRIMARY KEY NOT NULL,
	Sala INT
);

CREATE TABLE aluno(
	IdAluno INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR(100) NOT NULL,
	Ra INT,
	IdTurma INT FOREIGN KEY REFERENCES turma (IdTurma),
	IdResponsaveis INT FOREIGN KEY REFERENCES responsaveis(IdResponsaveis)
);

INSERT INTO responsaveis(Nome, Idade) VALUES ('Alef', 23), ('Joao', 25), ('naison', 30)
INSERT INTO turma (Sala) VALUES ('12'), ('11'), ('10')
INSERT INTO aluno (Nome, Ra) VALUES ('nilson', 3424), ('rubem', 3124), ('guilherme', 5667)

SELECT * FROM responsaveis;

SELECT * FROM turma;

SELECT * FROM aluno;
