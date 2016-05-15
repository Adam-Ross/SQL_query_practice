#films by rating
SELECT
    rating, count(film_id)
FROM
    film
GROUP BY 1
;

#films by rating and rental price
SELECT
    rating, rental_rate, count(film_id)
FROM
    film
GROUP BY 1,2
;
