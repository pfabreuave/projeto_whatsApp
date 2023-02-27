
TABLAS de MENSAJES

CREATE TABLE mensajes (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  texto TEXT NOT NULL,
  usuario_id INTEGER NOT NULL,
  conversacion_id INTEGER NOT NULL,
  fecha_envio TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  leido INTEGER NOT NULL DEFAULT 0 CHECK (leido IN (0, 1)),
  FOREIGN KEY (usuario_id) REFERENCES usuarios(id),
  FOREIGN KEY (conversacion_id) REFERENCES conversaciones(id)
);

