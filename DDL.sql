-- Estructura de la Base de Datos Servilimar (DDL)

CREATE TABLE ciudad (
    id_ciudad INTEGER PRIMARY KEY,
    nombre_ciudad VARCHAR(100) NOT NULL,
    codigo_postal VARCHAR(10) NOT NULL
);

CREATE TABLE usuario (
    id_usuario INTEGER PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    condicion_especial VARCHAR(100),
    id_ciudad INTEGER,
    FOREIGN KEY (id_ciudad) REFERENCES ciudad(id_ciudad)
);

CREATE TABLE empleado (
    id_empleado INTEGER PRIMARY KEY,
    id_usuario INTEGER,
    cargo VARCHAR(100),
    departamento VARCHAR(100),
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
);

CREATE TABLE cliente (
    id_cliente INTEGER PRIMARY KEY,
    id_usuario INTEGER,
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
);

CREATE TABLE proveedor (
    id_proveedor INTEGER PRIMARY KEY,
    id_usuario INTEGER,
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
);

CREATE TABLE servicio (
    id_servicio INTEGER PRIMARY KEY,
    nombre_servicio VARCHAR(100),
    descripcion TEXT,
    estado VARCHAR(20)
);

CREATE TABLE medio (
    id_medio INTEGER PRIMARY KEY,
    tipo_medio VARCHAR(50)
);

CREATE TABLE turno (
    id_turno INTEGER PRIMARY KEY,
    id_usuario INTEGER,
    id_servicio INTEGER,
    id_empleado INTEGER,
    fecha DATE,
    hora_inicio TIME,
    hora_fin TIME,
    estado VARCHAR(20),
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario),
    FOREIGN KEY (id_servicio) REFERENCES servicio(id_servicio),
    FOREIGN KEY (id_empleado) REFERENCES empleado(id_empleado)
);

CREATE TABLE notificacion (
    id_notificacion INTEGER PRIMARY KEY,
    id_usuario INTEGER,
    id_medio INTEGER,
    mensaje TEXT,
    fecha_envio TIMESTAMP,
    estado VARCHAR(20),
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario),
    FOREIGN KEY (id_medio) REFERENCES medio(id_medio)
);
