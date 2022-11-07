SELECT toys.name FROM toys
JOIN cats ON (toys.cat_id = cats.id)
WHERE cats.name = 'Garfield';

SELECT toys.name FROM toys
WHERE cat_id IN (
    SELECT id FROM cats
    WHERE name = 'Garfield'
);

INSERT INTO toys (name, cat_id)
VALUES
('Pepperoni', (
    SELECT id FROM cats
    WHERE name = 'Garfield'
));

SELECT * FROM albums
WHERE release_year IN (
    SELECT birth_year FROM cats
    WHERE name = 'Smudge'
);