#Temporary tables -- Rentals per user

SELECT
  p.customer_id as "Customer_id", COUNT(r.rental_id) as "Number of rentals", SUM(p.amount) as Revenue
FROM
  rental r, customer c, payment p
WHERE
  p.rental_id = r.rental_id
GROUP BY
  1
ORDER BY
  2
;











#Revenue per users with over 20 rentals
