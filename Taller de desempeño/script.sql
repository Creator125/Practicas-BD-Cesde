/*
Se debe realizar una consulta por cada elemento del where.

Utilizar la menos tres consultas con Inner Join

Realizar consulta de campos calculados

Realizar consulta con columnas agrupadas

Realizar ejemplos de: Agregar columna, modificar el contenido, modificar el tipo, borrar y actualizar datos.
*/
USE tienda;

SELECT *
FROM fabricante;

SELECT *
FROM producto;

SELECT id, nombre, precio
FROM producto
WHERE precio > 300
ORDER BY precio DESC;


-- Realizando consultas con Inner Join
SELECT producto.nombre AS Producto, fabricante.nombre AS Fabricante 
FROM fabricante INNER JOIN producto ON fabricante.id = producto.id_fabricante;

SELECT fabricante.nombre AS Fabricante, producto.nombre AS Producto, producto.precio
FROM fabricante INNER JOIN producto ON fabricante.id = producto.id_fabricante;

SELECT fabricante.nombre AS Fabricante, fabricante.id AS 'Id del fabricante', producto.nombre AS Producto, producto.id AS 'Id del producto'
FROM fabricante INNER JOIN producto ON fabricante.id = producto.id_fabricante;


-- Realizando una consulta de campo calculado
SELECT id, nombre, precio,
	FORMAT(precio - (precio * 0.15), '#,###') AS 'Descuento del 15%'
FROM producto;


-- Realizando una consulta de agrupación
SELECT *
FROM producto;

SELECT id_fabricante, COUNT(id_fabricante) AS 'Cantidad de productos por fabricante'
FROM producto
GROUP BY id_fabricante
ORDER BY id_fabricante DESC;


-- Agregando una columna en la tabla producto
ALTER TABLE producto
ADD codigo NVARCHAR(4);

-- Modificando o actualizando contenido de la tabla fabricante
UPDATE fabricante
SET nombre = 'Motolora'
WHERE id = 6;

SELECT *
FROM fabricante;

-- Modificando el tipo de dato en la tabla producto
ALTER TABLE producto
MODIFY COLUMN codigo INT;

-- Borrando contenido en la tabla fabricante
SELECT *
FROM fabricante;

DELETE FROM fabricante
WHERE id = 8;