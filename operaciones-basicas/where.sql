select nombre, email from usuarios where id=4;
select nombre, email from usuarios where email = 'gmedrano@gmail.com';

/* Operadores de comparacion */

/*
OPERADORES DE COMPARACION:
Igual           =
Distinto        !=
Menor           <
Mayor           >
Menor o igual   <=
Mayor o igual   >=
Entre           between A and B
En              in
Es nulo         is null
No nulo         is not null
Como            like
No es como      not like
*/

select nombre, apellidos from usuarios where year(fecha) = '2020' or year(fecha) = '2021' or year(fecha) = '2019';

/* Traer a usuarios  */
select nombre, apellidos from usuarios where year(fecha) >= '2019';

/* Traer los usuarios que no se hayan registrado en el 2020 */
select nombre, apellidos from usuarios where year(fecha) != '2019' or isnull(fecha);

/* Elementos que contengan un texto */

/* 
Si quiero seleccionar los nombres que empiezan por 'o' 
 */
select * from usuarios where nombre like 'o%';
/* 
Si quiero seleccionar los nombres que terminan en 'o' 
 */
select * from usuarios where nombre like '%o';
