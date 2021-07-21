CREATE DATABASE Exercicio02
USE Exercicio02

CREATE TABLE departamento(
nome VARCHAR (30)   not null,
numero INT          not null,
rgGerente INT       not null,
);

INSERT INTO departamento VALUES 
('Contabilidade', 1, 10101010)
,('Engenharia Civil', 2, 30303030)
,('Engenharia Mecânica', 3, 20202020)

SELECT * FROM  departamento

CREATE TABLE empregado(
nomeEmpregado VARCHAR (30)  not null,
rg INT                      not null,
cpf INT                     not null,
depto INT                   not null,
rgSupervisor INT            not null,
salario INT                 not null,
);

INSERT INTO empregado VALUES 
('João Luiz', 10101010, 11111111, 1, 0, 3000)
,('Fernando', 20202020, 22222222, 2, 10101010, 2500)
,('Ricardo', 30303030, 33333333, 2, 10101010, 2300)
,('Jorge', 40404040, 44444444, 2, 20202020, 4200)
,('Renato', 50505050, 55555555, 3, 20202020, 1300)

SELECT * FROM  empregado

SELECT nomeEmpregado AS Nome, + SUBSTRING (rg,1,2) + '.' + SUBSTRING (rg,3,3) + '.' + SUBSTRING (rg,6,8) + '-'+ SUBSTRING (rg,7,8) rg , + SUBSTRING(cpf,1,6) + '/' + SUBSTRING (cpf,7,8) cpf
FROM  Empregado ORDER BY cpf ASC