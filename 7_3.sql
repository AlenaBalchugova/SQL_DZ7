
-- (по желанию) Пусть имеется таблица рейсов flights (id, from, to) и таблица городов cities (label, name). 
-- Поля from, to и label содержат английские названия городов, поле name — русское. 
-- Выведите список рейсов flights с русскими названиями городов.

-- имена  нужно создавать в кавычках `from` `to` :)

SELECT id, 
		s1.name AS `from`, 
		s2.name AS `to`
  FROM flights AS f
  LEFT JOIN cities s1 
    ON f.`from` = s1.label
  LEFT JOIN cities s2
  	ON f.`to` = s2.label;