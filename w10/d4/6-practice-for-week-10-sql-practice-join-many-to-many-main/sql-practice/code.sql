-- Q1
SELECT musicians.first_name, instruments.type FROM musicians
JOIN musician_instruments ON musicians.id = musician_id
JOIN instruments ON instrument_id = instruments.id;

-- Q2
SELECT musicians.first_name, musicians.last_name, instruments.type FROM musicians
JOIN musician_instruments ON musicians.id = musician_id
JOIN instruments ON instrument_id = instruments.id 
WHERE type = 'piano';