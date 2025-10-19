INSERT INTO Ciudad (nombre_ciudad, codigo_postal) VALUES
('Bogotá', '1111'),
('Medellin', '0500'),
('Cali', '7600'),
('Barranquilla', '0800'),
('Cartagena', '1300'),
('Cucuta', '5400'),
('Bucaramanga', '6800'),
('Pereira', '6600'),
('Santa Marta', '4700'),
('Ibage', '7200');

INSERT INTO Usuario (nombre, apellido, tipo_usuario, condicion_especial, ciudad_id, email, telefono) VALUES
('juan','perez','Cliente',FALSE,1,'juan.perez@gmail.com','3124153213'),
('Dana','Acosta','Cliente',FALSE,2,'dana.acosta@gmail.com','312000003'),
('Diana','Mola','Proveedor',TRUE,3,'diana.mola@gmail.com','300000013'),
('Rana','Jazmin','Cliente',FALSE,4,'rana.jazmin@gmail.com','312222223'),
('Anakin','Skywalker','Proveedor',TRUE,5,'anakin.elejido1@gmail.com','312221234'),
--Empleado
('Carlos', 'Rodriguez', 'Empleado', FALSE, 3, 'carlos.rodriguez@servilimar.com', '3125678901'),
('Laura', 'Gonzalez', 'Empleado', FALSE, 1, 'laura.gonzalez@servilimar.com', '3156789012'),
('Miguel', 'Torres', 'Empleado', TRUE, 5, 'miguel.torres@servilimar.com', '3194567890'),
('Eva', 'Blanco', 'Empleado', FALSE, 6, 'eva.blanco@servilimar.com', '3100000001'),
('Jorge', 'Vargas', 'Empleado', FALSE, 7, 'jorge.vargas@servilimar.com', '3100000002'),
('Sara', 'Rios', 'Empleado', TRUE, 8, 'sara.rios@servilimar.com', '3100000003'),
('Ivan', 'Paz', 'Empleado', FALSE, 9, 'ivan.paz@servilimar.com', '3100000004'),
('Rosa', 'Mendez', 'Empleado', FALSE, 10, 'rosa.mendez@servilimar.com', '3100000005'),
('Felipe', 'Cano', 'Empleado', FALSE, 1, 'felipe.cano@servilimar.com', '3100000006'),
('Lucia', 'Nieto', 'Empleado', FALSE, 2, 'lucia.nieto@servilimar.com', '3100000007');


INSERT INTO Servicio (nombre_servicio, descripcion, estado) VALUES
('despacho','Envio de productos y mercancias','activo'), ('entrega','entrega de productos y mercancias','activo'),
('recepción','recepción de productos y mercancias','activo'), ('atención al cliente','Servico al cliente','activo'),
('consultoría','Consultoria de empresas','inactivo'), ('Almacenamiento','Almacenamiento temporal de mercancias','inactivo'),
('Gestión de Devoluciones', 'Procesamiento de devoluciones de productos.', 'inactivo'),
('Empaque y Embalaje', 'empaque para envíos.', 'activo'),
('Seguimiento de Envíos', 'Información sobre la ubicación de los paquetes.', 'activo'),
('Trámites Aduaneros', 'Gestión de documentos para importar.', 'inactivo');


INSERT INTO Empleado (usuario_id, cargo, departamento) VALUES
(6, 'gerente de Operaciones', 'Logística'), (7, 'coordinador de Despachos', 'Logística'),
(8, 'analista de Servicio al Cliente', 'Atención al Cliente'), (9, 'jefe de Bodega', 'Almacén'),
(10, 'auxiliar de Bodega', 'Almacén'), (11, 'consultor Senior', 'Consultoría'),
(12, 'conductor', 'Transporte'), (13, 'recepcionista', 'Administrativo'),
(14, 'auxiliar de Devoluciones', 'Logística Inversa'), (15, 'practicante', 'Atención al Cliente');

INSERT INTO Turno (usuario_id, servicio_id, empleado_id, fecha, hora_inicio, hora_fin, estado) VALUES
(1, 2, 3, '2025-10-20', '09:00:00', '09:30:00', 'confirmado'),
(2, 3, 10, '2025-10-21', '10:00:00', '10:45:00', 'finalizado'),
(3, 4, 1, '2025-10-21', '15:00:00', NULL, 'cancelado'),
(4, 1, 2, '2025-10-22', '08:00:00', '08:30:00', 'finalizado'),
(5, 5, 6, '2025-10-22', '11:00:00', NULL, 'pendiente'),
(6, 1, 7, '2025-10-23', '18:00:00', '18:20:00', 'finalizado'),
(7, 8, 3, '2025-10-23', '12:30:00', NULL, 'pendiente'),
(1, 8, 7, '2025-10-23', '09:30:00', NULL, 'pendiente'),
(2, 3, 9, '2025-10-24', '11:30:00', '11:50:00', 'finalizado'),
(3, 7, 2, '2025-10-25', '14:00:00', NULL, 'confirmado');

INSERT INTO Notificacion (usuario_id, medio, mensaje, fecha_envio, estado) VALUES
(1, 'email', 'Su turno por Despacho de Artículos ha sido confirmado.', '2025-10-19 18:00:00', 'enviado'),
(2, 'telefono', 'Le recordamos su turno de Atención al Cliente mañana a las 10:00 AM.', '2025-10-19 18:05:00', 'enviado'),
(3, 'email', 'No se pudo confirmar su turno para Entrega de Artículos.', '2025-10-20 09:00:00', 'fallido'),
(4, 'telefono', 'Confirmación de turno para Recepción de Artículos.', '2025-10-20 10:00:00', 'enviado'),
(5, 'email', 'Su turno de Atención al Cliente ha sido cancelado.', '2025-10-21 11:00:00', 'enviado'),
(6, 'telefono', 'Gracias por utilizar nuestro servicio de Consultoría Logística.', '2025-10-22 10:05:00', 'enviado'),
(7, 'email', 'Su solicitud de turno para Despacho de Artículos está pendiente de confirmación.', '2025-10-22 16:00:00', 'pendiente'),
(8, 'telefono', 'Confirmado: turno para Empaque y Embalaje el 23/10 a las 12:00.', '2025-10-22 16:10:00', 'enviado'),
(2, 'email', 'Recordatorio: su turno para Seguimiento de Envíos es mañana.', '2025-10-23 14:00:00', 'enviado'),
(4, 'telefono', 'Llamada de seguimiento para su turno finalizado de Atención al Cliente.', '2025-10-24 12:00:00', 'enviado');
