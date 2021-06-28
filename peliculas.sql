-- Creando base de datos e iniciandola

CREATE DATABASE peliculas;

\c peliculas

-- Creando tablas e importando datos desde archivos csv

CREATE TABLE peliculas(
    id INT,
    Pelicula VARCHAR(100),
    Anio_estreno CHAR(4),
    Director VARCHAR (30),
    PRIMARY KEY (id)
);

CREATE TABLE reparto(
    id INT,
    Actor VARCHAR (30),
    FOREIGN KEY (id) REFERENCES
    peliculas(id)
);

\copy peliculas FROM 'peliculas.csv' csv header;
\copy reparto FROM 'reparto.csv' csv;

-- Identificar id de la película Titanic

SELECT id FROM peliculas WHERE Pelicula = 'Titanic';

-- Listando actores que aparecen en la película Titanic

SELECT actor FROM reparto WHERE id = '2';

-- Consultar en cuántas películas del top 100 participa Harrison Ford

SELECT COUNT(id) FROM reparto WHERE actor = 'Harrison Ford';

-- Indicar las películas estrenadas entre los años 1990 y 1999 ordenadas por título de manera ascendente.

SELECT pelicula FROM peliculas WHERE Anio_estreno BETWEEN '1990' AND '1999' ORDER BY pelicula ASC; 

-- Hacer una consulta SQL que muestre los títulos con su longitud, la longitud debe ser nombrado para la consulta como “longitud_titulo”.
SELECT pelicula, LENGTH(pelicula) AS longitud_titulo FROM peliculas;

-- Consultar cual es la longitud más grande entre todos los títulos de las películas

SELECT MAX(LENGTH(pelicula)) FROM peliculas;

-- nombre pelicula + 1 actor de la pelicula 

SELECT actor, pelicula FROM reparto
INNER JOIN peliculas
ON reparto.id = peliculas.id
WHERE peliculas.id = 2
LIMIT 1;



