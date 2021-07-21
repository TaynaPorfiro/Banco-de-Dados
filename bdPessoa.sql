CREATE DATABASE bdPessoa
USE bdPessoa

CREATE TABLE tbPessoa(
id INT PRIMARY KEY
,nome NVARCHAR (50)
,idade INT 
,sexo NVARCHAR (10)
,uf NVARCHAR (2)
,pais NVARCHAR (30)
);

INSERT INTO tbPessoa VALUES 
 ('1001', 'Ana', '23', 'Feminino', 'SP', 'Brasil')
,('1002', 'Eduardo', '57', 'Masculino', 'MG', 'Brasil')
,('1003', 'Janice', '70', 'Feminino', 'MS', 'Brasil')
,('1004', 'Teo', '22', 'Masculino', 'RS', 'Brasil')
,('1005', 'Lucas', '18', 'Masculino', 'AC', 'Brasil')
,('1006', 'Joana', '14', 'Feminino', 'SP', 'Brasil')
,('1007', 'João', '18', 'Masculino', 'AP', 'Brasil')
,('1008', 'Claudia', '18', 'Feminino', 'RJ', 'Brasil')
,('1009', 'Iris', '69',	'Feminino',	'PR', 'Brasil')
,('1010', 'Esther', '60', 'Feminino',	'SC', 'Brasil')
,('1011', 'Yuri', '67',	'Masculino', 'AL', 'Brasil')
,('1012', 'Andressa', '36', 'Feminino',	'RO', 'Brasil')
,('1013', 'Juliana', '36', 'Feminino',	'PR', 'Brasil')
,('1014', 'Jean',	'15', 'Masculino', 'DF', 'Brasil')
,('1015', 'Claudio', '26', 'Masculino', 'MT', 'Brasil')
,('1016', 'Teresa', '39', 'Feminino', 'TO',	'Brasil')
,('1017', 'Tadeu', '22', 'Masculino', 'MA',	'Brasil')
,('1018', 'Joaquim', '61', 'Masculino', 'SC', 'Brasil')
,('1019', 'Alessandra',	'58', 'Feminino', 'MT', 'Brasil')
,('1020', 'Bruna', '48', 'Feminino', 'MS', 'Brasil')
,('1021', 'Beatriz', '46',	'Feminino', 'MG', 'Brasil')
,('1022', 'Cassandra', '21', 'Feminino', 'RS', 'Brasil')
,('1023', 'Leandro', '34',	'Masculino', 'PR', 'Brasil')
,('1024', 'Rubens', '55', 'Masculino', 'RR', 'Brasil')
,('1025', 'Reginaldo', '27', 'Masculino', 'CE', 'Brasil')

SELECT * FROM tbPessoa

-- 1 - Contar e exibir quantos registros existem na tabela separados por UF - Unidade Federativa.
SELECT uf, COUNT(id) AS'Quantidade de registros' FROM tbPessoa
GROUP BY uf

-- 2 - Exibir a soma das idades de todas as pessoas agrupadas por UF - Unidade Federativa.
SELECT uf, SUM(idade)AS'Soma das idades' FROM tbPessoa
GROUP BY uf

-- 3 - Listar média de idade das pessoas agrupados por estado em ordem decrescente.
SELECT uf, AVG(idade)AS'Média das idades' FROM tbPessoa
GROUP BY uf 
ORDER BY uf DESC 

-- 4 - Listar as idades mínima e máxima de cada estado em ordem crescente.
SELECT uf, MIN(idade)AS'Idade Mínima', MAX(idade)AS'Idade Máxima' FROM tbPessoa
GROUP BY uf 
ORDER BY uf 

-- 5 - Listar a quantidade de cadastros femininos e masculinos por estado em ordem decrescente.
SELECT uf,sexo, COUNT(sexo)AS'Quantidade de cadastros' FROM tbPessoa
GROUP BY uf,sexo 
ORDER BY uf DESC 