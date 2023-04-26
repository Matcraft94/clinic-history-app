# Documentación de la Creación de base de datos en Ubuntu

## Instalación de PostgreSQL

Para instalar PostgreSQL en Ubuntu, ejecuta el siguiente comando:

`sudo apt-get install postgresql`



## Creación de la base de datos y las tablas

1. Crea un usuario para PostgreSQL con el mismo nombre que tu usuario de Ubuntu:

`sudo -u postgres psql`
`CREATE USER nombre_de_usuario WITH PASSWORD 'tu_contraseña';`
`ALTER USER nombre_de_usuario CREATEDB;`
`\q`



2. Navega hasta la carpeta que contiene el archivo SQL que usarás para crear la base de datos y las tablas:



`cd ruta/a/la/carpeta`



3. Crea la base de datos "clinica" utilizando el usuario que acabas de crear:

`createdb -U nombre_de_usuario clinica`



4. Conéctate a la base de datos "clinica":


`sudo -u postgres psql`
`\c clinica`


5. Ejecuta el archivo SQL que contiene la creación de las tablas y otros objetos de la base de datos:

`\i ruta/al/archivo.sql`

`\d`

6. Verifica que las tablas se hayan creado correctamente:


Esto mostrará una lista de todas las tablas creadas en la base de datos "clinica".

### Verificación

Aquí un ejemplo de salida del comando `\d` en la consola de PostgreSQL después de crear la base de datos y las tablas:

List of relations
Schema | Name | Type | Owner
--------+------------------------+----------+----------
public | cita | table | postgres
public | cita_id_seq | sequence | postgres
public | doctora | table | postgres
public | doctora_id_seq | sequence | postgres
public | historiaclinica | table | postgres
public | historiaclinica_id_seq | sequence | postgres
public | paciente | table | postgres
public | paciente_id_seq | sequence | postgres
(8 rows)

