/* Mostrar dados */
SELECT * FROM aluno;

SELECT * FROM materia;

/* Mostrar dados especifico de um aluno pelo ID */
SELECT * FROM aluno WHERE Idade = 26;

/* Mostrar dados em uma "Busca" com LIKE -- % ENTRE AS ASPAS */
SELECT * FROM aluno WHERE Nome LIKE '%Bruna%';
