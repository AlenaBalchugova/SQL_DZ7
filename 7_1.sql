--  Составьте список пользователей users, которые осуществили хотя бы один заказ orders в интернет магазине.
select  u.id,
		u.name
from users u
inner join orders o on u.id = o.user_id 