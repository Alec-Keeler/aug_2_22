-- Q1
SELECT albums.name, albums.band_id, bands.id, bands.name FROM albums
JOIN bands ON (albums.band_id = bands.id);

-- Q2
-- SELECT bands.id, bands.name, albums.title, albums.num_sold
-- FROM bands JOIN albums
-- ON (bands.id = albums.num_sold < 20000);

SELECT bands.name, albums.name, albums.num_sold FROM bands
JOIN albums ON (albums.band_id = bands.id)
WHERE albums.num_sold < 20000;