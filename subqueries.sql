# Movies have many Promotions and Promotions have one movie.  Foreign key in Promotions
#of movie_id.
#Want to return the sum of all movies that were on the non cash promotion.


SELECT SUM(sales)
FROM Movies
Where id IN
  (SELECT movie_id
  FROM Promotions
  WHERE category = “non cash”); #---------- Querie surrounded by parens is called a 'subquerie.'
                                # Subqueries get ran first.

# IN this particular example, could use a join querie.

SELECT SUM(sales)
FROM Movies m
INNER JOIN Promotions p
ON m.id = p.movie_id
WHERE p.category = "non cash";
