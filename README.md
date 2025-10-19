# Práctica de Base de Datos - Sistema de Turnos LiMar
Este repositorio tiene los scripts SQL para la creación y despliegue de la base de datos del sistema de turnos "Servicios LiMar"
## Descripción del Proyecto
El objetivo es desplegar una base de datos PostgreSQL utilizando Docker y poblarla con datos iniciales para la gestión de usuarios, empleados, servicios y turnos
## Contenido
* **DDL.sql**: Contiene todas las sentencias `CREATE TABLE` para generar la base de datos
* **DML.sql**: Contiene todas las sentencias `INSERT INTO` para darle al menos 10 registros a las tablas.
## Cómo Usar
1.  Crear un contenedor de PostgreSQL y pgAdmin usando Docker
2.  Conectarse a la base de datos desde pgAdmin
3.  Ejecutar el script `DDL.sql` para crear las tablas
4.  Ejecutar el script `DML.sql` para insertar los datos
5.  Disfrutar :D
