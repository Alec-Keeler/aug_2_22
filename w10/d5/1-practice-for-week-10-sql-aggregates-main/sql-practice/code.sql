SELECT COUNT(*) AS count FROM cats;

-- oldest cat
SELECT MIN(birth_year) as Birth_Year, name AS oldest_cat
FROM cats;
-- youngest cat
SELECT MAX(birth_year) as Birth_Year, name AS youngest_cat
FROM cats;

SELECT AVG(2022 - birth_year) AS average_age FROM cats;

select cats.name, COUNT(toys.id) as COUNT
from cats
join toys on cats.id=toys.cat_id
group by cats.name
having COUNT >= 2;

-- select cats.name, toys.name
-- from cats
-- join toys on cats.id=toys.cat_id;