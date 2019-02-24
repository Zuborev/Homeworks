SELECT id_film, name_flm FROM films WHERE name_flm like "%tur%";

SELECT * FROM  actor  WHERE sex like "f" order by country_birth;

SELECT * FROM films WHERE budget_doll >= 100000000 && year > 2000;

SELECT count(*) as number, country_birth as nationality FROM actor WHERE year_birth < 1980 GROUP BY country_birth;

SELECT surname as nominal, country_birth as nationality FROM actor WHERE (country_birth like "%US%") ORDER BY surname;

SELECT count(*) as number, sex as gender FROM actor GROUP BY sex;

SELECT surname as nominal, (2019 - year_birth) as old  FROM actor WHERE (sex like "m") ORDER BY year_birth desc;

SELECT max(budget_doll) as expensive_$, min(budget_doll) as cheap_$ FROM films WHERE (budget_doll > 0);

SELECT name_flm as top_3  FROM films ORDER BY budget_doll desc LIMIT 3;

SELECT sum(budget_doll) as summa_$, round(avg(length_min)) as mid_minutes FROM films WHERE year < (select avg(year) from films);

SELECT substring(surname, 1, instr(surname, ' ')-1) as names FROM actor ORDER BY names;

SELECT name_flm as movie, year FROM films ORDER BY rand() LIMIT 3;

SELECT concat(surname, ' born in ', country_birth) as about_girls FROM actor WHERE sex = 'f';




