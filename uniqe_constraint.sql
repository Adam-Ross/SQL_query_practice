#This is what the table would look like when we are creating it.

#col constraint syntax

CREATE TABLE Promotions
(
id int,
name varchar(50) NOT NULL UNIQUE,
category varchar(15)
);

#Table constraint syntax, can be used with everything except not null.

CREATE TABLE Promotions
(
id int,
name varchar(50) NOT NULL UNIQUE,
category varchar(15)
CONSTRAINT unique_constraint UNIQUE (name)
);

-- ALSO, when creating a table, it is utmost important to not have any primary
--  keys be null and for all of them to be unique, so, you have the PRIMARY KEY constraint
--  that you put on you id col when making the table.

CREATE TABLE Promotions
(
id int PRIMARY KEY,
name varchar(50) NOT NULL UNIQUE,
category varchar(15)
CONSTRAINT unique_constraint UNIQUE (name)
);

