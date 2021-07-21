CREATE DATABASE ExercicioLoja
USE ExercicioLoja

CREATE TABLE tbCliente(
codCliente INT PRIMARY KEY IDENTITY(1,1),
nomeCLiente	VARCHAR (30),
cpfCliente	VARCHAR (11),
emailCliente VARCHAR (30),
sexoCLiente  VARCHAR (10),
dataNascimentoCliente DATE,
);

INSERT INTO tbCliente(nomeCLiente,cpfCliente,emailCliente,sexoCLiente,dataNascimentoCliente)
VALUES  ('Armando José Santana', '12345678900','armandoJsantan@outlook.com.br','m','21/02/1961')
       ,('Sheila Carvalho Leal', '45678909823','scarvalho@ig.com.br','f','13/09/1978')
       ,('Carlos Henrique Souza', '76598278299','carlosh@outlook.com','m','08/09/1981')
       ,('Maria Aparecida Souza', '87365309899','mariamaria@etec.sp.gov.br','f','07/07/1962')
       ,('Adriana Nogueira Silva', '10000000001','drica19@terra.com.br','f','09/04/1977')
       ,('Paulo Henrique Silva', '87390123111', 'ph2021@uol.com.br','m','02/02/1987')

SELECT * FROM tbCliente

CREATE TABLE tbFabricante(
codFabricante INT PRIMARY KEY IDENTITY,
nomeFabricante VARCHAR (30),
);

INSERT INTO tbFabricante(codFabricante,nomeFabricante)
VALUES  ('1','Unilever')
       ,('2',	'P&G')
	   ,('3', 'Bunge')

SELECT * FROM tbFabricante

CREATE TABLE tbFornecedor(
codFornecedor INT PRIMARY KEY IDENTITY,
nomeFornecedor VARCHAR (30),
contatoFornecedor VARCHAR (10),
);

INSERT INTO tbFornecedor(codFornecedor,nomeFornecedor,contatoFornecedor)
VALUES ('1','Atacadão','Carlos Santos')
      ,('2','Assai','Maria Stella')
      ,('3','Roldão','Paulo César')

SELECT * FROM tbFornecedor

CREATE TABLE tbProduto(
codProduto INT PRIMARY KEY IDENTITY,
descricaoProduto VARCHAR (50),	
valorProduto MONEY,
quantidadeProduto INT,	
codFabricante INT FOREIGN KEY REFERENCES tbFabricante(codFabricante),
codFornecedor INT FOREIGN KEY REFERENCES tbFornecedor(codFornecedor),
);

INSERT INTO tbProduto(codProduto,descricaoProduto,valorProduto,quantidadeProduto,codFabricante,codFornecedor)
VALUES ('1','Amaciante Downy',5.76,1500,'2','1')
      ,('2','Amaciante Confort',5.45,2300,'1','1')
      ,('3','Sabão em Pó OMO',5.99,1280,'1','2')
      ,('4','Margarina Qually',4.76,2500,'3','1')
      ,('5','Salsicha Hot-dog Sadia',6.78,2900,'3','2')
      ,('6','Mortadela Perdigão',	2.50,1200,'3','3')
      ,('7','Hamburger Sadia',9.89,1600,'3','1')
      ,('8','Fralda Pampers',36.00,340,'2','3')
      ,('9','Xampu Seda',5.89,800,'1','2')
      ,('10','Condicionador Seda',6.50,700,'1','3')

SELECT * FROM tbProduto

CREATE TABLE tbVenda(
codVenda INT PRIMARY KEY IDENTITY,	
dataVenda DATE,
valorTotalVenda	MONEY,
codCliente INT FOREIGN KEY REFERENCES tbCliente(codCliente),
);

INSERT INTO tbVenda(codVenda,dataVenda,valorTotalVenda,codCliente)
VALUES ('1','01/02/2021','4500','1')
       ,('2','03/02/2021','3400','1')
       ,('3','10/03/2021','2100','2')
       ,('4','15/03/2021','2700','3')
       ,('5','17/03/2021','560','3')
       ,('6','06/03/2021','1200','4')
       ,('7','07/03/2021','3500','5')
       ,('8','09/02/2021','3400','1')
       ,('9','20/03/2021','4000','2')

SELECT * FROM tbVenda

CREATE TABLE tbItensVenda(
codItensVenda INT PRIMARY KEY IDENTITY,
codVenda INT FOREIGN KEY REFERENCES tbVenda(codVenda),
codProduto INT FOREIGN KEY REFERENCES tbProduto(codProduto),
quantidadeItensVenda INT,
sutTotalItensVenda INT,
);

INSERT INTO tbItensVenda(codItensVenda,codVenda,codProduto,quantidadeItensVenda,sutTotalItensVenda)
VALUES  ('1','1','1',200,1500)
       ,('2','1','2',300,3000)
       ,('3','2','4',120,1400)
       ,('4','2','2',200,1000)
       ,('5','2','3',130,1000)
	   ,('6','3','5',200,2100)
	   ,('7','4','4',120,1000)
	   ,('8','4','5',450,700)
	   ,('9','5','5',200,560)
	   ,('10','6','7',200,600)
	   ,('11','6','6',300,600)
	   ,('12','8','1',300,2500)
	   ,('13','8','2',200,1000)
	   ,('14','9','6',250,1700)
	   ,('15','9','5',200,1700)
	   ,('16','10','4',1000,4000)

SELECT * FROM tbItensVenda