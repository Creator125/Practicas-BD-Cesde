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


--Edicion 10/04/2023

SELECT NombrePro AS 'Nombre del producto', Precio
FROM Productos
WHERE Precio >= 1000000 AND Precio <= 2000000

SELECT NombrePro AS 'Nombre del producto', Precio
FROM Productos
WHERE Precio BETWEEN 1000000 AND 2000000

SELECT NombreCli, Ciudad 
FROM Clientes
WHERE Ciudad = 'sabaneta' OR Ciudad = 'envigado'

SELECT NombreCli, Ciudad 
FROM Clientes
WHERE Ciudad IN('sabaneta', 'envigado', 'itagui')

SELECT NombreCli
FROM Clientes
WHERE NombreCli LIKE 'A%A'

SELECT NombreCli
FROM Clientes
WHERE Ciudad LIKE 'medell_n'

SELECT NombreCli, Ciudad 
FROM Clientes
WHERE Ciudad NOT IN('sabaneta', 'envigado', 'itagui')
ORDER BY Ciudad

SELECT NombrePro,FORMAT(Precio, '#,###') AS Precio, 
		FORMAT((Precio * Iva / 100), '#,###') AS 'Valor Iva', 
		(Precio * 1.07) AS 'Nuevo Precio',
		((Precio * Iva / 100) + Precio) AS 'Precio por Iva'
FROM Productos