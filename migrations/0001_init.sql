-- migrations/001_init.sql
CREATE TABLE movies  (id INTEGER PRIMARY KEY, title TEXT);
CREATE TABLE actors  (id INTEGER PRIMARY KEY, name  TEXT);
CREATE TABLE cast    (movie_id INT, actor_id INT, PRIMARY KEY (movie_id, actor_id));

INSERT INTO movies VALUES (1, 'The Fellowship of the Ring');

-- 25 actors so the N+1 cost is obvious
INSERT INTO actors (id, name) VALUES
  (1,  'Elijah Wood'),
  (2,  'Ian McKellen'),
  (3,  'Viggo Mortensen'),
  (4,  'Sean Astin'),
  (5,  'Orlando Bloom'),
  (6,  'John Rhys-Davies'),
  (7,  'Billy Boyd'),
  (8,  'Dominic Monaghan'),
  (9,  'Sean Bean'),
  (10, 'Cate Blanchett'),
  (11, 'Liv Tyler'),
  (12, 'Hugo Weaving'),
  (13, 'Christopher Lee'),
  (14, 'Andy Serkis'),
  (15, 'Ian Holm'),
  (16, 'Marton Csokas'),
  (17, 'Craig Parker'),
  (18, 'Mark Ferguson'),
  (19, 'Lawrence Makoare'),
  (20, 'Sala Baker'),
  (21, 'Jed Brophy'),
  (22, 'Bret McKenzie'),
  (23, 'Peter Jackson'),
  (24, 'Sarah McLeod'),
  (25, 'David Weatherley');

INSERT INTO cast(movie_id,actor_id) SELECT 1, id FROM actors;
