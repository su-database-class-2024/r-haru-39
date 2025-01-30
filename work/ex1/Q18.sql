SELECT country.country, SUM(customer.customer_id) AS customers, SUM(payment.amount) AS sales
    FROM payment
    JOIN customer ON payment.customer_id = customer.customer_id
    JOIN address ON customer.address_id = address.address_id
    JOIN city ON address.city_id = city.city_id
    JOIN country ON city.country_id = country.country_id
    GROUP BY country.country
    ORDER BY country.country;