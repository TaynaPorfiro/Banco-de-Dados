CREATE DATABASE bdData
USE bdData

-- 1 Apresente o total de dias de atraso de um fatura vencida. Data de vencimento 03/04/2020 at� 05/06/2020.
SELECT DATEDIFF (DAY, '03/04/2020', '05/06/2020')

-- 2 Baseado na data de nascimento do cliente apresente qual � a sua idade - 14/07/1981.
SELECT DATEDIFF (YEAR, '14/07/1981', '05/05/2021')

-- 3 Apresente a pr�xima data de vencimento de uma fatura � 04/04/2021.
SELECT DATEADD (MONTH,1,'04/04/2021')

-- 4 Apresenta a pr�xima data para a 2� dose da vacina de Covid AstraZeneca � 28/04/2021 , pr�xima dose 90 dias depois.
SELECT DATEADD (DAY,90,'28/04/2021')

-- 5 Apresente a data da �ltima presta��o de um ve�culo em que o cliente comprou zero quilometro. O cliente adquiriu o ve�culo em 2021 e comprou em 72 vezes.


-- 6 O cometa Halley passa pr�ximo da Terra a cada 75-76 anos a ultima passagem dele pr�ximo do nosso planeta foi em 09/02/1986. Qual ser� a pr�xima data de passagem do Cometa?
SELECT DATEADD (YEAR, 76,'09/02/1986') 

-- 7 Baseado em sua data de anivers�rio mostre quantos Dias, Meses e Anos voc� j� viveu.
SELECT DATEDIFF (DAY, '15/11/2004', '05/05/2021')
	
SELECT DATEDIFF (MONTH, '15/11/2004', '05/05/2021')

SELECT DATEDIFF (YEAR, '15/11/2004', '05/05/2021')
