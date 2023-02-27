
Tabela Mensajes eliminados
CREATE TABLE mensajes_eliminados (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  mensaje_id INTEGER NOT NULL,
  usuario_id INTEGER NOT NULL,
  fecha_eliminacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (mensaje_id) REFERENCES mensajes(id),
  FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
);
