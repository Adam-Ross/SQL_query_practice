#number of unique renters by month.

SELECT
    left(r.rental_date, 7) as Month, COUNT(r.rental_id) as "Total rentals", COUNT(DISTINCT r.customer_id) as "Number of customers", COUNT(r.rental_id) / COUNT(DISTINCT r.customer_id) as "Rentals per customer"
FROM
    rental r
GROUP BY
    1
;
