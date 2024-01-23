select 
	date(a.action_date) as action_date,
    p.product,
    a.qty,
    a.price
from actions a
inner join products p on a.product_id = p.id
inner join categories c ON p.category_id = c.id
where year(a.action_date) < 2017 and c.category = 'Monitors'
order by a.qty desc
limit 5;

select 
	date(a.action_date) as action_date,
    p.product,
    s.supplier
from actions a
inner join products p on a.product_id = p.id
inner join suppliers s on a.supplier_id = s.id
where year(a.action_date) = 2016
order by a.action_date desc;

select distinct
	p.product
from actions a
inner join products p on a.product_id = p.id
where year(a.action_date) = 2017;