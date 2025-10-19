CREATE TABLE Ciudad (
    ciudad_id SERIAL PRIMARY KEY,
    nombre_ciudad VARCHAR(100) NOT NULL,
    codigo_postal VARCHAR(10)
);

CREATE TABLE Usuario (
    usuario_id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    tipo_usuario VARCHAR(50),
    condicion_especial BOOLEAN DEFAULT FALSE, -- si nuestro usuario tiene una condicion lo dejamos en True
    ciudad_id INT,
    email VARCHAR(255) UNIQUE,
    telefono VARCHAR(20),
    FOREIGN KEY (ciudad_id) REFERENCES Ciudad(ciudad_id)
);

CREATE TABLE Servicio (
    servicio_id SERIAL PRIMARY KEY,
    nombre_servicio VARCHAR(150) NOT NULL,
    descripcion TEXT,
    estado VARCHAR(50) DEFAULT 'activo' -- aui dejamos Activo, Inactivo
);

CREATE TABLE Empleado (
    empleado_id SERIAL PRIMARY KEY,
    usuario_id INT UNIQUE,
    cargo VARCHAR(100),
    departamento VARCHAR(100),
    FOREIGN KEY (usuario_id) REFERENCES Usuario(usuario_id)
);

CREATE TABLE Turno (
    turno_id SERIAL PRIMARY KEY,
    usuario_id INT,
    servicio_id INT,
    empleado_id INT,
    fecha DATE NOT NULL,
    hora_inicio TIME NOT NULL,
    hora_fin TIME,
    estado VARCHAR(50), -- pendiente, confirmado, cancelado o finalizado
    FOREIGN KEY (usuario_id) REFERENCES Usuario(usuario_id),
    FOREIGN KEY (servicio_id) REFERENCES Servicio(servicio_id),
    FOREIGN KEY (empleado_id) REFERENCES Empleado(empleado_id)
);

CREATE TABLE Notificacion (
    notificacion_id SERIAL PRIMARY KEY,
    usuario_id INT,
    medio VARCHAR(50), -- email o teledono
    mensaje TEXT,
    fecha_envio TIMESTAMP,
    estado VARCHAR(50), -- enviado, fallido o pendiente
    FOREIGN KEY (usuario_id) REFERENCES Usuario(usuario_id)
);
