
-- TABLA de CONVERSACIONES


CREATE TABLE conversaciones (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  tipo TEXT NOT NULL CHECK (tipo IN ('individual', 'grupo')),
  nombre TEXT,
  otros_datos TEXT
);

