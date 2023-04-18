USE HiperAlmacen

-- Relación con dos tablas
SELECT *
FROM Categorias INNER JOIN Productos ON Categorias.IdCategoria = Productos.IdProducto

SELECT Categorias.NombreCat, Productos.NombrePro, Productos.Precio
FROM Categorias INNER JOIN Productos ON Categorias.IdCategoria = Productos.IdCategoria

SELECT CONCAT(Clientes.Apellido,' ', Clientes.NombreCli) AS 'Nombre Cliente', Clientes.Ciudad, Facturas.Identificacion, Facturas.FechaCompra
FROM Facturas INNER JOIN Clientes ON Facturas.Identificacion = Clientes.Identificacion
WHERE Facturas.Identificacion = 69
ORDER BY Apellido

SELECT TOP 5 Categorias.NombreCat, Productos.NombrePro, FORMAT(Productos.Precio, '#,###') AS Precio
FROM Categorias INNER JOIN Productos ON Categorias.IdCategoria = Productos.IdCategoria
ORDER BY Productos.Precio DESC

-- Relación con tres tablas
SELECT *
FROM Categorias INNER JOIN Productos ON Categorias.IdCategoria = Productos.IdProducto
				INNER JOIN DetalleFactura ON Productos.IdProducto = DetalleFactura.Idproducto

SELECT Categorias.NombreCat, Productos.NombrePro, FORMAT(Productos.Precio, '#,###') AS Precio, DetalleFactura.Cantidad,
		FORMAT((Productos.Precio * DetalleFactura.Cantidad), '#,###') AS Subtotal
FROM Categorias INNER JOIN Productos ON Categorias.IdCategoria = Productos.IdCategoria
				INNER JOIN DetalleFactura ON Productos.IdProducto = DetalleFactura.Idproducto
WHERE Productos.IdCategoria = 2

SELECT C.NombreCat, P.NombrePro
FROM Categorias AS C INNER JOIN Productos AS P ON C.IdCategoria = P.IdCategoria

-- Taller

/* 1. Realizar una consulta SQL, que visualice la Categoría, descripción de la Categoría, Nombre
del producto y el precio del producto. Ordenar la lista por Categoría y mostrar los precios de
mayor a menor */

SELECT Cat.NombreCat,Cat.Descripcion, Prod.NombrePro,FORMAT(Prod.Precio, '#,###') AS Pecio
FROM Categorias AS Cat INNER JOIN Productos AS Prod ON Cat.IdCategoria = Prod.IdCategoria

/* 2. Realizar una consulta SQL, que visualice la categoría y el nombre de los productos que se
encuentren descontinuados (=1) */SELECT Cat.NombreCat, Prod.NombrePro
FROM Categorias AS Cat INNER JOIN Productos AS Prod ON Cat.IdCategoria = Prod.IdCategoriaWHERE Prod.Descontinuado = 1SELECT  *FROM Productos

