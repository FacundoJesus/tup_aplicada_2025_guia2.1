USE master;
GO

DROP DATABASE IF EXISTS Guia2_1_Ejercicio1_Facundo_DB
GO

CREATE DATABASE Guia2_1_Ejercicio1_Facundo_DB
GO

USE Guia2_1_Ejercicio1_Facundo_DB
GO

CREATE TABLE Cursos
(
Id INT PRIMARY KEY IDENTITY(1,1),
Nombre VARCHAR(100) NOT NULL
);

CREATE TABLE Alumnos
(
Id INT PRIMARY KEY IDENTITY(1,1),
Nombre VARCHAR(100) NOT NULL
);

GO

CREATE TABLE Cursos_Alumnos
(
Id_Curso INT NOT NULL,
Id_Alumno INT NOT NULL,

--
CONSTRAINT FK_Cursos FOREIGN KEY (Id_Curso) REFERENCES Cursos(Id),

CONSTRAINT FK_Alumnos FOREIGN KEY (Id_Alumno) REFERENCES Alumnos(Id),

CONSTRAINT PK_Cursos_Alumnos PRIMARY KEY (Id_Curso, Id_Alumno)
);

GO

INSERT INTO Cursos (Nombre)
VALUES
(
'Matemáticá',
''
);

GO

USE master