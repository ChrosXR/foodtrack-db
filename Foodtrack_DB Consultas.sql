-- CONSULTAS:

-- 1. VERIFICAMOS LOS DATOS GUARDADOS EN LAS TABLAS

-- FOODTRUCKS:
SELECT *
FROM foodtracks.foodtrucks

-- PRODUCTS:
SELECT *
FROM foodtracks.products

-- ORDERS:
SELECT *
FROM foodtracks.orders

-- ORDERS_ITEMS:
SELECT *
FROM foodtracks.order_items

-- LOCATIONS:
SELECT *
FROM foodtracks.locations

-- 2. PRODUCTOS ORDENADOS DE MENOR A MAYOR EN BASE A SU PRECIO

SELECT * 
FROM foodtracks.products
ORDER BY price, product_id

-- 3. ORDENES DONDE LA CANTIDAD DE ITEMS SEA MAYOR A 5

SELECT *
FROM foodtracks.order_items
WHERE quantity > 5
