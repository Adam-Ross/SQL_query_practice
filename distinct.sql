#number of unique renters by month.

SELECT
  left(r.rental_date, 7) as Month, COUNT(r.rental_id) as "Monthly Number of total rents", COUNT(distinct r.customer_id) as "Monthly Number of customers", COUNT(r.rental_id) / COUNT(distinct r.customer_id) as "Monthly Average rentals per person"
FROM
  rental r
GROUP BY
  1
;


SELECT
  left(r.rental_date, 7) as "Month", COUNT(distinct i.film_id) as "Distinct films rented"
FROM
  rental r, inventory i
WHERE
  r.inventory_id = i.inventory_id
GROUP BY
  1
;

