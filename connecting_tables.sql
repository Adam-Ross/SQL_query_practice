-- customer_id, name(first and last)
-- address

-- SELECT
--   customer.customer_id, customer.first_name, customer.last_name, address.address
-- FROM
--   customer, address
-- WHERE
--   customer.address_id = address.address_id
-- ;

#film name, category, language

SELECT
  film.title, film.language_id, film_category.category_id
FROM
  film, film_category, language
WHERE
  film.language_id = language.language_id
  film_category.film_id = film.film_id
;
