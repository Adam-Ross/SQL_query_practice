#What customer has paid us the most money.

-- SELECT
--   p.customer_id, SUM(p.amount)
-- FROM
--   payment p
-- GROUP BY
--   1
-- ORDER BY
--   2 desc
-- ;

# BRAINBUSTER What store has brought in the most revenue.

SELECT
  i.store_id as "Store ID", sum(p.amount) as Revenue
FROM
  inventory i, payment p, rental r
WHERE
  p.rental_id = r.rental_id
  and r.inventory_id = i.inventory_id
GROUP BY
  1
ORDER BY
  2 desc
;
