--SELECT COUNT(length) FROM film
--WHERE length >
--(
--(SELECT AVG(length) from film)
--);

--SELECT COUNT(rental_rate) FROM film
--WHERE rental_rate =
--(
--SELECT MAX(rental_rate) FROM film
--);

--(SELECT MIN(rental_rate) FROM film) 
--UNION
--(SELECT MIN(replacement_cost) FROM film);

SELECT 
    customer.customer_id, 
    customer.first_name, 
    customer.last_name, 
    COUNT(payment.payment_id) AS total_payments
FROM 
    payment
INNER JOIN 
    customer ON payment.customer_id = customer.customer_id
GROUP BY 
    customer.customer_id, 
    customer.first_name, 
    customer.last_name
ORDER BY 
    total_payments DESC;