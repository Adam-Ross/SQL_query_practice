#count and group by

-- SELECT count(title)
-- FROM film
-- ;

-- SELECT title, rental_rate
-- FROM film
-- group by rental_rate
-- ;

# Using the count and group by in symphony, could also put group by 2 -- 2 is equal to the col #

SELECT count(rating)
FROM film
group by rating
;
