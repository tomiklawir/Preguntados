CREATE DATABASE PreguntadORT;

USE PreguntadORT;

-- Tabla de Categorías
CREATE TABLE Categorias (
    IdCategoria INT PRIMARY KEY,
    Nombre VARCHAR(255) NOT NULL,
    Foto VARCHAR(255) NULL
);

-- Tabla de Dificultades
CREATE TABLE Dificultades (
    IdDificultad INT PRIMARY KEY,
    Nombre VARCHAR(255) NOT NULL
);

-- Tabla de Preguntas
CREATE TABLE Preguntas (
    IdPregunta INT PRIMARY KEY,
    IdCategoria INT,
    IdDificultad INT,
    Enunciado VARCHAR(255) NOT NULL,
    Foto VARCHAR(255) NULL,
    FOREIGN KEY (IdCategoria) REFERENCES Categorias(IdCategoria),
    FOREIGN KEY (IdDificultad) REFERENCES Dificultades(IdDificultad)
);

-- Tabla de Respuestas
CREATE TABLE Respuestas (
    IdRespuesta INT PRIMARY KEY,
    IdPregunta INT,
    Opcion INT,
    Contenido VARCHAR(255) NOT NULL,
    Correcta BIT NOT NULL,
    Foto VARCHAR(255) NULL,
    FOREIGN KEY (IdPregunta) REFERENCES Preguntas(IdPregunta)
);