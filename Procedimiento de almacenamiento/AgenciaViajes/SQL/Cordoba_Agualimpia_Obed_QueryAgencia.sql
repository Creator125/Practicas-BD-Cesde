-- Realizando consultas con Inner Join
SELECT Turistas.cedulaPasaporte, Turistas.nombre, Turistas.apellido, Contratos.idContrato
FROM Turistas
INNER JOIN Contratos ON Turistas.idContrato = Contratos.idContrato;

SELECT Contratos.idContrato, Hotel.nombre, Hotel.direccion, Hotel.ciudad
FROM Contratos
INNER JOIN Hotel ON Contratos.CodigoHotel = Hotel.codigoHotel;

SELECT Contratos.idContrato, Vuelos.numeroVuelo, Vuelos.fechaHora, Vuelos.origen, Vuelos.destino
FROM Contratos
INNER JOIN Vuelos ON Contratos.numeroVuelo = Vuelos.numeroVuelo;
              
SELECT Sucursal.codigoSucursal, Sucursal.direccion, Sucursal.telefono, Contratos.idContrato
FROM Sucursal
INNER JOIN Contratos ON Sucursal.codigoSucursal = Contratos.codigoSucursal;

-- Realizando consultas de Campos Calculados
SELECT idContrato, FORMAT((precioPersona + valorEquipaje), '#,###') AS precioTotal
FROM Contratos;

SELECT *, FORMAT((precioPersona-(precioPersona * 0.15)), '#,###') AS 'Descuento del 15%'
FROM vuelos
WHERE destino IN ('China', 'Russia');

SELECT codigoHotel, nombre, FORMAT(precioPersona, '#,###') AS 'Precio por persona', FORMAT((precioPersona-(precioPersona * 0.15)), '#,###') AS 'Descuento del 15%'
FROM hotel
WHERE nHabitaciones > 2;

SELECT *, FORMAT((precioPersona + valorEquipaje), '#,###') AS 'Valor total'
FROM vuelos
WHERE fechaHora LIKE '2023%';

-- Realizando consultas de Agrupación
SELECT ciudad, AVG(precioPersona) AS 'Promedio de precio'
FROM Hotel
GROUP BY ciudad;

SELECT Sucursal.codigoSucursal, COUNT(Contratos.idContrato) AS cantidadContratos
FROM Sucursal INNER JOIN Contratos ON Sucursal.codigoSucursal = Contratos.codigoSucursal
GROUP BY Sucursal.codigoSucursal;

SELECT ciudad, MAX(nHabitaciones) AS 'Maximo de numeros de habitaciones', MIN(nHabitaciones) AS 'Minimo de numeros de habitaciones'
FROM Hotel
GROUP BY ciudad;

SELECT clase, SUM(valorEquipaje) AS 'Total del valor del equipaje'
FROM Vuelos
GROUP BY clase;

SELECT ciudad, SUM(precioPersona) AS 'Suma de los precios'
FROM Hotel
WHERE nHabitaciones < 3
GROUP BY ciudad;
