#how much revenue store 1 has made from movies that are rented and rated R or pg-13

-- SELECT
--   i.store_id as "Store", f.rating as "Rating", SUM(p.amount) as "Store revenue"
-- FROM
--   rental r, film f, payment p, inventory i
-- WHERE
--   p.rental_id = r.rental_id
--   AND r.inventory_id = i.inventory_id
--   AND i.film_id = f.film_id
--   AND i.store_id = 1
--   AND f.rating in("R", "PG-13")
-- GROUP BY
--   1, 2
-- ORDER BY
--   3 desc
-- ;

SElECT
  i.store_id as "Store ID", f.rating as "Rating", SUM(p.amount) as Revenue
FROM
  payment p, rental r, film f, inventory i
WHERE
  p.rental_id = r.rental_id
  AND r.inventory_id = i.inventory_id
  AND i.film_id = f.film_id
  AND f.rating in("R", "PG-13")
GROUP BY
  1, 2
ORDER BY
  3
;



