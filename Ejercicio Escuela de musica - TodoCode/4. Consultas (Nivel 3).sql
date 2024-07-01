-- Consultas para la base de datos de la escuela de musica (NIVEL 3)
USE db_escuela_musica;

-- 1. Listar los alumnos que no han abonado la inscripcion.

-- *(Solucion 1)
SELECT a.Nombres, a.Apellidos 
FROM Alumnos a, Inscripciones i 
WHERE a.ID_ALumno = i.ID_Alumno AND
	i.Abono_Incripcion = FALSE
GROUP BY a.ID_ALumno 
ORDER BY a.Apellidos ASC;

-- *(Solucion 2)
SELECT a.Nombres, a.Apellidos 
FROM Alumnos a
JOIN Inscripciones i ON a.ID_ALumno = i.ID_Alumno 
WHERE i.Abono_Incripcion = FALSE
GROUP BY a.ID_ALumno
ORDER BY a.Apellidos ASC;


-- 2. Obtener el nombre de los curso que tienen inscripto al menos un
-- alumno mayor de 20 años.
SELECT DISTINCT c.Nombre  
FROM Cursos c
JOIN Inscripciones i ON c.ID_Curso = i.ID_Curso 
JOIN Alumnos a ON i.ID_Alumno = a.ID_ALumno 
WHERE DATEDIFF(CURDATE(), a.Fecha_Nacimiento) / 365.25 > 20;  


-- Listar el nombres y apellidos de los alumnos junto con los nombres
-- de los cursos en los que estan inscriptos, pero solo aquellos que
-- se inscribieron en 2024.
SELECT a.Nombres, a.Apellidos, c.Nombre 
FROM Alumnos a
JOIN Inscripciones i ON a.ID_ALumno = i.ID_Alumno 
JOIN Cursos c ON i.ID_Curso = c.ID_Curso 
WHERE YEAR(i.Fecha_Inscripcion) < 2024;
