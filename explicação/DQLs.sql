/* Mostrar dados */
SELECT * FROM aluno;

SELECT * FROM materia;

/* Mostrar dados especifico de um aluno pelo ID */
SELECT * FROM aluno WHERE Idade = 26;

/* Mostrar dados em uma "Busca" com LIKE -- % ENTRE AS ASPAS */
SELECT * FROM aluno WHERE Nome LIKE '%Bruna%';

/* Juntando as 3 tabela usando INNER JOIN */
SELECT * FROM trabalho
INNER JOIN materia ON materia.IdMateria = trabalho.IdMateria
INNER JOIN aluno   ON aluno.IdAluno     = trabalho.IdAluno

-- Deixamos somente os dados que nos interessam no momento
SELECT 
	aluno.Nome,
	aluno.Ra,
	aluno.Idade,
	materia.Materia,
	trabalho.Nota
FROM trabalho
INNER JOIN materia ON materia.IdMateria = trabalho.IdMateria
INNER JOIN aluno   ON aluno.IdAluno     = trabalho.IdAluno

/* 
	Utilizamos a função nativa COUNT ]
	para retornar o numero de registros na minha tabela

	Usamos o Alias "AS" para nomer a coluna
*/
SELECT COUNT(*) AS total_registros FROM aluno

/* Pegamos a idade máxima dos alunos */
SELECT MAX(Idade) AS idade_maxima FROM aluno

/*Pegamos a idade mínima do alunos*/
SELECT MIN(Idade) AS idade_minima FROM aluno

/* pegamos a média de idade dos alunos */
SELECT AVG(Idade) AS meida_de_idades FROM aluno

/* Somamos as idades */
SELECT SUM(Idade) AS soma_de_idades FROM aluno

/* Juntamos todas as funções em uma unica consulta */
SELECT
	COUNT(*) AS total,
	MAX(Idade) AS idade_maxima,
	MIN(Idade) AS idade_minima,
	AVG(Idade) AS media_idade,
	SUM(Idade) AS soma_idade
FROM aluno

/* SUBSTRING */
-- pegamos parte de uma string
SELECT SUBSTRING(Nome, 0, 2) AS inicial FROM aluno

/* UPPER */
-- Deixar tudo em maiúsculo
SELECT UPPER(Nome) AS Nome FROM aluno

/* LOWER */
-- Deixar tudo minusculo
SELECT LOWER(Nome) AS Nome FROM aluno

