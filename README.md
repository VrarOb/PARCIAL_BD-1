# PARCIAL_BD-1 – Creación y Despliegue de la Base de Datos Servilimar

## Descripción del proyecto
El proyecto **Servilimar** consiste en el diseño, creación y despliegue de una base de datos en **PostgreSQL**, utilizando **Docker** y **pgAdmin** para su gestión.  
La base de datos almacena información sobre usuarios, empleados, clientes, proveedores, servicios, turnos y notificaciones, con el fin de gestionar la atención y comunicación de los usuarios de la empresa.

---

## Tecnologías que fueron utilizadas
- **Docker:** permite ejecutar los contenedores de PostgreSQL y pgAdmin sin instalación directa en el sistema operativo.  
- **PostgreSQL 14:** sistema de gestión de bases de datos relacional.  
- **pgAdmin 4:** interfaz web para la administración y consulta de la base de datos.  
- **WSL (Windows Subsystem for Linux):** entorno que permite ejecutar Docker en Windows.

---

## Creación y despliegue del entorno

### 1. Crear contenedor de PostgreSQL

docker run --name limar.bd \
-e POSTGRES_USER=ulimar \
-e POSTGRES_PASSWORD=ex4men_db \
-p 5432:5432 postgres:14

### 2.Crear contenedor de PGadmin

docker run --rm -p 5050:80 \
  -e "PGADMIN_DEFAULT_EMAIL=usuario@servilimar.com" \
  -e "PGADMIN_DEFAULT_PASSWORD=limar#123" \
  dpage/pgadmin4

### 3.Acceder a PGadmin desde el navegador

Usamos: http://localhost:5050

**Iniciar sesión con:**
Email: usuario@servilimar.com
Password: limar#123

Para conectar pgAdmin al servidor PostgreSQL:

Host: localhost
Port: 5432
Username: ulimar
Password: ex4men_db

### 4.Ejecucion de los Scripts SQL

1. Abrir el archivo `DDL.sql` en el Query Tool y ejecutar su contenido para crear las tablas.  
2. Abrir el archivo `DML.sql` y ejecutarlo para insertar los datos de prueba.  

---

## Estructura del modelo

### El modelo relacional está conformado por las siguientes entidades principales:

-**Ciudad:** información de ubicación y código postal.  
-**Usuario:** datos personales y relación con una ciudad.  
-**Empleado, Cliente y Proveedor:** especializaciones de usuario.  
-**Servicio:** catálogo de servicios ofrecidos.  
-**Medio:** tipos de medios de notificación.  
-**Turno:** registro de citas y atención de servicios.  
-**Notificación:** comunicaciones enviadas a los usuarios.  

---

## Carga de datos

### Ejemplos para la carga de datos y su verificacion

**Carga**

INSERT INTO ciudad VALUES (1, 'Cali', '760001');  
INSERT INTO usuario VALUES (1, 'Juan', 'López', 'Ninguna', 1);  
INSERT INTO servicio VALUES (1, 'Atención al cliente', 'Atención presencial en oficina', 'Activo');  

**Verificacion**

SELECT * FROM usuario;  
SELECT * FROM turno;  
SELECT * FROM notificacion;  

