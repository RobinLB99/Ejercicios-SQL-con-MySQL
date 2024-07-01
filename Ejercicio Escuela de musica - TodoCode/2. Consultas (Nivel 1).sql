-- Consultas para la base de datos de la escuela de musica (NIVEL 1)
USE db_escuela_musica;

-- 1. Listar todos los alumnos inscriptos en el curso avanzado de Violín.

-- (Solucion 1) --
SELECT a.Nombres, a.Apellidos
FROM Alumnos a
JOIN Inscripciones i ON a.ID_ALumno = i.ID_Alumno
JOIN Cursos c ON i.ID_Curso = c.ID_Curso 
WHERE c.Tipo_Instrumento = 'Violín' AND 
		c.Nivel_Habilidad = 'Avanzado';

-- (Solucion 2) --
SELECT a.Nombres, a.Apellidos
FROM Alumnos a, Cursos c, Inscripciones i 
WHERE a.ID_ALumno = i.ID_Alumno AND
		i.ID_Curso  = c.ID_Curso AND 
		c.Tipo_Instrumento = "Violín" AND
		c.Nivel_Habilidad = "Avanzado";

	
-- 2. Mostrar todas las incripciones realizadas despues del 1 de enero de 2024.
SELECT *
FROM Inscripciones i
WHERE i.Fecha_Inscripcion > '2024-01-01';


-- 3. Contar la cantidad de incripciones abonadas.
SELECT COUNT(*) AS Numero_Inscripciones_Abonadas
FROM Inscripciones i
WHERE i.Abono_Incripcion = TRUE;


-- 4. Listar los cursos de nivel avanzados.
SELECT *
FROM Cursos c
WHERE c.Nivel_Habilidad = 'Avanzado';

