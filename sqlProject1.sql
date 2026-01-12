create database sql_project_p2;
drop table if exists retail_sales;
create table retail_sales
(
		transactions_id int primary key,
		sale_date date,
		sale_time time,
		customer_id int,
		gender varchar(15),
		age int,
		category varchar(15),
		quantiy int,
		price_per_unit float,
		cogs float,
		total_sale float
);
select * from retail_sales limit 10;

select count(*) from retail_sales;


select count(*) as total_sale from retail_sales;

select count(distinct customer_id) as total_sale from retail_sales;

select distinct category from retail_sales;


--data analysis-1
select * from retail_sales where sale_date='2022-11-05';

--2
select * from retail_sales where category='Clothing' and quantiy>=4 and 
to_char(sale_date,'yyyy-mm')='2022-11';

--3
select category, sum(total_sale) as net_sales, count(*)as total_orders
from retail_sales group by 1;


--4 
select avg(age) from retail_sales where category='Beauty';

--5
select * from retail_sales where total_sale>1000;
