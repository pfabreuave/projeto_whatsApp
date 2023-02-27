
Tablea de Miembros grupo

CREATE TABLE miembros_grupo (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  usuario_id INTEGER NOT NULL,
  conversacion_id INTEGER NOT NULL,
  fecha_union TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (usuario_id) REFERENCES usuarios(id),
  FOREIGN KEY (conversacion_id) REFERENCES conversaciones(id)
);

