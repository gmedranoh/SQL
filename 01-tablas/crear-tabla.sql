/* Crear una tabla en proyecto_integrador */
create table usuarios(
id  int auto_increment not null,
nombre varchar(50) not null,
apellidos varchar(50) not null,
email varchar(50) not null,
password varchar(50) not null,
constraint pk_usuarios primary key(id)
);