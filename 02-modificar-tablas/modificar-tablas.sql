/*renombrar tabla*/
ALTER TABLE usuarios RENAME TO usuarios_renom;

/*Renombrar una columna*/
ALTER TABLE usuarios_renom CHANGE apellidos apellido VARCHAR(100) NULL;

/* Modificar la columna sin cambiar el nombre */
ALTER TABLE usuarios_renom MODIFY apellido CHAR(50) NOT NULL;

/* Añadir una nueva columna */
ALTER TABLE usuarios_renom ADD website VARCHAR(50) NULL;

/* Añadir una restriccion a una columna, en este caso el campo email tiene valores unicos*/
ALTER TABLE usuarios_renom ADD CONSTRAINT uq_email UNIQUE(email);

/* Borrar una columna */
ALTER TABLE usuarios_renom DROP website;