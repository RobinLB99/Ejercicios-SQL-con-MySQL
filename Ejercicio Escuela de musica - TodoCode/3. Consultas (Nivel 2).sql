-- Consultas para la base de datos de la escuela de musica (NIVEL 2)
USE db_escuela_musica;

-- 1. Lista los nombres y apellidos de los alumnos junto con los nombres
-- de los cursos a los que estan inscriptos.
SELECT a.Nombres, a.Apellidos, c.Nombre 
FROM Alumnos a
JOIN Inscripciones i ON a.ID_ALumno = i.ID_Alumno 
JOIN Cursos c ON i.ID_Curso = c.ID_Curso; 


-- 2. Obtener el nombre y apellidos de los alumnos que estan inscriptos
-- en mas de un curso.
-- ** Traer los alumnos
-- ** Contar la cantidad de cursos en la que está cada alumno inscripto
-- ** Filtrar los que estén en mas de 1
SELECT a.Nombres, a.Apellidos 
FROM Alumnos a 
WHERE a.ID_ALumno IN (
	SELECT i.ID_ALumno
	FROM Inscripciones i
	GROUP BY i.ID_ALumno 
	HAVING COUNT(i.ID_Curso) > 1
);

-- 3. Mostrar el nombre del curso y la cantidad de alumnos inscritos
-- en cada curso.
SELECT c.Nombre, COUNT(i.ID_ALumno) AS Numero_Alumnos
FROM Cursos c
JOIN Inscripciones i ON c.ID_Curso = i.ID_Curso 
GROUP BY c.Nombre;


