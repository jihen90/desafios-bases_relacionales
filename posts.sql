CREATE DATABASE posts; 

\c posts

-- Creacion de tabla post

CREATE TABLE post(
    id VARCHAR(25)UNIQUE,
    nombre_de_usuario VARCHAR(25),
    fecha_de_creacion DATE,
    contenido VARCHAR(25),
    descripcion VARCHAR(25),
    PRIMARY KEY (id)
);

SELECT * FROM post;

--Ingreso de post de 'Pamela' y 'Carlos'

INSERT INTO post
(id, nombre_de_usuario, fecha_de_creacion, contenido, descripcion)
VALUES
('a01','Pamela','07-06-2021','desafios','ayuda_desafios');

INSERT INTO post
(id, nombre_de_usuario, fecha_de_creacion, contenido, descripcion)
VALUES
('a02','Pamela','07-06-2021','asistencia','revision_asistencia');

INSERT INTO post
(id, nombre_de_usuario, fecha_de_creacion, contenido, descripcion)
VALUES
('a03','Carlos','07-06-2021','notas_desafios','ayuda_notas_desafios');


SELECT * FROM post;

--Inserción de nueva columna 'titulo'

ALTER TABLE post
ADD titulo VARCHAR(50);

SELECT * FROM post;

--Actualizando datos, inserción de valores a columna 'titulo'

UPDATE post
SET titulo = 'consultas_y_solicitudes'
WHERE nombre_de_usuario = 'Pamela';

UPDATE post
SET titulo = 'consultas_y_solicitudes'
WHERE nombre_de_usuario = 'Carlos';

SELECT * FROM post;

-- Ingreso de post de 'Pedro'

INSERT INTO post
(id, nombre_de_usuario, fecha_de_creacion, contenido, descripcion, titulo)
VALUES
('a04','Pedro','07-06-2021','desafios','ayuda_desafios', 'consultas_y_solicitudes');

INSERT INTO post
(id, nombre_de_usuario, fecha_de_creacion, contenido, descripcion, titulo)
VALUES
('a05','Pedro','07-06-2021','asistencia','revision_asistencia', 'consultas_y_solicitudes');

SELECT * FROM post;

-- Eliminando post de 'Carlos'

DELETE FROM post
WHERE nombre_de_usuario = 'Carlos';

SELECT * FROM post;

-- Ingresando nuevo post de 'Carlos'

INSERT INTO post
(id, nombre_de_usuario, fecha_de_creacion, contenido, descripcion, titulo)
VALUES
('a06','Carlos','07-06-2021','consultas_generales','otros', 'consultas_y_solicitudes');

SELECT * FROM post;

-- Creacion de tabla comentarios

CREATE TABLE comentarios(
    id VARCHAR(25),
    fecha DATE,
    hora_de_creacion TIME,
    contenido VARCHAR(25),
    FOREIGN KEY (id) REFERENCES
    post(id)
);

SELECT * FROM comentarios;

-- Ingresando comentarios para post de Pamela y Carlos

INSERT INTO comentarios
(id, fecha, hora_de_creacion, contenido)
VALUES
('a01', '07-06-2021', '21:42:02', 'desafios');

INSERT INTO comentarios
(id, fecha, hora_de_creacion, contenido)
VALUES
('a02', '07-06-2021', '21:45:31', 'asistencia');

INSERT INTO comentarios
(id, fecha, hora_de_creacion, contenido)
VALUES
('a06', '07-06-2021', '21:46:22', 'consultas_generales');

INSERT INTO comentarios
(id, fecha, hora_de_creacion, contenido)
VALUES
('a06', '07-06-2021', '21:47:24', 'consultas_generales');

INSERT INTO comentarios
(id, fecha, hora_de_creacion, contenido)
VALUES
('a06', '07-06-2021', '21:48:40', 'consultas_generales');

INSERT INTO comentarios
(id, fecha, hora_de_creacion, contenido)
VALUES
('a06', '07-06-2021', '21:50:14', 'consultas_generales');

SELECT * FROM comentarios;

-- Ingresando post de Margarita

INSERT INTO post
(id, nombre_de_usuario, fecha_de_creacion, contenido, descripcion, titulo)
VALUES
('a07','Margarita','07-06-2021','notas_desafios','ayuda_notas_desafios', 'consultas_y_solicitudes');

-- Ingresando comentarios de Margarita

INSERT INTO comentarios
(id, fecha, hora_de_creacion, contenido)
VALUES
('a07', '07-06-2021', '21:54:25', 'notas_desafios');

INSERT INTO comentarios
(id, fecha, hora_de_creacion, contenido)
VALUES
('a07', '07-06-2021', '21:54:25', 'notas_desafios');

INSERT INTO comentarios
(id, fecha, hora_de_creacion, contenido)
VALUES
('a07', '07-06-2021', '21:56:32', 'notas_desafios');

INSERT INTO comentarios
(id, fecha, hora_de_creacion, contenido)
VALUES
('a07', '07-06-2021', '21:58:41', 'notas_desafios');

INSERT INTO comentarios
(id, fecha, hora_de_creacion, contenido)
VALUES
('a07', '07-06-2021', '21:59:26', 'notas_desafios');

SELECT * FROM comentarios;






