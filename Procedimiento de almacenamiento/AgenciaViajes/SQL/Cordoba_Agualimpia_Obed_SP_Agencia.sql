-- Insertar los datos a la tabla hotel y turista
INSERT INTO Hotel (codigoHotel, nombre, direccion, ciudad, paginaWeb, nHabitaciones, precioPersona) VALUES
				  (52, 'Valle Verde', 'Av. 26 #52-81', 'Bello', 'www.valleverde.com', 3, 202000000);
                  
INSERT INTO Turistas (cedulaPasaporte, nombre, apellido, correo, celular, idContrato) VALUES
					(54, 'Hernesto', 'Parra', 'hernesparra122@gmail.com', '927362354', 5);
                    
-- Digitar un IDy que muestre la información más importante de la tabla.
SELECT * FROM vuelos WHERE numeroVuelo = 35;

-- Actualizar datos de la tabla sucursal
UPDATE sucursal
SET telefono = '124567897'
WHERE codigoSucursal = 24;

-- Eliminar un dato de la tabla hotel
DELETE FROM hotel
WHERE codigoHotel = 54;

