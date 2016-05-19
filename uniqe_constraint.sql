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
