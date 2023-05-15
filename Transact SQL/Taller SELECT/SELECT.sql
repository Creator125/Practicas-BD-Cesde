-- 1. ¿Cuántos registros contiene la tabla CovidAntioquia?
SELECT COUNT(*)
FROM CovidAntioquia

-- 2. ¿Cuántos pacientes pertenecen a la de Copacabana?
SELECT id, Ciudad
FROM CovidAntioquia
WHERE Ciudad = 'copacabana'

-- 3. ¿Cuántos pacientes están entre los 40 y 60 años?
SELECT id, Edad
FROM CovidAntioquia
WHERE Edad BETWEEN 40 AND 60

-- 4. Número de Hombres
SELECT id, genero
FROM CovidAntioquia
WHERE genero = 'male'

-- 5. Número de Mujeres
SELECT id, genero
FROM CovidAntioquia
WHERE genero = 'female'

-- 6. Mostrar todas las ciudades sin repetirias.
SELECT DISTINCT Ciudad
FROM CovidAntioquia

-- 7. Mostrar las 15 edades más altas, sin repetirlas
SELECT DISTINCT TOP 15 Edad
FROM CovidAntioquia
ORDER BY EDAD DESC

-- 8. Mostrar todos los datos de los pacientes de Sura.
SELECT *
FROM CovidAntioquia
WHERE Eps IN('sura')

-- 9. Mostrar el 35% de los pacientes con Estado Leve.
SELECT TOP (35) PERCENT Estado, id
FROM CovidAntioquia

-- 10. Mostrar todos los datos de la ciudad de Medellín que se encuentren hospitalizados o en Uci.
SELECT *
FROM CovidAntioquia
WHERE Ciudad ='medellín' AND (Ubicación = 'hospital' OR Ubicación = 'uci')

-- 11. Cuantos pacientes de la ciudad de Itagüí tienen entre 20 y 40 años
SELECT id, Ciudad, Edad
FROM CovidAntioquia
WHERE Ciudad ='itagui' AND (Edad >= 20 OR Edad <= 40)

-- 12. Mostrar todos los datos de los pacientes que no tienen Eps con más de 20 de aislamiento.
SELECT id, Eps, diasAislamiento
FROM CovidAntioquia
WHERE Eps = 'N/A' AND diasAislamiento > 20

-- 13. Mostrar la Ciudad, edad, eps, genero, estado de los pacientes fallecidos que sean hombres
SELECT Ciudad, Edad, Eps, genero, Estado
FROM CovidAntioquia
WHERE Estado = 'fallecido' AND genero = 'male'

-- 14. Mostrar ciudad, eps, genero, tipo de contagio de la ciudad bello o que el tipo de contagio este En Estudio.
SELECT Ciudad, Edad, Eps, genero, TipoContagio
FROM CovidAntioquia
WHERE Ciudad = 'bello' OR TipoContagio = 'En estudio'

-- 15. Mostrar Eps, días de aislamiento, genero, ubicación, valor día y que el estado sea Grave y no tenga eps.
SELECT Eps, diasAislamiento, genero, Ubicación, VlrDia, Estado
FROM CovidAntioquia
WHERE Estado = 'grave' AND Eps = 'N/A'

-- 16. Mostrar la ciudad, eps, genero. ubicación, estado de las eps Coomeva y Sisbén.
SELECT Eps, genero, Ubicación
FROM CovidAntioquia
WHERE Eps IN('coomeva', 'sisbén')

-- 17. Mostrar todos los datos menos los de los pacientes que hayan fallecido.
SELECT *
FROM CovidAntioquia
WHERE Estado NOT IN('fallecido')

-- 18. Mostrar ciudad, eps. tipo contagio y ubicación, de Girardota y bello, donde los días de aislamiento se encuentre entre 10 y 15 y sean mujeres.
SELECT Ciudad, Eps, TipoContagio, Ubicación
FROM CovidAntioquia
WHERE (diasAislamiento BETWEEN 10 AND 15) AND genero = 'female'

-- 19. Mostrar eps, género, tipo contagio de todos los hombres que se encuentren en casa y que la eps termine en a
SELECT Eps, genero, TipoContagio
FROM CovidAntioquia
WHERE genero = 'male' AND Ubicación = 'casa' AND (Eps LIKE '%a')

-- 20. Mostrar ciudad, eps, diasAílamiento, de todos los fallecidos que estuvieron en UCI.
-- Campos calculados. Cambiar el nombre de la columna diasAislamiento por Dias de Hospitalización
SELECT Ciudad, Eps, diasAislamiento AS 'Dias de Hospitalización'
FROM CovidAntioquia
WHERE Estado = 'fallecido' AND Ubicación = 'Uci'

/* 21. Mostrar la ciudad, eps, días de Aislamiento, Valor Dia de todos los que están Hospitalizados, 
calcular la columna Valor Hospitalización con los dias de aislamiento y el valor dia. */
SELECT Ciudad, Eps, diasAislamiento, VlrDia,
		FORMAT((VlrDia * diasAislamiento), '#,###') AS 'Valor Hospitalización'
FROM CovidAntioquia
WHERE Ubicación = 'hospital'

-- 22. Mostrar la eps, dias de aislamiento, el Valor día. calcular el subtotal y realizar un descuento del 30%.
SELECT Eps, diasAislamiento, VlrDia,
		FORMAT((VlrDia * diasAislamiento), '#,###') AS 'Subtotal',
        FORMAT((VlrDia - ('Subtotal' * 0.30)), '#,###') AS 'Descuento del 30%'
FROM CovidAntioquia

/* 23. Mostrar la ciudad, días de aislamiento, el Valor día. calcular el subtotal y realizar un descuento del 
50% a las personas que sean mayores de 60 años */
SELECT Eps, diasAislamiento, VlrDia,
		FORMAT((VlrDia * diasAislamiento), '#,###') AS 'Subtotal',
        FORMAT((VlrDia - ('Subtotal' * 0.50)), '#,###') AS 'Descuento del 50%'
FROM CovidAntioquia
WHERE Edad > 60