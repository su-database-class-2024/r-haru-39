SELECT country_id,
    COUNT(city) AS city_num
    FROM city GROUP BY country_id
    ORDER BY city_num DESC;