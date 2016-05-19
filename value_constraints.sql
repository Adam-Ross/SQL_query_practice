#Proper way to do table constraint syntax for foreign key reference

CREATE TABLE Actors (
  id int PRIMARY KEY,
  name varchar(50) NOT NULL UNIQUE,
  country_id int,
  FOREIGN KEY (country_id) REFERENCES Contries (id)
);



#Rooms with that can only show one movei per room at a time.  Make it
-- UNIQUE and add the movie_id FOREIGN KEY
CREATE TABLE Rooms (
  id int PRIMARY KEY,
  seats int,
  movie_id int UNIQUE
  REFERENCES Movies (id)
);

#Table syntax

CREATE TABLE Rooms (
  id int PRIMARY KEY,
  seats int,
  movie_id int UNIQUE,
  FOREIGN KEY (movie_id) REFERENCES Movies
);


SELECT Movies.title, Rooms.id, Rooms.seats FROM Movies
INNER JOIN Rooms
ON Movies.id = Rooms.movie_id
WHERE Rooms.seats > 75
ORDER BY Rooms.seats DESC;

SELECT Actors.name, Movies.title FROM Actors
INNER JOIN Actors_Movies
ON Actors.id = Actors_Movies.actor_id
INNER JOIN Movies
ON Actors_Movies.movie_id = Movies.id
ORDER BY Movies.title;
