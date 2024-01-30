use study_database;

-- task1
select 
    year(action_date) as year,
    month(action_date) as month,
    day(action_date) as day,
    sum(qty * price) as daily_total
from 
    actions
where 
    action_date is not null
group by 
    year(action_date), month(action_date), day(action_date)
union
select 
    year(action_date) as year,
    month(action_date) as month,
    null as day,
    sum(qty * price) as daily_total
from 
    actions
where 
    action_date is not null
group by 
    year(action_date), month(action_date)
union
select 
    year(action_date) as year,
    null as month,
    null as day,
    sum(qty * price) as daily_total
from 
    actions
where 
    action_date is not null
group by 
    year(action_date)
order by 
    year, month, day;
   
-- task2
select 
    s.supplier as supplier,
    year(a.action_date) as year,
    sum(a.qty * a.price) as total_supplier_yearly,
    c.category as category,
    sum(a.qty * a.price) as total_supplier_yearly_category
from 
    actions a
inner join 
    products p on a.product_id = p.id
inner join 
    suppliers s on a.supplier_id = s.id
inner join 
    categories c on p.category_id = c.id
group by 
    s.supplier, year(a.action_date), c.category
order by 
    s.supplier, year(a.action_date), c.category;
    

