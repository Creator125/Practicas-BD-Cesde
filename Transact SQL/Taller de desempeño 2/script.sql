-- 1. Listar los propietarios donde el tipo de cuenta sea independiente y el correo termine con el dominio org.
SELECT Tipo_Cuenta, Correo
FROM propietarios
WHERE Tipo_Cuenta = 'Independiente' AND (Correo LIKE '%.org');

-- 2. Listar todos los barrios de los inmuebles sin que se repitan.
SELECT DISTINCT barrio
FROM inmuebles;

-- 3. Consultar los datos de los arrendatarios que tienen más de 2 contratos.
SELECT arrendatarios.*, COUNT(contratos.Id_Arrendatarios) AS 'Contratos'
FROM arrendatarios INNER JOIN contratos ON arrendatarios.Id_Arrendatarios = contratos.Id_Arrendatarios
WHERE 'Contratos' > 2;

/* 4. Un cliente quisiera encontrar un inmueble con un valor de arriendo mayor a 25
millones pesos y menor o igual a 50.000.000 pesos, nos interesa saber también los 
inmuebles que están disponibles dentro de este valor y que se encuentren en el 
barrio Buenos Aires. */
SELECT *
FROM inmuebles
WHERE (Valor_Arriendo BETWEEN 25000000 AND 50000000) AND barrio = 'BuenosAires';

/* 5. Listar los 15 arrendamientos mas altos, donde se visualice el nro de contrato, el 
valor de arriendo, el nombre del propietario y nombre del arrendatario, concatenar 
los nombres. */
SELECT contratos.Id_Contratos AS 'Nuemero de contrato',  inmuebles.Valor_Arriendo, 
		CONCAT(propietarios.Nombre,' ',propietarios.Apellido) AS 'Nombre del propitario',
        CONCAT(arrendatarios.Nombres,' ',arrendatarios.Apellidos) AS 'Nombre del arrendatario'
FROM contratos INNER JOIN inmuebles ON contratos.Id_inmuebles = inmuebles.Id_inmuebles
			INNER JOIN propietarios ON inmuebles.Id_Cedula_propietario = propietarios.Id_Cedula_propietario
            INNER JOIN arrendatarios ON contratos.Id_Arrendatarios = arrendatarios.Id_Arrendatarios
ORDER BY inmuebles.Valor_Arriendo DESC;

-- 6. Listar el nombre y el apellido de los asesores que tengan más visitas programadas, solo interesa saber los 7 primeros.
SELECT asesores.Nombre, asesores.Apellido, COUNT(visitas.Id_Usuario) AS 'Visitas progamadas'
FROM asesores INNER JOIN visitas ON asesores.id_Cedula_empleado = visitas.id_Cedula_empleado
ORDER BY 'Visitas progamadas' DESC;


-- 7. Consultar qué inmuebles tienen entre 5 y 15 solicitudes
SELECT inmuebles.*, COUNT(solicitudes.Id_inmuebles) AS 'solicitudes'
FROM inmuebles INNER JOIN solicitudes ON inmuebles.Id_inmuebles = solicitudes.Id_inmuebles
WHERE 'solicitudes' BETWEEN 5 AND 15
ORDER BY 'solicitudes' DESC;

-- 8. Listar el nombre y el salario de los fiadores cuya propiedad tengan garaje.
SELECT CONCAT(fiadores.Nombres, ' ', fiadores.Apellidos) AS 'Nombre fiador', fiadores.Salario
FROM contratos INNER JOIN fiadores ON contratos.Id_fiador = fiadores.Id_fiador
			   INNER JOIN inmuebles ON contratos.Id_inmuebles = inmuebles.Id_inmuebles
WHERE garaje = 'SI';

-- 9. Listar el nombre de la sede, cantidad de contratos de cada Sede, el total del valor del arriendo.
SELECT sedes.Nombre, COUNT(contratos.Id_Sede) AS 'cantidad de contratos por Sede', inmuebles.Valor_Arriendo
FROM contratos INNER JOIN sedes ON contratos.Id_Sede = sedes.Id_Sede
			   INNER JOIN inmuebles ON contratos.Id_inmuebles = inmuebles.Id_inmuebles;
               
/* 10. Listar todos los inmuebles por barrio, se desea saber, cuantos son, cuanto es el total 
de los arriendos, el valor máximo y mínimo de arriendo. */
SELECT barrio, COUNT(barrio) AS 'Cantidad de arriendos por barrio',
			   SUM(Valor_Arriendo) AS 'Total de los arriendo',
               MAX(Valor_Arriendo) AS 'Valor maximo',
               MIN(Valor_Arriendo) AS 'Valor minimo'
FROM inmuebles
GROUP BY barrio;

-- 11. Listar todas las propiedades que no tengan visitas.
SELECT inmuebles.*
FROM inmuebles INNER JOIN visitas ON inmuebles.Id_inmuebles = visitas.Id_inmuebles
WHERE visitas.id_Solicitud = NULL;

-- 12.Con la tabla contratos e inmuebles, listar todas las propiedades que no tengan contrato.
SELECT inmuebles.*
FROM contratos INNER JOIN inmuebles ON contratos.Id_inmuebles = inmuebles.Id_inmuebles
WHERE contratos.Id_Contratos = NULL;

/* 13.A los inmuebles de los barrios Aranjuez y Manrique realizar un incremento del 6.4%, 
mostrar el barrio, valor del arriendo el valor del incremento y el valor futuro a pagar. */
SELECT barrio, FORMAT(Valor_Arriendo, '#,###') AS 'Valor del arriendo', 
	   FORMAT(Valor_Arriendo + (Valor_Arriendo * 6.4), '#,###') AS 'Valor con el incremento del 6.4%'
FROM inmuebles
WHERE barrio IN('Aranjuez', 'Manrique');

-- 14. Listar los fiadores que tengan un salario mayor a tres mínimos.
SELECT *
FROM fiadores
WHERE Salario > (1000250 * 3);

/* 15. Se realizará un cobro de administración con la siguiente tabla (case)
a. Aranjuez el 7%
b. Milagrosa el 10%
c. Loreto el 8%
d. Barbosa el 15%
e. Los demás 1%
f. Listar el id del inmueble, el valor del arriendo, Valor de administración
*/
-- Aranjuez
SELECT Id_inmuebles, Valor_Arriendo, FORMAT(Valor_Arriendo - (Valor_Arriendo * 0.7), '#,###') AS 'Valor de administración'
FROM inmuebles
WHERE barrio = 'Aranjuez';
-- Milagrosa
SELECT Id_inmuebles, Valor_Arriendo, FORMAT(Valor_Arriendo - (Valor_Arriendo * 1.0), '#,###') AS 'Valor de administración'
FROM inmuebles
WHERE barrio = 'Milagrosa';
-- Loreto
SELECT Id_inmuebles, Valor_Arriendo, FORMAT(Valor_Arriendo - (Valor_Arriendo * 0.8), '#,###') AS 'Valor de administración'
FROM inmuebles
WHERE barrio = 'Loreto';
-- Barbosa
SELECT Id_inmuebles, Valor_Arriendo, FORMAT(Valor_Arriendo - (Valor_Arriendo * 0.15), '#,###') AS 'Valor de administración'
FROM inmuebles
WHERE barrio = 'Barbosa';
-- Los demás barrios
SELECT Id_inmuebles, Valor_Arriendo, FORMAT(Valor_Arriendo - (Valor_Arriendo * 0.1), '#,###') AS 'Valor de administración'
FROM inmuebles
WHERE barrio != 'Aranjuez' AND barrio != 'Milagrosa' AND barrio != 'Loreto' AND barrio != 'Barbosa';