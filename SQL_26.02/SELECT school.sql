ELECT count(name) as NUM, title as CLASS
FROM children
INNER JOIN class ON (class.id = id_class)
GROUP BY class.title;

SELECT name, age, title
FROM children
INNER JOIN class ON (class.id = id_class)
ORDER BY age, class.title;

SELECT count(name) as num, age FROM children GROUP BY age ORDER BY name DESC Limit 3;