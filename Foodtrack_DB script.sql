-- NOS COLOCAMOS EN LA BASE DE DATOS

use foodtrack_db

--CREACION DE SCHEMAS

create schema foodtracks

-- CREACION DE TABLAS

create table foodtracks.foodtrucks(
	foodtruck_id int identity(1,1) primary key,
	name varchar(255) not null,
	cuisine_type varchar (50),
	city varchar(100)
	)
	
create table foodtracks.products(
    product_id int identity(101,1) primary key,
    foodtruck_id int not null,
    product_name varchar(100) not null,
    price decimal(10,2) not null,
    stock int not null check(stock >= 0),

    -- foreign keys    
    CONSTRAINT fk_products_foodtrucks
        FOREIGN KEY (foodtruck_id)
        REFERENCES foodtracks.foodtrucks(foodtruck_id)
	)

create table foodtracks.orders(
	order_id int identity(1001,1) primary key,
	foodtruck_id int not null,
	order_date datetime default getdate(),
	status varchar(20) not null check (status in('pendiente', 'entregado')),
	total decimal(10,2) not null,
	
	-- foreign keys	
	CONSTRAINT fk_orders_foodtrucks
        FOREIGN KEY (foodtruck_id)
        REFERENCES foodtracks.foodtrucks(foodtruck_id)
	)

create table foodtracks.order_items(
	order_item_id int identity(1,1) primary key,
	order_id int not null,
	product_id int not null,
	quantity int not null check(quantity > 0),
	
	-- foreign keys	
	CONSTRAINT fk_order_items_orders
        FOREIGN KEY (order_id)
        REFERENCES foodtracks.orders(order_id),	
        
	CONSTRAINT fk_order_items_products
        FOREIGN KEY (product_id)
        REFERENCES foodtracks.products(product_id)	
	)

create table foodtracks.locations(
	location_id int identity(1,1) primary key,
	foodtruck_id int not null,
	location_date datetime default getdate(),
	zone varchar(30),
	
	-- foreign keys	
	CONSTRAINT fk_locations_foodtrucks
        FOREIGN KEY (foodtruck_id)
        REFERENCES foodtracks.foodtrucks(foodtruck_id)
	)