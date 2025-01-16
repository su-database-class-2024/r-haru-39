SELECT country_id,
    COUNT(city) AS city_num
    FROM city GROUP BY country_id
    HAVING COUNT(city) >= 20
    ORDER BY city_num DESC;