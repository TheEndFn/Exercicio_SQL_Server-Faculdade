USE SistemaBancario

/* Exercícios 1*/

SELECT nrAgencia, nrConta, vlSaldo FROM CONTA
WHERE vlSaldo > 1000
ORDER BY 3 DESC

/* Exercícios 2*/
SELECT nrAgencia, nrConta, vlSaldo FROM CONTA
WHERE vlSaldo > 100 and vlLimiteChequeEsp < 3000

/* Ecercício 3*/
SELECT * FROM CLIENTE
WHERE dsEmail LIKE '%@%'

