-- task1 
   -- data for warehouse #1 for '2023.01.01' and '2023.12.31' period
select p.product_name, sum(s.qty) as total_quantity
from supplies s
join products p on s.product_id = p.product_id
where s.warehouse_id = 1
  and s.date between '2023.01.01' and '2023.12.31'
group by p.product_name
order by p.product_name;

-- task2 
-- data for warehouse #3 for '2023.01.01' and '2023.12.31'
select p.product_name, sum(a.qty) as total_quantity
from actions a
join products p on a.product_id = p.product_id
where a.warehouse_id = 3
  and a.date between '2023.01.01' and '2023.12.31'
group by p.product_name
order by p.product_name;

-- task3 
-- data for warehouse #3 for '2023.01.01' and '2023.12.31'
select c.category_name, sum(a.qty) as total_quantity
from actions a
join products p on a.product_id = p.product_id
join categories c on p.category_id = c.category_id
where a.warehouse_id = 3
  and a.date between '2023.01.01' and '2023.12.31'
group by c.category_name
order by c.category_name;

-- task4
-- data for warehouse #1 for '2023.01.01' and '2023.12.31'
select ifnull(b.brand_name, 'Без бренда') as brand,
    sum(a.qty) as total_quantity
from actions a
join products p on a.product_id = p.product_id
left join brands b on p.brand_id = b.brand_id
where a.warehouse_id = 1
    and a.date between '2023.01.01' and '2023.12.31'
group by b.brand_name
order by brand;

-- task5
-- data for warehouse #3 for '2023-02-26'
select p.product_name,
    sum(a.qty) as total_quantity
from actions a
join products p on a.product_id = p.product_id
where a.warehouse_id = 3
    and date(a.date) = '2023-02-26'
group by p.product_name
order by p.product_name;

-- task6
-- data for agent #2 for '2023.01.01' and '2023.12.31'
select p.product_name,
    sum(s.qty) as total_quantity
from supplies s
join products p on s.product_id = p.product_id
where s.agent_id = 2
    and s.date between '2023.01.01' and '2023.12.31'
group by p.product_name
order by p.product_name;

-- task7
-- data for agent #3 and warehouse #2 for '2023.01.01' and '2023.12.31'
select p.product_name,
    sum(s.qty) as total_quantity
from supplies s
join products p on s.product_id = p.product_id
where s.agent_id = 3
    and s.warehouse_id = 2
    and s.date between '2023.01.01' and '2023.12.31'
group by p.product_name
order by p.product_name;

-- task8
-- data for agent #3 and warehouse #3 for '2023.01.01' and '2023.12.31'
select p.product_name,
    sum(s.qty) as total_quantity
from supplies s
join products p on s.product_id = p.product_id
where 
	s.agent_id = 3
    and s.warehouse_id = 3
    and s.date between '2023.01.01' and '2023.12.31'
group by p.product_name
order by p.product_name;

-- task9
-- data for product #10 for '2023.01.01' and '2023.12.31'
select ag.agent_name,
    count(distinct s.supply_id) as total_supply_count
from supplies s
join agents ag on s.agent_id = 2
where s.product_id = 10
    and s.date between '2023.01.01' and '2023.12.31'
group by ag.agent_name
order by total_supply_count desc;

-- task10
-- data for product #10 for '2023.01.01' and '2023.12.31'
select ag.agent_name,
    sum(a.qty) as total_quantity
from actions a
join agents ag on a.agent_id = ag.agent_id
where a.product_id = 10
    and a.date between '2023.01.01' and '2023.12.31'
group by ag.agent_name
order by total_quantity desc;

-- task11
-- data for warehouse #2 for '2023.01.01' and '2023.12.31'
select p.product_name,
    sum(s.qty) as total_quantity
from supplies s
join products p on s.product_id = p.product_id
where s.warehouse_id = 2
    and s.date between '2023.01.01' and '2023.12.31'
group by p.product_name
order by p.product_name;

-- task12
-- data for warehouse #3 for '2023.01.01' and '2023.12.31'
select p.product_name,
    sum(s.qty) as total_quantity
from supplies s
join products p on s.product_id = p.product_id
where s.warehouse_id = 3
    and s.date between '2023.01.01' and '2023.12.31'
group by p.product_name
order by p.product_name;