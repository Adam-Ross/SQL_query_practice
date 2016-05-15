SELECT
  rating, count(film_id)
FROM
  films
GROUP BY 1
;
