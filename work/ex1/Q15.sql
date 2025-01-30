SELECT city.city
    FROM city LEFT OUTER JOIN address
    ON address.city_id = city.city_id
    WHERE address.address IS NULL;