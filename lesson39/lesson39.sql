use study_database;

-- task1
select s.supplier
from actions a
inner join suppliers s on a.supplier_id = s.id
inner join (
	select supplier_id, sum(qty * price) as total_supply_amount
	from actions 
    where year(action_date) = 2016
	group by supplier_id
    ) t on a.supplier_id = t.supplier_id
where s.supplier <> 'IDT' and t.total_supply_amount > (
	select sum(qty * price) 
	from actions
	where supplier_id = (
		select id 
		from suppliers where supplier = 'IDT'
	) 
	and year(action_date) = 2016
);

-- task2
select distinct p.product
from products p
left join actions a on p.id = a.product_id
left join suppliers s on a.supplier_id = s.id
where s.supplier != 'IDT' or s.supplier is null;

-- task3
select distinct c.category
from categories c
inner join products p on c.id = p.category_id
inner join actions a on p.id = a.product_id
inner join suppliers s on a.supplier_id = s.id
where s.supplier = 'IDT'
and year(a.action_date) = 2016
and month(a.action_date) between 6 and 8;
