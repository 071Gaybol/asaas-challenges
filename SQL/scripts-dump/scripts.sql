/* Scripts - lista de exercícios com base no dump (pedir pro Gean Farias): */

/* 1 Select de cobranças (payment) com valor maior que R$ 1.000,00 */

SELECT * FROM payment
WHERE value > 1000;

/* 2 Soma dos valores de cobranças recebidas com a data de criação maior que 2020, agrupadas por tipo de cobrança (billing_type) */
SELECT billing_type, SUM(value) AS total_value
FROM payment
WHERE date_created > '2020-01-01'
GROUP BY billing_type;

/* 3 Lista de 20 pagadores (customer_account) com valores recebidos maiores que R$ 1.000,00 */
SELECT A.customer_account_id, B.name, SUM(A.value) AS total_value
FROM payment A 
INNER JOIN customer B  
ON A.customer_account_id = B.id
WHERE value > 1000     
GROUP BY customer_account_id
LIMIT 20;

/* 4 Primeiro nome dos clientes (customer) com análise geral aprovada (customer_regiter_status), ordenado por data de aprovação) */

SELECT SUBSTRING_INDEX(B.name, ' ', 1) AS first_name, A.customer_id, A.general_approval, A.last_updated
FROM customer_register_status A
INNER JOIN customer B
ON A.customer_id = B.id
WHERE A.general_approval = 'APPROVED'
ORDER BY A.last_updated;