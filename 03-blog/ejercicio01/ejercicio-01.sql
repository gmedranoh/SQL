create database blog2;
use blog2;

create table usuarios(
id int not null auto_increment,
nombre varchar(100) NOT NULL,
apellidos varchar(100) NOT NULL,
email varchar(100) not null,
password varchar(100) not null,
fecha date not null,
constraint pk_usuarios primary key(id)
);
ALTER TABLE usuarios ADD CONSTRAINT uq_email UNIQUE(email);

create table categorias(
id int not null auto_increment,
nombre varchar(100) not null,
constraint pk_categorias primary key(id)
);

create table entradas(
id int not null auto_increment,
usuario_id int not null,
categoria_id int not null,
titulo varchar(200) not null, 
descripcion text,
fecha date not null,
constraint pk_entradas primary key(id),
constraint fk_usuario_id FOREIGN KEY(usuario_id) REFERENCES usuarios(id),
constraint fk_categoria_id FOREIGN KEY(categoria_id) REFERENCES categorias(id)
);

/*ALTER TABLE venta ADD FOREIGN KEY(id_cliente) REFERENCES cliente(id_cliente);*/