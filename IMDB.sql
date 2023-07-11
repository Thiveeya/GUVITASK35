-- 1. Movie should have multiple media(Video or Image)
-- 2. Movie can belongs to multiple Genre
-- 3. Movie can have multiple reviews and Review can belongs to a user
-- 4. Artist can have multiple skills 
-- 5. Artist can perform multiple role in a single film

 -- CREATE DATABASE taskimdb;
 -- use taskimdb;
 
-- create table movie(
--     -> movie_id int not null,
--     -> movie_name varchar(255) not null,
--     -> movie_artist varchar(255) not null,
--     -> primary key(movie_id)
--     -> );

--  desc movie
--     -> ;

-- +--------------+--------------+------+-----+---------+-------+
-- | Field        | Type         | Null | Key | Default | Extra |
-- +--------------+--------------+------+-----+---------+-------+
-- | movie_id     | int          | NO   | PRI | NULL    |       |
-- | movie_name   | varchar(255) | NO   |     | NULL    |       |
-- | movie_artist | varchar(255) | NO   |     | NULL    |       |
-- +--------------+--------------+------+-----+---------+-------+
-- 3 rows in set (0.02 sec)

-- insert into movie(movie_id,movie_name,movie_artist)values(1,'vikram','kamalhassan'),
-- (2,'kaithi','karthi'),(3,'kathi','vijay');

-- SELECT * FROM movie;

-- +----------+------------+--------------+
-- | movie_id | movie_name | movie_artist |
-- +----------+------------+--------------+
-- |        1 | vikram     | kamalhassan  |
-- |        2 | kaithi     | karthi       |
-- |        3 | kathi      | vijay        |
-- +----------+------------+--------------+
-- 3 rows in set (0.04 sec)

 -- create table movie_details(
--     -> moviedetails_id int not null,
--     -> movie_id int not null,
--     -> media varchar(255),
--     -> primary key(moviedetails_id),
--     -> FOREIGN KEY(movie_id)
--     -> REFERENCES movie(movie_id)
--     -> );
--  describe movie_details;

-- +-----------------+--------------+------+-----+---------+-------+
-- | Field           | Type         | Null | Key | Default | Extra |
-- +-----------------+--------------+------+-----+---------+-------+
-- | moviedetails_id | int          | NO   | PRI | NULL    |       |
-- | movie_id        | int          | NO   | MUL | NULL    |       |
-- | media           | varchar(255) | YES  |     | NULL    |       |
-- +-----------------+--------------+------+-----+---------+-------+


 -- insert into movie_details (moviedetails_id,movie_id,media)
--  values(1,1,"https://www.imdb.com/title/tt9179430/mediaviewer/rm1740833281/?ref_=tt_ov_i");

 -- SELECT * FROM movie_details;
 
 -- +-----------------+----------+-----------------------------------------------------------------------------+
-- | moviedetails_id | movie_id | media                                                                       |
-- +-----------------+----------+-----------------------------------------------------------------------------+
-- |               1 |        1 | https://www.imdb.com/title/tt9179430/mediaviewer/rm1740833281/?ref_=tt_ov_i |
-- +-----------------+----------+-----------------------------------------------------------------------------+


--  create table genre(
--     -> genre_id int not null,
--     -> movie_id int not null,
--     -> movie_genre varchar(255),
--     -> primary key(genre_id),
--     -> FOREIGN KEY(movie_id)
--     -> REFERENCES movie(movie_id)
--     -> );

 -- describe genre;
--  +-------------+--------------+------+-----+---------+-------+
-- | Field       | Type         | Null | Key | Default | Extra |
-- +-------------+--------------+------+-----+---------+-------+
-- | genre_id    | int          | NO   | PRI | NULL    |       |
-- | movie_id    | int          | NO   | MUL | NULL    |       |
-- | movie_genre | varchar(255) | YES  |     | NULL    |       |
-- +-------------+--------------+------+-----+---------+-------+


-- INSERT INTO Genre values(1,1,"Action");

-- +----------+----------+-------------+
-- | genre_id | movie_id | movie_genre |
-- +----------+----------+-------------+
-- |        1 |        1 | Action      |
-- +----------+----------+-------------+


 -- create table Review(
--     -> rating_id int not null,
--     -> review varchar (255),
--     -> PRIMARY KEY (rating_id)
--     -> );

-- +-----------+--------------+------+-----+---------+-------+
-- | Field     | Type         | Null | Key | Default | Extra |
-- +-----------+--------------+------+-----+---------+-------+
-- | rating_id | int          | NO   | PRI | NULL    |       |
-- | review    | varchar(255) | YES  |     | NULL    |       |
-- +-----------+--------------+------+-----+---------+-------+


-- INSERT INTO Review VALUES(1,"Flop"),(2,"Average"),(3,"Hit"),(4,"Blockbuster");

 -- SELECT * FROM REVIEW;
 
 -- +-----------+-------------+
-- | rating_id | review      |
-- +-----------+-------------+
-- |         1 | Flop        |
-- |         2 | Average     |
-- |         3 | Hit         |
-- |         4 | Blockbuster |
-- +-----------+-------------+

 -- CREATE table artist_skill(
--     -> artist_id int not null,
--     -> movie_id int not null,
--     -> skills varchar(255),
--     -> primary key (artist_id)
--     -> );

 -- describe artist_skill;
 
 -- +-----------+--------------+------+-----+---------+-------+
-- | Field     | Type         | Null | Key | Default | Extra |
-- +-----------+--------------+------+-----+---------+-------+
-- | artist_id | int          | NO   | PRI | NULL    |       |
-- | movie_id  | int          | NO   |     | NULL    |       |
-- | skills    | varchar(255) | YES  |     | NULL    |       |
-- +-----------+--------------+------+-----+---------+-------+

-- insert into artist_skill values(1,1,"actor"),(2,1,"dancer"),(3,1,"singer");


-- +-----------+----------+--------+
-- | artist_id | movie_id | skills |
-- +-----------+----------+--------+
-- |         1 |        1 | actor  |
-- |         2 |        1 | dancer |
-- |         3 |        1 | singer |
-- +-----------+----------+--------+