USE SistemaBancario

/* Exercícios 1*/

SELECT nrAgencia, nrConta, vlSaldo FROM CONTA
WHERE vlSaldo > 1000
ORDER BY 3 DESC

/* Exercícios 2*/
SELECT nrAgencia, nrConta, vlSaldo FROM CONTA
WHERE vlSaldo > 100 and vlLimiteChequeEsp < 3000

/* Ecercício 3*/
SELECT nmCliente, dsEmail FROM CLIENTE
WHERE dsEmail IS NULL

SELECT nmCliente, dsEmail, dtAberturaConta FROM CLIENTE
WHERE dsEmail LIKE '%@%' 

/* Exercício 4*/
SELECT nmCliente, nrCPF FROM CLIENTE
WHERE nmCliente LIKE 'A%'

/* Exercícios 5*/
SELECT * FROM TIPO_TRANSACAO, TRANSACAO
ORDER BY 2,6,7 DESC