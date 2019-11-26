

/* Inserir dado um aluno */
INSERT INTO aluno (Nome, Ra, Idade) VALUES ('Alef', 'R123', 23);

/* Inserir dado na tabela materia */
INSERT INTO materia (Materia) VALUES ('Português');

/* Alterar dado(s) */
UPDATE aluno SET 
	Nome='Bruna Ribeiro',
	Idade = 21
WHERE IdAluno = 2;

/* Excluir dado */
DELETE FROM materia WHERE IdMateria = 2;


/* TRUNCATE - apaga todos os registros de uma tabela */
TRUNCATE TABLE trabalho;