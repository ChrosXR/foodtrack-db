-- SE ENTRA A LA BASE DE DATOS
USE foodtrack_db

-- CARGAMOS LOS DATOS A LAS TABLAS CORRECTAS CON SUS SCHEMAS CORRECTOS

-- 1. FOODTRUCKS
BULK INSERT foodtracks.foodtrucks
FROM 'C:/Users/chris/Downloads/PROJECTO M2/HW1/foodtrucks.csv'
WITH (
FIRSTROW = 2,
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n'
);

-- 2. PRODUCTS
BULK INSERT foodtracks.products
FROM 'C:/Users/chris/Downloads/PROJECTO M2/HW1/products.csv'
WITH (
FIRSTROW = 2,
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n'
);

-- 3. ORDERS
BULK INSERT foodtracks.orders
FROM 'C:/Users/chris/Downloads/PROJECTO M2/HW1/orders.csv'
WITH (
FIRSTROW = 2,
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n'
);

-- 4. ORDER_ITEMS
BULK INSERT foodtracks.order_items
FROM 'C:/Users/chris/Downloads/PROJECTO M2/HW1/order_items.csv'
WITH (
FIRSTROW = 2,
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n'
);

-- 5. LOCATIONS
BULK INSERT foodtracks.locations
FROM 'C:/Users/chris/Downloads/PROJECTO M2/HW1/locations.csv'
WITH (
FIRSTROW = 2,
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n'
);