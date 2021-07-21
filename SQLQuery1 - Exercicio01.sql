CREATE DATABASE Exercicio01
USE Exercicio01

CREATE TABLE funcionario(
nome VARCHAR (30)         not null,
cargo VARCHAR (30)        not null,
nascimento DATE           not null,
taxa VARCHAR (15)         not null,
salario INT               not null,
avaliacao DECIMAL (10,1)  not null,
);

INSERT INTO funcionario VALUES 
('João Maria de Jesus', 'Administrativo', '07/12/1978','80.2',106000, 8.7)
,('Felipe dos Santos','Técnico','11/02/1988','90',182000, 5.6)
,('Maria José Silva','Técnico','12/12/1990','87.3',15000, 4.5)
,('José Silva','Administrativo','12/12/1978','60',16200, 9.3)	
,('Maria Antunes','RH','02/12/1977','54.2',8000, 7.2)
,('Paulo Roberto Silva','RH','10/12/1976','87.2333',8900, 9.9)
,('Teresa Jardim','RH','01/12/1980','100',4000, 7.7)
,('Roberto Carlos Alves','RH','12/10/1983','23.64',4000, 7.7)
,('Paula Jardim ','RH','06/12/1945','34.89',305000, 10)
,('Maria Eduarda Carvalho da Rosa','Administrativo','08/12/1970','90.78',9000, 6.6)
,('Pedro Henrique Teixeira','Técnico','12/12/1978','100',7400, 7.2)
      
SELECT * FROM  funcionario

SELECT nome AS Nome, ' % ' + taxa AS Taxa , ' R$ ' + salario AS Salário  FROM funcionario			

SELECT * FROM funcionario ORDER BY taxa DESC