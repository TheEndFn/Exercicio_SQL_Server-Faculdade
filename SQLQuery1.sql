USE SistemaBancario

/* Primeiro grupo de exercícios*/

/* Exercícios 1*/
SELECT nrAgencia, nrConta, vlSaldo
FROM CONTA
WHERE vlSaldo > 1000
ORDER BY 3 DESC

/* Exercícios 2*/
SELECT nrAgencia, nrConta, vlSaldo
FROM CONTA
WHERE vlSaldo > 100 and vlSaldo < 3000

/* Exercício 3*/
SELECT nmCliente, dsEmail
FROM CLIENTE

SELECT nmCliente, dsEmail, dtAberturaConta 
FROM CLIENTE
WHERE dsEmail LIKE '%@%'

/* Exercício 4*/
SELECT nmCliente, nrCPF 
FROM CLIENTE
WHERE nmCliente LIKE 'A%'

/* Exercícios 5*/
SELECT dsTransacao, dtMovimentacao, vlTransacao, destino
FROM TRANSACAO
WHERE dsTransacao LIKE '%Depósito%'
	OR dsTransacao LIKE '%Saque%' 
	OR dsTransacao LIKE '%PIX%'
ORDER BY dtMovimentacao DESC

/* Segundo grupo de exercícios*/

/*Exercício 1*/

SELECT SUM(vlTransacao)
FROM TRANSACAO

/*Exercício 2*/

SELECT 
	CAST(AVG(vlTransacao) AS DECIMAL(10,2)) AS Salario_Medio 
FROM TRANSACAO

/*Exercício 3*/

SELECT 
	MIN(vlTransacao) AS salarioMinimo,
	MAX(vlTransacao) AS salarioMaximo
FROM TRANSACAO

/*Exercício 4*/

SELECT 
	COUNT(idCliente) AS qt_Cliente 
FROM CLIENTE

/*Exercício 5*/

SELECT COUNT(dsTransacao) AS total_Saques
FROM TRANSACAO  	
WHERE dsTransacao LIKE '%Saque%';