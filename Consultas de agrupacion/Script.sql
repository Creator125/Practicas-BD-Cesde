USE HiperAlmacen

SELECT Ciudad, COUNT(Ciudad) AS 'Numero de personas por Ciudad'
FROM Clientes
GROUP BY Ciudad
ORDER BY Ciudad

SELECT IdCategoria, 
		COUNT(IdCategoria) AS 'Numero de productos',
		SUM(Cantidad) AS 'Suma de Cantidad',
		AVG(Cantidad) AS 'Promedio Cantidad',
		MAX(Precio) AS 'Precio mas costoso',
		MIN(Precio) AS 'Precio mas economico'
FROM Productos
GROUP BY IdCategoria