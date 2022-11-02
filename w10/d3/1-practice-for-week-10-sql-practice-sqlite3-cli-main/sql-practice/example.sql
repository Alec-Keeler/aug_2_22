DROP TABLE IF EXISTS samples;

CREATE TABLE samples (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT);

INSERT INTO samples (name) VALUES ('You found me!'), ('Yippee!!'), ('Yay!!!');


-- Step 1 .help will show built in docs
    -- .tables to show the tables
    -- .schema to show the schema
--Step 3 .headers on will show the column names
    -- .mode column will give prettier output that is easer to read
