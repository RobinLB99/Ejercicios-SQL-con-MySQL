-- Armado de la Base de datos para la escuela de musica

-- Crea la tabla Alumnos
CREATE TABLE Alumnos(
	ID_ALumno BIGINT AUTO_INCREMENT PRIMARY KEY,
	Apellidos VARCHAR(35) NOT NULL,
	Nombres VARCHAR(35) NOT NULL,
	Fecha_Nacimiento DATE NOT NULL,
	Direccion VARCHAR(35) NOT NULL,
	Telefono VARCHAR(15) NOT NULL,
	Email VARCHAR(25) NOT NULL
) ENGINE = InnoDB;

-- Crea la tabla Cursos
CREATE TABLE Cursos (
	ID_Curso BIGINT AUTO_INCREMENT PRIMARY KEY,
	Nombre VARCHAR(50) NOT NULL,
	Nivel_Habilidad VARCHAR(35) NOT NULL,
	Tipo_Instrumento VARCHAR(35) NOT NULL
) ENGINE = InnoDB;

-- Crea la tabla Inscripciones
CREATE TABLE Inscripciones (
	ID_Iinscripcion BIGINT AUTO_INCREMENT PRIMARY KEY,
	Fecha_Inscripcion DATE NOT NULL,
	Abono_Incripcion BOOLEAN NOT NULL,
	ID_Alumno BIGINT,
	ID_Curso BIGINT,
	CONSTRAINT fk_alumno_inscripcione FOREIGN KEY (ID_Alumno)
		REFERENCES Alumnos (ID_Alumno)
		ON DELETE RESTRICT
		ON UPDATE CASCADE,
	CONSTRAINT fh_curso_inscripcion FOREIGN KEY (ID_Curso)
		REFERENCES Cursos (ID_Curso)
		ON DELETE RESTRICT
		ON UPDATE CASCADE
) ENGINE = InnoDB;

-- Inserta los datos de la tabla Alumnos
INSERT INTO Alumnos (Apellidos, Nombres, Fecha_Nacimiento, Direccion, Telefono, Email)
VALUES
  ('Pérez', 'Juan', '2000-01-02', 'Calle 123, Sector 4', '0987654321', 'juan.perez@email.com'),
  ('López', 'María', '2001-03-04', 'Avenida 567, Sector 8', '0987654322', 'maria.lopez@email.com'),
  ('García', 'Pedro', '2002-05-06', 'Calle 890, Sector 12', '0987654323', 'pedro.garcia@email.com'),
  ('Romero', 'Ana', '2003-07-08', 'Avenida 135, Sector 16', '0987654324', 'ana.romero@email.com'),
  ('Flores', 'Marco', '2004-09-10', 'Calle 178, Sector 20', '0987654325', 'marco.flores@email.com'),
  ('Ramírez', 'Sandra', '2005-11-12', 'Avenida 210, Sector 24', '0987654326', 'sandra.ramirez@email.com'),
  ('Gómez', 'Diego', '2006-01-13', 'Calle 234, Sector 28', '0987654327', 'diego.gomez@email.com'),
  ('Mendoza', 'Andrea', '2007-03-14', 'Avenida 256, Sector 32', '0987654328', 'andrea.mendoza@email.com'),
  ('Álvarez', 'Carlos', '2008-05-15', 'Calle 278, Sector 36', '0987654329', 'carlos.alvarez@email.com'),
  ('Castillo', 'Laura', '2009-07-16', 'Avenida 300, Sector 40', '0987654330', 'laura.castillo@email.com');


-- Insertar datos de Cursos
INSERT INTO Cursos (Nombre, Nivel_Habilidad, Tipo_Instrumento)
VALUES
  ('Guitarra para Principiantes: Primeros Acordes', 'Principiante', 'Guitarra'),
  ('Introducción al Piano para Niños', 'Principiante', 'Piano'),
  ('Batería Rock para Nivel Intermedio', 'Intermedio', 'Batería'),
  ('Dominio del Violín: Técnica y Expresión', 'Avanzado', 'Violín'),
  ('Flauta Dulce: Un Instrumento para Todas las Edades', 'Principiante', 'Flauta'),
  ('Saxofón Jazz: Improvisación y Estilo', 'Avanzado', 'Saxofón'),
  ('Canto Básico: Descubre tu Voz', 'Principiante', 'Canto'),
  ('Ukelele: Diversión y Acordes desde Cero', 'Principiante', 'Ukelele'),
  ('Bajo Eléctrico: Fundamentos y Técnicas', 'Intermedio', 'Bajo Eléctrico'),
  ('Percusión Afrocubana: Ritmos y Sonidos', 'Principiante', 'Percusión');


-- Insertar datos de Incripciones
INSERT INTO Inscripciones (Fecha_Inscripcion, Abono_Incripcion, ID_Alumno, ID_Curso)
VALUES
  ('2024-02-15', TRUE, 1, 1),
  ('2024-02-15', TRUE, 2, 1),
  ('2024-02-15', TRUE, 3, 1),
  ('2024-02-15', TRUE, 4, 1),
  ('2024-02-15', TRUE, 5, 1),
  ('2024-02-15', TRUE, 6, 1),
  ('2024-02-15', TRUE, 7, 1),
  ('2024-02-15', TRUE, 8, 1),
  ('2023-11-10', FALSE, 9, 2),
  ('2023-11-10', FALSE, 10, 2),
  ('2024-03-22', TRUE, 1, 2),
  ('2024-03-22', TRUE, 2, 2),
  ('2024-03-22', TRUE, 3, 2),
  ('2024-03-22', TRUE, 4, 2),
  ('2023-12-17', FALSE, 5, 3),
  ('2023-12-17', FALSE, 6, 3),
  ('2023-12-17', FALSE, 7, 3),
  ('2023-12-17', FALSE, 8, 3),
  ('2024-04-05', TRUE, 9, 4),
  ('2024-04-05', TRUE, 10, 4),
  ('2024-01-28', FALSE, 1, 5),
  ('2024-01-28', FALSE, 2, 5),
  ('2024-05-12', TRUE, 3, 5),
  ('2024-05-12', TRUE, 4, 5),
  ('2023-10-04', FALSE, 5, 6),
  ('2023-10-04', FALSE, 6, 6),
  ('2024-06-09', TRUE, 7, 6),
  ('2024-06-09', TRUE, 8, 6),
  ('2024-02-24', FALSE, 9, 7),
  ('2024-02-24', FALSE, 10, 7),
  ('2024-02-24', FALSE, 1, 8),
  ('2024-02-24', FALSE, 2, 8),
  ('2024-02-24', FALSE, 3, 1);

 
-- Ver datos de las tablas
 SELECT * FROM Alumnos a;
 SELECT * FROM Cursos c;
 SELECT * FROM Inscripciones i;