# left() min() max()

# How many rentals we had each month
SELECT
  left(r.rental_date, 7), count(r.rental_id)
FROM
  rental r
GROUP BY
  1
ORDER BY
  2 desc
;

#left, group by dates usually.
# first time, last time rented MIN() MAX()

SELECT
    left(p.payment_date, 7) "Month", SUM(p.amount) as "Monthly Revenue"
FROM
    payment p
GROUP BY
    1
;
