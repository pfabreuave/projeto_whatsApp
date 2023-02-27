
-- TABLA de USUARIOS

CREATE TABLE usuarios (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  nombre TEXT NOT NULL,
  numero_telefono TEXT NOT NULL UNIQUE,
  estado TEXT,
  imagen_perfil TEXT,
  ultima_conexion TEXT,
  otros_datos TEXT
);