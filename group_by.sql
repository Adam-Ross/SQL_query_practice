SELECT
  rating, rental_rate, count(film_id)
FROM
  films
GROUP BY 1, 2
;
