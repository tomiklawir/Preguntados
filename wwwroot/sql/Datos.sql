-- Insertar Categorías
INSERT INTO Categorias (IdCategoria, Nombre, Foto) VALUES
(1, 'Geografía', NULL),
(2, 'Historia', NULL),
(3, 'Ciencia', NULL),
(4, 'Deportes', NULL);

-- Insertar Dificultades
INSERT INTO Dificultades (IdDificultad, Nombre) VALUES
(1, 'Fácil'),
(2, 'Medio'),
(3, 'Difícil'),
(4, 'Mezclado');

-- Insertar Preguntas (Asegúrate de que IdCategoria y IdDificultad coincidan con las tablas respectivas)
INSERT INTO Preguntas (IdPregunta, IdCategoria, IdDificultad, Enunciado, Foto) VALUES
(1, 1, 1, '¿Cuál es la capital de España?', NULL),
(2, 1, 1, '¿Cuántos días tiene un año bisiesto?', NULL),
(3, 1, 1, '¿Qué planeta es conocido como el planeta azul?', NULL),
(4, 1, 1, '¿Qué animal es conocido como el rey de la selva?', NULL),
(5, 1, 1, '¿Cuál es el continente más grande por superficie?', NULL),
(6, 1, 1, '¿Cuál es el metal más ligero?', NULL),
(7, 1, 1, '¿En qué estación del año caen las hojas de los árboles?', NULL),
(8, 1, 1, '¿Qué fruta es conocida por tener muchas semillas pequeñas en su exterior?', NULL),
(9, 1, 1, '¿Qué instrumento musical tiene 88 teclas?', NULL),
(10, 1, 1, '¿Cuál es el país más grande del mundo?', NULL);

INSERT INTO Preguntas (IdPregunta, IdCategoria, IdDificultad, Enunciado, Foto) VALUES
(11, 2, 2, '¿Cuál es el símbolo químico del agua?', NULL),
(12, 2, 2, '¿Quién pintó la Mona Lisa?', NULL),
(13, 2, 2, '¿Cuál es la moneda oficial de Japón?', NULL),
(14, 2, 2, '¿Cuál es la raíz cuadrada de 64?', NULL),
(15, 2, 2, '¿Qué océano rodea las islas Malvinas?', NULL),
(16, 2, 2, '¿En qué país se encuentra la Torre Eiffel?', NULL),
(17, 2, 2, '¿Qué órgano del cuerpo humano se encarga de filtrar la sangre?', NULL),
(18, 2, 2, '¿Qué planeta tiene un sistema de anillos a su alrededor?', NULL),
(19, 2, 2, '¿Cuál es el país más pequeño del mundo?', NULL),
(20, 2, 2, '¿Qué músico es conocido como el "Rey del Pop"?', NULL);

INSERT INTO Preguntas (IdPregunta, IdCategoria, IdDificultad, Enunciado, Foto) VALUES
(21, 3, 3, '¿Cuál es el elemento químico con el símbolo "Fe"?', NULL),
(22, 3, 3, '¿Qué artista pintó "La persistencia de la memoria"?', NULL),
(23, 3, 3, '¿Quién escribió "Cien años de soledad"?', NULL),
(24, 3, 3, '¿Cuál es la fórmula química del ácido sulfúrico?', NULL),
(25, 3, 3, '¿En qué año comenzó la Primera Guerra Mundial?', NULL),
(26, 3, 3, '¿Qué molécula es la principal fuente de energía para las células?', NULL),
(27, 3, 3, '¿Quién fue el primer hombre en viajar al espacio?', NULL),
(28, 3, 3, '¿Qué país tiene la mayor población del mundo?', NULL),
(29, 3, 3, '¿Cuál es la capital de Mongolia?', NULL),
(30, 3, 3, '¿Cuál es el elemento químico más abundante en el universo?', NULL);

INSERT INTO Preguntas (IdPregunta, IdCategoria, IdDificultad, Enunciado, Foto) VALUES
(31, 4, 1, '¿Cuál es el color del cielo en un día despejado?', NULL),
(32, 4, 1, '¿Cuántos lados tiene un triángulo?', NULL),
(33, 4, 2, '¿Cuál es la capital de Australia?', NULL),
(34, 4, 2, '¿En qué año fue publicada la novela "1984" de George Orwell?', NULL),
(35, 4, 3, '¿Qué arquitecto diseñó la Basílica de la Sagrada Familia en Barcelona?', NULL),
(36, 4, 3, '¿En qué año se hundió el Titanic?', NULL),
(37, 4, 2, '¿Qué país es conocido como la "Tierra del Sol Naciente"?', NULL),
(38, 4, 1, '¿Qué número viene después del 99?', NULL),
(39, 4, 3, '¿Qué científico desarrolló la teoría de la relatividad?', NULL),
(40, 4, 2, '¿En qué continente se encuentra el desierto del Sahara?', NULL);

INSERT INTO Respuestas (IdRespuesta, IdPregunta, Opcion, Contenido, Correcta, Foto) VALUES
(1, 1, 1, 'Madrid', 1, NULL),
(2, 1, 2, 'Barcelona', 0, NULL),
(3, 1, 3, 'Sevilla', 0, NULL),
(4, 1, 4, 'Valencia', 0, NULL),

(5, 2, 1, '365 días', 0, NULL),
(6, 2, 2, '366 días', 1, NULL),
(7, 2, 3, '364 días', 0, NULL),
(8, 2, 4, '368 días', 0, NULL),

(9, 3, 1, 'Marte', 0, NULL),
(10, 3, 2, 'Venus', 0, NULL),
(11, 3, 3, 'Tierra', 1, NULL),
(12, 3, 4, 'Júpiter', 0, NULL),

(13, 4, 1, 'León', 0, NULL),
(14, 4, 2, 'Elefante', 0, NULL),
(15, 4, 3, 'Tigre', 0, NULL),
(16, 4, 4, 'León', 1, NULL),

(17, 5, 1, 'Asia', 1, NULL),
(18, 5, 2, 'África', 0, NULL),
(19, 5, 3, 'Europa', 0, NULL),
(20, 5, 4, 'América del Norte', 0, NULL),

(21, 6, 1, 'Hierro', 0, NULL),
(22, 6, 2, 'Plomo', 0, NULL),
(23, 6, 3, 'Litio', 1, NULL),
(24, 6, 4, 'Oro', 0, NULL),

(25, 7, 1, 'Primavera', 0, NULL),
(26, 7, 2, 'Verano', 0, NULL),
(27, 7, 3, 'Otoño', 1, NULL),
(28, 7, 4, 'Invierno', 0, NULL),

(29, 8, 1, 'Plátano', 0, NULL),
(30, 8, 2, 'Uva', 0, NULL),
(31, 8, 3, 'Fresa', 1, NULL),
(32, 8, 4, 'Manzana', 0, NULL),

(33, 9, 1, 'Guitarra', 0, NULL),
(34, 9, 2, 'Piano', 1, NULL),
(35, 9, 3, 'Violín', 0, NULL),
(36, 9, 4, 'Arpa', 0, NULL),

(37, 10, 1, 'China', 0, NULL),
(38, 10, 2, 'Rusia', 1, NULL),
(39, 10, 3, 'Estados Unidos', 0, NULL),
(40, 10, 4, 'Canadá', 0, NULL);

INSERT INTO Respuestas (IdRespuesta, IdPregunta, Opcion, Contenido, Correcta, Foto) VALUES
(41, 11, 1, 'O2', 0, NULL),
(42, 11, 2, 'H2O', 1, NULL),
(43, 11, 3, 'CO2', 0, NULL),
(44, 11, 4, 'NaCl', 0, NULL),

(45, 12, 1, 'Pablo Picasso', 0, NULL),
(46, 12, 2, 'Leonardo da Vinci', 1, NULL),
(47, 12, 3, 'Vincent van Gogh', 0, NULL),
(48, 12, 4, 'Salvador Dalí', 0, NULL),

(49, 13, 1, 'Yen', 1, NULL),
(50, 13, 2, 'Won', 0, NULL),
(51, 13, 3, 'Peso', 0, NULL),
(52, 13, 4, 'Rupia', 0, NULL),

(53, 14, 1, '8', 1, NULL),
(54, 14, 2, '10', 0, NULL),
(55, 14, 3, '6', 0, NULL),
(56, 14, 4, '7', 0, NULL),

(57, 15, 1, 'Océano Pacífico', 0, NULL),
(58, 15, 2, 'Océano Atlántico', 1, NULL),
(59, 15, 3, 'Océano Índico', 0, NULL),
(60, 15, 4, 'Océano Ártico', 0, NULL),

(61, 16, 1, 'Italia', 0, NULL),
(62, 16, 2, 'Francia', 1, NULL),
(63, 16, 3, 'Reino Unido', 0, NULL),
(64, 16, 4, 'Alemania', 0, NULL),

(65, 17, 1, 'Hígado', 1, NULL),
(66, 17, 2, 'Corazón', 0, NULL),
(67, 17, 3, 'Riñón', 0, NULL),
(68, 17, 4, 'Pulmón', 0, NULL),

(69, 18, 1, 'Marte', 0, NULL),
(70, 18, 2, 'Júpiter', 0, NULL),
(71, 18, 3, 'Saturno', 1, NULL),
(72, 18, 4, 'Urano', 0, NULL),

(73, 19, 1, 'Mónaco', 0, NULL),
(74, 19, 2, 'Ciudad del Vaticano', 1, NULL),
(75, 19, 3, 'Liechtenstein', 0, NULL),
(76, 19, 4, 'San Marino', 0, NULL),

(77, 20, 1, 'Elvis Presley', 0, NULL),
(78, 20, 2, 'Michael Jackson', 1, NULL),
(79, 20, 3, 'Prince', 0, NULL),
(80, 20, 4, 'Freddie Mercury', 0, NULL);

INSERT INTO Respuestas (IdRespuesta, IdPregunta, Opcion, Contenido, Correcta, Foto) VALUES
(81, 21, 1, 'Plomo', 0, NULL),
(82, 21, 2, 'Hierro', 1, NULL),
(83, 21, 3, 'Cobre', 0, NULL),
(84, 21, 4, 'Oro', 0, NULL),

(85, 22, 1, 'Pablo Picasso', 0, NULL),
(86, 22, 2, 'Salvador Dalí', 1, NULL),
(87, 22, 3, 'Vincent van Gogh', 0, NULL),
(88, 22, 4, 'Claude Monet', 0, NULL),

(89, 23, 1, 'Gabriel García Márquez', 1, NULL),
(90, 23, 2, 'Julio Cortázar', 0, NULL),
(91, 23, 3, 'Mario Vargas Llosa', 0, NULL),
(92, 23, 4, 'Carlos Fuentes', 0, NULL),

(93, 24, 1, 'H2SO4', 1, NULL),
(94, 24, 2, 'HNO3', 0, NULL),
(95, 24, 3, 'NaOH', 0, NULL),
(96, 24, 4, 'HCl', 0, NULL),

(97, 25, 1, '1914', 1, NULL),
(98, 25, 2, '1918', 0, NULL),
(99, 25, 3, '1939', 0, NULL),
(100, 25, 4, '1945', 0, NULL),

(101, 26, 1, 'Glucosa', 1, NULL),
(102, 26, 2, 'ADN', 0, NULL),
(103, 26, 3, 'Hemoglobina', 0, NULL),
(104, 26, 4, 'Colesterol', 0, NULL),

(105, 27, 1, 'Neil Armstrong', 0, NULL),
(106, 27, 2, 'Yuri Gagarin', 1, NULL),
(107, 27, 3, 'Buzz Aldrin', 0, NULL),
(108, 27, 4, 'Alan Shepard', 0, NULL),

(109, 28, 1, 'India', 0, NULL),
(110, 28, 2, 'China', 1, NULL),
(111, 28, 3, 'Estados Unidos', 0, NULL),
(112, 28, 4, 'Indonesia', 0, NULL),

(113, 29, 1, 'Ulán Bator', 1, NULL),
(114, 29, 2, 'Astaná', 0, NULL),
(115, 29, 3, 'Taskent', 0, NULL),
(116, 29, 4, 'Bishkek', 0, NULL),

(117, 30, 1, 'Helio', 0, NULL),
(118, 30, 2, 'Oxígeno', 0, NULL),
(119, 30, 3, 'Hidrógeno', 1, NULL),
(120, 30, 4, 'Nitrógeno', 0, NULL);

INSERT INTO Respuestas (IdRespuesta, IdPregunta, Opcion, Contenido, Correcta, Foto) VALUES
(121, 31, 1, 'Azul', 1, NULL),
(122, 31, 2, 'Rojo', 0, NULL),
(123, 31, 3, 'Verde', 0, NULL),
(124, 31, 4, 'Amarillo', 0, NULL),

(125, 32, 1, 'Cuatro', 0, NULL),
(126, 32, 2, 'Tres', 1, NULL),
(127, 32, 3, 'Cinco', 0, NULL),
(128, 32, 4, 'Dos', 0, NULL),

(129, 33, 1, 'Canberra', 1, NULL),
(130, 33, 2, 'Sídney', 0, NULL),
(131, 33, 3, 'Melbourne', 0, NULL),
(132, 33, 4, 'Perth', 0, NULL),

(133, 34, 1, '1949', 0, NULL),
(134, 34, 2, '1954', 0, NULL),
(135, 34, 3, '1948', 0, NULL),
(136, 34, 4, '1949', 1, NULL),

(137, 35, 1, 'Antoni Gaudí', 1, NULL),
(138, 35, 2, 'Santiago Calatrava', 0, NULL),
(139, 35, 3, 'Norman Foster', 0, NULL),
(140, 35, 4, 'Frank Gehry', 0, NULL),

(141, 36, 1, '1912', 1, NULL),
(142, 36, 2, '1905', 0, NULL),
(143, 36, 3, '1898', 0, NULL),
(144, 36, 4, '1920', 0, NULL),

(145, 37, 1, 'China', 0, NULL),
(146, 37, 2, 'Japón', 1, NULL),
(147, 37, 3, 'Corea del Sur', 0, NULL),
(148, 37, 4, 'Vietnam', 0, NULL),

(149, 38, 1, '100', 1, NULL),
(150, 38, 2, '101', 0, NULL),
(151, 38, 3, '99', 0, NULL),
(152, 38, 4, '102', 0, NULL),

(153, 39, 1, 'Isaac Newton', 0, NULL),
(154, 39, 2, 'Albert Einstein', 1, NULL),
(155, 39, 3, 'Niels Bohr', 0, NULL),
(156, 39, 4, 'Galileo Galilei', 0, NULL),

(157, 40, 1, 'África', 1, NULL),
(158, 40, 2, 'Asia', 0, NULL),
(159, 40, 3, 'Europa', 0, NULL),
(160, 40, 4, 'Oceanía', 0, NULL);
