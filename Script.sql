create table customers
	(customer_id int4 primary key
	,first_name varchar(30) not null
	,last_name varchar(30)
	,gender varchar(30) not null
	,DOB date
	,job_title varchar(50)
	,job_industry_category varchar(30)
	,wealth_segment varchar(30) not null
	,deceased_indicator bool not null
	,owns_car bool not null
	,address text not null
	,postcode integer not null
	,state varchar(30) not null
	,country varchar(30) not null
	,property_valuation int4 not null);

create table products
	(id serial primary key
	,product_id int4 not null
	,brand varchar(30)
	,product_line varchar(30)
	,product_class varchar(10)
	,product_size varchar(10));

create table transactions
	(transaction_id int4 primary key
	,product_id int4 not null
	,customer_id int4 not null
	,transaction_date date not null
	,online_order varchar(30)
	,order_status varchar(30) not null
	,list_price float4 not null
	,standard_cost float4
	,foreign key(product_id) references products (id)
	,foreign key (customer_id) references customers (customer_id));