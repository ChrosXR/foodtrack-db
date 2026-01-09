USE foodtrack_db

--- CAMBIOS ---

-- 1. AGREGAR COLUMNA 'COMENTARIOS' EN LA TABLA 'orders'

ALTER TABLE foodtracks.orders
ADD coments text default 'No Coments';

	-- VERIFICAMOS QUE LA COLUMNA EXISTE EN LA TABLA 'orders'

SELECT coments
FROM foodtracks.orders;

	-- COLOCAMOS 'NO COMENTS' EN LAS FILAS YA INGRESADAS

UPDATE foodtracks.orders
SET coments = 'No Coments'
WHERE coments IS NULL;

-- 2. AGREGAR COLUMNA 'CONTACTO' EN LA TABLA 'foodtrucks'

ALTER TABLE foodtracks.foodtrucks
ADD contact bigint default 'No Contact';

	-- VERIFICAMOS QUE LA COLUMNA EXISTE EN LA TABLA 'foodtrucks'

SELECT contact
FROM foodtracks.foodtrucks;

	-- COLOCAMOS 'SIN CONTACTO' EN LAS FILAS YA INGRESADAS

UPDATE foodtracks.foodtrucks
SET contact = 'No Contact'
WHERE contact IS NULL;
