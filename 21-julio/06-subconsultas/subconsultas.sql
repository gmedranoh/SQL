/* Subconsultas
son consultas que se ejecutan dentro de otras consultas
 */

 SELECT * FROM usuarios WHERE id IN (SELECT usuario_id FROM entradas);

 /* en esta consulta obtenemos los id de los usuarios que tienen publicaciones */
 SELECT usuario_id FROM entradas;

 /* Esta consulta representa los valores que recibe la consulta principal */
 SELECT * FROM usuarios WHERE id IN (1,1,1,2,2,2,3,3,3);

/* Consulta equivalente con WHERE */
SELECT * FROM usuarios WHERE id=1 and id=2 and id=3;


 /* obtener los usuarios que tengan alguna entrada que el título contenga GTA */
SELECT nombre, apellidos FROM usuarios WHERE id IN (
    SELECT usuario FROM entradas WHERE titulo LIKE '%GTA%'
);

/* Obtener todas las entradas de la categoria accion utilizando su nombre */

SELECT categoria_id, titulo FROM entradas WHERE categoria_id IN (
    SELECT id FROM categorias WHERE nombre = 'Deportes' 
    );

/* Obtener las categorias que no tienen entradas */

SELECT * FROM categorias WHERE id NOT IN (
    SELECT categoria_id FROM entradas
);

/*  */
SELECT * FROM usuarios WHERE id IN(
    SELECT usuario_id FROM entradas WHERE DAYOFWEEK(fecha) = 7
);