/* JOINS nos permiten fusionar información de multiples tabls */

/* https://www.w3schools.com/sql/sql_join.asp */

/* Mostrar las entradas con el nombre del autor y de la categoria */

SELECT entradas.id, entradas.titulo, usuarios.nombre, categorias.nombre 
    FROM entradas 
    INNER JOIN usuarios ON entradas.usuario_id=usuarios.usuario_id
    INNER JOIN categorias ON entradas.categoria_id=categorias.id;

    SELECT e.id, e.titulo, u.nombre, c.nombre 
    FROM entradas e
    INNER JOIN usuarios u ON e.usuario_id = u.id
    INNER JOIN categorias c ON e.categoria_id = c.id;

/* Numero de entradas de categorias */

SELECT c.nombre, COUNT(e.id) FROM categorias c 
    INNER JOIN entradas e ON e.categoria_id=c.id GROUP BY e.categoria_id;