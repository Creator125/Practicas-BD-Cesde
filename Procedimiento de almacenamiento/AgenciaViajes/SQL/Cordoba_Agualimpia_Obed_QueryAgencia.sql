-- Realizando consultas con Inner Join
SELECT turistas.cedulaPasaporte, hotel.codigoHotel
FROM turistas INNER JOIN hotel ON turistas.CodigoHotel = hotel.CodigoHotel
WHERE hotel.nHabitaciones > 1;

SELECT turistas.cedulaPasaporte, sucursal.codigoSucursal
FROM turistas INNER JOIN sucursal ON turistas.codigoSucursal = sucursal.codigoSucursal;

SELECT CONCAT(turistas.nombre,' ',turistas.apellido) AS 'Nombre del turista', vuelos.fechaHora, vuelos.origen, vuelos.destino, hotel.nombre AS 'Nombre del hotel'
FROM turistas INNER JOIN vuelos ON turistas.numeroVuelo = vuelos.numeroVuelo
			  INNER JOIN hotel ON turistas.codigoHotel = hotel.codigoHotel
WHERE vuelos.destino = 'China';
              
SELECT turistas.cedulaPasaporte AS 'Identificacion del turista',vuelos.numeroVuelo, vuelos.fechaHora, vuelos.origen, vuelos.destino, 
	   FORMAT(vuelos.precioPersona, '#, ###') AS 'Precio por persona', FORMAT(valorEquipaje, '#,###') AS 'Valor del equipaje'
FROM turistas INNER JOIN vuelos ON turistas.numeroVuelo = vuelos.numeroVuelo
WHERE vuelos.clase = 'Primera';

-- Realizando consultas de Campos Calculados
SELECT hotel.*, turistas.cedulaPasaporte, FORMAT((hotel.precioPersona-(hotel.precioPersona * 0.20)), '#,###') AS 'Descuento del 20%' 
FROM hotel INNER JOIN turistas ON hotel.codigoHotel = turistas.codigoHotel
		   INNER JOIN vuelos ON turistas.numeroVuelo = vuelos.numeroVuelo
WHERE vuelos.clase = 'Turista';

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

SELECT sucursal.codigoSucursal, COUNT(*) AS 'Cantidad de turistas'
FROM sucursal INNER JOIN turistas ON sucursal.codigoSucursal = turistas.codigoSucursal
GROUP BY sucursal.codigoSucursal;

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
