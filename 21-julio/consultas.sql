use blog2;
INSERT INTO categorias VALUES(null, 'Acción');
INSERT INTO categorias VALUES(null, 'Rol');
INSERT INTO categorias VALUES(null, 'Deportes');
INSERT INTO entradas VALUES(null, 1, 1, 'Novedades de GTA 5 Online', 'Review del GTA 5', CURDATE());
INSERT INTO entradas VALUES(null, 1, 2, 'REVIEW de LOL Online', 'Todo sobre el LOL', CURDATE());
INSERT INTO entradas VALUES(null, 1, 3, 'Nuevos jugadores de Fifa 19', 'Review del Fifa 19', CURDATE());

INSERT INTO entradas VALUES(null, 2, 1, 'Novedades de Assasins Online', 'Review del Assasins', CURDATE());
INSERT INTO entradas VALUES(null, 2, 2, 'REVIEW de WOW Online', 'Todo sobre el WOW', CURDATE());
INSERT INTO entradas VALUES(null, 2, 3, 'Nuevos jugadores de PES 19', 'Review del Pro 19', CURDATE());

INSERT INTO entradas VALUES(null, 3, 1, 'Novedades de Call Of Duty Online', 'Review del COD', CURDATE());
INSERT INTO entradas VALUES(null, 3, 1, 'REVIEW de Fortnite Online', 'Todo sobre el Fortnite', CURDATE());
INSERT INTO entradas VALUES(null, 3, 3, 'Nuevos jugadores de Formula 1 2k20', 'Review del Formula 1', CURDATE());

INSERT INTO usuarios VALUES(null, 'Víctor', 'Apellidos', 'victor@victor.com', '1234', '2019-05-01');
INSERT INTO usuarios VALUES(null, 'Antonio', 'Martinez', 'antonio@antonio.com', '1234', '2019-08-05');
INSERT INTO usuarios VALUES(null, 'Paco', 'Lopez', 'paco@paco.com', '1234', '2020-05-01');

/* Consulta para obtener el numero de entradas por categoria */
SELECT count(titulo), categoria_id FROM entradas;

/* Consulta agrupada con condiciones */
/* Trae los titulos y cuentalos y la categoria_id de la tabla entradas agrupadas por categoria_id
cuando el numero de entradas sea mayor o igual a 4 */
SELECT count(titulo), categoria_id FROM entradas GROUP BY categoria_id;

/* https://www.w3schools.com/sql/sql_having.asp */
SELECT count(titulo), categoria_id FROM entradas GROUP BY categoria_id HAVING count(titulo) >= 4;

/* Sacar el promedio de los id */
SELECT AVG(id) AS 'Promedio id' FROM entradas;

/* Sacar el promedio maximo */
SELECT MAX(id) AS 'Máximo id' FROM entradas;

/* Sacar el promedio minimo */
SELECT MIN(id) AS 'Mínimo id' FROM entradas;

/* Suma de los elementos */
SELECT sum(id) as 'Suma de ids' FROM entradas;
