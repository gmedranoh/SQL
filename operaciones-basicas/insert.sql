/*  Insertar valores en una tabla*/

INSERT INTO usuarios VALUES(NULL, 'Gaby', 'Medrano', 'gmedrano@gmail.com', '12345', '2021-07-20');
INSERT INTO usuarios VALUES(NULL, 'Bony', 'Medrano', 'bony@gmail.com', 'asdff', '2021-07-20');
INSERT INTO usuarios VALUES(NULL, 'Elena', 'Hernández', 'elena@gmail.com', 'zxcvb', '2021-07-20');

/* Insertar datos en ciertas columnas */
INSERT INTO usuarios(fecha, password, nombre, apellidos, email) VALUES ('2021-07-20', 'tyuio', 'Gaby', 'Medrano', 'gabymedrano@gmail.com');