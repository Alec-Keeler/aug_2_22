PRAGMA foreign_keys=on; -- Turns on foreign key support in SQLite3

-- Create / re-create tables
DROP TABLE IF EXISTS toys;
DROP TABLE IF EXISTS cats;
DROP TABLE IF EXISTS albums;

CREATE TABLE cats (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  birth_year INTEGER
);

CREATE TABLE toys (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  cat_id INTEGER,
  FOREIGN KEY (cat_id) REFERENCES cats(id) ON DELETE CASCADE
);

CREATE TABLE albums (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR,
  artist VARCHAR,
  release_year INTEGER
);

-- Create/recreate BONUS tables
DROP TABLE IF EXISTS toys_backup;
DROP TABLE IF EXISTS cats_backup;

CREATE TABLE cats_backup (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  birth_year INTEGER
);

CREATE TABLE toys_backup (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  cat_id INTEGER,
  FOREIGN KEY (cat_id) REFERENCES cats_backup(id) ON DELETE CASCADE
);

-- Seed Data
INSERT INTO cats
  (name, birth_year)
VALUES
  ('Smudge', 2014),
  ('Molly', 2015),
  ('Lucky', 2016),
  ('Bella', 2020),
  ('Tiger', 2012),
  ('Oscar', 2010),
  ('Garfield', 2009),
  ('Crookshanks', 2017);

INSERT INTO toys
  (cat_id, name)
VALUES
  (1, 'Catnip Mouse'),
  (2, 'Feather Wand'),
  (2, 'Scratcher'),
  (2, 'Laser Pointer'),
  (3, 'Chew Toy'),
  (4, 'Tunnel'),
  (4, 'Flopping Fish'),
  (5, 'Crinkle Ball'),
  (7, 'Cheetos'),
  (8, 'Yarn');

INSERT INTO albums (name, artist, release_year)
VALUES
('1989', 'Taylor Swift', 2014),
('Rebel Heart', 'Madonna', 2015),
('Blackstar', 'David Bowie', 2016),
('After Hours', 'The Weeknd', 2020),
('Oceania', 'The Smashing Pumpkins', 2012),
('Plastic Beach', 'Gorillaz', 2010),
('It''s not you it''s me', 'Lily Allen', 2009),
('Beautiful Trauma', 'Pink', 2017);
