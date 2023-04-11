-- 1. ¿Cuántos registros contiene la tabla CovidAntioquia?
SELECT COUNT(*)
FROM CovidAntioquia

--2. ¿Cuántos pacientes pertenecen a la de Copacabana?
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