SELECT nome, CPF
FROM Medicos
WHERE idade < 40 or especialidade <>'traumatologia';

SELECT * 
FROM Consultas 
WHERE hora > '12:00' AND data > '2006/06/19';

SELECT nome, idade
FROM Pacientes
WHERE cidade <> 'Florianopolis';

SELECT hora
FROM Consultas
WHERE data < '2006-06-14' OR data > '2006-06-20';

SELECT nome, sum(idade*12) as idade_meses
FROM Pacientes
GROUP BY nome;

SELECT cidade
FROM Funcionarios
GROUP BY cidade;

SELECT MIN(salario) as MenorSalario, MAX(salario) as MaiorSalario
FROM Funcionarios
WHERE cidade = 'Florianopolis';

SELECT MAX(hora) AS UltimaConsulta
FROM Consultas
WHERE data = '2006-06-13';

SELECT ROUND(AVG(idade),2) as IdadeMedia, COUNT(DISTINCT nroa) as AmbulatoriosAtendidos
FROM Medicos;

SELECT codf, nome, SUM(salario - salario*0.2) as SalarioLiquido
FROM Funcionarios
GROUP BY codf; 

SELECT nome
FROM Funcionarios
WHERE nome LIKE '%a';

SELECT nome, CPF
FROM Funcionarios
WHERE CPF NOT LIKE '%00000%';

SELECT nome, especialidade
FROM Medicos
WHERE nome LIKE '_o%o';

SELECT codp, nome
FROM Pacientes
WHERE doenca IN ('tendinite', 'fratura', 'gripe', 'sarampo');