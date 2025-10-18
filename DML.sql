-- Inserción de datos en la Base de Datos Servilimar (DML)

-- CIUDADES
INSERT INTO ciudad VALUES (1, 'Cali', '760001');
INSERT INTO ciudad VALUES (2, 'Bogotá', '110111');
INSERT INTO ciudad VALUES (3, 'Medellín', '050001');
INSERT INTO ciudad VALUES (4, 'Cartagena', '130001');
INSERT INTO ciudad VALUES (5, 'Barranquilla', '080001');
INSERT INTO ciudad VALUES (6, 'Pereira', '660001');
INSERT INTO ciudad VALUES (7, 'Bucaramanga', '680001');
INSERT INTO ciudad VALUES (8, 'Manizales', '170001');
INSERT INTO ciudad VALUES (9, 'Neiva', '410001');
INSERT INTO ciudad VALUES (10, 'Montería', '230001');

-- USUARIOS
INSERT INTO usuario VALUES (1, 'Juan', 'López', 'Ninguna', 1);
INSERT INTO usuario VALUES (2, 'María', 'Gómez', 'Embarazada', 2);
INSERT INTO usuario VALUES (3, 'Carlos', 'Ramírez', 'Adulto mayor', 3);
INSERT INTO usuario VALUES (4, 'Laura', 'Martínez', 'Discapacidad visual', 4);
INSERT INTO usuario VALUES (5, 'Andrés', 'Torres', 'Ninguna', 5);
INSERT INTO usuario VALUES (6, 'Sofía', 'Pérez', 'Ninguna', 6);
INSERT INTO usuario VALUES (7, 'Jorge', 'Vargas', 'Adulto mayor', 7);
INSERT INTO usuario VALUES (8, 'Valentina', 'Castro', 'Ninguna', 8);
INSERT INTO usuario VALUES (9, 'Camila', 'Morales', 'Embarazada', 9);
INSERT INTO usuario VALUES (10, 'Sebastián', 'Reyes', 'Ninguna', 10);

-- EMPLEADOS, CLIENTES Y PROVEEDORES
INSERT INTO empleado VALUES (1, 1, 'Recepcionista', 'Atención al Cliente');
INSERT INTO empleado VALUES (2, 2, 'Técnico', 'Soporte');
INSERT INTO empleado VALUES (3, 3, 'TECNICO', 'Infraestructura');
INSERT INTO empleado VALUES (4, 4, 'Administrador', 'Sistemas');
INSERT INTO empleado VALUES (5, 5, 'Asesor', 'Comercial');
INSERT INTO cliente VALUES (6, 6);
INSERT INTO cliente VALUES (7, 7);
INSERT INTO cliente VALUES (8, 8);
INSERT INTO proveedor VALUES (9, 9);
INSERT INTO proveedor VALUES (10, 10);

-- SERVICIOS
INSERT INTO servicio VALUES (1, 'Atención al cliente', 'Atención presencial en oficina', 'Activo');
INSERT INTO servicio VALUES (2, 'Reparaciones', 'Mantenimiento de equipos', 'Activo');
INSERT INTO servicio VALUES (3, 'Instalaciones', 'Instalación de nuevos servicios', 'Activo');
INSERT INTO servicio VALUES (4, 'Consultoría', 'Asesoría técnica personalizada', 'Activo');
INSERT INTO servicio VALUES (5, 'Facturación', 'Revisión de cobros y pagos', 'Activo');
INSERT INTO servicio VALUES (6, 'Reclamos', 'Gestión de reclamos', 'Activo');
INSERT INTO servicio VALUES (7, 'Atención telefónica', 'Soporte remoto', 'Activo');
INSERT INTO servicio VALUES (8, 'Emergencias', 'Atención urgente', 'Activo');
INSERT INTO servicio VALUES (9, 'Logística', 'Entrega de materiales', 'Activo');
INSERT INTO servicio VALUES (10, 'Capacitación', 'Entrenamiento de personal', 'Activo');

-- MEDIOS
INSERT INTO medio VALUES (1, 'Correo electrónico');
INSERT INTO medio VALUES (2, 'Teléfono');
INSERT INTO medio VALUES (3, 'SMS');
INSERT INTO medio VALUES (4, 'WhatsApp');
INSERT INTO medio VALUES (5, 'Telegram');
INSERT INTO medio VALUES (6, 'Facebook Messenger');
INSERT INTO medio VALUES (7, 'Llamada automatizada');
INSERT INTO medio VALUES (8, 'Notificación web');
INSERT INTO medio VALUES (9, 'Paloma Mensajera');
INSERT INTO medio VALUES (10, 'Neuralink');

-- TURNOS
INSERT INTO turno VALUES (1, 6, 1, 1, '2025-10-16', '08:00', '08:30', 'Atendido');
INSERT INTO turno VALUES (2, 7, 2, 2, '2025-10-16', '08:30', '09:00', 'Pendiente');
INSERT INTO turno VALUES (3, 8, 3, 3, '2025-10-16', '09:00', '09:30', 'Atendido');
INSERT INTO turno VALUES (4, 9, 4, 4, '2025-10-16', '09:30', '10:00', 'Atendido');
INSERT INTO turno VALUES (5, 10, 5, 5, '2025-10-16', '10:00', '10:30', 'Pendiente');
INSERT INTO turno VALUES (6, 6, 6, 1, '2025-10-16', '10:30', '11:00', 'Pendiente');
INSERT INTO turno VALUES (7, 7, 7, 2, '2025-10-16', '11:00', '11:30', 'Atendido');
INSERT INTO turno VALUES (8, 8, 8, 3, '2025-10-16', '11:30', '12:00', 'Pendiente');
INSERT INTO turno VALUES (9, 9, 9, 4, '2025-10-16', '12:00', '12:30', 'Atendido');
INSERT INTO turno VALUES (10, 10, 10, 5, '2025-10-16', '12:30', '13:00', 'Pendiente');

-- NOTIFICACIONES
INSERT INTO notificacion VALUES (1, 6, 1, 'Su turno fue agendado correctamente.', '2025-10-16 07:45:00', 'Enviado');
INSERT INTO notificacion VALUES (2, 7, 2, 'Recuerde su cita para el servicio de reparaciones.', '2025-10-16 08:00:00', 'Enviado');
INSERT INTO notificacion VALUES (3, 8, 3, 'Confirmación de instalación para hoy.', '2025-10-16 08:15:00', 'Enviado');
INSERT INTO notificacion VALUES (4, 9, 4, 'Su consultoría técnica está confirmada.', '2025-10-16 08:30:00', 'Pendiente');
INSERT INTO notificacion VALUES (5, 10, 5, 'Revisión de facturación programada.', '2025-10-16 08:45:00', 'Enviado');
INSERT INTO notificacion VALUES (6, 6, 6, 'Se ha registrado su reclamo correctamente.', '2025-10-16 09:00:00', 'Enviado');
INSERT INTO notificacion VALUES (7, 7, 7, 'Recordatorio de turno telefónico.', '2025-10-16 09:15:00', 'Pendiente');
INSERT INTO notificacion VALUES (8, 8, 8, 'Nueva notificación en el portal web.', '2025-10-16 09:30:00', 'Enviado');
INSERT INTO notificacion VALUES (9, 9, 9, 'Su solicitud de logística fue aprobada.', '2025-10-16 09:45:00', 'Enviado');
INSERT INTO notificacion VALUES (10, 10, 10, 'Gracias por asistir a su capacitación.', '2025-10-16 10:00:00', 'Enviado');
