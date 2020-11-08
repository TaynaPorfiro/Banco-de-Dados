CREATE DATABASE bdAmbulatorio
USE bdAmbulatorio 

-- TABELA AMBULATORIOS
CREATE TABLE tbAmbulatorio (
    idAmbulatorio INT PRIMARY KEY IDENTITY (10)
    ,numeroAmbulatorio VARCHAR (45)
    ,andarAmbulatorio INT (11)
    ,capacidadeAmbulatorio INT (11)
    );

-- TABELA PACIENTE 
CREATE TABLE tbPaciente (
    idPaciente INT PRIMARY KEY IDENTITY (10)
    ,nomePaciente VARCHAR (30)
    ,sexoPaciente CHAR (1)
    ,idadePaciente INT (11) 
    ,doenca_inicialPaciente VARCHAR (50)
    );

-- TABELA DOENÇAS
CREATE TABLE tbDoenca (
    idDoenca  INT PRIMARY KEY IDENTITY (5)
    ,descricaoDoenca VARCHAR (50)
    );

-- TABELA ESPECIALIDADES  
CREATE TABLE tbEspecialidades (
    idEspecialidades INT PRIMARY KEY IDENTITY (5)
    ,descricaoEspecialidades VARCHAR (50) 
    );

-- TABELA FUNCIONARIOS
CREATE TABLE tbFuncionario (
    idFuncionario INT PRIMARY KEY IDENTITY (10)
    ,idAmbulatorio  INT FOREIGN KEY REFERENCES tbAmbulatorio(idAmbulatorio)
    ,nomeFuncionario VARCHAR (45)
    ,idadeFuncionario INT 
    ,sexoFuncionario CHAR (1)
    ,salarioFuncionario FLOAT 
    ,cidadeFuncionario VARCHAR (45)
    ); 

-- TABELA MEDICO 
CREATE TABLE tbMedico (
    idMedico  INT PRIMARY KEY IDENTITY (10)
    ,idAmbulatorio INT FOREIGN KEY REFERENCES tbAmbulatorio(idAmbulatorio) 
    ,nomeMedico VARCHAR (45) 
    ,crmMedico VARCHAR (45)
    ,salarioMedico FLOAT 
    ,idadeMedico INT (11)
    ,idEspecialidades INT FOREIGN KEY REFERENCES tbEspecialidades(idEspecialidades)
    ); 

-- TABELA CONSULTAS 
CREATE TABLE tbConsulta (
    idMedico INT FOREIGN KEY REFERENCES tbMedico(idMedico)
    ,idPaciente INT FOREIGN KEY REFERENCES tbPaciente(idPaciente)
    ,diaConsulta DATE 
    ,horaConsulta TIME 
    ,idAmbulatorio INT FOREIGN KEY REFERENCES tbAmbulatorio(idAmbulatorio) 
    ,idDoencas INT FOREIGN KEY REFERENCES tbDoenca(idDoenca)
    ); 

use bdAmbulatorio

insert into tbPacientes(nomePaciente,sexoPaciente,idadePaciente,doença_inicial,idPaciente)
values ('Domênica Santos', 'F', '20','Gripe','102')
       ('Camila da Silva','M','19','Covid 19','103')
       ('Bruna Ferreira','F','25','Sarampo','104')
       ('Eduardo Gomes','M','32','Dengue','105')
       
select * from tbPacientes
       
insert into tbDoencas(descricaoDoenca,idDoenca)
values ('Acne','1')
       ('Alcoolismo Agudo','2')
       ('Asma','3')
       
select * from tbDoencas

insert into tbAmbulatorio(numero, andar, capacidade,idAmbulatorio)
values ('2000','12º','400','1')
       ('1500A','8º','300','2')
       ('550','1º','200','3')
       
select * from tbAmbulatorio

insert into tbEspecialidade(descricao,idEspecialidade)
values ('Pediatra','10')
       ('Clinico geral','20')
       ('Clinico','30')
       
select * from tbEspecialidade

insert into tbMedicos(nome,crm,salario,idade,idAmbulatorio FK,idEspecialidade FK,idMedicos - PK)
values ('Dr. Carlos Jobim','52-71557-3','12000','50','1','1','201')
       ('Dr. André Firmino','50-12345-6','22000,57','63','1','10','202')
       ('Dra. Ana Maria','10-20201-5','40000,61','42','2','10','203')
       ('Dr. João Carlos','22-20192-7','38000,98','56','3','2','204')
       
select * from tbMedicos 

insert into tbFuncionarios(nomeFuncionario, idadeFuncionario, sexoFuncionario, salarioFuncionario, cidadeFuncionario, idAmbulatorio, idFuncionarios) 
values ('Fernanda Fernandes','34','F','2000','São Paulo','1','1') 
       ('Bruna Souza','25','F','1700','Guarulhos','1','2') 
       ('Jessica Filho','20','F','3000','Sorocaba','1','3') 
       ('Leandro Leonardo','27','M','2500','São Paulo','3','4') 
       
select * from tbFuncionarios 

insert into tbConsultas(dataConsulta, horaConsulta, idMedico, idPaciente, idAmbulatorio, idDoencas, idConsultas) 
values ('01/02/2020','12:00','201','101','1','1','1') 
       ('25/03/2018','11:30','202','102','1','1','2') 
       ('20/04/2019','16:25','203','103','3','2','3') 
       ('05/05/2025','17:05','201'.'104','2','3','4') 
       
select * from tbConsultas  