#revenue per title price * quantity

SELECT
  f.title as "Film title", count(r.rental_id) as "Times rented", f.rental_rate as "Price", count(r.rental_id) * f.rental_rate as Revenue
FROM
  film f, rental r, inventory i
WHERE
  f.film_id = i.film_id
  and i.inventory_id = r.inventory_id
GROUP BY
  1
 ORDER BY
 4 desc
;

