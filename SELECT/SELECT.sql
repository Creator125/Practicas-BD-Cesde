SELECT * FROM INFORMATION_SCHEMA.TABLES
SELECT * FROM INFORMATION_SCHEMA.COLUMNS

SELECT * 
FROM Clientes

SELECT TOP 3 *
FROM Productos

SELECT TOP 10 PERCENT NombreCli, Apellido, Ciudad
FROM Clientes

SELECT DISTINCT Ciudad
FROM Clientes

SELECT DISTINCT Ciudad, NombreCli, Apellido
FROM Clientes
ORDER BY Ciudad, Apellido

/****** Selecionar los primeros 5 productos mas costosos ******/
SELECT TOP 5 NombrePro, Precio
FROM Productos
ORDER BY Precio DESC

--Alias, colocarle nombre a una columnas
SELECT NombreCli AS 'Nombre del Cliente',
	Apellido AS 'Apellido del Cliente',
	Ciudad AS Ciudad_Cliente
FROM Clientes
WHERE Ciudad != 'bello'

SELECT NombrePro, Precio, Cantidad
FROM Productos
WHERE Cantidad >= 40
ORDER BY Cantidad DESC

SELECT IdProducto, NombrePro, Precio, Cantidad
FROM Productos
WHERE Cantidad >= 30 AND IdCategoria = 3
ORDER BY IdCategoria

--Seleccinar todos los productos cuya catidad este entre 20 o 40
SELECT IdProducto, NombrePro, Precio, Cantidad
FROM Productos
WHERE Cantidad >= 20 AND Cantidad <= 40

--Seleccionar los clientes que viva en la ciudad de itagui y sabaneta
SELECT DISTINCT Ciudad, NombreCli, Apellido
FROM Clientes
WHERE Ciudad = 'Itagui' OR Ciudad = 'Sabaneta'