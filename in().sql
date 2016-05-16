#number of film rentals in Comedy, Sports, and family.

SELECT
  c.name as category, COUNT(r.rental_id) as "Number of rentals"
FROM
  rental r, inventory i, film f, film_category fc, category c
WHERE
  r.inventory_id = i.inventory_id
   AND i.film_id = f.film_id
   AND f.film_id = fc.film_id
   AND fc.category_id = c.category_id
   AND c.name in ("Comedy", "Sports", "Family")
GROUP BY
    1
;

#Comparison operators

SELECT
  r.customer_id as Customer, COUNT(r.rental_id)
FROM
  rental r
GROUP BY
  1
HAVING
  COUNT(r.rental_id) >= 3
  ;
