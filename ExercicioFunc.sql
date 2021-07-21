CREATE DATABASE ExercicioFunc
USE ExercicioFunc

CREATE TABLE tbFuncionario(
CodFuncionario INT PRIMARY KEY
,NomeFuncionario VARCHAR (50)
,UF CHAR (15)
,Idade INT
,QtdeFilhos INT
);

CREATE TABLE tbFuncional(
CodFuncional INT PRIMARY KEY
,Cargo VARCHAR (30)
,Salario MONEY
,TempoEmpresa INT
,TempoCargo INT
,Sindicalizado BINARY
,CodFuncionario INT FOREIGN KEY REFERENCES tbFuncionario(codFuncionario)
);

INSERT INTO tbFuncionario VALUES
 ('1','HUMBERTO ANTONIO MENDONCA','SP','42','2')
,('2','ELVIRA ALVES DA CONCEICAO','RJ','30','1')
,('3','RITA DE CASSIA SOARES DA SILVA','MG','27','1')
,('4','AFIF ZEIDAN','PA','30','0')
,('5','MARIA APARECIDA DE ALENCAR MOREIRA','SP','40','3')
,('6','JOAO ALCIDES REIS DE FREITAS','MG','41','5')
,('7','JOAO ALCIDES REIS DE FREITAS','MG','39','4')
,('8','IRENIA BRITO DA PALMA','RJ','47','2')
,('9','ILAIDE DAS VIRGES NOGUEIRA SILVA','MA','18','1')
,('10','MARIA JOSE BARBOSA PAIVA','CE','25','0')

SELECT * FROM  tbFuncionario

INSERT INTO tbFuncional (CodFuncional, Cargo, Salario, TempoEmpresa, TempoCargo, Sindicalizado, CodFuncionario)
VALUES  ('1','TI','3500','2','2',1,'1')
       ,('2','RH','2500','2','2',0,'2')
	   ,('3','Assistente','1700','1','1',1,'3')
	   ,('4','Encarregado','5000','5','2',1,'4')
	   ,('5','Atendente','2300','3','2',0,'5')
	   ,('6','Motorista','2700','4','4',0,'6')
	   ,('7','Gerente','6000','8','5',1,'7')
	   ,('8','Porteiro','2000','5','4',1,'8')
	   ,('9','Motorista','2400','3','3',0,'9')
	   ,('10','Analista','4500','4','4',1,'10')

SELECT * FROM  tbFuncional

SELECT SUM(CodFuncionario)FROM tbFuncionario
SELECT SUM(Idade)FROM tbFuncionario
SELECT SUM(QtdeFilhos)FROM tbFuncionario
SELECT SUM(Salario)FROM tbFuncional
SELECT SUM(TempoEmpresa)FROM tbFuncional

SELECT MAX(CodFuncionario)FROM tbFuncionario
SELECT MIN(CodFuncionario)FROM tbFuncionario
SELECT MAX(Idade)FROM tbFuncionario
SELECT MIN(Idade)FROM tbFuncionario
SELECT MAX(QtdeFilhos)FROM tbFuncionario
SELECT MIN(QtdeFilhos)FROM tbFuncionario
SELECT MAX(Salario)FROM tbFuncional
SELECT MIN(Salario)FROM tbFuncional
SELECT MAX(TempoEmpresa)FROM tbFuncional
SELECT MIN(TempoEmpresa)FROM tbFuncional
SELECT MAX(TempoCargo)FROM tbFuncional
SELECT MIN(TempoCargo)FROM tbFuncional

SELECT AVG(CodFuncionario)FROM tbFuncionario
SELECT AVG(Idade)FROM tbFuncionario
SELECT AVG(QtdeFilhos)FROM tbFuncionario
SELECT AVG(Salario)FROM tbFuncional
SELECT AVG(TempoEmpresa)FROM tbFuncional
SELECT AVG(TempoCargo)FROM tbFuncional

SELECT COUNT(Salario) FROM tbFuncional
WHERE Salario > 800
SELECT COUNT(Salario) FROM tbFuncional
WHERE Salario > 1000
SELECT COUNT(Salario) FROM tbFuncional
WHERE Salario < 400
SELECT COUNT(Salario) FROM tbFuncional
WHERE Salario < 2000
SELECT COUNT(Salario) FROM tbFuncional
WHERE Salario > 8000
SELECT COUNT(Salario) FROM tbFuncional
WHERE Salario > 1000