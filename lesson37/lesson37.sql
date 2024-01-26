-- task1
select 
	coalesce(b.brand, 'Без бренда') as brand,
    sum(a.qty*a.price) as total
from actions a
left join products p on a.product_id = p.id
left join brands b on p.brand_id = b.id
group by coalesce(b.brand, 'Без бренда');
    
-- task2
select 
    s.supplier,
    c.category,
    SUM(a.qty * a.price) as total
from actions a
inner join products p on a.product_id = p.id
inner join suppliers s on a.supplier_id = s.id
inner join categories c on p.category_id = c.id
where year(a.action_date) = 2016
group by s.supplier, c.category;

-- task3
select 
    c.category,
    year(a.action_date) as year,
    avg(a.price) as average_price,
    max(a.price) as max_price,
    min(a.price) as min_price
from actions a
inner join products p on a.product_id = p.id
inner join categories c on p.category_id = c.id
group by c.category, year(a.action_date)
order by c.category, year(a.action_date);